#!/usr/bin/env bash
set -euo pipefail

cd /opt/Star_burger_docker

echo "[1/10] git pull"
git pull origin main

echo "[2/10] Проверка переменных окружения"
if [ ! -f .env ]; then
    echo "Файл .env не найден в корне проекта!"
    exit 1
fi

set -a
source .env
set +a

echo "[3/10] Очистка старых контейнеров"
docker-compose down --remove-orphans 2>/dev/null || true
docker system prune -f

echo "[4/10] Сборка фронтенда"
docker build -t frontend-builder -f docker/Dockerfile.frontend ./frontend
mkdir -p static_bundles
docker run --rm -v $(pwd)/static_bundles:/app/dist frontend-builder sh -c "cp -r /app/dist/* /app/dist/.. || true"

echo "[5/10] Проверка собранных файлов"
ls -la static_bundles/

echo "[6/10] Сборка Docker образов"
docker-compose build --no-cache

echo "[7/10] Запуск контейнеров"
docker-compose up -d

echo "[8/10] Ожидание базы данных..."
until docker-compose exec db pg_isready -U pavel > /dev/null 2>&1; do
    echo "База данных недоступна, ждем 2 секунды..."
    sleep 2
done

echo "[9/10] Загрузка дампа БД (если нужно)"
if [ "${IMPORT_DUMP:-false}" = "true" ]; then
    echo "Загружаем дамп БД из dump.sql..."
    TABLE_COUNT=$(docker-compose exec -T db psql -U pavel -d star_burger -t -c "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='public';" 2>/dev/null || echo "0")
    TABLE_COUNT=$(echo $TABLE_COUNT | tr -d '[:space:]')
    
    if [ "$TABLE_COUNT" -eq "0" ]; then
        echo "База пуста, загружаем дамп..."
        if [ -f dump.sql ]; then
            docker-compose exec -T db psql -U pavel -d star_burger < dump.sql
            echo "Дамп успешно загружен!"
        else
            echo "Внимание: файл dump.sql не найден!"
        fi
    else
        echo "В базе уже есть $TABLE_COUNT таблиц. Пропускаем загрузку дампа."
        echo "Если нужно перезагрузить дамп, сначала очистите БД или установите IMPORT_DUMP=false"
    fi
else
    echo "Пропускаем загрузку дампа (IMPORT_DUMP != true)"
fi

echo "[10/10] Настройка Django и завершение"
docker-compose exec -T backend python manage.py migrate --noinput
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "Перезапуск nginx..."
sudo systemctl reload nginx

echo "Готово!"