FROM php:fpm-alpine
LABEL maintainer="zhanglianxin <coolman@coolman.site>"

RUN set -eux \
    # && sed -i 's+dl-cdn.alpinelinux.org+mirrors.tencentyun.com+g' /etc/apk/repositories \
    # && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk update --no-cache \
    && apk add --no-cache su-exec libpng-dev jpeg-dev freetype-dev \
    # dom gd json mbstring openssl pdo_mysql tokenizer
    && sed 's/;date.timezone =/date.timezone = Asia\/Shanghai/' \
        /usr/local/etc/php/php.ini-production > /usr/local/etc/php/php.ini \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd pdo_mysql
