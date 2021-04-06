FROM shiphp/nginx-env
MAINTAINER Mike Bertram <contact@mibexx.de>

ENV PIMCORE_DOMAIN "pimcore.local"
ENV APP_DIR "/var/www"
ENV DOCROOT "/var/www/web"
ENV NGINX_HOST "pimcore-php-fpm"

ENV ACCESS_LOG "/var/log/access.log"
ENV ERROR_LOG "/var/log/error.log"

ADD conf/app.conf /etc/nginx/conf.d/app.conf

COPY conf/index.php /var/www/web/index.php

RUN chown -Rf www-data:www-data $APP_DIR

EXPOSE 80
EXPOSE 443
