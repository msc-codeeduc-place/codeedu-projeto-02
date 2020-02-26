FROM nginx:alpine
RUN apk add --no-cache bash
RUN rm /etc/nginx/conf.d/default.conf

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /var/www

#No ponto de vista da contrução, estou dentro de ./.docker/nginx
#build: .docker/nginx
COPY ./entrypoint-nginx.sh /
RUN chmod +x /entrypoint-nginx.sh
ENTRYPOINT ["/entrypoint-nginx.sh"]
