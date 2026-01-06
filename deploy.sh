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

export $(grep -v '^#' .env | xargs)

echo "[3/10] Очистка старых контейнеров"
docker-compose down --remove-orphans 2>/dev/null || true
docker system prune -f

echo "[4/10] Сборка фронтенда"
docker build -t frontend-builder -f docker/Dockerfile.frontend ./frontend
mkdir -p static_bundles
docker run --rm -v $(pwd)/static_bundles:/output frontend-builder sh -c "cp -r /app/dist/* /output/ 2>/dev/null || true"

echo "[5/10] Проверка собранных файлов"
ls -la static_bundles/

echo "[6/10] Сборка Docker образов"
docker-compose build --no-cache

echo "[7/10] Запуск контейнеров"
docker-compose up -d

echo "[8/10] Ожидание базы данных..."
for i in {1..30}; do
    if docker-compose exec db pg_isready -U "$POSTGRES_USER" > /dev/null 2>&1; then
        echo "База данных доступна!"
        break
    fi
    echo "Ожидание базы данных... ($i/30)"
    sleep 2
done

echo "[9/10] Загрузка дампа БД и настройка Django"
if [ "${IMPORT_DUMP:-false}" = "true" ] && [ -f dump.sql ]; then
    echo "Загружаем дамп БД из dump.sql..."
    DUMP_SIZE=$(stat -c%s "dump.sql" 2>/dev/null || echo "0")
    if [ "$DUMP_SIZE" -lt 100 ]; then
        echo "Внимание: dump.sql слишком мал или пуст ($DUMP_SIZE байт)"
    else
        echo "Размер дампа: $DUMP_SIZE байт"
        docker-compose exec -T backend python manage.py migrate --noinput

        echo "Загрузка дампа в базу данных..."
        if docker-compose exec -T db psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f /docker-entrypoint-initdb.d/dump.sql 2>/dev/null; then
            echo "Дамп успешно загружен через initdb.d!"
        else
            echo "Попытка загрузки дампа напрямую..."
            docker cp dump.sql star_burger_docker_db_1:/tmp/dump.sql
            docker-compose exec -T db psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f /tmp/dump.sql || true
        fi
    fi
else
    echo "Пропускаем загрузку дампа"
    docker-compose exec -T backend python manage.py migrate --noinput
fi

docker-compose exec -T backend python manage.py collectstatic --noinput

echo "[10/10] Проверка данных"
echo "Проверка наличия данных в БД..."
docker-compose exec -T db psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c "SELECT COUNT(*) FROM foodcartapp_product;" || true

echo "Перезапуск nginx..."
sudo systemctl reload nginx

echo "Готово!"
