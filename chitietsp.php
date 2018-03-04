<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>
#leftct{
width:35%;
height:300px;
float:left;
margin-top:50px;
//border:1px solid #000;
}
#imgphu{
width:30%;
height:100%;
border-right:1px solid #000;
float:left;
}
#phu1{
height:50%;
border-bottom:1px solid #000;
}
#imgchinh{
width:70%;
height:100%;

}
#imgchinh img
{
	margin-top:30px;
	margin-left:10px;
	width:180px;
	height:250px;
	//border:1px solid #000;	
}
#rightct{
width:200px;
height:200px;
margin-top:120px;
margin-left:20px;
float:left;

}
.sub{
	width:100%;
	height:40px;
	border-bottom:1px solid #000;
	line-height:40px;
	}
.mua{
background-color:#F33;
height:57px;
line-height:57px;
font-size:30px;
}
.mua a{
text-decoration:none;
color:#000;
}
.mua a:hover
{color:#FFF;}
#mota
{
width:66%;
min-height:300px;
float:left;	
padding-top:40px;
font-size:18px;
}
</style>
</head>

<body>
<center><div id="container" align="center">
<?php
if(isset($_GET['idsp']))
{
	$k=$_GET['idsp'];
	include("dbcon.php");	
	$s="select * from webtm_sanpham where idSP=$k";
	$kq=mysql_query($s,$link);
	if($d=mysql_fetch_array($kq))
	{?>
	<div id="leftct">
    	<div id="imgphu">
        	<div id="phu1">
            	<img width="90%" height="90%" style="padding-top:8px;" src="images/<?php echo $d['UrlHinh'] ?>">
            </div>
            <div id="phu2">
            	<img width="90%" height="90%" style="padding-top:8px;" src="images/<?php echo $d['UrlHinh'] ?>">
            </div>
        </div>
    	<div id="imgchinh">
    		<a class="example-image-link" href="images/<?php echo $d['UrlHinh']?>" data-lightbox="example-1"><img class="example-image" src="images/<?php echo $d['UrlHinh'] ?>"></a>
        </div>
    </div>
    <div id="rightct">
    	<div id="info">
        	<b>THÔNG TIN CHI TIẾT</b>
            </br>
            </br>
            </br>
            <div class="sub" align="center" style="border-top:1px solid #000"><strong>Tên sản phẩm:</strong> <?php echo $d['TenSP'] ?></a></div>
            <div class="sub" style="border-bottom:none"><strong>Giá:</strong> <?php echo $d['Gia']?></div>
            <div class="mua"><a href="dathangall.php?idsp=<?php echo $d['idSP'] ?>">Mua</a></div>
        </div>
    </div>
    <div id="mota">
        <B>MÔ TẢ</B>
        <p><?php echo $d['MoTa'] ?></p>
     
    </div>
	<?php
	}
}
?>
</div></center>
<script src="lightbox2-master/dist/js/lightbox-plus-jquery.min.js"></script>
</body>
</html>