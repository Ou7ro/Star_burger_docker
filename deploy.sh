#!/usr/bin/env bash
set -e

cd /opt/Star_burger_docker

echo "[1] Обновление кода"
git pull origin main

echo "[2] Остановка старых контейнеров"
docker-compose down --remove-orphans 2>/dev/null || true

echo "[3] Сборка фронтенда"
docker build -t frontend-builder -f docker/Dockerfile.frontend ./frontend
mkdir -p static_bundles
docker run --rm -v $(pwd)/static_bundles:/output frontend-builder sh -c "cp -r /app/dist/* /output/"

echo "[4] Запуск контейнеров"
docker-compose up -d --build

echo "[5] Ожидание БД"
sleep 5

echo "[6] Загрузка дампа (если есть)"
if [ -f dump.sql ] && [ "${IMPORT_DUMP:-false}" = "true" ]; then
    echo "Загружаем dump.sql..."
    docker cp dump.sql $(docker-compose ps -q db):/tmp/dump.sql
    docker-compose exec -T db psql -U pavel -d star_burger -f /tmp/dump.sql 2>/dev/null || true
fi

echo "[7] Миграции и статика"
docker-compose exec -T backend python manage.py migrate --noinput
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "[8] Перезапуск nginx"
sudo systemctl reload nginx 2>/dev/null || true

echo "Готово"
docker-compose ps