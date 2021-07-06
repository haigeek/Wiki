#!/bin/bash
time=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$1" == "" ]
then 
	set "${time} autopush wiki"
fi
echo "$1"
cp haigeek-wiki.html docs/index.html
git status
git add .
git commit -m "$1"
git push
echo "==========提交成功=========="