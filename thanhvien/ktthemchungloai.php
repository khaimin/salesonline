<?php
	include('../dbcon.php');
	if(isset($_POST['add'])) {
		$tencl=$_POST['cl'];
		$s="insert into webtm_chungloaisp(TenCL) values('$tencl')";
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