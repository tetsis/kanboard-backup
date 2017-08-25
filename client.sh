#!/bin/sh

HOSTNAME=$1
#PASSWORD=$2
DATE=`LANG=en date "+%Y%m%d"`
FILENAME="kanboard-data-${DATE}.tar.gz"

mkdir /root/kanboard-backup
cd /root/kanboard-backup
rm ${FILENAME}

#sshpass -p${PASSWORD} scp -o StrictHostKeyChecking=no root@${HOSTNAME}:/root/kanboard-backup/${FILENAME} .
scp -o StrictHostKeyChecking=no root@${HOSTNAME}:/root/kanboard-backup/${FILENAME} .
