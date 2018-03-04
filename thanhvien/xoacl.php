<?php
	include('../dbcon.php');
	if(isset($_GET['idcl'])) {
		$idxoa=$_GET['idcl'];
		echo $s="delete from webtm_chungloaisp where idCL='$idxoa' and idCL not in(select idCL from webtm_loaisp where idCL='$idxoa')";
		echo $s1='select idCL from webtm_loaisp where idCL="'.$idxoa.'"';
		$a=mysql_num_rows(mysql_query($s1,$link));
		echo $a;
		if($a==0)
		{
				$kq=mysql_query($s,$link);
			if($kq==true) {
				echo 'xoa thanh cong';
				echo "<script>window.location='index.php'</script>";
				
			}
		}
		
		else {
			echo 'xoa that bai';
			echo "<script>window.location='index.php'</script>";
		}
	}
?>