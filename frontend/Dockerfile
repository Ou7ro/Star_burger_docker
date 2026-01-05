FROM node:16-alpine as build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

RUN mkdir -p static
RUN touch static/icon.png

RUN npm run build

RUN ls -la bundles/
RUN ls -la static/

FROM nginx:alpine

RUN mkdir -p /usr/share/nginx/html/static
RUN mkdir -p /usr/share/nginx/html/media
RUN mkdir -p /usr/share/nginx/html/bundles

COPY --from=build /app/bundles/ /usr/share/nginx/html/bundles/
COPY --from=build /app/index.html /usr/share/nginx/html/index.html
COPY --from=build /app/static/ /usr/share/nginx/html/static/

RUN touch /usr/share/nginx/html/bundles/index.js
RUN touch /usr/share/nginx/html/bundles/index.css

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN ls -la /usr/share/nginx/html/
RUN ls -la /usr/share/nginx/html/bundles/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]