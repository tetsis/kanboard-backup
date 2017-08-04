#!/bin/sh

PWD=`pwd`

echo "  0  6  *  *  * root ${PWD}/server.sh" >> /etc/crontab
