<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="ckeditor_4.6.0_standard/ckeditor/ckeditor.js"></script>
	<link rel="stylesheet" href="ckeditor_4.6.0_standard/ckeditor/samples/old/sample.css">
</head>

<body>
<form action="ktthemsp.php" method="post" enctype="multipart/form-data" name="form1" id="form1">
	THÊM SẢN PHẨM
  <table>
    <tr>
        <td><label for="textfield3">Loại SP </label></td>
        <td><select name="idLoai" size="1" id="select"  >
        <option value="on" selected="selected">Chọn</option>
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
          <option value="<?php echo $n2['idLoai'] ?>"><?php echo "&nbsp;&nbsp;&nbsp;&nbsp".$n2["TenLoai"]; ?></option> 
          <?php } ?>
        <?php } ?>
        </select></td>
    </tr>
    <tr>
    	<td><label for="textfield">Mã SP</label></td>
    	<td><input type="text" name="idsp" id="textfield" /></td>
    </tr>
    <tr>
    	<td><label for="textfield2">Giá </label></td>
    	<td><input type="text" name="gia" id="textfield2" /></td>
    </tr>
    <tr>
    	<td><label for="fileField">Hình </label></td>
    	<td><input type="file" name="hinh" id="fileField" /></td>
	</tr>
    <tr>
    	<td><label for="textarea">Mô Tả</label></td>
    	<td><textarea class="ckeditor" name="mota" id="textarea" cols="45" rows="5"></textarea></td>
 	</tr>
    <tr>
        	<td><input type="submit" name="back" value="Quay về"/></td>
            <td><input type="submit" name="add" value="Thêm"/></td>
    </tr>
</table>
</form>
</body>
</html>