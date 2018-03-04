<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	include('../dbcon.php');
	if(isset($_GET['idloai'])) {
		$idsua=$_GET['idloai'];
		$s="select idLoai, TenLoai, webtm_chungloaisp.idCL, TenCL from webtm_loaisp,webtm_chungloaisp where webtm_chungloaisp.idCL=webtm_loaisp.idCL and idLoai=$idsua";
		$kq=mysql_query($s,$link);
		if($n=mysql_fetch_array($kq)) {
			$tenloai=$n['TenLoai'];
			$idcl=$n['idCL'];
		}
	}
?>
<form action="luusualoaisp.php" method="POST">
	<table>
    	<tr>
    		<td><label>iLoai: </label></td>
    		<td><input type="text" size="10" name="idloai" readonly="readonly" value="<?php echo $idsua ?>" /></td>
        </tr>
        <tr>
    		<td><label>Tên Loại: </label></td>
    		<td><input type="text" name="tenloai" size="25" value="<?php echo $tenloai ?>"/></td>
        </tr>
        <tr>
        	<td><label> Chủng loại: </label></td>
            <td><select name="idcl">
            	<?php $s1="select * from webtm_chungloaisp";
			$kq1=mysql_query($s1,$link);
			while($d1=mysql_fetch_array($kq1)) { ?>
            <option value="<?php echo $d1['idCL'] ?>" 
			<?php 
				if($d1['idCL']==$idcl)
				{
					echo "selected";	
				} 
			?>>
			<?php echo $d1['TenCL'] ?></option>
          <?php } ?> </select></td>
        </tr>
        <tr>
    		<td><input type="submit" name="back" value="Quay về"/></td>
    		<td><input type="submit" name="add" value="Thêm"/></td>
        </tr>

</table>
</form>
</body>
</html>