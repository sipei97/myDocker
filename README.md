基于 mysql:5.7

## 初次运行时报错

先重启容器试试

## 不能正常访问时，允许远程访问

GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY '123456';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '123456';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'127.0.0.1' IDENTIFIED BY '123456';

FLUSH PRIVILEGES;

## 更新 apt-get 源到国内

cp sources.list sources.list.bak

新 sources.list 使用的 163 源