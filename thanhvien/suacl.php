<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
	include('../dbcon.php');
	if(isset($_GET['idcl'])) {
		$idsua=$_GET['idcl'];
		$s="select * from webtm_chungloaisp where idCL='$idsua'";
		$kq=mysql_query($s,$link);
		if($n=mysql_fetch_array($kq)) {
			$tencl=$n['TenCL'];
		}
	}
?>
<form action="luusuacl.php" method="POST">
	<table>
    	<tr>
    		<td><label>idCL: </label></td>
    		<td><input type="text" size="10" name="idcl" readonly="readonly" value="<?php echo $idsua ?>" /></td>
        </tr>
        <tr>
    		<td><label>Tên CL: </label></td>
    		<td><input type="text" name="tencl" size="25" value="<?php echo $tencl ?>"/></td>
        </tr>
        <tr>
    		<td><input type="submit" name="back" value="Quay về"/></td>
    		<td><input type="submit" name="add" value="Thêm"/></td>
        </tr>

</table>
</form>
</body>
</html>