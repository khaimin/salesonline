<?php
	include('../dbcon.php');
	if(isset($_POST['add'])) {
		
		$tencl=$_POST['tencl'];
		$idcl=$_POST['idcl'];
		$s="update webtm_chungloaisp set TenCL='$tencl' where idCL=$idcl";
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