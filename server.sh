#!/bin/sh

# Backup
DATE=`LANG=en date "+%Y%m%d"`
FILENAME="kanboard-data-${DATE}.tar.gz"

mkdir /root/kanboard-backup
cd /root/kanboard-backup

cp -a /var/www/html/kanboard .

tar zcvf kanboard-data-${DATE}.tar.gz kanboard

rm -rf kanboard

# Archive
YEAR=`LANG=en date "+%Y"`
MONTH=`LANG=en date "+%m"`
DAY=`LANG=en date "+%d"`

cd /var/www/html
mkdir -p archive/${YEAR}/${MONTH}/${DAY}
cp -a kanboard archive/${YEAR}/${MONTH}/${DAY}/
