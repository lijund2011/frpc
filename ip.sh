#!/bin/bash
url="https://www.hkfrp.cn/ajax?action=getcfg&id=OIIPVDYL&user=Q3U8yX5zDrxEWRuK" # 替换为要访问的接口URL
FRP_PATH=/usr
filename="${FRP_PATH}/response.txt"      # 指定保存结果的文件名
 
curl -s "$url" > $filename   # 通过curl命令发送GET请求并将返回的内容保存到文件中
echo "已成功保存接口内容到$filename文件中！"
