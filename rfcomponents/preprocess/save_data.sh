#!/bin/bash

TAG=$1

git clone https://github.com/RearFold/RearFold-dvc.git
cd RearFold-dvc/project1
git checkout $TAG
if [ $? -eq 0 ];then
  echo overwrite tag
  git tag -d $TAG
  git push origin :$TAG
else
  echo create new tag
fi
# 조건문 종료

dvc pull