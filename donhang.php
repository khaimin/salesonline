<style>
td {
	padding: 10px 0px;	
}
</style>
<center>
	<form method="post" action="luudonhang.php">
    	<div algin="center" style="margin-bottom: 10px;">Thông tin đơn hàng</div>
    	<table align="center" width="400px" cellpadding="0" cellspacing="0">
            <tr>
            	<td>Người nhận</td>
                <td><input type="text" name="nguoinhan" /></td>
            </tr>
            <tr>
            	<td>Ngày đặt</td>
                <td><input type="text" name="ngaydat" value="<?php echo date('Y-m-d') ?>"  /></td>
            </tr>
            <tr>
            	<td>Địa chỉ giao hàng</td>
                <td><input type="text" name="diachi"</td>
            </tr>
            <tr><td colspan="2" align="center"><input type="submit" name="dkdonhang" value="Gửi đơn hàng" /></td></tr>
        </table>
    </form>
</center>
