<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript" src="jquery.js">
</script>
<script>
$(document).ready(function(){
	
	for(i=1; i<=10; i++)
	{
		$("#a"+i).hide(1);
	}
	
    $("a").click(function(){		
        	
		k=$(this).attr("name");	
		$("#a"+k).slideToggle(1000);
			
	 });
	 /*
	 $("img").click(function(){
		   
		if ($(this).attr("src")=="down.jpg")
			$(this).attr("src","up.jpg");
		else
			$(this).attr("src","down.jpg");
		
	});
	*/   
});
</script>
<style>
#dh{

	background-color:#9C6;
	color:#F00;
	line-height:50px;
	}
.a{
	padding-left:30px;
	background-color:#099;
	color:#FFF;
}
</style>
</head>

<body>
<p>DANH SÁCH ĐƠN HÀNG</p>
<form id="form1" name="form1" method="post" action="#">
  <p>
    <label for="textfield">Chọn Ngày: </label>
    <input type="text" name="date" id="textfield" />
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Xem" />
  </p>
</form>
<?php
	include('dbcon.php');
	if(isset($_POST['date']))
	{
		$date=$_POST['date'];
		echo $date;
		$s='select * from webtm_donhang where ThoiDiemDatHang="'.$date.'"';
		$kq=mysql_query($s,$link);
		$i=1;
		while($n=mysql_fetch_array($kq))
		{?>
        <div id="dh">
        	<?php echo $i;?>
        	<?php $id=$n['idDH'];?>
        	idDH: <?php echo $n['idDH'] ?>
            Người Nhận: <?php echo $n['TenNguoiNhan']?>
            <a name="<?php echo $i ?>" href="#">Chi Tiết</a>
            <a href="../inhoadon/file_hoadon.php?id=<?php echo $id?>">In</a>
            <div class="a" id="a<?php echo $i?>">
            	<?php
					$s1="select * from webtm_donhangchitiet where idDH='$id'";
					$kq1=mysql_query($s1,$link);
					while($n1=mysql_fetch_array($kq1))
					{?>
                    	id Đơn Hàng Chi Tiết: <?php echo $n1['idDH'] ?>
                        id Sản Phẩm: <?php echo $n1['idSP']?>
                        Số Lượng: <?php echo $n1['SoLuong']?>
                        Giá: <?php echo $n1['Gia']?>
                    </br>
				<?php }?>
            </div>
        </div>
        <?php $i++;?>
		<?php }
	}
	?>
</body>
</html>