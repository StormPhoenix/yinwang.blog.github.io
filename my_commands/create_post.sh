# this shell script is used to create a post template in "_posts" 
# directory which belongs to this project

name=$1

basePath=$(cd `dirname $0`;cd ../_posts;pwd)
basePath=${basePath}"/"

fileName=$(date "+%Y-%m-%d-")
time=$(date "+%Y-%m-%d %H:%M:%S +0800")

fileName=${fileName}${name}'.markdown'

touch ${basePath}${fileName}

echo "---
layout: post
title:    \"${name}\"
date:    ${time}
---
" >> ${basePath}${fileName}
