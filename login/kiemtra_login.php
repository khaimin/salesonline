<?php
	if(isset($_POST['un'])) {
		$username=$_POST['un'];
		$password=$_POST['pa'];
		$s="select * from webtm_khachhang where UserName='$username' and Password='$password'";
		$kq=mysql_query($s,$link);
		if(mysql_num_rows($kq)==1) {
			$row_user=mysql_fetch_assoc($kq);
			$_SESSION['UserName']=$row_user['UserName'];
			$_SESSION['Hoten']=$row_user['HoTen'];
			$_SESSION['idkh']=$row_user['idKH'];
		}
		else {
			$thongbao="<p>Dang nhap that bai</p>";
		}
	}
?>