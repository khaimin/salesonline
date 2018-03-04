<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<form method="post" action="ktthemloaisp.php">
	<p>Thêm Loại SP</p>
    <table cellpadding="0" cellspacing="0">
    	<!-- <tr>
        	<td>id Loai</td>
            <td><input type="text" disabled="disabled" name="idloai"/> </td>
        </tr> -->
        <tr>
            <td>Tên Loại</td>
            <td><input type="text" name="tenloai"/></td>
        </tr>
        <tr>
        	<td>Tên Chủng Loại</td>
            <td><select name="idcl">
				<?php
					include('../dbcon.php');
					
					$s="select * from webtm_chungloaisp ";
					$kq=mysql_query($s,$link);
					while($n=mysql_fetch_array($kq)) {
                ?>
            	<option value="<?php echo $n['idCL'] ?>"><?php echo $n['TenCL'] ?></option>
            <?php } ?></select>
            </td>
        </tr>
        <tr>
        	<td><input type="submit" name="back" value="Quay về"/></td>
            <td><input type="submit" name="add" value="Thêm"/></td>
        </tr>
    </table>
</form>
</body>
</html>