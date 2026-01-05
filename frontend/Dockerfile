FROM node:16-alpine as builder

WORKDIR /opt/Star_burger_docker

COPY package*.json ./
RUN npm ci --dev

COPY . .

RUN ./node_modules/.bin/parcel build bundles-src/index.html --dist-dir bundles --public-url="./"

FROM nginx:alpine

COPY --from=builder /opt/Star_burger_docker/bundles /usr/share/nginx/html/bundles
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]