<?php
	include('../dbcon.php');
	if(isset($_POST['add'])) {
		$tenloai=$_POST['tenloai'];
		$tencl=$_POST['idcl'];
		echo $tencl;
		$s="insert into webtm_loaisp(TenLoai,idCL) values('$tenloai','$tencl')";
		$kq=mysql_query($s,$link);
		if($kq==true) {
			echo 'them thanh cong';
		echo "<script>window.location='index.php'</script>";
		}
		else {
			echo 'them that bai';
		echo "<script>window.location='index.php'</script>";
		}
	}
	if(isset($_POST['back'])) {
			echo "<script>window.location='index.php?id=loai'</script>";
	}
	
?>