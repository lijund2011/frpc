#!/bin/bash

# 调用curl命令获取接口返回结果，并保存到变量中
#response=$(curl -s "https://www.hkfrp.cn/ajax?action=getcfg&id=OIIPVDYL&user=Q3U8yX5zDrxEWRuK")

url="https://www.hkfrp.cn/ajax?action=getcfg&id=OIIPVDYL&user=Q3U8yX5zDrxEWRuK"
  #echo ${url}
 curl ${url} > ip.txt
