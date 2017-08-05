#!/bin/sh

PWD=`pwd`

echo "  0  3  *  *  * root ${PWD}/server.sh" >> /etc/crontab
