<head>
<style type="text/css">
.sp {
	display: inline-block;
	width: 25%;
	margin: 10px 10px;
	padding: 0;
	border: 1px solid black;
}
.container {
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

}
.sub {
	background-color: green;
	color: white;
	padding: 5px 0px;
}
</style>
</head>



<center><div class="container" align="center">
    <?php
	include('dbcon.php');
	$s="select * from webtm_sanpham order by Gia desc limit 0,6"; // 6 san pham co gia cao nhat
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
</div></center>
<script src="lightbox2-master/dist/js/lightbox-plus-jquery.min.js"></script>
