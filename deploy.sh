#!/usr/bin/env bash
set -euo pipefail

cd /opt/Star_burger_docker

echo "[1/7] git pull"
git pull origin main

echo "[2/7] Проверка переменных окружения"
if [ ! -f .env ]; then
    echo "Файл .env не найден в корне проекта!"
    exit 1
fi

echo "[3/7] Останавливаем и удаляем старые контейнеры"
docker-compose down

echo "[4/7] Установка зависимостей frontend"
cd frontend
npm ci --no-audit --fund=false
npx parcel build bundles-src/index.js --public-url /bundles/ --dist-dir bundles --no-source-maps
cd ..

echo "[5/7] Пересборка и запуск всех сервисов"
docker-compose build --no-cache
docker-compose up -d

echo "[6/7] Ожидание полного запуска..."
sleep 30

echo "[7/7] Настройка Django"
docker-compose exec -T backend python manage.py migrate --noinput
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "Готово!"
echo "Проверка статуса:"
docker-compose ps
echo ""
echo "Доступ по адресам:"
echo "   - https://ou7ro.ru"
echo "   - https://www.ou7ro.ru"