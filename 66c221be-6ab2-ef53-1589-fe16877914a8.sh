#!/bin/sh
[ $# -ne 2 ] && { 
 echo "Usage: sh 66c221be-6ab2-ef53-1589-fe16877914a8.sh  <数据库用户名> <端口号>";
 exit 1;
}
# 获取当前路径

pathname=`pwd`
stty -echo
read -p "MySQL password:" pass
stty echo



# 执行pl脚本
perl $pathname/66c221be-6ab2-ef53-1589-fe16877914a8.pl "${1}" "${2}" "$pass"


#----------------------------------------------------------
#备注:
#产品名称:RSAS
#模板名称:MySQL 配置规范 (Linux)
#配置核查模板版本:V6.0R04F01.0000
#所属行业:绿盟科技
#系统版本:V6.0R04F01SP06
#HASH:36BD-7A5D-3375-63BB
