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

# Загрузка переменных для скрипта
export $(grep -v '^#' .env | xargs)

echo "3. Остановка контейнеров..."
docker-compose down

echo "4. Сборка Docker образов..."
docker-compose build --no-cache

echo "5. Запуск контейнеров..."
docker-compose up -d

echo "6. Ожидание готовности базы данных..."
for i in {1..30}; do
    if docker-compose exec -T db pg_isready -U ${POSTGRES_USER:-postgres} > /dev/null 2>&1; then
        echo "База данных готова!"
        break
    fi
    echo "Ожидание базы данных... ($i/30)"
    sleep 2
done

DB_EXISTS=$(docker-compose exec -T db psql -U ${POSTGRES_USER:-postgres} -tAc "SELECT 1 FROM pg_database WHERE datname='${POSTGRES_DB:-star_burger}'" 2>/dev/null || echo "0")

if [ "$DB_EXISTS" = "0" ]; then
    echo "7. Создание базы данных..."
    docker-compose exec -T db createdb -U ${POSTGRES_USER:-postgres} ${POSTGRES_DB:-star_burger} 2>/dev/null || true
fi

echo "8. Импорт дампа базы данных (опционально)..."
if [ -f "dump.sql" ] && [ "${IMPORT_DUMP:-false}" = "true" ]; then
    echo "Импортируем дамп..."
    docker cp dump.sql starburger_db:/tmp/dump.sql
    docker-compose exec -T db psql -U ${POSTGRES_USER:-postgres} -d ${POSTGRES_DB:-star_burger} -f /tmp/dump.sql
    echo "Дамп успешно импортирован"
else
    echo "Пропускаем импорт дампа"
fi

echo "9. Применение миграций..."
docker-compose exec -T backend python manage.py migrate --noinput

echo "10. Сборка статических файлов..."
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "11. Проверка статуса контейнеров..."
docker-compose ps

echo "12. Проверка логов..."
docker-compose logs --tail=50

echo "================================"
echo "Деплой завершен успешно!"