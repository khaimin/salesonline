<?php
	include('../dbcon.php');
	if(isset($_POST['add'])) {
		$idloai=$_POST['idloai'];
		$tenloai=$_POST['tenloai'];
		$idcl=$_POST['idcl'];
		$s="update webtm_loaisp set TenLoai='$tenloai', idCL=$idcl where idLoai=$idloai";
		$kq=mysql_query($s,$link);
		if($kq==true) {
			echo 'sua thanh cong';
			echo "<script>window.location='index.php'</script>";
		}
		else {
			echo 'sua that bai';
			echo "<script>window.location='index.php'</script>";
		}
	}
	if(isset($_POST['back'])) {
			echo "<script>window.location='index.php?id=loai'</script>";
	}
	
?>