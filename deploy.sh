#!/bin/sh
#echo $0
cd site && yarn build && cd ../
rsync -urvP "$(dirname $0)/site/build/" root@odri.net.au:/var/www/odri/
