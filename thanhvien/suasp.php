<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="ckeditor_4.6.0_standard/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" href="ckeditor_4.6.0_standard/ckeditor/samples/old/sample.css">
</head>

<body>
<?php
	include('../dbcon.php');
	if(isset($_GET['idloaisp'])) {
		$idsua=$_GET['idloaisp'];
		$s="select idSP, Gia, UrlHinh, MoTa, idLoai from webtm_sanpham where idSP=$idsua";
		$kq=mysql_query($s,$link);
		if($n=mysql_fetch_array($kq)) {
			$idsp=$n['idSP'];
			$urlhinh=$n['UrlHinh'];
			$gia=$n['Gia'];
			$mota=$n['MoTa'];
			$idloai=$n["idLoai"];
		}
	}
?>
<form action="luusuasp.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <B>CẬP NHẬT SẢN PHẨM<B>
  <p>
    <label for="textfield">id SP: </label>
    <input type="text" name="idsp" readonly="readonly" id="textfield" value="<?php echo $idsp?>" />
  </p>
  <p>
    <label for="textfield2">Loại SP: </label>
    <select name="idLoai" size="1" id="select"  >
        <option value="on" >Chon</option>
        <?php
        include("dbcon.php");	
        $s1="select * from webtm_chungloaisp";
        
        $kq1=mysql_query($s1,$link);
    
        while($n1=mysql_fetch_array($kq1))
        {
        ?>
            <option disabled="disabled"><?php echo $n1["TenCL"];?></option>
          <?php
          $idCL=$n1["idCL"];
          $s2="select * from webtm_loaisp where idCL=$idCL";
          $kq2=mysql_query($s2,$link);
          while($n2=mysql_fetch_array($kq2))
          { ?>
          <option <?php if($n2['idLoai']==$idloai) echo "selected" ?> value="<?php echo $n2['idLoai'] ?>"><?php echo "&nbsp;&nbsp;&nbsp;&nbsp".$n2["TenLoai"]; ?></option> 
          <?php } ?>
        <?php } ?>
        </select>
  </p>
  <p>
    <label for="textfield3">Giá: </label>
    <input type="text" name="gia" id="textfield3" value="<?php echo $gia?>" />
  </p>
  <p>
    <label for="fileField">Hình: </label>
    <input type="file" name="hinh" id="fileField" />
  </p>
  <img src="../images/<?php echo $urlhinh?>" width="60px" height="80px"/>
  <p>
    <label for="textarea">Mô Tả: </label>
    <textarea class="ckeditor" name="mota" id="textarea" cols="45" rows="5"><?php echo $mota?></textarea>
  </p>
  <p>
   <input type="submit" name="back" value="Quay về"/>
   <input type="submit" name="add" value="Thêm"/>
  </p>
</form>
</body>
</html>
