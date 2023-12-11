#! /bin/bash
dnf update -y
dnf install httpd -y
FOLDER="https://raw.githubusercontent.com/yaman5891/kitten58/main/static-web"
cd /var/www/html
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg
wget ${FOLDER}/cat3.png
systemctl start httpd
systemctl enable httpd 