#!/bin/bash

set -e

echo "[INFO] Начинаем деплой Star Burger"

echo "[INFO] Обновляем код из Git"
git pull

COMMIT=$(git rev-parse HEAD)
echo "[INFO] Текущий коммит: $COMMIT"

echo "[INFO] Останавливаем старые контейнеры"
docker-compose down

echo "[INFO] Очищаем Docker-кэш"
docker system prune -f

echo "[INFO] Собираем и запускаем контейнеры"
docker-compose build
docker-compose up -d

echo "[INFO] Проверяем статус сервисов"
docker ps

echo "[INFO] Готово"