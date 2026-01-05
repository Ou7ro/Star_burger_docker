#!/bin/bash
set -e
PROJECT_DIR="/opt/Star_burger_docker"

cd $PROJECT_DIR

echo "Начало деплоя..."
echo "================================"

echo "1. Подтягивание кода..."
git pull

echo "2. Проверка переменных окружения..."
if [ ! -f .env ]; then
    echo "Ошибка: файл .env не найден!"
    exit 1
fi

export $(grep -v '^#' .env | xargs)

echo "3. Остановка контейнеров..."
docker-compose down

echo "4. Сборка Docker образов..."
docker-compose build --no-cache

echo "5. Запуск контейнеров (сначала только база)..."
docker-compose up -d db

echo "6. Ожидание готовности базы данных..."
for i in {1..30}; do
    if docker-compose exec -T db pg_isready -U ${POSTGRES_USER:-pavel} > /dev/null 2>&1; then
        echo "База данных готова!"
        break
    fi
    echo "Ожидание базы данных... ($i/30)"
    sleep 2
done

echo "7. Проверка существования таблиц в базе..."
TABLE_EXISTS=$(docker-compose exec -T db psql -U ${POSTGRES_USER:-pavel} -d ${POSTGRES_DB:-star_burger} -tAc "SELECT 1 FROM information_schema.tables WHERE table_name='django_migrations'" 2>/dev/null || echo "0")

if [ "$TABLE_EXISTS" = "0" ]; then
    echo "База пустая, импортируем дамп..."
    if [ -f "dump.sql" ] && [ "${IMPORT_DUMP:-true}" = "true" ]; then
        docker cp dump.sql starburger_db:/tmp/dump.sql
        docker-compose exec -T db psql -U ${POSTGRES_USER:-pavel} -d ${POSTGRES_DB:-star_burger} -f /tmp/dump.sql
        echo "Дамп успешно импортирован"
    else
        echo "Создаем пустую базу..."
    fi
else
    echo "База уже содержит данные, пропускаем импорт дампа"
fi

echo "8. Запуск backend..."
docker-compose up -d backend

echo "9. Ожидание готовности backend..."
for i in {1..30}; do
    if docker-compose exec -T backend curl -f http://localhost:8000/admin/ > /dev/null 2>&1; then
        echo "Backend готов!"
        break
    fi
    echo "Ожидание backend... ($i/30)"
    sleep 2
done

echo "10. Применение миграций (если база пустая)..."
if [ "$TABLE_EXISTS" = "0" ]; then
    docker-compose exec -T backend python manage.py migrate --noinput
    echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.filter(username='admin').exists() or User.objects.create_superuser('admin', 'admin@example.com', 'admin')" | docker-compose exec -T backend python manage.py shell
fi

echo "11. Сборка статических файлов..."
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "12. Запуск frontend..."
docker-compose up -d frontend

echo "13. Ожидание готовности frontend..."
sleep 5

echo "14. Проверка статуса контейнеров..."
docker-compose ps

echo "15. Проверка логов..."
docker-compose logs --tail=20

echo "================================"
echo "Деплой завершен успешно!"
echo "Сайт доступен по:"
echo "- https://ou7ro.ru"
echo "- http://89.23.99.228"