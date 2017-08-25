#!/bin/sh

CMDNAME=`basename $0`
if [ $# -ne 1 ]; then
    echo "Usage: $CMDNAME hostname" 1>&2
    exit 1
fi

HOSTNAME=$1

PWD=`pwd`

echo "  0  8  *  *  * root ${PWD}/client.sh ${HOSTNAME}" >> /etc/crontab
