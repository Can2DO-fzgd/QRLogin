<?php
/*
*自定义api用于 android客户端扫码后访问，将指定的username保存到相应位置
*接收参数 randnumber username
*无返回值
*
*
*/
$randnumber = $_GET['randnumber'];
$username = $_GET['username'];

require 'mysql_connect.php';
mysql_query("update login_record set username = '$username' where randnumber = '$randnumber'");
	
	
?>