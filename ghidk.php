<?php
	session_start();
	include('dbcon.php');
	
	if(isset($_POST['login']))
	{
		$b1=$_POST['un'];
		$b2=$_POST['pa'];
		$b3=$_POST['email'];
	}
	if($_SESSION['captcha']['code']==$_POST["captcha"]){
	$s="insert into webtm_khachhang(UserName,Password,Email) values('$b1','$b2','$b3')";
	$kq=mysql_query($s,$link);
	if ($kq==true)
		header ("location:index.php");
	else
		header ("location:index.php?id=dk");
	}
	else{
		header ("location:index.php?id=dk");
	}
?>