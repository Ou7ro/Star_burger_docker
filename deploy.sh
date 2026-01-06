#!/usr/bin/env bash
set -euo pipefail

cd /opt/Star_burger_docker

echo "[1/8] git pull"
git pull origin main

echo "[2/8] Проверка переменных окружения"
if [ ! -f .env ]; then
    echo "Файл .env не найден в корне проекта!"
    exit 1
fi

echo "[3/8] Сборка фронтенда"
docker build -t frontend-builder -f docker/Dockerfile.frontend ./frontend
mkdir -p static_bundles
docker run --rm -v $(pwd)/static_bundles:/output frontend-builder

echo "[4/8] Очистка и пересборка"
docker-compose down
docker system prune -f

echo "[5/8] Сборка Docker образов"
docker-compose build --no-cache

echo "[6/8] Запуск контейнеров"
docker-compose up -d

echo "[7/8] Настройка Django и завершение"
sleep 10
docker-compose exec -T backend python manage.py migrate --noinput
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "[8/8] Перезапуск nginx"
sudo systemctl reload nginx

echo "Готово!"
echo ""
echo "Проверка:"
docker-compose ps
echo ""
echo "Доступ:"
echo "   Сайт: https://ou7ro.ru"
echo "   Статика: /opt/Star_burger_docker/static_bundles/"