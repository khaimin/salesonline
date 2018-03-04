<?php
	include('../dbcon.php');
	if(isset($_GET['idLoai'])) {
		$idxoa=$_GET['idLoai'];
		$s="delete from webtm_loaisp where idLoai='$idxoa'";
		$kq=mysql_query($s,$link);
		if($kq==true) {
			echo 'xoa thanh cong';
			echo "<script>window.location='index.php'</script>";
		}
		else {
			echo 'xoa that bai';
			echo "<script>window.location='index.php'</script>";
		}
	}
?>