#!env perl
#Author: autoCreated
my $para_num = "3";
# 配置模板创建时间
my $template_time = "2021-07-15 17:10:45";
my %para;
@array_pre_flag = ();
@array_appendix_flag = ();

$para{MySQL_user} = $ARGV[0];
$para{MySQL_port} = $ARGV[1];
$para{MySQL_password} = $ARGV[2];

# 处理检查项中的执行命令

$pre_cmd{6910} = "ps -ef | grep mysqld | grep -v grep";
$pre_cmd{7849} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select user from user;\">/tmp/NSF{nsf_tm}_user.txt
cat /tmp/NSF{nsf_tm}_user.txt | grep -v root | grep -v user";
$pre_cmd{9919} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select user from user;\"";
$pre_cmd{6577} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'log_error'\\G;\"";
$pre_cmd{6523} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'general_log'\\G;\"";
$pre_cmd{6903} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'slow_query_log'\\G;\"";
$pre_cmd{6945} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'log_slave_updates'\\G;\"";
$pre_cmd{6944} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'log_bin'\\G;\"";
$pre_cmd{1738} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select user from user where user = '';\"";
$pre_cmd{4947} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select Password from user where Password = '';\"";
$pre_cmd{8473} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show databases;\"";
$pre_cmd{10819} = "touch /thelocalfile
mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;load data local infile '/thelocalfile' into table user fields terminated by ',';\" >/tmp/error.txt 2>&1
rm /thelocalfile
cat /tmp/error.txt";
$pre_cmd{1} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select authentication_string from user where authentication_string= '';\"";
$pre_cmd{7697} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'max_connections'\\G;\"";
$pre_cmd{10820} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;load data local infile '/thelocalfile' into table user fields terminated by ',';\" >/tmp/error.txt 2>&1
cat /tmp/error.txt";

push(@array_pre_flag, 6910);
push(@array_pre_flag, 7849);
push(@array_pre_flag, 9919);
push(@array_pre_flag, 6577);
push(@array_pre_flag, 6523);
push(@array_pre_flag, 6903);
push(@array_pre_flag, 6945);
push(@array_pre_flag, 6944);
push(@array_pre_flag, 1738);
push(@array_pre_flag, 4947);
push(@array_pre_flag, 8473);
push(@array_pre_flag, 10819);
push(@array_pre_flag, 1);
push(@array_pre_flag, 7697);
push(@array_pre_flag, 10820);

$pre_cmd1{6910} = "ps -ef | grep mysqld | grep -v grep";
$pre_cmd1{7849} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select user from user;\">/tmp/NSF{nsf_tm}_user.txt
cat /tmp/NSF{nsf_tm}_user.txt | grep -v root | grep -v user";
$pre_cmd1{9919} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select user from user;\"";
$pre_cmd1{6577} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'log_error'\\G;\"";
$pre_cmd1{6523} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'general_log'\\G;\"";
$pre_cmd1{6903} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'slow_query_log'\\G;\"";
$pre_cmd1{6945} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'log_slave_updates'\\G;\"";
$pre_cmd1{6944} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'log_bin'\\G;\"";
$pre_cmd1{1738} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select user from user where user = '';\"";
$pre_cmd1{4947} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select Password from user where Password = '';\"";
$pre_cmd1{8473} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show databases;\"";
$pre_cmd1{10819} = "touch /thelocalfile
mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;load data local infile '/thelocalfile' into table user fields terminated by ',';\" >/tmp/error.txt 2>&1
rm /thelocalfile
cat /tmp/error.txt";
$pre_cmd1{1} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;select authentication_string from user where authentication_string= '';\"";
$pre_cmd1{7697} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'max_connections'\\G;\"";
$pre_cmd1{10820} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"use mysql;load data local infile '/thelocalfile' into table user fields terminated by ',';\" >/tmp/error.txt 2>&1
cat /tmp/error.txt";

# 处理附录检查项中的执行命令

$appendix_cmd{2} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'skip_networking'\\G;\"";$appendix_cmd{1} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --skip-column-names --port=$para{MySQL_port} -e\"use mysql;select version();\" | grep -v \"+--\"";$appendix_cmd{0} = "mysql -u\"$para{MySQL_user}\" -p\"$para{MySQL_password}\" -h127.0.0.1 --skip-column-names --port=$para{MySQL_port} -e\"use mysql;select User,Host from user ;\" | sed \"s/|//\"";
push(@array_appendix_flag, 2);
push(@array_appendix_flag, 1);
push(@array_appendix_flag, 0);

$appendix_cmd1{2} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --port=$para{MySQL_port} -e\"show variables like 'skip_networking'\\G;\"";$appendix_cmd1{1} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --skip-column-names --port=$para{MySQL_port} -e\"use mysql;select version();\" | grep -v \"+--\"";$appendix_cmd1{0} = "mysql -u\"$para{MySQL_user}\" -p\"******\" -h127.0.0.1 --skip-column-names --port=$para{MySQL_port} -e\"use mysql;select User,Host from user ;\" | sed \"s/|//\"";
# 获取操作系统信息函数
sub get_os_info{
 my %os_info = (
 "hostname"=>"","osname"=>"","osversion"=>"");
 $os_info{"hostname"} = `uname -n`;
 $os_info{"osname"} = `uname -s`;
 $os_info{"osversion"} = `uname -r`;
foreach (%os_info){   chomp;}
return %os_info;}

# 执行命令存入xml文件
sub add_item{
 my ($string, $flag, $command, $value)= @_;
 $string .= "\t\t".'<item flag="'.$flag.'">'."\n";
 $string .= "\t\t\t".'<cmd info="'.$date.'">'."\n";
 $string .= "\t\t\t<command><![CDATA[".$command."]]></command>\n";
 $string .= "\t\t\t<value><![CDATA[".$value."]]></value>\n";
 $string .= "\t\t\t</cmd>\n";
 $string .= "\t\t</item>\n";
return $string;}
 sub generate_xml{
 $ARGC = @ARGV;
if($ARGC lt 2){
 print qq{usag: 66c221be-6ab2-ef53-1589-fe16877914a8.pl  <数据库用户名> <端口号>};
exit;}
my %os_info = get_os_info();
 my $os_name = $os_info{"osname"};
 my $host_name = $os_info{"hostname"};
 my $os_version = $os_info{"osversion"};
 my $date = `date +%y-%m-%d`;
 chomp $date;
 my $ipaddr = "";
 if($os_name =~ /SunOS|AIX/i){
  $ipaddr = `ifconfig -a | awk '/inet.[0-9]/{print \$2}' | grep -v 127.0.0.1 | head -n 1`;
 }else{
  $ipaddr = `ifconfig | grep -oE 'inet[[:space:]]*(addr)?\.?([0-9]{1,3}\\.?){4}' | grep -v 127.0.0.1 | grep -oE '([0-9]{1,3}\\.?){4}' | head -n 1`;}
 chomp $ipaddr;
 my $xml_string = "";
 $xml_string .='<?xml version="1.0" encoding="UTF-8"?>'."\n";
 $xml_string .= '<result uuid= "'.'66c221be-6ab2-ef53-1589-fe16877914a8'.'" ip="'.$ipaddr.'" template_time= "2021-07-15 17:10:45'.'">'."\n";
 $xml_string .= "\t".'<initcmd>'."\n";
 $xml_string .= "\t\t".'<cmd info="'.$date.'">';
 $xml_string .= '</cmd>'."\n";
 $xml_string .= "\t\t\t".'<command><![CDATA[ ]]></command>'."\n";
 $xml_string .= "\t\t\t".'<value><![CDATA[ ]]></value>'."\n";
 $xml_string .= "\t".'</initcmd>'."\n";
 $xml_string .= "\t".'<security type="auto">'."\n";
 foreach $key (@array_pre_flag){
 $value = $pre_cmd{$key};
 $value_1 = $pre_cmd1{$key};
 my $tmp_result = `$value`;
 chomp $tmp_result;
 $tmp_result =~ s/>/&gt;/g;
 $xml_string = &add_item( $xml_string, $key, $value_1, $tmp_result );}
 $xml_string .= "\t</security>\n";
 $xml_string .= "\t".'<security type="display">'."\n";
 foreach $key (@array_appendix_flag){
 $value = $appendix_cmd{$key};
 $value_1 = $appendix_cmd1{$key};
 my $tmp_result = `$value`;
 chomp $tmp_result;
 $tmp_result =~ s/>/&gt;/g;
 $xml_string = &add_item( $xml_string, $key, $value_1, $tmp_result );}
 $xml_string .= "\t"."</security>"."\n";
 $xml_string .= "<!--"."\n";
 $xml_string .= "\t".'<extra>'."\n";
 $xml_string .= "\t\t<product>RSAS</product>\n";
 $xml_string .= "\t\t<template>MySQL 配置规范 (Linux)</template>\n";
 $xml_string .= "\t\t<templatever>V6.0R04F01.0000</templatever>\n";
 $xml_string .= "\t\t<industry>绿盟科技</industry>\n";
 $xml_string .= "\t\t<version>V6.0R04F01SP06</version>\n";
 $xml_string .= "\t\t<hash>36BD-7A5D-3375-63BB</hash>\n";
 $xml_string .= "\t"."</extra>"."\n";
 $xml_string .= "-->"."\n";
 $xml_string .= "</result>"."\n";
 $xmlfile = $ipaddr."_"."66c221be-6ab2-ef53-1589-fe16877914a8"."_chk.xml";
 print $xmlfile."\n";
 open XML,">/tmp/".$xmlfile or die "Cannot create ip.xml:$!";
 print XML $xml_string;
 print "end write xml\n";
 print "DONE ALL\n";}
 generate_xml();
