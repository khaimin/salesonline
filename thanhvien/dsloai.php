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
    	<h1 id="1" style="color:#F00">Danh sách loại SP</h1>
    </div>
    <div><a href="index.php?id=themloaisp">Thêm</a></div>
    <table >
    	<tr>
        	<td>id Loại SP</td>
            <td>Tên Loại SP</td>
            <td>Tên CL</td>
            <td>Sửa</td>
            <td>Xóa</td>
        </tr>
        <?php
			$s1="select * from webtm_loaisp,webtm_chungloaisp where webtm_chungloaisp.idCL=webtm_loaisp.idCL order by idLoai";
			$kq1=mysql_query($s1,$link);
			while($d1=mysql_fetch_array($kq1)) { ?>
            <tr>
            	<td><?php echo $d1['idLoai'] ?></td>
                <td><?php echo $d1['TenLoai'] ?></td>
                <td><?php echo $d1['TenCL']?></td>
                <td><a href="index.php?id=sualoaisp&idloai=<?php echo $d1['idLoai'] ?>">Sửa</a></td>
                <td><a href="index.php?id=xoaloaisp&idLoai=<?php echo $d1['idLoai'] ?>">Xóa</a></td>
            </tr>
		<?php		
			}
		?>
    </table>
</div>
</body>
</html>