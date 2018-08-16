FROM php:fpm
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt update && apt clean && apt install -y \
        php-pear \
        php-dev \
    && pecl install xdebug \
    && docker-php-ext-install \
        pdo_mysql \
    && docker-php-ext-enable xdebug pdo_mysql