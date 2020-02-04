FROM nginx:stable-alpine

WORKDIR /app

COPY default.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/
