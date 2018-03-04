<?php
	include('../dbcon.php');
	if(isset($_GET['idloaisp'])) {
		$idxoa=$_GET['idloaisp'];
		$s="delete from webtm_sanpham where idSP='$idxoa'";
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