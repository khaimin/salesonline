<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>
#chitietgiohang a{
	padding-top:100px;
	color:#F00;
}
#chitietgiohang a:hover{color:#FF0}
</style>

</head>

<body>
	<div>
    	<div style="text-align:center; background-color: #FF0000; color: white;font-size:18px; padding: 5px 0px;">Giỏ hàng</div>
        <div style="background-color: #000; padding: 10px 5px;">
        	<div style="padding-bottom: 5px; color:#FFF; border-bottom: 1px solid #FFFFFF;">Có <?php echo $_SESSION["somathang"]; ?> sản phẩm trong giỏ hàng</div>
            <?php
			if($_SESSION['somathang']>0) {
			?>
            <?php
				$tongsoluong=0;
				for($i=1;$i<=$_SESSION['somathang'];$i++) {
					$tongsoluong+=$_SESSION['soluong'.$i];
				}
			?>
            <div style="padding: 5px 0px; color:#FFF; border-bottom: 1px solid #FFFFFF;">Tổng số lượng là: <?php echo $tongsoluong; ?></div>
            <div style="padding: 5px 0px;color:#FFF;  border-bottom: 1px solid #FFFFFF;">Tổng giá là: <?php echo $_SESSION['tonggia']; ?></div>
            <div id="chitietgiohang" style="text-align:center;" ><a href="index.php?id=giohang">Chi tiết giỏ hàng: </a></div>
        <?php
			}
		?>
        </div>
    </div>
</body>
</html>