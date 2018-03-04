<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="lightbox2-master/dist/css/lightbox.min.css">
<title>Untitled Document</title>
<style type="text/css">
.sp {
	display: inline-block;
	width: 250px;
	//height: 300px;
	margin: 10px 10px;
	padding: 0;
	//margin: 5px;
	border: 1px solid black;
}
.container {
	width: 900px;
	border: 1px solid black;
}
img {
	width: 100%;
	transition: all 0.5s;
}
.sp img:hover {
	filter:brightness(75%);
	transform: scale(1.2,1.2);
}
#img {
	overflow: hidden;
	//height: 85%;
}
.sub {
	background-color: green;
	//height: 7.5%;
	color: white;
	padding: 5px 0px;
}
#index {
	display: inline-block;
	background-color:#0FF;
	margin-bottom: 2px;
	padding: 5px;
}
#index1 {
	display: inline-block;
	background-color:#9F6;
	margin-bottom: 2px;
	padding: 5px;
}
</style>
</head>

<body>
<center><div class="container" align="center">
    <?php
	if(isset($_POST['select'])) {
		$loai=$_POST['select'];
		$tensp=$_POST['tensp'];
		$gia1=$_POST['giatu'];
		$gia2=$_POST['den'];
	}
	else {
		$loai=$_GET['idloai'];
		$tensp=$_GET['tensp'];
		$gia1=$_GET['giatu'];
		$gia2=$_GET['den'];
	}
	if(!isset($_GET['p'])) {
		$p=1;
	}
	else {
		$p=intVal($_GET['p']);
	}
	$sosp=6;
	$x=$sosp*($p-1);
	include('dbcon.php');
	$s="select * from webtm_sanpham where TenSP like '%$tensp%'";
	if($loai!='all') {
		$s=$s." and idLoai='$loai'";
	}
	if($gia1!='') {
		$s=$s." and Gia>='$gia1'";
	}
	if($gia2!='') {
		$s=$s." and Gia<='$gia2'";
	}
	$n=$s;
	$s=$s." limit $x,$sosp";
	$kq=mysql_query($s,$link);
	if(mysql_num_rows($kq)>0) { //neu so dong cua csdl >0
		while($d=mysql_fetch_array($kq)) {
		?>
		<div class="sp">
        	<div id="img"><a class="example-image-link" href="images/<?php echo $d['UrlHinh'] ?>" data-lightbox="example-1"><img class="example-image" src="images/<?php echo $d['UrlHinh'] ?>" /></a></div>
            <div class="sub" align="center"><strong>Ten san pham:</strong> <?php echo $d['TenSP'] ?></div>
            <div class="sub"><strong>Gia:</strong> <?php echo $d['Gia']?></div>
        </div>
		<?php }
	} 
	else { ?>
    	<span>khong co du lieu</span>
    <?php } ?>
   <div id="pt">
   <?php
   $kq1=mysql_query($n,$link);
   $tsd=mysql_num_rows($kq1);
   $tst=ceil($tsd/$sosp);
   for($i=1;$i<=$tst;$i++) {
	   	if($i==$p)
	   		echo "<span id='index1'><a style='text-decoration: none; color: white;' href='#'>$i</a></span>";
		else { ?>
			<span id="index"><a style="text-decoration: none; color: white" href="kqtim.php?p=<?php echo $i; ?>&idloai=<?php echo $loai; ?>&tensp=<?php echo $tensp ?>&giatu=<?php echo $gia1 ?>&den=<?php echo $gia2 ?>"><?php echo $i; ?></a></span>
		<?php }
   }
   ?>
   </div>
</div></center>
<script src="lightbox2-master/dist/js/lightbox-plus-jquery.min.js"></script>
</body>
</html>