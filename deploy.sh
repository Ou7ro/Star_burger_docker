#!/usr/bin/env bash
set -euo pipefail

cd /opt/Star_burger_docker

echo "[1/8] git pull"
git pull --rebase

echo "[2/8] Проверка переменных окружения"
if [ ! -f .env ]; then
    echo "Файл .env не найден в корне проекта!"
    exit 1
fi

export $(grep -v '^#' .env | xargs)

echo "[3/8] Установка зависимостей frontend"
cd frontend
npm ci --no-audit --fund=false
npx parcel build bundles-src/index.js --public-url /bundles/ --dist-dir bundles --no-source-maps
cd ..

echo "[4/8] Build & up Docker"
docker-compose build
docker-compose up -d

echo "[5/8] Ожидание готовности PostgreSQL..."
sleep 15

echo "[6/8] Импорт dump.sql (если требуется)"
if [ "${IMPORT_DUMP:-false}" = "true" ] && [ -f "dump.sql" ]; then
    echo "Импорт dump.sql в базу данных..."
    docker-compose exec -T db psql -U ${POSTGRES_USER} -d ${POSTGRES_DB} < dump.sql
    echo "Дамп импортирован"

    sed -i 's/IMPORT_DUMP=true/IMPORT_DUMP=false/' .env
fi

echo "[7/8] Django миграции и статика"
docker-compose exec -T backend python manage.py migrate --noinput
docker-compose exec -T backend python manage.py collectstatic --noinput

echo "[8/8] Перезагрузка nginx и завершение"
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
echo "   sudo systemctl status nginx"