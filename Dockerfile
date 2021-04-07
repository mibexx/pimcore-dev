FROM mibexx/pimcore-dev-app
MAINTAINER Mike Bertram <contact@mibexx.de>

COPY docker/pimcore/nginx/app.conf /etc/nginx/conf.d/app.conf

RUN rm -rf /var/www/* \
 && mkdir -p /var/assets
 && chown -Rf www-data:www-data /var/assets
 && mkdir -p /var/tmp
 && chown -Rf www-data:www-data /var/tmp

WORKDIR $APP_DIR

