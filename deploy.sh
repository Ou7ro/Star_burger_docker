#!/usr/bin/env bash
set -euo pipefail

cd /opt/Star_burger_docker

echo "[1/8] git pull"
git pull origin main

echo "[2/8] Проверка переменных окружения"
if [ ! -f .env ]; then
    echo "Файл .env не найден в корне проекта!"
    if [ -f ./backend/.env ]; then
        echo "Копируем .env из backend в корень..."
        cp ./backend/.env .env
    else
        echo "Создайте .env файл в корне проекта"
        exit 1
    fi
fi

echo "[3/8] Установка зависимостей frontend"
cd frontend
npm ci --no-audit --fund=false
npx parcel build bundles-src/index.js --public-url /bundles/ --dist-dir bundles --no-source-maps
cd ..

echo "[4/8] Останавливаем и удаляем старые контейнеры"
docker-compose down || true

echo "[5/8] Запускаем базу данных отдельно"
docker-compose up -d db

echo "[6/8] Ожидание готовности PostgreSQL..."
for i in {1..30}; do
    if docker-compose exec -T db pg_isready -U pavel -d star_burger; then
        echo "База данных готова!"
        break
    fi
    echo "Ожидание базы данных... ($i/30)"
    sleep 5
done

echo "[7/8] Build & up остальных сервисов"
docker-compose build backend frontend
docker-compose up -d backend frontend

echo "[8/8] Импорт dump.sql (если требуется)"
if [ "${IMPORT_DUMP:-false}" = "true" ] && [ -f "dump.sql" ]; then
    echo "Импорт dump.sql в базу данных..."
    docker-compose exec -T db psql -U pavel -d star_burger < dump.sql
    echo "Дамп импортирован"

    sed -i 's/IMPORT_DUMP=true/IMPORT_DUMP=false/' .env
fi

echo "[9/8] Django миграции и статика"
docker-compose exec -T backend python manage.py migrate --noinput
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "[10/8] Перезагрузка nginx и завершение"
docker-compose restart backend
sudo nginx -t && sudo systemctl reload nginx

echo "Готово! Проект развернут"
echo "Доступ по адресам:"
echo "   - https://ou7ro.ru"
echo "   - https://www.ou7ro.ru"
echo "   - http://89.23.99.228 (редирект на HTTPS)"
echo ""
echo "Проверка статуса:"
echo "   docker-compose ps"
echo "   docker-compose logs -f backend"
echo "   sudo systemctl status nginx"