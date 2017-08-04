#!/bin/sh

CMDNAME=`basename $0`
if [ $# -ne 2 ]; then
    echo "Usage: $CMDNAME hostname password" 1>&2
    exit 1
fi

HOSTNAME=$1
PASSWORD=$2

PWD=`pwd`

echo "  0  8  *  *  * root ${PWD}/client.sh ${HOSTNAME} ${PASSWORD}" >> /etc/crontab
