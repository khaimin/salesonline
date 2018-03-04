<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="lightbox2-master/dist/css/lightbox.min.css">
<title>Untitled Document</title>
<style type="text/css">
body
{
	//background-color:#FCC
}
.sp {
	display: inline-block;
	width: 25%;
	//height: 300px;
	margin: 10px 10px;
	padding: 0;
	//margin: 5px;
	border: 1px solid #F96;
}
.container {
	//border: 1px solid black;
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
.mua{
	background-color:#000;
	height:30px;
}
.mua a{
	color:#FFF;
	text-decoration:none;
	line-height:30px;
	font-size:20px;	

}
.mua a:hover{color:#FF0}
.sub {
	background-color: #F96;
	color: #000;
	padding: 3px 0px;
}
.sub a
{
	text-decoration:none;	
	color:#000;
	
}
.sub a:hover{
color:#30F;
}
#index {
	display: inline-block;
	background-color:#000;
	margin-bottom: 2px;
	padding: 5px;
}
#index1 {
	display: inline-block;
	background-color:#F00;
	margin-bottom: 2px;
	padding: 5px;
}
</style>
</head>

<body>
<center><div class="container" align="center">
    <?php
	if(!isset($_GET['p'])) {
		$p=1;
	}
	else {
		$p=intVal($_GET['p']);
	}
	$sosp=6;
	$x=$sosp*($p-1);
	include('dbcon.php');
	$s="select * from webtm_sanpham limit $x,$sosp";
	$kq=mysql_query($s,$link);
	if(mysql_num_rows($kq)>0) { //neu so dong cua csdl >0
		while($d=mysql_fetch_array($kq)) {
		?>
		<div class="sp">
        	<div id="img"><a class="example-image-link" href="images/<?php echo $d['UrlHinh']?>" data-lightbox="example-1"><img class="example-image" src="images/<?php echo $d['UrlHinh'] ?>" /></a></div>
            <div class="sub" align="center"><a href="index.php?idsp=<?php echo $d['idSP']?>&id=chitiet"><strong>Tên sản phẩm:</strong> <?php echo $d['TenSP'] ?></a></div>
            <div class="sub"><strong>Giá:</strong> <?php echo $d['Gia']?></div>
            <div class="mua"><a href="dathangall.php?idsp=<?php echo $d['idSP'] ?>">Mua</a></div>
        </div>
		<?php }
	} 
	else { ?>
    	<span>khong co du lieu</span>
    <?php } ?>
   <div id="pt">
   <?php
   $nhomtrang=5;
   $s1="select* from webtm_sanpham";
   $kq1=mysql_query($s1,$link);
   $tsd=mysql_num_rows($kq1);
   $tst=ceil($tsd/$sosp);
   $tsn=ceil($tst/$nhomtrang);
   $nhom=ceil($p/$nhomtrang);
   $dau=$nhom*$nhomtrang-($nhomtrang-1);
   if($nhom<$tsn) {
	   $cuoi=$dau+$nhomtrang-1;
   }
   else {
   		$cuoi=$tst;
   }
   if($p>1) { ?>
		<a style="color:#000; text-decoration:none" href="index.php?p=<?php echo $p-1 ?>&nhomtrang=<?php echo $nhomtrang ?>&tsn=<?php echo $tsn ?>&dau=<?php echo $dau ?>&cuoi=<?php echo $cuoi ?>&nhom=<?php echo $nhom ?>"><<</a>
   <?php }
   ?>
   <?php
   for($i=$dau;$i<=$cuoi;$i++) {
	   	if($i==$p)
	   		echo "<span id='index1'><a style='text-decoration: none; color: white;' href='#'>$i</a></span>";
		else { ?>
			<span id="index"><a style="text-decoration: none; color: white" href="index.php?p=<?php echo $i; ?>&nhomtrang=<?php echo $nhomtrang ?>&tsn=<?php echo $tsn ?>&dau=<?php echo $dau ?>&cuoi=<?php echo $cuoi ?>"><?php echo 
			$i; ?></a></span>
		<?php }
   }
   ?>
    <?php
   if($p<$tst) { ?>
		<a style="color:#000; text-decoration:none" href="index.php?p=<?php echo $p+1 ?>&nhomtrang=<?php echo $nhomtrang ?>&tsn=<?php echo $tsn ?>&dau=<?php echo $dau ?>&cuoi=<?php echo $cuoi ?>">>></a>
   <?php }
   ?>
   </div>
</div></center>
<script src="lightbox2-master/dist/js/lightbox-plus-jquery.min.js"></script>
</body>
</html>