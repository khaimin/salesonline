<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>
body{color:#000;}
</style>
</head>

<body>
	<?php 
	include('dbcon.php');
	$s='select * from webtm_chungloaisp';
	$kq1=mysql_query($s,$link);?>
    <form name="form1" method="post" action="index.php?id=tim">
    Tên sản phẩm: <input type="text" name="tensp" />
    &nbsp;&nbsp;&nbsp;Loại sản phẩm: <select name="select">
    	<option>Chọn</option>
        <option value="all">Tất cả</option>
    	<?php
		while($d1=mysql_fetch_array($kq1)) {
			$idcl= $d1['idCL']; ?>
            <option disabled="disabled" value="<?php echo $d1['idCL']; ?>"><?php echo $d1['TenCL']; ?></option>
            <?php
				$t="select * from webtm_loaisp where idCL='$idcl'";
				$kq2=mysql_query($t,$link);
				 while($d2=mysql_fetch_array($kq2)) {
				?>
                	<option value="<?php echo $d2['idLoai']; ?>"><?php echo $d2['TenLoai']; ?></option>
                <?php } ?>    
            <?php }
		?>
    </select>
    &nbsp;&nbsp;&nbsp;Giá từ: <input type="text" name="giatu" />
    
    &nbsp;&nbsp;&nbsp;Đến: <input type="text" name="den" />
    
    <input type="submit" value="Xem"  />
    
    </form>
</body>
</html>