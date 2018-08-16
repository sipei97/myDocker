基于 nginx:latest

## 更新 apt-get 源到国内

sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

apt-get update && apt-get clean