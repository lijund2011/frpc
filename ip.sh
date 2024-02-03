
#!/bin/bash
url="http://members.3322.org/dyndns/getip" # API接口URL
params=""                     # 传入的参数，根据API要求添加
response=$(curl -s "$url$params")   # 发送GET请求并将返回结果保存到变量response中
echo $response > result.json    # 将结果保存为result.json文件
