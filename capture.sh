#!/bin/bash
cd YOUR_PATH
DATE=`date +%Y%m%d%H%M%S`
/usr/sbin/screencapture -m -T0 -x ./capture/${DATE}.png
./NConvert/nconvert -overwrite -out png -crop 0 40 1440 820 ./capture/${DATE}.png
./NConvert/nconvert -overwrite -out png -ratio -resize 50% 50% ./capture/${DATE}.png
ruby tweet.rb "Ta-da" ./capture/${DATE}.png