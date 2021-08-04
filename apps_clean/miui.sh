#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
CameraTools
Mipay
MIpay
MiuiBugReport
MiuiCamera
CatchLog
MIService
MiSound
MIUIAod
MiuiVideoGlobal
MiBrowserGlobal
MiuiWallpaper
Updater
MiuiVideo
Music
MiuiAod
MiService
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
