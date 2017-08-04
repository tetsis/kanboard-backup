#!/bin/sh

PWD=`pwd`

echo "  0  8  *  *  * root ${PWD}/client.sh" >> /etc/crontab
