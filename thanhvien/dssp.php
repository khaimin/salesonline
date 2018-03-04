<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
</br>
<p>DANH SÁCH SẢN PHẨM</p>
<form method="POST" action="">
  <p>
    <label for="select"></label>
    <select name="idLoai" size="1" id="select"  >
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
    </select> 
    <input type="submit" name="button" id="button" value="Submit" />
  </p>
</form>
<div>
  <p><a href="index.php?id=themsp">Thêm</a></p>
  <p>&nbsp;</p>
</div>
    <table align="center">
    	<tr>
        	<td width="73">id SP</td>
            <td width="80">Tên SP</td>
            <td width="71">Giá</td>
            <td width="106">Hình</td>
            <td width="198">Mô Tả</td>
            <td width="35">Sửa</td>
            <td width="35">Xóa</td>
        </tr>
        <?php
		if(isset($_POST['idLoai']))
		{
			if($_POST['idLoai']=='on')
			{
				echo"<script>alert('Ban phai chon loai sp')</script>";	
			}
			else{
			include('dbcon.php');
				$k=$_POST['idLoai'];
				
				$s3="select * from webtm_sanpham where idLoai=$k order by idSP";
				$kq3=mysql_query($s3,$link);
				while($d3=mysql_fetch_array($kq3)) 
				{ ?>
				<tr>
					<td><?php echo $d3['idSP'] ?></td>
					<td><?php echo $d3['TenSP'] ?></td>
					<td><?php echo $d3['Gia']?></td>
					<td><img src="../images/<?php echo $d3['UrlHinh'] ?>" style="width:60px;height:100px"/></td>
					<td><?php echo $d3['MoTa']?></td>
					<td><a href="index.php?id=suasp&idloaisp=<?php echo $d3['idSP'] ?>">Sửa</a></td>
					<td><a href="index.php?id=xoasp&idloaisp=<?php echo $d3['idSP'] ?>">Xóa</a></td>
				</tr>
			<?php		
				}
			}
		}
		?>
    </table>
</body>
</html>