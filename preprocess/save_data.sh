#!/bin/bash

TAG=$1
PROJECT_DIR="preprocess"

git clone <ssh github url>
cd <github repository>/<project name>
git checkout $TAG
if [ $? -eq 0 ];then
  echo overwrite tag
  git tag -d $TAG
  git push origin :$TAG
else
  echo create new tag
fi
# 조건문 종료