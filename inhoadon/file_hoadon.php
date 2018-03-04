<?php
require('dbcon.php');
require('library/mpdf.php');
require_once("docsotien.php");

$mpdf=new mPDF();
// LENH GỌI DE XUAT RA PDF HO TRO DẤU, THAM KHAO TU http://www.mpdf1.com/mpdf/examples
$mpdf->useAdobeCJK = true;
$mpdf->SetAutoFont(AUTOFONT_ALL);
$hoadon = $_GET['id'];
$date = date("Y-m-d");
//IN RA CSS FILE
$str = "
		<style type='text/css'>
				table.altrowstable { font-size:12px; color:#333333; border-width: 1px; border-color: #a9c6c9; border-collapse: collapse; background-color: #FFF; }				
				table.altrowstable td { border-width: 1px; padding: 8px; border-style: solid; border-color: #a9c6c9; }
				#tablerow { background:#CCC; text-align:center; }
				p { text-align:center; color: #900; font-size: 22px; text-shadow: 1px 1px 1px rgba(255,255,255,0.8); margin-top:5px; margin-bottom:5px; }
		</style>
		";
$mpdf->WriteHTML($str);
// IN RA TIÊU ĐỀ FILE
$str = "
		<a style='font-weight:bold; font-size:18px;'>CÔNG TY TNHH Quan AO SO MOT VIET NAM</a><br />
        <a style='font-size:12px;'>372 Cách Mạng Tháng 8 - Phường 10 - Quận 3 - TP.HCM</a><br />
        <a style='font-size:12px;'>Tel: 01659573789 - Fax: (08).39317246</a>
        <p align='center'>Hóa Đơn Mua Hàng (INVOICE)</p>
		";
$mpdf->WriteHTML($str);
// IN RA TABLE VA THONG TIN CUA HOA DON
	$sql = "select * from webtm_donhang where idDH ='$hoadon'";
	$ngay = date('d');
	$thang = date('m');
	$nam = date('y');
	$kq = mysql_query($sql);
	$dong = mysql_fetch_array($kq);
	$date = date('d-m-Y', strtotime($dong['ThoiDiemDatHang']));
	$date2 = date('d-m-Y', strtotime($dong['ThoiDiemGiaohang']));
$str = "
		<div align='center'><a>Ngày: $ngay Tháng: $thang Năm: 20$nam</a><br/>
        <a>...</a></div><br/>
		<table width='180'>
			<tr>
				<td>Ngày Đặt:</td>
				<td>$date</td>
			</tr>
			<tr>
				<td>Ngày Giao:</td>
				<td>$date2</td>
			</tr>
			<tr>
				<td>Người Nhận:</td>
				<td>$dong[TenNguoiNhan]</td>
			</tr>
			<tr>
				<td>Địa Chỉ:</td>
				<td>$dong[DiaDiemGiaoHang]</td>
			</tr>
		</table>
        <div align='center'><a>...</a></div><br/>
		<table class='altrowstable' align='center'>
                      <tr id='tablerow' style='color:#900'>
                      	<td width='40'><strong>STT</strong></td>
                        <td width='140'><strong>id DH</strong></td>
                        <td width='200'><strong>id SP</strong></td>
                        <td width='125'><strong>Số Lượng</strong></td>
                        <td width='125'><strong>Đơn Giá</strong></td>
                      </tr>
		";
$mpdf->WriteHTML($str);
// IN RA NOI DUNG CUA HOA DON
	$sql2 = "select * from webtm_donhangchitiet where idDH ='".$dong["idDH"]."'";
	$i=0;
	$tien=0;
	$kq2 = mysql_query($sql2);
	while($dong2 = mysql_fetch_array($kq2))
	{
		$i++;
		$tien=$tien + $dong2['SoLuong']*$dong2["Gia"];
		$str = "
		<tr>
			<td align='center'>$i</td>
			<td align='center'>$dong2[idDH]</td>
			<td align='center'>$dong2[idSP]</td>
			<td align='center'>$dong2[SoLuong]</td>
			<td align='center'>$dong2[Gia] USD</td>
        </tr>
			";
		$mpdf->WriteHTML($str);
	}
// IN RA TONG KET TIEN
$thue = round($tien*10/100);
$thanhtien = $tien + $thue;
$tienbangchu = docso($thanhtien);
$str = "
		<tr style='border:0px'>
			<td colspan='3' style='border-right:0px'></td>
			<td style='border-left:0px; border-right:0px'>Tổng Tiền Hàng:</td>
			<td style='border-left:0px'>$tien USD</td>
        </tr>
		<tr style='border:0px'>
			<td colspan='3' style='border-right:0px'></td>
			<td style='border-left:0px; border-right:0px'>Thuế GTGT:</td>
			<td style='border-left:0px'>$thue USD</td>
        </tr>
		<tr style='border:0px'>
			<td colspan='3' style='border-right:0px'></td>
			<td style='border-left:0px; border-right:0px'>Tổng Số Tiền:</td>
			<td style='border-left:0px'>$thanhtien USD</td>
        </tr>
		</table><br/>
		<a style='font-weight:bold; font-size:14px; padding-left:50px'>Tiền Bằng Chữ: </a>$tienbangchu USD<br/><br/>
		</body>
	";
$mpdf->WriteHTML($str);
$mpdf->Output('hoadon_'.$hoadon.'.pdf','I');
exit;

?>

