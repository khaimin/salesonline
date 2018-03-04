<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	if(isset($thongbao))
		echo $thongbao;
?>
<form style="margin: 0;" name="form1" method="post" action="">
	<table border="0" cellpadding="10px" cellspacing="10px">
    	<tr>
        	<td>Tên Đăng Nhập</td>
            <td><input name="un" type="text"  /></td>
        </tr>
        <tr>
        	<td>Mật Khẩu</td>
            <td><input type="password" name="pa" /></td>
        </tr>
        <tr>
        	<td><input type="submit" name="login" value="Đăng Nhập" /></td>
        </tr>
    </table>
</form>
</body>
</html>