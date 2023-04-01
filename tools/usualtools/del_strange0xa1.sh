#!/bin/bash

# 获取输入的文件夹名称
folder_name=$1

#!/bin/bash

# 遍历文件夹下所有文件，包括子文件夹
for file in $(find $folder_name -type f -maxdepth 999); do
    tr -cd '\11\12\15\40-\176' < $file > temp.txt
    mv temp.txt $file
done