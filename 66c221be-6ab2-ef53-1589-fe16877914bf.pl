#!env perl
#Author: autoCreated
my $para_num = "1";
# 配置模板创建时间
my $template_time = "2022-02-23 13:59:03";
my %para;
@array_pre_flag = ();
@array_appendix_flag = ();

$para{Nginx_install_dir_linux} = $ARGV[0];

# 处理检查项中的执行命令

$pre_cmd{8} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"keepalive_timeout\"";
$pre_cmd{9} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"send_timeout\"";
$pre_cmd{10} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"limit_conn\"";
$pre_cmd{11} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"limit_zone\"";
$pre_cmd{15} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"server_tokens\"";
$pre_cmd{13} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"location\\s*~\\*\\s*\\s*^\\.+\"";
$pre_cmd{14} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf|grep -v ^[[:space:]]*#|grep error_page";
$pre_cmd{1} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf | grep \"error_log\"";
$pre_cmd{12} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"limit_rate\"";
$pre_cmd{3} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"log_format\"";
$pre_cmd{5} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"deny\"";
$pre_cmd{6} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"client_body_timeout\"";
$pre_cmd{2} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -e '^\\s*access_log'";
$pre_cmd{4} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"allow\"";
$pre_cmd{7} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"client_header_timeout\"";

push(@array_pre_flag, 8);
push(@array_pre_flag, 9);
push(@array_pre_flag, 10);
push(@array_pre_flag, 11);
push(@array_pre_flag, 15);
push(@array_pre_flag, 13);
push(@array_pre_flag, 14);
push(@array_pre_flag, 1);
push(@array_pre_flag, 12);
push(@array_pre_flag, 3);
push(@array_pre_flag, 5);
push(@array_pre_flag, 6);
push(@array_pre_flag, 2);
push(@array_pre_flag, 4);
push(@array_pre_flag, 7);

$pre_cmd1{8} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"keepalive_timeout\"";
$pre_cmd1{9} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"send_timeout\"";
$pre_cmd1{10} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"limit_conn\"";
$pre_cmd1{11} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"limit_zone\"";
$pre_cmd1{15} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"server_tokens\"";
$pre_cmd1{13} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"location\\s*~\\*\\s*\\s*^\\.+\"";
$pre_cmd1{14} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf|grep -v ^[[:space:]]*#|grep error_page";
$pre_cmd1{1} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf | grep \"error_log\"";
$pre_cmd1{12} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"limit_rate\"";
$pre_cmd1{3} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"log_format\"";
$pre_cmd1{5} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"deny\"";
$pre_cmd1{6} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"client_body_timeout\"";
$pre_cmd1{2} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -e '^\\s*access_log'";
$pre_cmd1{4} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep \"allow\"";
$pre_cmd1{7} = "cat $para{Nginx_install_dir_linux}/conf/nginx.conf  | grep -i \"client_header_timeout\"";

# 处理附录检查项中的执行命令

$appendix_cmd{0} = "$para{Nginx_install_dir_linux}/sbin/nginx -v >/tmp/nginxversion 2>&1
cat /tmp/nginxversion";$appendix_cmd{1} = "$para{Nginx_install_dir_linux}/sbin/nginx -V";
push(@array_appendix_flag, 0);
push(@array_appendix_flag, 1);

$appendix_cmd1{0} = "$para{Nginx_install_dir_linux}/sbin/nginx -v >/tmp/nginxversion 2>&1
cat /tmp/nginxversion";$appendix_cmd1{1} = "$para{Nginx_install_dir_linux}/sbin/nginx -V";
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
if($ARGC lt 1){
 print qq{usag: 66c221be-6ab2-ef53-1589-fe16877914bf.pl  <Nginx安装目录(eg:/usr/local/nginx)>};
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
 $xml_string .= '<result uuid= "'.'66c221be-6ab2-ef53-1589-fe16877914bf'.'" ip="'.$ipaddr.'" template_time= "2022-02-23 13:59:03'.'">'."\n";
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
 $xml_string .= "\t\t<template>Nginx 配置规范 (Linux)</template>\n";
 $xml_string .= "\t\t<templatever>V6.0R04F01.0000</templatever>\n";
 $xml_string .= "\t\t<industry>绿盟科技</industry>\n";
 $xml_string .= "\t\t<version>V6.0R04F01SP06</version>\n";
 $xml_string .= "\t\t<hash>36BD-7A5D-3375-63BB</hash>\n";
 $xml_string .= "\t"."</extra>"."\n";
 $xml_string .= "-->"."\n";
 $xml_string .= "</result>"."\n";
 $xmlfile = $ipaddr."_"."66c221be-6ab2-ef53-1589-fe16877914bf"."_chk.xml";
 print $xmlfile."\n";
 open XML,">/tmp/".$xmlfile or die "Cannot create ip.xml:$!";
 print XML $xml_string;
 print "end write xml\n";
 print "DONE ALL\n";}
 generate_xml();
