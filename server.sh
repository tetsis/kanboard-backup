#!/bin/sh

DATE=`LANG=en date "+%Y%m%d"`
FILENAME="kanboard-data-${DATE}.tar.gz"

mkdir /root/kanboard-backup
cd /root/kanboard-backup

cp -a /var/www/html .

tar zcvf kanboard-data-${DATE}.tar.gz html

rm -rf html
