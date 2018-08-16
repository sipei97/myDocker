基于 php:fpm

## 更新 apt 源到国内

sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

## 安装程序

apt update && apt clean

apt install -y php-pear php-dev

## 添加扩展并开启

docker-php-ext-install pdo_mysql

pecl install xdebug

docker-php-ext-enable pdo_mysql xdebug