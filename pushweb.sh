#!/bin/bash

AWSHOST="ec2-54-242-130-4.compute-1.amazonaws.com"
AWSUSER="push-web"
LOCALDIR="web-content"
EMAIL="jonathan.deleon@mymail.champlain.edu"

cd /root/cron-lab

rsync -e "ssh -i keys/push-web" -vraO --no-perms --delete --chmod=660 --chown=push-web:www-data "${LOCALDIR}/" "${AWSUS>

#logger -t $0 "web content pushed to ${AWSHOST}"
sudo -u jonathandeleon bash << HereTag
   echo "web content pushed to ${AWSHOST}" | s-nail -v -s "New Web Content" $email &>/dev/null
HereTag
