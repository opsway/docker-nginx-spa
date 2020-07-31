FROM nginx:1.19-alpine
ENV CONFIG_NAME=frontend.conf
WORKDIR /app
RUN mkdir /etc/nginx/extra-conf.d
COPY frontend.conf /etc/nginx/extra-conf.d/
COPY ssr.conf /etc/nginx/extra-conf.d/
COPY default.conf /etc/nginx/templates/default.conf.template
COPY nginx.conf /etc/nginx/
