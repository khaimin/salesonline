<?php
	session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>
body {
	margin: 0;
	padding: 0;
}
td {
	padding: 10px;
}
#top {
	width: 100%;
	background-color: #000;
	margin-bottom: 5px;
	height: 105px;
	color:#FFF;
	//border-bottom:#000 5px double;
}
#container {
	padding-top:30px;
	width: 1024px;
	margin: 0 auto;
	min-height: 700px;
	//border:1px solid #000;
}
#main {
	width: 60%;
	float: left;
	
	//border:1px solid #000;
}
#left {
	padding-top:40px;
	margin-right: 5%;
	width: 15%;
	float: left;	
	font-size:18px;
	//background-color: #CC9;
}
#left_login
{
	width:600px;
	height:100px;
	float:left;	
	//border:#0C3 1px solid;
}
#right {
	width: 15%;
	float: right;
	min-height: 700px;
	//background-color: green;
}
footer {
	width: 100%;
	height: 120px;
	clear:both;

}
</style>
</head>

<body>
<?php
	include('../dbcon.php');
	if(isset($_POST['submittv'])) {
		$usernametv=$_POST['usertv'];
		$passwordtv=$_POST['passtv'];
		$s="select * from webtm_thanhvien where UserNameTV='$usernametv' and PasswordTV='$passwordtv'";
		$kq=mysql_query($s,$link);
		if(mysql_num_rows($kq)==1) {
			$row_usertv=mysql_fetch_assoc($kq);
			$_SESSION['usernametv']=$row_usertv['UserNameTV'];
		}
		else {
			echo "dang nhap that bai";
		}
	}
?>
<?php
	if(!isset($_SESSION['usernametv'])) {
?>
	<center>
	<form style="margin-top: 50px;" method="post" action="">
    	<span style="color: #09F; font-size:24px;">Đăng nhập Admin</span>
    	<table cellpadding="0" cellspacing="0">
        	<tr>
            	<td>Username: </td>
                <td><input type="text" name="usertv" /></td>
            </tr>
            <tr>
            	<td>Password: </td>
                <td><input type="password" name="passtv" /></td>
            </tr>
            <tr>
            	<td colspan="2"><center><input type="submit" name="submittv" value="Đăng nhập" /></center></td>
            </tr>
        </table>
    </form>
    </center>
<?php		
	}
?>
<?php
	if(isset($_SESSION['usernametv'])) {
?>
	<div id="top">
    	<div id="left_login">
        	<a style="text-decoration:none; color:#FFF; text-indent:20px; font-size:24px" href="index.php"><h1>2kShOp<span style="font-size:16px; color:#FFF;">&nbsp;&nbsp;&nbsp;&nbsp;Thỏa thích mua sắm, ngập tràn niềm vui!</span></h1></a>
          
        </div>
    	<div style="float: right; margin-top: 10px; margin-right: 20px;" id="info">
        	<div>Chào 
        	<?php
				echo $_SESSION['usernametv'];
			?>
            	<a href="thoat.php">Thoat</a>
            </div>
       	</div>
    </div>
    <div id="container">
        <div id="left">
        <?php
            include('menu.php');
        ?>
        </div>
        <div id="main">
        <?php
		if(isset($_GET['id']))
		{
			$id=$_GET['id'];
			switch ($id) {
				case "loai":
				{
					include('dschungloai.php');
					break;
				}
				case "themchungloai":
				{
					include('themchungloai.php');
					break;
				}
				case "xoacl":
				{
					include('xoacl.php');
					break;
				}
				case "suacl":
				{
					include('suacl.php');
					break;
				}
				case "loaisp":
				{
					include ("dsloai.php");
					break;
				}
				case "themloaisp":
				{
					include ("themloaisp.php");
					break;
				}
				case "sualoaisp":
				{
					include ("sualoaisp.php");
					break;
				}
				case "xoaloaisp":
				{
					include('xoaloaisp.php');
					break;
				}
				case "dssp":
				{
					include('dssp.php');
					break;
				}
				case "themsp":
				{
					include ("themsp.php");
					break;
				}
				case "xoasp":
				{
					include('xoasp.php');
					break;
				}
				case "suasp":
				{
					include('suasp.php');
					break;
				}
				case "donhang":
				{
					include('donhang.php');
					break;
				}
				default: include('spall-2.php');
			}
		}
		else
		{
			include('spall-2.php');
		}}
		?>
        </div>
        <div id="right">
        	
    	</div>
    </div>
    <footer>
    	<div style="height:73%;background-color:#000">

        </div>
        <div style="height:27%; background-color:#333; font-size:20px; color:#666; text-indent:40px">
        2kShOp <span style="color:#CCC">© 2016</span>
        </div>
    </footer>

</body>
</html>