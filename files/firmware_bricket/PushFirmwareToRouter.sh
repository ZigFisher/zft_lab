#!/bin/sh
#
# Ver. 201708131833

HOST="192.168.1.1"
PASS="1234"


clear
ping -c 3 ${HOST} && \
  sshpass -p ${PASS} scp $1 root@${HOST}:/tmp/ && \
  sshpass -p ${PASS} ssh root@${HOST} "sysupgrade -n /tmp/$1"




