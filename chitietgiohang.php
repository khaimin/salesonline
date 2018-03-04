
<?php
	if (isset($_SESSION["somathang"]) && $_SESSION["somathang"]>0) {
?>
<form method="post" action="capnhatxoa1.php">
	<table width="495" border="1" align="center" cellpadding="0" cellspacing="0" bordercolorlight="#FFFF00">
    	<tr bgcolor="#CCFFCC">
        <td colspan="7"><div align="center" class="style3">Danh Sách Các Loại sp Cần Đặt</div></td>
        </tr>
        <tr bgcolor="#CCFFCC">
        <td width="45"><div align="center" class="style2"><strong>STT</strong></div></td>
        <td width="45"><div align="center" class="style2"><strong>Hinh</strong></div></td>
        <td width="150"><div align="center" class="style2"><strong>Tên SP</strong></div></td>
        <td width="75"><div align="center" class="style2"><strong>Giá</strong></div></td>
        <td width="75"><div align="center" class="style2"><strong>Số Lượng</strong></div></td>
        <td width="100"><div align="center" class="style2"><strong>Thành Tiền</strong></div></td>
        <td width="50"><div align="center" class="style2"><strong>Xóa</strong></div></td>
        </tr>
        <?php
			$tong=0;
			for($i=1;$i<=$_SESSION["somathang"];$i++) {
		?>
        <tr>
        	<td width="45"><div align="center"><?php echo $i ?></div></td>
            <td width="45" height="100px"><img width="100%" src="images/<?php echo $_SESSION["tensp".$i] ?>"></td>
            <td width="175"><div align="center"><?php echo $_SESSION["masp".$i] ?></div></td>
            <td width="50"><div align="right"><?php echo $_SESSION["gia".$i] ?></div></td>
            <td width="75"><div align="center"><input type="text" size="5" onKeyUp="CheckNumber(this)" name="C<?php echo $i ?>" value="<?php echo $_SESSION["soluong".$i] ?>"></div></td>
            <td width="100"><div align="right"><?php echo $_SESSION["gia".$i]*$_SESSION["soluong".$i] ?></div></td>
            <td width="50"><div align="center"><input type="checkbox" name="<?php echo 'x'.$i ?>" value="on" /></div></td>
         </tr>
        <?php
		 	$tong=$tong+$_SESSION["gia".$i]*$_SESSION["soluong".$i] ;
			$_SESSION['tonggia']=$tong;
			}
		?>
        <tr>
        	<td colspan="6" align="right">
            Tong Cong Tien: <?php echo $tong; ?>
            </td>
        </tr>
    </table>
    <div align="center">
    <input name="Button1" type="submit" class="style3" value="Cập Nhật Số Lượng">
    <input name="Button2" type="submit" class="style3" value="Xóa">
    <input name="Button3" type="button" class="style3" value="Đặt hàng" onclick="window.location.href='kiemtradangnhap.php'">
    <input name="Button4" type="button" class="style3" value="Quay lai trang sp" onclick="window.location.href='index.php'">
    </div>
</form>
<?php
	}
?>
