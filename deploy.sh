#!/usr/bin/env bash
set -euo pipefail

cd /opt/Star_burger_docker

echo "[1/6] git pull"
git pull origin main

echo "[2/6] Проверка переменных окружения"
if [ ! -f .env ]; then
    echo "Файл .env не найден в корне проекта!"
    exit 1
fi

echo "[3/6] Очистка и пересборка"
docker-compose down
docker system prune -f

echo "[4/6] Сборка Docker образов"
docker-compose build --no-cache

echo "[5/6] Запуск контейнеров"
docker-compose up -d

echo "[6/6] Настройка Django и завершение"
sleep 10
docker-compose exec -T backend python manage.py migrate --noinput
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "Готово!"
echo ""
echo "Проверка:"
docker-compose ps
echo ""
echo "Доступ:"
echo "   Frontend (статика): http://localhost:3000/bundles/index.js"
echo "   Backend (Django):   http://localhost:8000"
echo "   Сайт:               https://ou7ro.ru"