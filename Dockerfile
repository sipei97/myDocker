FROM php:fpm
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get update && apt-get clean && apt-get install -y \
        php-pear php-dev