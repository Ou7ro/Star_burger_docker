FROM python:3.10-slim

WORKDIR /opt/Star_burger_docker

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p /opt/Star_burger_docker/staticfiles \
    /opt/Star_burger_docker/media \
    /opt/Star_burger_docker/bundles

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

EXPOSE 8000

CMD ["python", "-m", "gunicorn", "star_burger.wsgi:application", "--bind", "0.0.0.0:8000"] 