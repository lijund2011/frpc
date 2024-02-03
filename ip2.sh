#!/bin/bash

base_path="https://testerhome.com/"
user_path="ycwdaaaa/topics?page="
rm suffix*
rm -f ./htmldoc/*
for i in $(seq 1 5)
do
user_page=${base_path}${user_path}${i}
echo ${user_page}
#echo "-----------------------------------"
curl ${user_page} 2>/dev/null | grep -E 'href="(/articles|/topics)/[0-9]{5}' | awk -F "\"" '{print $4$5}' | sort | awk -F ">|<" '{print $1 "@" $2}' >> ./suffix_path.txt
done

sed 's/[[:space:]]//g' ./suffix_path.txt > ./suffix_path_name.txt

for j in `cat ./suffix_path_name.txt`
do
echo "文件行内容：${j}"
arr_0=`echo ${j} | cut -d"@" -f1`
arr_1=`echo ${j} | cut -d"@" -f2`
echo "=================================="
echo "arr[0] is: ${arr_0}"
echo "arr[1] is: ${arr_1}"
topic_path=${base_path}${arr_0}
echo "topic_path is: ${topic_path}"
curl ${topic_path} 2>/dev/null > ./htmldoc/${arr_1}.html
done