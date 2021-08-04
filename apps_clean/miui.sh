#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
CameraTools
Mipay
MiuiBugReport
Browser
Provision
MiuiCamera
MiuiVideoGlobal
MiuiVideo
Music
Health
MiBrowserGlobal
Camera
GmsCore
MiuiScanner
PersonalAssistant
Phonesky
Email
PaymentService
Velvet
Weather
MiuiAOD
wps-lite

"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done

rm -rf $1/data-app/*
