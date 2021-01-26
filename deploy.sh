#!/bin/sh
#echo $0
yarn build 
rsync -urvP --delete-after "$(dirname $0)/build/" root@odri.net.au:/var/www/odri/
