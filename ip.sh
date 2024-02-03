#!/bin/bash

# 调用curl命令获取接口返回结果，并保存到变量中
response=$(curl -s "https://www.hkfrp.cn/ajax?action=getcfg&id=OIIPVDYL&user=Q3U8yX5zDrxEWRuK")

# 打印接口返回结果
echo "接口返回结果："
echo "$response"

# 解析返回结果（示例：提取用户列表）
user_list=$(echo "$rrep -oP '(?<="name": ")[^"]+')

# 打印解析后的结果
echo "用户列表："
echo "$user_list"
