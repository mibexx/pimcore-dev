FROM php:7.4-fpm-alpine
MAINTAINER Mike Bertram <contact@mibexx.de>

# OPcache defaults
ENV PHP_OPCACHE_ENABLE="1"
ENV PHP_OPCACHE_MEMORY_CONSUMPTION="128"
ENV PHP_OPCACHE_MAX_ACCELERATED_FILES="10000"
ENV PHP_OPCACHE_REVALIDATE_FREQUENCY="0"
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS="0"

# PHP-FPM defaults
ENV PHP_FPM_PM="dynamic"
ENV PHP_FPM_MAX_CHILDREN="5"
ENV PHP_FPM_START_SERVERS="2"
ENV PHP_FPM_MIN_SPARE_SERVERS="1"
ENV PHP_FPM_MAX_SPARE_SERVERS="2"

RUN apk add --no-cache $PHPIZE_DEPS libxml2-dev libpng libpng-dev oniguruma oniguruma-dev \
                       libzip libzip-dev icu icu-dev libcurl curl-dev graphviz graphviz-dev \
                       imagemagick-dev libtool

RUN docker-php-ext-install mysqli \
 && docker-php-ext-install pdo_mysql \
 && docker-php-ext-install iconv \
 && docker-php-ext-install dom \
 && docker-php-ext-install simplexml \
 && docker-php-ext-install gd \
 && docker-php-ext-install exif \
 && docker-php-ext-install fileinfo \
 && docker-php-ext-install mbstring \
 && docker-php-ext-install zip \
 && docker-php-ext-install intl \
 && docker-php-ext-install opcache \
 && docker-php-ext-install curl

RUN pecl install -o -f redis \
 &&  rm -rf /tmp/pear \
 && docker-php-ext-enable redis

RUN pecl install -o -f imagick-3.4.4 \
 && rm -rf /tmp/pear \
 && docker-php-ext-enable imagick

ADD conf/opcache.ini "$PHP_INI_DIR/conf.d/opcache.ini"
COPY conf/www.conf /usr/local/etc/php-fpm.d/www.conf
COPY conf/index.php /var/www/web/index.php
