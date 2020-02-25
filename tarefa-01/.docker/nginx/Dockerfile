FROM nginx:alpine
RUN apk add --no-cache bash
RUN rm /etc/nginx/conf.d/default.conf

WORKDIR /var/www

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENTRYPOINT dockerize -template ./.docker/nginx/nginx.tmpl:./.docker/nginx/nginx.conf ./.docker/nginx/entrypoint.sh
