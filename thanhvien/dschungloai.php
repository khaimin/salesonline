<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>

</style>
</head>

<body>
<div>
	<div>
    	<h1 id="1" style="color:#F00">Danh sách chủng loại</h1>
    </div>
    <div><a href="index.php?id=themchungloai">Thêm</a></div>
    <table >
    	<tr>
        	<td>idCL</td>
            <td>TênCL</td>
            <td>Sửa</td>
            <td>Xóa</td>
        </tr>
        <?php
			$s1="select * from webtm_chungloaisp";
			$kq1=mysql_query($s1,$link);
			while($d1=mysql_fetch_array($kq1)) { ?>
            <tr>
            	<td><?php echo $d1['idCL'] ?></td>
                <td><?php echo $d1['TenCL'] ?></td>
                <td><a href="index.php?id=suacl&idcl=<?php echo $d1['idCL'] ?>">Sửa</a></td>
                <td><a href="index.php?id=xoacl&idcl=<?php echo $d1['idCL'] ?>">Xóa</a></td>
            </tr>
		<?php		
			}
		?>
    </table>
</div>
</body>
</html>