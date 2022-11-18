#!/bin/sh
[ $# -ne 1 ] && { 
 echo "Usage: sh 66c221be-6ab2-ef53-1589-fe16877914f8.sh  <配置文件所在目录(eg:/usr/local/apache-tomcat-6.0.37/conf)>";
 exit 1;
}
# 获取当前路径

pathname=`pwd`


echo '#!/bin/awk -f' > /tmp/NSF{nsf_tm}_awkxmlfilter
echo 'BEGIN{flag=0;} { while(getline) {' >> /tmp/NSF{nsf_tm}_awkxmlfilter
echo 'if (index($0,"<!--")|| flag==1) {' >> /tmp/NSF{nsf_tm}_awkxmlfilter
echo 'if(index($0,"HTTP") && index($0,"-->")) { ' >> /tmp/NSF{nsf_tm}_awkxmlfilter
echo 'print $0;continue}flag=1;if (index($0,"-->")) {' >> /tmp/NSF{nsf_tm}_awkxmlfilter
echo 'flag=0} print "";continue}print $0}}' >> /tmp/NSF{nsf_tm}_awkxmlfilter
echo '#!/bin/awk -f' > /tmp/NSF{nsf_tm}_c213
echo 'BEGIN{flag=0;flag2=0;' >> /tmp/NSF{nsf_tm}_c213
echo 'rexStr="(minSpareThreads|acceptCount|maxThreads|maxSpareThreads)"}' >> /tmp/NSF{nsf_tm}_c213
echo '{ x=$0;' >> /tmp/NSF{nsf_tm}_c213
echo 'if(match($0,".*Define.*HTTP.*Connector.*")>0 || (flag==1 && flag2 < 2))' >> /tmp/NSF{nsf_tm}_c213
echo '{ flag = 1; while (match(x,rexStr)>0) { ' >> /tmp/NSF{nsf_tm}_c213
echo 'key=substr(x,RSTART,RLENGTH);' >> /tmp/NSF{nsf_tm}_c213
echo 'x = substr(x,RSTART+RLENGTH+1);' >> /tmp/NSF{nsf_tm}_c213
echo 'split(x,b,"\""); a[key]=b[2]; }' >> /tmp/NSF{nsf_tm}_c213
echo 'if(index($0,">")) { flag2++; } } }' >> /tmp/NSF{nsf_tm}_c213
echo 'END{if(a["maxThreads"] !="" || a["minSpareThreads"] !="" ||' >> /tmp/NSF{nsf_tm}_c213
echo 'a["maxSpareThreads"] !="" || a["acceptCount"] !="") {' >> /tmp/NSF{nsf_tm}_c213
echo 'print a["maxThreads"],a["minSpareThreads"],' >> /tmp/NSF{nsf_tm}_c213
echo 'a["maxSpareThreads"],a["acceptCount"] }}' >> /tmp/NSF{nsf_tm}_c213
echo '#!/bin/awk -f' > /tmp/NSF{nsf_tm}_port956
echo 'BEGIN{flag=0}{while(getline){' >> /tmp/NSF{nsf_tm}_port956
echo 'if(index($0,"<!--")){ ' >> /tmp/NSF{nsf_tm}_port956
echo 'getline;if(index($0,"Connector")){flag=1}}' >> /tmp/NSF{nsf_tm}_port956
echo 'if(index($0,"port") && flag==1){flag=0;print $0}}}' >> /tmp/NSF{nsf_tm}_port956
cd "${1}"

# 执行pl脚本
perl $pathname/66c221be-6ab2-ef53-1589-fe16877914f8.pl "${1}"


#----------------------------------------------------------
#备注:
#产品名称:RSAS
#模板名称:Tomcat 配置规范 (Linux)
#配置核查模板版本:V6.0R04F01.0000
#所属行业:绿盟科技
#系统版本:V6.0R04F01SP06
#HASH:36BD-7A5D-3375-63BB
