<?php
	session_start();
	include('dbcon.php');
	if(isset($_POST['dkdonhang'])) {
		$nguoinhan=$_POST['nguoinhan'];
		$ngaydat=$_POST['ngaydat'];
		$diachi=$_POST['diachi'];
		$iddh=date('U').$_SESSION['idkh'];
	$s="insert into webtm_donhang(idDH,TenNguoiNhan,ThoiDiemDatHang,DiaDiemGiaoHang) values('$iddh','$nguoinhan','$ngaydat','$diachi')";
	$kq=mysql_query($s,$link);
	$lastid=mysql_insert_id();
	for($i=1;$i<=$_SESSION['somathang'];$i++) {
		$a=$_SESSION["masp".$i];
		$b=$_SESSION["soluong".$i];
		$c=$_SESSION["gia".$i];
		$s1="insert into webtm_donhangchitiet(idDH,idSP,SoLuong,Gia) values('$iddh','$a','$b','$c')";
		$kq1=mysql_query($s1,$link);
	}
	if ($kq==true)
		header("location:inhoadon/file_hoadon.php?id=$iddh");
		
	else
		header ("location:index.php?id=donhang");
	}
?>