基于 php:fpm

## 更新 apt-get 源到国内

sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

apt-get update && apt-get clean

## 添加扩展并开启

docker-php-ext-install pdo_mysql

pecl install xdebug

docker-php-ext-enable pdo_mysql xdebug