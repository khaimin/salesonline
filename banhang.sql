-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2017 at 07:47 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banhang`
--
CREATE DATABASE IF NOT EXISTS `banhang` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `banhang`;

-- --------------------------------------------------------

--
-- Table structure for table `webtm_chungloaisp`
--

CREATE TABLE IF NOT EXISTS `webtm_chungloaisp` (
  `idCL` int(12) NOT NULL AUTO_INCREMENT,
  `TenCL` varchar(100) NOT NULL,
  PRIMARY KEY (`idCL`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `webtm_chungloaisp`
--

INSERT INTO `webtm_chungloaisp` (`idCL`, `TenCL`) VALUES
(1, 'Sản phẩm nữ'),
(2, 'Sản phẩm nam'),
(3, 'Sản phẩm em bé');

-- --------------------------------------------------------

--
-- Table structure for table `webtm_donhang`
--

CREATE TABLE IF NOT EXISTS `webtm_donhang` (
  `idDH` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `UserName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ThoiDiemDatHang` date NOT NULL,
  `ThoiDiemGiaoHang` date NOT NULL,
  `TenNguoiNhan` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DiaDiemGiaoHang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TinhTrang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idDH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `webtm_donhang`
--

INSERT INTO `webtm_donhang` (`idDH`, `UserName`, `ThoiDiemDatHang`, `ThoiDiemGiaoHang`, `TenNguoiNhan`, `DiaDiemGiaoHang`, `TinhTrang`, `GhiChu`) VALUES
('14820739503', '', '2016-12-18', '0000-00-00', '', '', '', ''),
('1479821744', '', '2016-11-22', '0000-00-00', 'cxvxcv', 'cvcvc', '', ''),
('1479821811', '', '2016-11-22', '0000-00-00', 'dfgfd', 'fgfdg', '', ''),
('14798219313', '', '2016-11-22', '0000-00-00', 'cxvfdfg', 'wewe', '', ''),
('14798219633', '', '2016-11-22', '0000-00-00', '12334', '12dsdas', '', ''),
('14833311543', '', '2017-01-02', '0000-00-00', 'Khải Minh', 'abc', '', ''),
('14837702443', '', '2017-01-07', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `webtm_donhangchitiet`
--

CREATE TABLE IF NOT EXISTS `webtm_donhangchitiet` (
  `idDH` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idSP` int(12) NOT NULL,
  `SoLuong` int(100) NOT NULL,
  `Gia` int(4) NOT NULL,
  PRIMARY KEY (`idDH`,`idSP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `webtm_donhangchitiet`
--

INSERT INTO `webtm_donhangchitiet` (`idDH`, `idSP`, `SoLuong`, `Gia`) VALUES
('0', 1, 1, 195),
('0', 75, 1, 200),
('0', 2, 1, 215),
('0', 6, 1, 235),
('1479821811', 1, 1, 195),
('1479821811', 2, 1, 215),
('1479821811', 6, 1, 235),
('14798219313', 1, 1, 195),
('14798219313', 2, 1, 215),
('14798219313', 6, 1, 235),
('14798219633', 1, 1, 195),
('14798219633', 2, 2, 215),
('14798219633', 6, 1, 235),
('14820739503', 3, 3, 215),
('14820739503', 2, 2, 215),
('14833311543', 1, 1, 195),
('14837702443', 3, 1, 215);

-- --------------------------------------------------------

--
-- Table structure for table `webtm_khachhang`
--

CREATE TABLE IF NOT EXISTS `webtm_khachhang` (
  `idKH` int(4) NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(255) NOT NULL DEFAULT '',
  `UserName` varchar(100) NOT NULL DEFAULT '',
  `Password` varchar(100) NOT NULL DEFAULT '',
  `DiaChi` varchar(255) NOT NULL DEFAULT '',
  `DienThoai` varchar(100) NOT NULL DEFAULT '',
  `Email` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`idKH`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=254 ;

--
-- Dumping data for table `webtm_khachhang`
--

INSERT INTO `webtm_khachhang` (`idKH`, `HoTen`, `UserName`, `Password`, `DiaChi`, `DienThoai`, `Email`) VALUES
(3, 'Nguyen Van Teo', 'a', 'a', '123 Cung vàng, Điện Ngọc, Mặt Trăng', '99 99 99', 'cv@dienngoc.mattrang.com'),
(34, 'Kieu Minh Khai', 'khaiminh', '123', 'anc, xyz District', '00000000304', 'km@gmail.com'),
(253, 'Khải', 'khai', '113', 'abc-xyz', '0000093', 'abc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `webtm_loaisp`
--

CREATE TABLE IF NOT EXISTS `webtm_loaisp` (
  `idLoai` int(12) NOT NULL AUTO_INCREMENT,
  `idCL` int(12) NOT NULL DEFAULT '0',
  `TenLoai` varchar(100) NOT NULL,
  `AnHien` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idLoai`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `webtm_loaisp`
--

INSERT INTO `webtm_loaisp` (`idLoai`, `idCL`, `TenLoai`, `AnHien`) VALUES
(1, 1, 'Áo thun', 1),
(2, 1, 'Áo sơ mi', 1),
(3, 1, 'Áo khoác', 1),
(4, 1, 'Áo kiểu', 1),
(5, 1, 'Quần dài', 1),
(6, 1, 'Quần short - lửng', 1),
(7, 1, 'Váy', 1),
(8, 1, 'Bộ áo quần', 1),
(9, 1, 'Bộ áo váy', 1),
(10, 2, 'Áo thun', 1),
(11, 2, 'Áo sơ mi', 1),
(12, 2, 'Áo khoác', 1),
(13, 2, 'Quần short', 1),
(14, 2, 'Quần dài', 1),
(15, 2, 'Thắc lưng', 1),
(16, 2, 'Ví', 1),
(17, 2, 'Mắc kính', 1),
(18, 1, 'Thắc lưng', 1),
(19, 1, 'Túi xách', 1),
(20, 1, 'Ví tay', 1),
(21, 1, 'Mắc kính', 1),
(22, 3, 'Tả em bé', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webtm_sanpham`
--

CREATE TABLE IF NOT EXISTS `webtm_sanpham` (
  `idSP` int(12) NOT NULL AUTO_INCREMENT,
  `idLoai` int(12) NOT NULL DEFAULT '0',
  `TenSP` varchar(100) NOT NULL,
  `MoTa` varchar(255) NOT NULL,
  `NgayCapNhat` date NOT NULL DEFAULT '0000-00-00',
  `Gia` int(4) NOT NULL DEFAULT '0',
  `UrlHinh` varchar(255) NOT NULL DEFAULT '',
  `SoLanXem` int(4) DEFAULT '0',
  `SoLuongTonKho` int(4) DEFAULT '0',
  `GhiChu` varchar(255) NOT NULL,
  `SoLanMua` int(4) DEFAULT '0',
  `AnHien` int(1) DEFAULT '1',
  PRIMARY KEY (`idSP`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34434 ;

--
-- Dumping data for table `webtm_sanpham`
--

INSERT INTO `webtm_sanpham` (`idSP`, `idLoai`, `TenSP`, `MoTa`, `NgayCapNhat`, `Gia`, `UrlHinh`, `SoLanXem`, `SoLuongTonKho`, `GhiChu`, `SoLanMua`, `AnHien`) VALUES
(1, 1, 'ATF-000001', 'ÁO phông vàng , dúm ở cổ và hai bên sườn, in hình tạo nét cá tính cho người mặc', '2008-05-11', 195, 'ATF-000001.jpg', 0, 0, '', 0, 1),
(2, 1, 'ATF-000002', 'Áo phông màu xanh, chất liệu 100% cotton, đính hạt', '2008-05-11', 215, 'ATF-000002.jpg', 0, 0, '', 0, 1),
(3, 1, 'ATF-000003', 'Áo thun cộc tay , chất liệu 100% cotton , mầu xanh', '2008-05-11', 215, 'ATF-000003.jpg', 0, 0, '', 0, 1),
(4, 1, 'ATF-000004', 'Áo thun ko tay cổ rộng, in hoa văn cổ được cách điệu, hợp với bạn gái có dáng cao', '2008-05-11', 215, 'ATF-000004.jpg', 0, 0, '', 0, 1),
(5, 1, 'ATF-000005', 'Một chiếc màu hồng pha xanh lá câylàm bạn nổi bật trước đám đông với sự tươi trẻ và tinh nghịch', '2008-05-11', 215, 'ATF-000005.jpg', 0, 0, '', 0, 1),
(6, 1, 'ATF-000006', 'Áo phông màu dacam in hình , chất liệu cotton', '2008-05-12', 235, 'ATF-000006.jpg', 0, 0, '', 0, 1),
(7, 1, 'ATF-000007', 'Áo phông màu xanh ba lỗ có in hình, chất liệu 100% cotton', '2008-05-12', 235, 'ATF-000007.jpg', 0, 0, '', 0, 1),
(8, 1, 'ATF-000008', 'chiếc áo mang dáng vẻ hơi bụi nhưng ko làm mất đi sự nữ tính,chất liệu 100% cotton', '2008-05-12', 235, 'ATF-000008.jpg', 0, 0, '', 0, 1),
(9, 1, 'ATF-000009', 'Áo phông màu vàng cổ rộng', '2008-05-12', 245, 'ATF-000009.jpg', 0, 0, '', 0, 1),
(10, 1, 'ATF-000010', 'Áo thun cộc tay, kẻ ngang hàng nhập', '2008-05-12', 245, 'ATF-000010.jpg', 0, 0, '', 0, 1),
(11, 1, 'ATF-000011', 'Áo phông hồng kẻ ngang thích hợp với bạn gái có dáng gầy, tạo dáng trẻ trung', '2008-05-13', 255, 'ATF-000011.jpg', 0, 0, '', 0, 1),
(12, 1, 'ATF-000012', 'Áo phông bo đai, kẻ ngang mầu đỏ', '2008-05-13', 275, 'ATF-000012.jpg', 0, 0, '', 0, 1),
(13, 1, 'ATF-000013', 'Áo phông dài , bo đai ở giữa , chất liệu 100% cotton', '2008-05-13', 275, 'ATF-000013.jpg', 0, 0, '', 0, 1),
(14, 1, 'ATF-000014', 'Chất liệu 100% cotton , kiểu dáng bụi - hợp với bạn gái có cá tính', '2008-05-13', 275, 'ATF-000014.jpg', 0, 0, '', 0, 1),
(15, 1, 'ATF-000015', 'Áo thun tím cộng với áo quây tạo sự gợi cảm và quý phái', '2008-05-13', 310, 'ATF-000015.jpg', 0, 0, '', 0, 1),
(16, 1, 'ATF-000016', 'Áo thun màu xanh nhạt cổ lệch tạo sự kín đáo và sang trọng', '2008-05-14', 329, 'ATF-000016.jpg', 0, 0, '', 0, 1),
(17, 1, 'ATF-000017', 'Áo dài tay cổ tròn kết bèo màu xanh ghi , hàng nhập từ Nhật Bản , chất liệu thun', '2008-05-14', 355, 'ATF-000017.jpg', 0, 0, '', 0, 1),
(18, 1, 'ATF-000018', 'Áo sơ mi trắng, cổ và viền ngực bằng ren tạo sự nhẹ nhàng cho người mặc', '2008-05-14', 359, 'ATF-000018.jpg', 0, 0, '', 0, 1),
(19, 1, 'ATF-000019', 'Áo dài tay cổ đổ màu be, hàng nhập từ Nhật Bản , chất liệu thun', '2008-05-14', 395, 'ATF-000019.jpg', 0, 0, '', 0, 1),
(20, 1, 'ATF-000020', 'Áo thun màu đỏ , đính hạt ở vai và gấu áo tạo cho người mặc nét cá tính và nổi bật trước đám đông', '2008-05-14', 795, 'ATF-000020.jpg', 0, 0, '', 0, 1),
(21, 1, 'ATF-000021', 'Áo thun màu xanh, đính đá ở vai và gấu áo tạo nét nhẹ nhang và quyến rũ cho người mặc', '0000-00-00', 795, 'ATF-000021.jpg', 0, 0, '', 0, 1),
(22, 2, 'ASF-000001', 'Áo sơ mi tay ngắn đính hạt màu trắng', '0000-00-00', 50, 'ASF-000001.jpg', 0, 0, '', 0, 1),
(23, 2, 'ASF-000002', 'Áo sơ mi tay bèo ngắn hoa văn xanh màu trắng', '2008-05-13', 60, 'ASF-000002.jpg', 0, 0, '', 0, 1),
(24, 2, 'ASF-000003', 'Áo sơ mi sát cánh kết kim sa màu Vàng', '2008-05-13', 79, 'ASF-000003.jpg', 0, 0, '', 0, 1),
(25, 2, 'ASF-000004', 'Sơ mi tay ngắn bèo nẹp chấm bi màu xanh', '2008-05-13', 120, 'ASF-000004.jpg', 0, 0, '', 0, 1),
(26, 2, 'ASF-000005', 'Sơ mi tay ngắn bèo nẹp ply trước nút cài tay màu đen', '2008-05-13', 120, 'ASF-000005.jpg', 0, 0, '', 0, 1),
(27, 2, 'ASF-000006', 'Sơ mi tay ngắn nhún chấm bi trắng', '2008-05-13', 120, 'ASF-000006.jpg', 0, 0, '', 0, 1),
(28, 2, 'ASF-000007', 'Sơ mi tay ngắn, bèo ngực vàng nhạt', '2008-05-14', 120, 'ASF-000007.jpg', 0, 0, '', 0, 1),
(29, 2, 'ASF-000008', 'Sơ mi tay phùng màu xanh ngọc', '2008-05-14', 120, 'ASF-000008.jpg', 0, 0, '', 0, 1),
(31, 2, 'ASF-000010', 'Sơ mi tay dài màu hồng', '2008-05-14', 140, 'ASF-000010.jpg', 0, 0, '', 0, 1),
(32, 2, 'ASF-000011', 'Sơ mi tay dài màu xanh da trời', '2008-05-14', 140, 'ASF-000011.jpg', 0, 0, '', 0, 1),
(33, 2, 'ASF-000012', 'Sơ mi tay dài sọc nâu tím', '2008-05-14', 140, 'ASF-000012.jpg', 0, 0, '', 0, 1),
(34, 2, 'ASF-000013', 'ÁO SƠ MI NỮ MÀU HỒNG', '2008-05-14', 150, 'ASF-000013.jpg', 0, 0, '', 0, 1),
(35, 2, 'ASF-000014', 'Áo kiểu sơ mi tay ngắn màu trắng phối xanh biển', '0000-00-00', 165, 'ASF-000014.jpg', 0, 0, '', 0, 1),
(36, 2, 'ASF-000015', 'áo HK cổ sơ mi màu đen sọc xanh', '0000-00-00', 180, 'ASF-000015.jpg', 0, 0, '', 0, 1),
(37, 2, 'ASF-000016', 'Áo kiểu sơmi tay ngắn lỡ ly viền đen màu Trắng', '0000-00-00', 180, 'ASF-000016.jpg', 0, 0, '', 0, 1),
(38, 2, 'ASF-000017', 'Áo sơni tay dài màu xanh sọc, có 2 túi trước ngực và in hình sau lưng', '0000-00-00', 190, 'ASF-000017.jpg', 0, 0, '', 0, 1),
(39, 2, '', 'Áo kiểu sơ mi Xô tay ngắn màu Xám', '0000-00-00', 220, 'ASF-000018.jpg', 0, 0, '', 0, 1),
(40, 2, 'ASF-000019', 'Áo sơmi tay ngắn cột nơ một bên màu Vàng nhạt', '0000-00-00', 220, 'ASF-000019.jpg', 0, 0, '', 0, 1),
(41, 2, 'ASF-000020', 'Áo sơmi Nam tay dài cách điệu màu Nâu nhạt', '0000-00-00', 230, 'ASF-000020.jpg', 0, 0, '', 0, 1),
(42, 2, '', 'Áo sơmi xô tay dài màu Hồng sen', '0000-00-00', 230, '', 0, 0, '', 0, 1),
(43, 2, '', 'Áo sơmi tay ngắn CK màu Trắng', '0000-00-00', 260, '', 0, 0, '', 0, 1),
(44, 2, '', 'Áo sơmi Nam tay dài sọc đứng màu Trắng', '0000-00-00', 280, '', 0, 0, '', 0, 1),
(45, 2, '', 'Áo sơmi Nam tay ngắn màu Đen', '0000-00-00', 280, '', 0, 0, '', 0, 1),
(46, 2, '', 'Áo sơmi tay dài màu Hồng', '0000-00-00', 280, '', 0, 0, '', 0, 1),
(47, 2, '', 'Áo sơmi Nam 2 túi tay ngắn sọc Đen rêu', '0000-00-00', 290, '', 0, 0, '', 0, 1),
(48, 2, '', 'Áo sơmi Nam tay dài màu Nâu', '0000-00-00', 290, '', 0, 0, '', 0, 1),
(49, 2, '', 'Áo sơmi Nam tay ngắn ca rô màu Nâu đen', '0000-00-00', 290, '', 0, 0, '', 0, 1),
(50, 2, '', 'Áo sơ mi 2 túi trước cầu vai viền xanh màu trắng', '0000-00-00', 325, '', 0, 0, '', 0, 1),
(51, 2, '', 'Áo sơ mi cách điệu tay bản to viền màu trắng', '0000-00-00', 325, '', 0, 0, '', 0, 1),
(52, 2, '', 'Áo kiểu sơmi màu Xanh chuối BE ONE', '0000-00-00', 420, '', 0, 0, '', 0, 1),
(53, 2, '', 'Áo len màu đen cổ sơ mi trắng', '0000-00-00', 580, '', 0, 0, '', 0, 1),
(54, 2, '', 'Ao sơ mi kiểu cổ bèo voan trắng', '0000-00-00', 580, '', 0, 0, '', 0, 1),
(55, 3, 'ACF-000001', 'Áo khoác tay ngắn cột dây màu Xanh biển', '0000-00-00', 75, 'ACF-000001.jpg', 0, 0, '', 0, 1),
(56, 3, 'ACF-000002', 'Áo khoác lửng thun lạnh màu trắng', '0000-00-00', 80, 'ACF-000002.jpg', 0, 0, '', 0, 1),
(57, 3, 'ACF-000003', 'Áo khoác lửng thun lạnh màu xám', '0000-00-00', 80, 'ACF-000003.jpg', 0, 0, '', 0, 1),
(58, 3, 'ACF-000004', 'Áo khoác lửng thun lạnh màu hồng có nón', '0000-00-00', 120, 'ACF-000004.jpg', 0, 0, '', 0, 1),
(59, 3, 'ACF-000005', 'Áo khoác Nữ có nón tay dài bo thân màu Hồng', '0000-00-00', 120, 'ACF-000005.jpg', 0, 0, '', 0, 1),
(60, 3, 'ACF-000006', 'áo khoác lửng HK xanh đen', '0000-00-00', 135, 'ACF-000006.jpg', 0, 0, '', 0, 1),
(61, 3, 'ACF-000007', 'ÁO KHOÁC CỔ RỘNG TAY MÀU ĐEN', '2008-05-13', 155, 'ACF-000007.jpg', 0, 0, '', 0, 1),
(62, 3, 'ACF-000008', 'Áo khoác lửng tay dài thun lạnh màu hồng', '2008-05-13', 160, 'ACF-000008.jpg', 0, 0, '', 0, 1),
(63, 3, 'ACF-000009', 'Áo khoác lửng màu Xanh', '2008-05-13', 169, 'ACF-000009.jpg', 0, 0, '', 0, 1),
(64, 3, 'ACF-000010', 'Áo khoác lửng Oruola', '2008-05-13', 192, 'ACF-000010.jpg', 0, 0, '', 0, 1),
(65, 3, 'ACF-000011', 'Áo khoác thun nữ màu Xám lông chuột', '2008-05-13', 199, 'ACF-000011.jpg', 0, 0, '', 0, 1),
(66, 3, 'ACF-000012', 'Áo khoác kaki nữ màu trắng', '0000-00-00', 219, 'ACF-000012.jpg', 0, 0, '', 0, 1),
(67, 3, 'ACF-000013', 'ÁO KHOÁC form dài đẹp trắng sọc xanh', '2008-05-14', 220, 'ACF-000013.jpg', 0, 0, '', 0, 1),
(68, 3, 'ACF-000014', 'Áo khoác màu Trắng', '2008-05-14', 220, 'ACF-000014.jpg', 0, 0, '', 0, 1),
(69, 3, 'ACF-000015', 'Áo khoác nhung đen', '2008-05-14', 242, 'ACF-000015.jpg', 0, 0, '', 0, 1),
(70, 3, 'ACF-000016', 'Áo khoác tay dài màu Trắng', '2008-05-14', 249, 'ACF-000016.jpg', 0, 0, '', 0, 1),
(71, 3, 'ACF-000017', 'ÁO KHOÁC KAKI TAY DÀI MÀU ĐEN', '0000-00-00', 275, 'ACF-000017.jpg', 0, 0, '', 0, 1),
(72, 3, 'ACF-000018', 'Áo khoác màu Xanh lá thun lửngcó nón-N977', '0000-00-00', 295, 'ACF-000018.jpg', 0, 0, '', 0, 1),
(73, 3, 'ACF-000019', 'Áo khoác đen', '0000-00-00', 520, 'ACF-000019.jpg', 0, 0, '', 0, 1),
(74, 3, 'ACF-000020', 'Áo khoác manto phi màu đen', '0000-00-00', 550, 'ACF-000020.jpg', 0, 0, '', 0, 1),
(75, 4, 'AKF-000001', 'Áo thun tay ngắn chấm bi màu Trắng', '0000-00-00', 200, 'AKF-000001.jpg', 0, 0, '', 0, 1),
(76, 4, 'AKF-000002', 'Áo sơmi xô tay dài màu Hồng sen', '2008-05-13', 230, 'AKF-000002.jpg', 0, 0, '', 0, 1),
(77, 4, 'AKF-000003', 'Áo thun cổ U tay ngắn gắn nơ màu Đen', '2008-05-13', 190, 'AKF-000003.jpg', 0, 0, '', 0, 1),
(78, 4, 'AKF-000004', 'Áo kiểu 2 dây đính 3 nơ bo thân màu Nâu', '2008-05-13', 200, 'AKF-000004.jpg', 0, 0, '', 0, 1),
(79, 4, 'AKF-000005', 'Áo thun có cổ tay ngắn in hình màu Vàng', '2008-05-13', 220, 'AKF-000005.jpg', 0, 0, '', 0, 1),
(80, 4, 'AKF-000006', 'Áo kiểu cổ tròn tay ngắn thân bo màu xanh biển', '2008-05-13', 220, 'AKF-000006.jpg', 0, 0, '', 0, 1),
(81, 4, 'AKF-000007', 'Áo Phi cổ cao đính nút tay ngắn form dài màu Tím', '2008-05-14', 430, 'AKF-000007.jpg', 0, 0, '', 0, 1),
(82, 4, 'AKF-000008', 'Áo thun form dài cổ sau khoét sâu rút dây lai áo màu Xám', '2008-05-14', 385, 'AKF-000008.jpg', 0, 0, '', 0, 1),
(83, 4, 'AKF-000009', 'Áo thun 2 lớp có nón màu Cam from dài', '2008-05-14', 385, 'AKF-000009.jpg', 0, 0, '', 0, 1),
(84, 4, 'AKF-000010', 'Áo thun 2 lớp dạng ba lỗ màu Đen phối sọc trắng', '2008-05-14', 345, 'AKF-000010.jpg', 0, 0, '', 0, 1),
(85, 4, 'AKF-000011', 'Áo thun cổ tim tay ngắn có hình lá cờ màu Tím', '2008-05-14', 325, 'AKF-000011.jpg', 0, 0, '', 0, 1),
(86, 4, 'AKF-000012', 'Áo from dài có nón tay dài màu Hồng sọc phối đen', '0000-00-00', 485, 'AKF-000012.jpg', 0, 0, '', 0, 1),
(87, 4, 'AKF-000013', 'Áo sơmi tay ngắn CK màu Trắng', '0000-00-00', 260, 'AKF-000013.jpg', 0, 0, '', 0, 1),
(88, 4, 'AKF-000014', 'Áo kiểu mitu Trắng ren ngực ngắn tay', '0000-00-00', 200, 'AKF-000014.jpg', 0, 0, '', 0, 1),
(89, 4, 'AKF-000015', 'Áo thun dây có lớp voan dài màu rêu', '0000-00-00', 280, 'AKF-000015.jpg', 0, 0, '', 0, 1),
(90, 4, 'AKF-000016', 'Áo thun kiểu cổ tròn sát cánh thân bo màu Đen', '0000-00-00', 210, 'AKF-000016.jpg', 0, 0, '', 0, 1),
(91, 4, 'AKF-000017', 'Áo thun đô ngắn màu Xanh', '0000-00-00', 130, 'AKF-000017.jpg', 0, 0, '', 0, 1),
(92, 4, 'AKF-000018', 'Áo kiểu cổ tròn tay phồng viền bèo vàng thân màu Nâu', '0000-00-00', 155, 'AKF-000018.jpg', 0, 0, '', 0, 1),
(93, 4, 'AKF-000019', 'Áo kiểu cổ tròn tay phồg nhỏ chấm bi to màu Nâu trắng', '0000-00-00', 155, 'AKF-000019.jpg', 0, 0, '', 0, 1),
(94, 4, 'AKF-000020', 'Áo kiểu cổ tim đứng tay phồng kết nút màu Đen', '0000-00-00', 165, 'AKF-000020.jpg', 0, 0, '', 0, 1),
(95, 4, '', 'Áo kiểu cổ trái tim tay phồng viền bèo hoa xanh màu Trắng', '0000-00-00', 145, '', 0, 0, '', 0, 1),
(96, 4, '', 'Áo kiểu giả vest tay dài hoa văn xanh nền trắng', '0000-00-00', 275, '', 0, 0, '', 0, 1),
(97, 4, '', 'Áo kiểu giả vest tay dài hoa văn đỏ đen viền trắng', '0000-00-00', 265, '', 0, 0, '', 0, 1),
(98, 4, '', 'Áo vest tay dài 2 túi màu Vàng viền nâu', '0000-00-00', 265, '', 0, 0, '', 0, 1),
(99, 4, '', 'Áo len cổ tròn sát cánh sọc ngang viền xanh lá', '0000-00-00', 270, '', 0, 0, '', 0, 1),
(100, 4, '', 'Áo thun cổ tròn tay ngắn in hình màu Vàng', '0000-00-00', 240, '', 0, 0, '', 0, 1),
(101, 4, '', 'Áo len cổ tròn tay ngắn thân bo sọc ngang màu Xanh bạc', '0000-00-00', 230, '', 0, 0, '', 0, 1),
(102, 4, '', 'Áo thun kiểu cổ tròn sát cánh hở sau lưng from dài màu Đen', '0000-00-00', 190, '', 0, 0, '', 0, 1),
(103, 4, '', 'Áo thun kiểu có nón cổ tròn tay dài viền da beo màu Trắng', '0000-00-00', 200, '', 0, 0, '', 0, 1),
(104, 4, '', 'Áo thun nữ tay ngắn in cô gái màu Xanh', '0000-00-00', 50, '', 0, 0, '', 0, 1),
(105, 4, '', 'Áo thun nữ cổ tròn sát cánh in hình tròn màu Đen', '0000-00-00', 150, '', 0, 0, '', 0, 1),
(106, 4, '', 'Áo thun nữ cổ đổ sát cánh form dài màu Trắng', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(107, 4, '', 'Áo thun nữ cổ tròn tay ngắn hình chuột mickey màu Trắng', '0000-00-00', 150, '', 0, 0, '', 0, 1),
(108, 4, '', 'Áo thun nữ cổ tròn tay ngắn màu Cam', '0000-00-00', 175, '', 0, 0, '', 0, 1),
(109, 4, '', 'Áo thun nữ màu đỏ cổ tròn tay ngắn viền tay cổ hình vịt Donal', '0000-00-00', 150, '', 0, 0, '', 0, 1),
(110, 4, '', 'Áo thun cổ tròn tay ngắn form dài hình con khỉ màu Đỏ', '0000-00-00', 150, '', 0, 0, '', 0, 1),
(111, 4, '', 'Áo thun kiểu form dài in chữ LIVE PINK màu Trắng', '0000-00-00', 150, '', 0, 0, '', 0, 1),
(112, 4, '', 'Áo kiểu 2 dây xoắn kết cách điệu màu Xanh', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(113, 4, '', 'Áo kiểu cổ tim đắp kết hoa hồng tay ngắn màu Xanh đen', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(114, 4, '', 'Áo kiểu 2 dây cách điệu bèo tay xuống ngực màu Xanh biển', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(115, 4, '', 'Áo kiểu cổ thuyền rộng tay lỡ viền ran trắng màu Xanh đen', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(116, 4, '', 'Áo kiểu cổ tròn tay phồng dài bo thân màu Trắng', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(117, 4, '', 'Áo kiểu cổ tim sát cánh cột nơ eo màu Xanh đen', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(118, 4, '', 'Áo kiểu cổ sơmi tay ngắn kết nút sọc ca rô màu Nâu nhạt', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(119, 4, '', 'Áo kiểu cổ rộng kết hoa vai màu Hồng', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(120, 4, '', 'Áo kiểu sơmi tay ngắn lỡ ly viền đen màu Trắng', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(121, 4, '', 'Áo kiểu cổ tim rộng tay phồng màu Hồng sen', '0000-00-00', 180, '', 0, 0, '', 0, 1),
(122, 4, '', 'Áo thun Nữ cổ V tay ngắn cột nơ hông in hình cô gái màu Xanh biển', '0000-00-00', 95, '', 0, 0, '', 0, 1),
(123, 4, '', 'Áo thun Nữ cổ V tay ngắn đính nút in hoa xanh màu Trắng', '0000-00-00', 100, '', 0, 0, '', 0, 1),
(124, 4, '', 'Áo thun Nữ cổ tim tay phồng hình bướm xinh màu Xanh biển', '0000-00-00', 125, '', 0, 0, '', 0, 1),
(125, 4, '', 'Áo thun Nữ cổ tròn tay ngắn kết nút màu Vàng nhạt', '0000-00-00', 100, '', 0, 0, '', 0, 1),
(126, 4, '', 'Áo thun sọc gân Nữ cổ sơ mi tay ngắn màu Vàng', '0000-00-00', 120, '', 0, 0, '', 0, 1),
(127, 4, '', 'Áo thun cá sấu Nữ cổ sơ mi tay ngắn màu Xanh lá', '0000-00-00', 120, '', 0, 0, '', 0, 1),
(128, 4, '', 'Áo thun Nữ cổ sơ mi tay ngắn sọc ngang màu Hồng', '0000-00-00', 120, '', 0, 0, '', 0, 1),
(129, 5, 'QDF-000001', 'QUẦN JEANS DÀI XANH WASH', '0000-00-00', 162, 'QDF-000001.jpg', 0, 0, '', 0, 1),
(130, 5, 'QDF-000002', 'Quần JEAN nữ màu Xanh biển', '0000-00-00', 185, 'QDF-000002.jpg', 0, 0, '', 0, 1),
(131, 5, 'QDF-000003', 'Quần JEANS màu Xanh nhạt', '0000-00-00', 185, 'QDF-000003.jpg', 0, 0, '', 0, 1),
(132, 5, 'QDF-000004', 'Quần JEANS thái màu Trắng', '0000-00-00', 185, 'QDF-000004.jpg', 0, 0, '', 0, 1),
(133, 5, 'QDF-000005', 'Quần Nhung nữ màu Nâu', '0000-00-00', 199, 'QDF-000005.jpg', 0, 0, '', 0, 1),
(134, 5, 'QDF-000006', 'QUẦN JEANS DÀI MÀU XANH LỢT WASH', '0000-00-00', 207, 'QDF-000006.jpg', 0, 0, '', 0, 1),
(135, 5, 'QDF-000007', 'Quần dài kaki đinh nút túi màu Trắng', '0000-00-00', 210, 'QDF-000007.jpg', 0, 0, '', 0, 1),
(136, 5, 'QDF-000008', 'QUẦN JEANS DÀI DIESEL MÀU XANH LẠT', '0000-00-00', 225, 'QDF-000008.jpg', 0, 0, '', 0, 1),
(137, 5, 'QDF-000009', 'Quần đắp vải LINEN', '0000-00-00', 230, 'QDF-000009.jpg', 0, 0, '', 0, 1),
(138, 5, 'QDF-000010', 'Quần JEANS màu đen thêu túi sau', '0000-00-00', 235, 'QDF-000010.jpg', 0, 0, '', 0, 1),
(139, 5, 'QDF-000011', 'Quần nỉ dài có hai túi màu Xám', '0000-00-00', 240, 'QDF-000011.jpg', 0, 0, '', 0, 1),
(140, 5, 'QDF-000012', 'Quần JEANS tím thêu hoa túi sau màu Tím', '0000-00-00', 275, 'QDF-000012.jpg', 0, 0, '', 0, 1),
(141, 5, 'QDF-000013', 'Quần jeans màu xanh nhạt', '0000-00-00', 320, 'QDF-000013.jpg', 0, 0, '', 0, 1),
(142, 5, 'QDF-000014', 'Quần jeans màu xanh nhạt wash đùi', '0000-00-00', 320, 'QDF-000014.jpg', 0, 0, '', 0, 1),
(143, 5, 'QDF-000015', 'Quần JEAN 269 màu Đen', '0000-00-00', 340, 'QDF-000015.jpg', 0, 0, '', 0, 1),
(144, 5, 'QDF-000016', 'Quần kaki dài kết đá màu Xanh biển', '0000-00-00', 345, 'QDF-000016.jpg', 0, 0, '', 0, 1),
(145, 5, 'QDF-000017', 'Quần JEAN nữ CLASSIC màu Đen', '0000-00-00', 350, 'QDF-000017.jpg', 0, 0, '', 0, 1),
(146, 5, 'QDF-000018', 'Quần JEAN nữ CLASSIC màu Đen', '0000-00-00', 350, 'QDF-000018.jpg', 0, 0, '', 0, 1),
(147, 5, 'QDF-000019', 'Quần JEANS CAVALLI màu Xám', '0000-00-00', 350, 'QDF-000019.jpg', 0, 0, '', 0, 1),
(148, 5, 'QDF-000020', 'Quần JEANS dài màu Đỏ Đô', '0000-00-00', 350, 'QDF-000020.jpg', 0, 0, '', 0, 1),
(149, 5, '', 'Quần JEANS LEVI''S màu Xanh biển', '0000-00-00', 350, '', 0, 0, '', 0, 1),
(150, 5, '', 'Quần JEANS nữ GUESS màu Xanh biển', '0000-00-00', 350, '', 0, 0, '', 0, 1),
(151, 5, '', 'Quần JEANS nữ MNG màu Xanh biển', '0000-00-00', 350, '', 0, 0, '', 0, 1),
(152, 5, '', 'Quần JEANS đen chỉ màu Vàng', '0000-00-00', 380, '', 0, 0, '', 0, 1),
(153, 5, '', 'Quần JEANS D&G màu Đen', '0000-00-00', 410, '', 0, 0, '', 0, 1),
(154, 5, '', 'Quần JEAN dài nữ có thêm túi trước màu Xanh biển', '0000-00-00', 420, '', 0, 0, '', 0, 1),
(155, 5, '', 'Quần JEAN dài nữ có thêu túi màu Xanh bạc', '0000-00-00', 420, '', 0, 0, '', 0, 1),
(156, 5, '', 'Quần JEAN dài nữ có túi kiểu sọc kem Xanh đen', '0000-00-00', 420, '', 0, 0, '', 0, 1),
(157, 5, '', 'Quần JEAN dài nữ số 66 oát màu Vàng da', '0000-00-00', 420, '', 0, 0, '', 0, 1),
(158, 5, '', 'Quần JEAN MANGO đính hột túi sau màu Xanh', '0000-00-00', 480, '', 0, 0, '', 0, 1),
(159, 5, '', 'Quần JEANS nữ MASCIANO màu Trắng', '0000-00-00', 550, '', 0, 0, '', 0, 1),
(160, 5, '', 'QUẦN JEAN DÀI  MÀU XANH BIỂN', '0000-00-00', 630, '', 0, 0, '', 0, 1),
(161, 5, '', 'QUẦN JEAN DÀI BEBE MÀU XANH BIỂN', '0000-00-00', 630, '', 0, 0, '', 0, 1),
(162, 5, '', 'QUẦN JEAN DÀI MÀU XANH BIỂN', '0000-00-00', 630, '', 0, 0, '', 0, 1),
(163, 5, '', 'QUẦN JEAN DÀI BEBE MÀU XANH ĐEN', '0000-00-00', 675, '', 0, 0, '', 0, 1),
(164, 5, '', 'Quần JEAN Nữ túi kiểu +thắt lưng bố màu Đen', '0000-00-00', 690, '', 0, 0, '', 0, 1),
(165, 5, '', 'QUẦN JEAN DÀI MASCIANNO MÀU HỒNG', '0000-00-00', 720, '', 0, 0, '', 0, 1),
(166, 5, '', 'QUẦN JEAN DÀI MASCIANNO MÀU TRẮNG', '0000-00-00', 720, '', 0, 0, '', 0, 1),
(167, 5, '', 'Quần Jean Jenifer lopez màu xanh đen', '0000-00-00', 783, '', 0, 0, '', 0, 1),
(168, 5, '', 'Quần Jean VB màu xanh đậm', '0000-00-00', 783, '', 0, 0, '', 0, 1),
(169, 5, '', 'Quần JEANS dài hình Bướm màu Xanh biển', '0000-00-00', 800, '', 0, 0, '', 0, 1),
(170, 5, '', 'Quần JEANS nữ AX màu Xanh', '0000-00-00', 800, '', 0, 0, '', 0, 1),
(171, 5, '', 'Quần JEANS nữ BE BE màu Trắng', '0000-00-00', 800, '', 0, 0, '', 0, 1),
(172, 5, '', 'Quần JEANS nữ LEVI''S màu Xanh đen', '0000-00-00', 800, '', 0, 0, '', 0, 1),
(173, 5, '', 'Quần JEANS GUESS túi đính hột màu Xanh biển', '0000-00-00', 855, '', 0, 0, '', 0, 1),
(174, 6, 'QSF-000001', 'Quần short màu Đen', '0000-00-00', 80, 'QSF-000001.jpg', 0, 0, '', 0, 1),
(175, 6, 'QSF-000002', 'Quần thun ôm nhún la gắn nơi màu Trắng', '0000-00-00', 85, 'QSF-000002.jpg', 0, 0, '', 0, 1),
(176, 6, 'QSF-000003', 'Quần thun ôm nhún lai màu Đen chấm bi trắng', '0000-00-00', 85, 'QSF-000003.jpg', 0, 0, '', 0, 1),
(177, 6, 'QSF-000004', 'Quần short màu trắng đính nút to', '0000-00-00', 90, 'QSF-000004.jpg', 0, 0, '', 0, 1),
(178, 6, 'QSF-000005', 'Quần JEANS short màu Xanh', '0000-00-00', 100, 'QSF-000005.jpg', 0, 0, '', 0, 1),
(179, 6, 'QSF-000006', 'Quần short kaki màu sọc xanh lá', '0000-00-00', 100, 'QSF-000006.jpg', 0, 0, '', 0, 1),
(180, 6, 'QSF-000007', 'Quần short đen', '0000-00-00', 135, 'QSF-000007.jpg', 0, 0, '', 0, 1),
(181, 6, 'QSF-000008', 'Quần kaki lửng sọc xanh đen', '0000-00-00', 150, 'QSF-000008.jpg', 0, 0, '', 0, 1),
(182, 6, 'QSF-000009', 'Quần short màu Xanh đậm', '0000-00-00', 150, 'QSF-000009.jpg', 0, 0, '', 0, 1),
(183, 6, 'QSF-000010', 'Quần short nhung nhiều túi màu Vàng đồng', '0000-00-00', 160, 'QSF-000010.jpg', 0, 0, '', 0, 1),
(184, 6, 'QSF-000011', 'Quần đùi jean', '0000-00-00', 170, 'QSF-000011.jpg', 0, 0, '', 0, 1),
(185, 6, 'QSF-000012', 'Quần short +thắt lưng đính đá màu Kem', '0000-00-00', 170, 'QSF-000012.jpg', 0, 0, '', 0, 1),
(186, 6, 'QSF-000013', 'Quần lửng 2 túi màu Xanh biển', '0000-00-00', 180, 'QSF-000013.jpg', 0, 0, '', 0, 1),
(187, 6, 'QSF-000014', 'Quần lửng BEBE màu Xanh đậm', '0000-00-00', 180, 'QSF-000014.jpg', 0, 0, '', 0, 1),
(188, 6, 'QSF-000015', 'Quần kaki lửng màu Đen', '0000-00-00', 190, 'QSF-000015.jpg', 0, 0, '', 0, 1),
(189, 6, 'QSF-000016', 'Quần short lửng màu Trắng', '0000-00-00', 190, 'QSF-000016.jpg', 0, 0, '', 0, 1),
(190, 6, 'QSF-000017', 'Quần lửng có dây nịt giả màu Xám', '0000-00-00', 200, 'QSF-000017.jpg', 0, 0, '', 0, 1),
(191, 6, 'QSF-000018', 'Quần short lửng màu Xanh chuối', '0000-00-00', 200, 'QSF-000018.jpg', 0, 0, '', 0, 1),
(192, 6, 'QSF-000019', 'Quần short sọc carô màu Kem xanh', '0000-00-00', 200, 'QSF-000019.jpg', 0, 0, '', 0, 1),
(193, 6, 'QSF-000020', 'Quần lửng sọc carô', '0000-00-00', 204, 'QSF-000020.jpg', 0, 0, '', 0, 1),
(194, 6, '', 'Quần short lửng bẻ lai thêu túi màu Xanh biển', '0000-00-00', 205, '', 0, 0, '', 0, 1),
(195, 6, '', 'Quần short lửng dây kéo cam màu Xanh biển', '0000-00-00', 205, '', 0, 0, '', 0, 1),
(196, 6, '', 'Quần lửng màu Vàng', '0000-00-00', 210, '', 0, 0, '', 0, 1),
(197, 6, '', 'Quần short màu đỏ sọc trắng', '0000-00-00', 210, '', 0, 0, '', 0, 1),
(198, 6, '', 'Quần JEANS Short nữ D&G màu Trắng', '0000-00-00', 220, '', 0, 0, '', 0, 1),
(199, 6, '', 'Quần JEAN short bẻ lai màu Xanh biển', '0000-00-00', 230, '', 0, 0, '', 0, 1),
(200, 6, '', 'Quần lửng viền ren màu Nâu', '0000-00-00', 230, '', 0, 0, '', 0, 1),
(201, 6, '', 'Quần có nơ màu xám', '0000-00-00', 237, '', 0, 0, '', 0, 1),
(202, 6, '', 'Quần lửng Nhung màu Nâu', '0000-00-00', 240, '', 0, 0, '', 0, 1),
(203, 6, '', 'Quần short ngắn D&G màu Trắng', '0000-00-00', 240, '', 0, 0, '', 0, 1),
(204, 6, '', 'Quần lửng màu Kem', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(205, 6, '', 'Quần lửng nhung màu Đỏ', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(206, 6, '', 'Quần short chấm bi xanh đen', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(207, 6, '', 'Quần short lửng màu Đen', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(208, 6, '', 'Quần short lửng màu Nâu xám', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(209, 6, '', 'Quần JEAN lửng đính cườm túi màu Xanh biển', '0000-00-00', 255, '', 0, 0, '', 0, 1),
(210, 6, '', 'Quần 2 lưng lửng màu Xanh lá', '0000-00-00', 260, '', 0, 0, '', 0, 1),
(211, 6, '', 'Quần short carô màu Xám', '0000-00-00', 260, '', 0, 0, '', 0, 1),
(212, 6, '', 'Quần short kaki +dây nịt màu Kem', '0000-00-00', 260, '', 0, 0, '', 0, 1),
(213, 6, '', 'Quần JEAN Short nữ màu Đen túi viền nâu', '0000-00-00', 270, '', 0, 0, '', 0, 1),
(214, 6, '', 'Quần JEAN Short nữ màu Xanh biển túi hộp', '0000-00-00', 270, '', 0, 0, '', 0, 1),
(215, 6, '', 'Quần JEAN Short nữ màu Xanh biển túi viền nâu', '0000-00-00', 270, '', 0, 0, '', 0, 1),
(216, 6, '', 'Quần JEAN Short nữ màu Xanh biển viền lai dabeo', '0000-00-00', 270, '', 0, 0, '', 0, 1),
(217, 6, '', 'Quần short kaki ca rô Hồng cam', '0000-00-00', 270, '', 0, 0, '', 0, 1),
(218, 6, '', 'Quần Short nữ màu Trắng', '0000-00-00', 270, '', 0, 0, '', 0, 1),
(219, 6, '', 'Quần Short nữ màu Trắng viền lai dabeo', '0000-00-00', 270, '', 0, 0, '', 0, 1),
(220, 6, '', 'Quần lửng kaki lai xéo màu Nâu', '0000-00-00', 280, '', 0, 0, '', 0, 1),
(221, 6, '', 'Quần JEAN lửng MISS SIXTY màu Đen thêu', '0000-00-00', 290, '', 0, 0, '', 0, 1),
(222, 6, '', 'Quần lửng màu Kem', '0000-00-00', 295, '', 0, 0, '', 0, 1),
(223, 6, '', 'Quần JEAN lửng thêu túi sau bẻ lai màu Xanh biển', '0000-00-00', 300, '', 0, 0, '', 0, 1),
(224, 6, '', 'Quần short JEANS màu Đen LAMINATEL', '0000-00-00', 320, '', 0, 0, '', 0, 1),
(225, 6, '', 'Quần Jean lững gắn nơ ống màu xanh biển', '0000-00-00', 323, '', 0, 0, '', 0, 1),
(226, 6, '', 'Quần lửng JEANS bẻ lai rách túi màu Xanh đậm', '0000-00-00', 330, '', 0, 0, '', 0, 1),
(227, 6, '', 'Quần lửng JEANS bẻ lai wash đùi màu Xanh biển', '0000-00-00', 330, '', 0, 0, '', 0, 1),
(228, 6, '', 'Quần lửng JEANS bẻ lai wash đùi màu Xanh biển đậm', '0000-00-00', 330, '', 0, 0, '', 0, 1),
(229, 6, '', 'Quần JEANS lửng COCOBO màu Xanh đậm', '0000-00-00', 350, '', 0, 0, '', 0, 1),
(230, 6, '', 'Quần short xám có dây thắt lưng', '0000-00-00', 380, '', 0, 0, '', 0, 1),
(231, 6, '', 'Quần JEAN lửng CAVALLI đính đá túi sau màu XÁm chuột', '0000-00-00', 460, '', 0, 0, '', 0, 1),
(232, 6, '', 'Quần short nữ màu Trắng GUESS', '0000-00-00', 480, '', 0, 0, '', 0, 1),
(233, 6, '', 'Quần short nữ màu Vàng MARCIANO', '0000-00-00', 750, '', 0, 0, '', 0, 1),
(234, 7, 'VAF-000001', 'Váy vải màu Trắng phối ca rô', '0000-00-00', 65, 'VAF-000001.jpg', 0, 0, '', 0, 1),
(235, 7, 'VAF-000002', 'Váy xòe trắng, phối ca rô đỏ ấn tượng và dễ thương', '0000-00-00', 85, 'VAF-000002.jpg', 0, 0, '', 0, 1),
(236, 7, 'VAF-000003', 'Váy hoa bi đen vải voan', '0000-00-00', 140, 'VAF-000003.jpg', 0, 0, '', 0, 1),
(237, 7, 'VAF-000004', 'Váy màu Cam xếp li', '0000-00-00', 170, 'VAF-000004.jpg', 0, 0, '', 0, 1),
(238, 7, 'VAF-000005', 'Váy ngắn sọc carô màu Đỏ đen', '0000-00-00', 170, 'VAF-000005.jpg', 0, 0, '', 0, 1),
(239, 7, 'VAF-000006', 'Váy màu Nâu xếp li có dây nịt', '0000-00-00', 180, 'VAF-000006.jpg', 0, 0, '', 0, 1),
(240, 7, 'VAF-000007', 'Váy ngắn màu Tím', '0000-00-00', 180, 'VAF-000007.jpg', 0, 0, '', 0, 1),
(241, 7, 'VAF-000008', 'Váy ngắn màu Hồng', '0000-00-00', 185, 'VAF-000008.jpg', 0, 0, '', 0, 1),
(242, 7, 'VAF-000009', 'Váy Jean lửng màu Xám', '0000-00-00', 190, 'VAF-000009.jpg', 0, 0, '', 0, 1),
(243, 7, 'VAF-000010', 'Váy Kaki màu xanh lá cây', '0000-00-00', 190, 'VAF-000010.jpg', 0, 0, '', 0, 1),
(244, 7, 'VAF-000011', 'Váy kaki màu Kem', '0000-00-00', 199, 'VAF-000011.jpg', 0, 0, '', 0, 1),
(245, 7, 'VAF-000012', 'Váy xếp li màu Vàng', '0000-00-00', 199, 'VAF-000012.jpg', 0, 0, '', 0, 1),
(246, 7, 'VAF-000013', 'Váy JEANS viền đỏ màu Xanh', '0000-00-00', 220, 'VAF-000013.jpg', 0, 0, '', 0, 1),
(247, 7, 'VAF-000014', 'Váy xếp li xòe đườ g viền trắng quanh lai màu Đen', '0000-00-00', 200, 'VAF-000014.jpg', 0, 0, '', 0, 1),
(248, 7, 'VAF-000015', 'Váy lửng xòe ca rô màu Nâu', '0000-00-00', 210, 'VAF-000015.jpg', 0, 0, '', 0, 1),
(249, 7, 'VAF-000016', 'Váy ngắn sọc Trắng đỏ', '0000-00-00', 210, 'VAF-000016.jpg', 0, 0, '', 0, 1),
(250, 7, 'VAF-000017', 'Váy JEANS nữ màu Xanh đen', '0000-00-00', 229, 'VAF-000017.jpg', 0, 0, '', 0, 1),
(251, 7, 'VAF-000018', 'Váy nhún màu Cà phê sữa', '0000-00-00', 230, 'VAF-000018.jpg', 0, 0, '', 0, 1),
(252, 7, 'VAF-000019', 'Váy JEAN ngắn 2 tầng lưng da bò màu Xanh biển', '0000-00-00', 235, 'VAF-000019.jpg', 0, 0, '', 0, 1),
(253, 7, 'VAF-000020', 'Váy trắng nhã nhặn', '0000-00-00', 243, 'VAF-000020.jpg', 0, 0, '', 0, 1),
(254, 7, '', 'Váy Da màu Nâu', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(255, 7, '', 'Váy JUMBAO hoa văn màu Trắng', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(256, 7, '', 'Váy lửng kaki ngắn 2 túi màu Rêu đậm', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(257, 7, '', 'Váy ngắn trắng MGO', '0000-00-00', 250, '', 0, 0, '', 0, 1),
(258, 7, '', 'Váy JEAN ngắn viền lai màu Xanh biển', '0000-00-00', 255, '', 0, 0, '', 0, 1),
(259, 7, '', 'Váy JEANS Xanh ngắn chỉ xanh lá', '0000-00-00', 260, '', 0, 0, '', 0, 1),
(260, 7, '', 'Váy JEANS Xanh ngắn túi thêu đôi cánh', '0000-00-00', 260, '', 0, 0, '', 0, 1),
(261, 8, 'BQF-000001', 'Bộ quần áo lửng HK màu cam cà rốt', '0000-00-00', 120, 'BQF-000001.jpg', 0, 0, '', 0, 1),
(262, 8, 'BQF-000002', 'Bộ quần áo lửng HK màu Đen', '0000-00-00', 120, 'BQF-000002.jpg', 0, 0, '', 0, 1),
(263, 8, 'BQF-000003', 'Bộ áo quần lửng HK màu cam', '0000-00-00', 129, 'BQF-000003.jpg', 0, 0, '', 0, 1),
(264, 8, 'BQF-000004', 'Bộ áo quần Nam nữ', '0000-00-00', 129, 'BQF-000004.jpg', 0, 0, '', 0, 1),
(265, 8, 'BQF-000005', 'Bộ áo quần Nữ thời trang', '0000-00-00', 129, 'BQF-000005.jpg', 0, 0, '', 0, 1),
(266, 8, 'BQF-000006', 'Bộ áo quần lửng HK màu cam', '0000-00-00', 130, 'BQF-000006.jpg', 0, 0, '', 0, 1),
(267, 8, 'BQF-000007', 'Bộ áo quần lửng HK màu đen', '0000-00-00', 130, 'BQF-000007.jpg', 0, 0, '', 0, 1),
(268, 8, 'BQF-000008', 'Bộ áo quần dài Nam nữ', '0000-00-00', 149, 'BQF-000008.jpg', 0, 0, '', 0, 1),
(269, 8, 'BQF-000009', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'BQF-000009.jpg', 0, 0, '', 0, 1),
(270, 8, 'BQF-000010', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'BQF-000010.jpg', 0, 0, '', 0, 1),
(271, 8, 'BQF-000011', 'Bộ áo quần nam nữ ngắn', '0000-00-00', 149, 'BQF-000011.jpg', 0, 0, '', 0, 1),
(272, 8, 'BQF-000012', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'BQF-000012.jpg', 0, 0, '', 0, 1),
(273, 8, 'BQF-000013', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'BQF-000013.jpg', 0, 0, '', 0, 1),
(274, 8, 'BQF-000014', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'BQF-000014.jpg', 0, 0, '', 0, 1),
(275, 8, 'BQF-000015', 'Bộ áo quần Nam Nữ thể thao', '0000-00-00', 169, 'BQF-000015.jpg', 0, 0, '', 0, 1),
(276, 8, 'BQF-000016', 'Bộ áo quần short trẻ trung màu trắng', '0000-00-00', 180, 'BQF-000016.jpg', 0, 0, '', 0, 1),
(277, 8, 'BQF-000017', 'Bộ áo quần Nữ thời trang', '0000-00-00', 199, 'BQF-000017.jpg', 0, 0, '', 0, 1),
(278, 8, 'BQF-000018', 'Áo cổ tim bông dưới lai màu Xanh+Quần lửng trắng', '0000-00-00', 235, 'BQF-000018.jpg', 0, 0, '', 0, 1),
(279, 8, 'BQF-000019', 'Bộ áo quần trắng +Áo ba lổ sọc Trắng xanh', '0000-00-00', 145, 'BQF-000019.jpg', 0, 0, '', 0, 1),
(280, 8, 'BQF-000020', 'Áo cổ đổ màu Cam+Quần lửng màu Đen', '0000-00-00', 295, 'BQF-000020.jpg', 0, 0, '', 0, 1),
(281, 8, 'BQF-000021', 'Bộ áo quần cổ U tay ngắn +quần lửng phối màu Trắng nâu', '0000-00-00', 380, 'BQF-000021.jpg', 0, 0, '', 0, 1),
(282, 8, 'BQF-000022', 'Bộ áo quần short màu xanh biển áo màu Đỏ có dấu hòi+thắt lưng', '0000-00-00', 410, 'BQF-000022.jpg', 0, 0, '', 0, 1),
(283, 9, 'BVF-000001', 'Bộ áo váy cổ thuyền tay dài màu Xanh +Kem', '0000-00-00', 380, 'BVF-000001.jpg', 0, 0, '', 0, 1),
(284, 9, 'BVF-000002', 'Bộ áo váy cổ tim tay dài váy xòe màu Nâu', '0000-00-00', 380, 'BVF-000002.jpg', 0, 0, '', 0, 1),
(285, 9, 'BVF-000003', 'Bộ áo váy cổ tim tay lỡ +váy ngắn xòe viền màu Hồng vàng', '0000-00-00', 380, 'BVF-000003.jpg', 0, 0, '', 0, 1),
(286, 9, 'BVF-000004', 'Bộ áo váy cổ U rộng tay hồng lỡ +váychữ A màu Xanh lá', '0000-00-00', 380, 'BVF-000004.jpg', 0, 0, '', 0, 1),
(287, 9, 'BVF-000005', 'Bộ áo váy cổ u tim tay phồng + váy xòe màu Nâu kem', '0000-00-00', 380, 'BVF-000005.jpg', 0, 0, '', 0, 1),
(288, 9, 'BVF-000006', 'Bộ áo váy dạng yếm viền ren hồng váy xòe màu Đen phối hồng', '0000-00-00', 380, 'BVF-000006.jpg', 0, 0, '', 0, 1),
(289, 9, 'BVF-000007', 'Bộ vest kaki thun màu Xanh + Váy trắng', '0000-00-00', 478, 'BVF-000007.jpg', 0, 0, '', 0, 1),
(290, 9, 'BVF-000008', 'Đầm liền váy trắng + Áo gi lê màu đen', '0000-00-00', 855, 'BVF-000008.jpg', 0, 0, '', 0, 1),
(291, 10, 'ATM-000001', 'Áo thun Nam có cổ tay ngắn in hình hai túi màu Xám', '0000-00-00', 139, 'ATM-000001.jpg', 0, 0, '', 0, 1),
(292, 10, 'ATM-000002', 'Áo thun Nam cổ tròn tay ngắn sọc ngang thêu hình nhện màu Trắng đen', '0000-00-00', 139, 'cccccc.jpg', 0, 0, '', 0, 1),
(293, 10, 'ATM-000003', 'Áo thun cá sấu tay ngắn màu Xanh lá', '0000-00-00', 150, 'ATM-000003.jpg', 0, 0, '', 0, 1),
(294, 10, 'ATM-000004', 'Áo thun IIEJ cổ tròn tay ngắn in hình đầu lâu màu Cam', '0000-00-00', 150, 'ATM-000004.jpg', 0, 0, '', 0, 1),
(295, 10, 'ATM-000005', 'Áo thun IIEJ cổ tròn tay ngắn in hình màu Xanh biển', '0000-00-00', 150, 'ATM-000005.jpg', 0, 0, '', 0, 1),
(296, 10, 'ATM-000006', 'Áo thun ngắn tay cổ tròn viền đen màu Hồng in hình', '0000-00-00', 150, 'ATM-000006.jpg', 0, 0, '', 0, 1),
(297, 10, 'ATM-000007', 'Áo thun ngắn tay cổ tròn viền đen màu Xanh đậm', '0000-00-00', 150, 'ATM-000007.jpg', 0, 0, '', 0, 1),
(298, 10, 'ATM-000008', 'Áo thun ngắn tay tin hình con khỉ màu Nâu', '0000-00-00', 150, 'ATM-000008.jpg', 0, 0, '', 0, 1),
(299, 10, 'ATM-000009', 'Áo thun ngắn tay Vàng sọc đen xanh đỏ ngắn tay', '0000-00-00', 150, 'ATM-000009.jpg', 0, 0, '', 0, 1),
(300, 10, 'ATM-000010', 'Áo thun tay ngắn màu vàng viền trắng in hình và chữ trước ngực', '0000-00-00', 150, 'ATM-000010.jpg', 0, 0, '', 0, 1),
(301, 10, 'ATM-000011', 'Áo thun Nam cổ tròn tay ngắn in hình khỉ màu Trắng', '0000-00-00', 160, 'ATM-000011.jpg', 0, 0, '', 0, 1),
(302, 10, 'ATM-000012', 'Áo thun nam cổ tròn tay ngắn in hình màu Đen', '0000-00-00', 160, 'ATM-000012.jpg', 0, 0, '', 0, 1),
(303, 10, 'ATM-000013', 'Áo thun Nam cá sấu có cổ tay ngắn sọc ngang màu Xám Trắng', '0000-00-00', 169, 'ATM-000013.jpg', 0, 0, '', 0, 1),
(304, 10, 'ATM-000014', 'Áo thun EQUAL ngắn tay cổ áo sơmi thêu tay màu Xám sọc đen', '0000-00-00', 175, 'ATM-000014.jpg', 0, 0, '', 0, 1),
(305, 10, 'ATM-000015', 'Áo thun Nam cổ hình tay ngắn hình ba cố gái màu Đen', '0000-00-00', 180, 'ATM-000015.jpg', 0, 0, '', 0, 1),
(306, 10, 'ATM-000016', 'Áo thun Nam cổ tim tay ngắn màu Xanh', '0000-00-00', 180, 'ATM-000016.jpg', 0, 0, '', 0, 1),
(307, 10, 'ATM-000017', 'Áo thun Nam cổ tròn tay ngắn viền hồng màu Xanh biển', '0000-00-00', 180, 'ATM-000017.jpg', 0, 0, '', 0, 1),
(308, 10, 'ATM-000018', 'Áo thun Nam tay ngắn màu Hồng sọc xám', '0000-00-00', 180, 'ATM-000018.jpg', 0, 0, '', 0, 1),
(309, 10, 'ATM-000019', 'Áo thun Nam cổ tròn tay ngắn màu Trắng GULAIXI', '0000-00-00', 189, 'ATM-000019.jpg', 0, 0, '', 0, 1),
(310, 10, 'ATM-000020', 'Áo len cổ tim ngắn tay màu Trắng', '0000-00-00', 190, 'ATM-000020.jpg', 0, 0, '', 0, 1),
(311, 10, '', 'Áo thun Nam có sổ tay ngắn sọc ngang màu Xanh trắng', '0000-00-00', 190, '', 0, 0, '', 0, 1),
(312, 10, '', 'Áo thun Nam cổ tròn tay ngắn in hình màu Tím', '0000-00-00', 190, '', 0, 0, '', 0, 1),
(313, 10, '', 'Áo thun Nam cổ tròn tay ngắn in hình màu Xám', '0000-00-00', 190, '', 0, 0, '', 0, 1),
(314, 10, '', 'Áo thun Nam cổ tròn tay ngắn in hình viền đỏ màu Trắng', '0000-00-00', 190, '', 0, 0, '', 0, 1),
(315, 10, '', 'Áo thun nam cổ tròn tay ngắn màu Nâu', '0000-00-00', 190, '', 0, 0, '', 0, 1),
(316, 10, '', 'Áo thun Nam cổ tròn tay ngắn sọc ngang màu Trắng', '0000-00-00', 190, '', 0, 0, '', 0, 1),
(317, 10, '', 'Áo len cổ tim tay dài sọc xám', '0000-00-00', 195, '', 0, 0, '', 0, 1),
(318, 11, 'ASM-000001', 'Áo sơmi công sở tay dài trắng', '0000-00-00', 111, 'ASM-000001.jpg', 0, 0, '', 0, 1),
(319, 11, 'ASM-000002', 'Áo sơ mi ngắn tay carô xanh trắng', '0000-00-00', 129, 'ASM-000002.jpg', 0, 0, '', 0, 1),
(320, 11, 'ASM-000003', 'Áo sơ mi ngắn tay trắng đỏ', '0000-00-00', 129, 'ASM-000003.jpg', 0, 0, '', 0, 1),
(321, 11, 'ASM-000004', 'Áo sơmi Nam tay ngắn Cotton màu Xám đỏ', '0000-00-00', 129, 'ASM-000004.jpg', 0, 0, '', 0, 1),
(322, 11, 'ASM-000005', 'Áo sơmi Nam tay ngắn VERSACE màu Trắng', '0000-00-00', 129, 'ASM-000005.jpg', 0, 0, '', 0, 1),
(323, 11, 'ASM-000006', 'Áo sơ mi tay dài hoa văn màu Xanh lá trắng', '0000-00-00', 139, 'ASM-000006.jpg', 0, 0, '', 0, 1),
(324, 11, 'ASM-000007', 'Áo sơ mi tay dài hoa văn màu Trắng', '0000-00-00', 149, 'ASM-000007.jpg', 0, 0, '', 0, 1),
(325, 11, 'ASM-000008', 'Áo sơ mi tay dài hoa văn màu trắng', '0000-00-00', 149, 'ASM-000008.jpg', 0, 0, '', 0, 1),
(326, 11, 'ASM-000009', 'Áo sơmi Nam tay ngắn Cotton màu Xám sọc trắng', '0000-00-00', 149, 'ASM-000009.jpg', 0, 0, '', 0, 1),
(327, 11, 'ASM-000010', 'Áo sơ mi tay dài sọc Kem', '0000-00-00', 159, 'ASM-000010.jpg', 0, 0, '', 0, 1),
(328, 11, 'ASM-000011', 'Áo sơmi Nam tay ngắn Cotton sọc đỏ Đen', '0000-00-00', 159, 'ASM-000011.jpg', 0, 0, '', 0, 1),
(329, 11, 'ASM-000012', 'Áo sơmi Nam tay ngắn in chữ màu Trắng', '0000-00-00', 159, 'ASM-000012.jpg', 0, 0, '', 0, 1),
(330, 11, 'ASM-000013', 'Áo sơ mi tay dài sọc Hồng sen', '0000-00-00', 169, 'ASM-000013.jpg', 0, 0, '', 0, 1),
(331, 11, 'ASM-000014', 'Áo sơ mi tay dài sọc Rêu', '0000-00-00', 169, 'ASM-000014.jpg', 0, 0, '', 0, 1),
(332, 11, 'ASM-000015', 'Áo sơ mi tay dài sọc Trắng cam', '0000-00-00', 169, 'ASM-000015.jpg', 0, 0, '', 0, 1),
(333, 11, 'ASM-000016', 'Áo sơmi cotton tay dài hoa dây đen', '0000-00-00', 169, 'ASM-000016.jpg', 0, 0, '', 0, 1),
(334, 11, 'ASM-000017', 'Áo sơmi cotton tay dài sọcđen kim tuyến', '0000-00-00', 169, 'ASM-000017.jpg', 0, 0, '', 0, 1),
(335, 11, 'ASM-000018', 'Áo sơmi Nam cổ tàu tay ngắn hoa văn màu Vàng đồng', '0000-00-00', 169, 'ASM-000018.jpg', 0, 0, '', 0, 1),
(336, 11, 'ASM-000019', 'Áo sơ mi tay dài sọc Cam xanh lá', '0000-00-00', 179, 'ASM-000019.jpg', 0, 0, '', 0, 1),
(337, 11, 'ASM-000020', 'Áo sơmi tay dài màu Vàng thêu hình trước ngực', '0000-00-00', 190, 'ASM-000020.jpg', 0, 0, '', 0, 1),
(338, 11, '', 'Áo sơmi Nam dài tay màu Đen sọc carô dọc thân nút', '0000-00-00', 195, '', 0, 0, '', 0, 1),
(339, 11, '', 'Áo sơmi cotton kiếng tay dài hoa văn trắng đen', '0000-00-00', 199, '', 0, 0, '', 0, 1),
(340, 11, '', 'Áo sơmi cotton kiếng tay dài màu xanh ngọc', '0000-00-00', 199, '', 0, 0, '', 0, 1),
(341, 11, '', 'Áo sơmi cotton tay dài hoa tròn màu xanh nhu', '0000-00-00', 199, '', 0, 0, '', 0, 1),
(342, 11, '', 'Áo sơmi Nam dài tay thân bo giả cà vạt màu Đen', '0000-00-00', 220, '', 0, 0, '', 0, 1),
(343, 11, '', 'Áo sơmi Nam tay dài màu vàng nhạt', '0000-00-00', 220, '', 0, 0, '', 0, 1),
(344, 11, '', 'Áo sơmi dài tay màu Trắng', '0000-00-00', 230, '', 0, 0, '', 0, 1),
(345, 12, 'ACM-000001', 'Áo khoác PUMA màu Cam đen', '0000-00-00', 195, 'ACM-000001.jpg', 0, 0, '', 0, 1),
(346, 12, 'ACM-000002', 'Áo khoác đen kaki', '0000-00-00', 250, 'ACM-000002.jpg', 0, 0, '', 0, 1),
(347, 12, 'ACM-000003', 'Áo khoác KAPPA màu Đen', '0000-00-00', 270, 'ACM-000003.jpg', 0, 0, '', 0, 1),
(348, 12, 'ACM-000004', 'Áo khoác màu Đen viền trắng', '0000-00-00', 295, 'ACM-000004.jpg', 0, 0, '', 0, 1),
(349, 12, 'ACM-000005', 'Áo khoác ENGGRIE cổ sọc túi trước màu Trắng', '0000-00-00', 370, 'ACM-000005.jpg', 0, 0, '', 0, 1),
(350, 12, 'ACM-000006', 'Áo khoác màu Đen chấm bi trắng', '0000-00-00', 395, 'ACM-000006.jpg', 0, 0, '', 0, 1),
(351, 12, 'ACM-000007', 'Áo khoác tay dài màu Nâu viền trắng', '0000-00-00', 420, 'ACM-000007.jpg', 0, 0, '', 0, 1),
(352, 12, 'ACM-000008', 'Áo khoác JACK JONE tay dài hình nhền nhện màu Trắng', '0000-00-00', 550, 'ACM-000008.jpg', 0, 0, '', 0, 1),
(353, 13, 'QSM-000001', 'QUẦN SHORT JEANS NAM MÀU XANH ĐẬM', '0000-00-00', 120, 'QSM-000001.jpg', 0, 0, '', 0, 1),
(354, 13, 'QSM-000002', 'Bộ áo quần Nam nữ', '0000-00-00', 149, 'QSM-000002.jpg', 0, 0, '', 0, 1),
(355, 13, 'QSM-000003', 'Quần short Xám SUGAR', '0000-00-00', 250, 'QSM-000003.jpg', 0, 0, '', 0, 1),
(356, 13, 'QSM-000004', 'Quần short Xám SWGAR', '0000-00-00', 250, 'QSM-000004.jpg', 0, 0, '', 0, 1),
(357, 13, 'QSM-000005', 'Quần short Nam sọc ca rô màu Vàng Xanh', '0000-00-00', 280, 'QSM-000005.jpg', 0, 0, '', 0, 1),
(358, 13, 'QSM-000006', 'Quần short Nam sọc vàng', '0000-00-00', 280, 'QSM-000006.jpg', 0, 0, '', 0, 1),
(359, 13, 'QSM-000007', 'Quần short Nam sọc Xanh', '0000-00-00', 280, 'QSM-000007.jpg', 0, 0, '', 0, 1),
(360, 13, 'QSM-000008', 'Quần short Nam kaki màu Rêu', '0000-00-00', 320, 'QSM-000008.jpg', 0, 0, '', 0, 1),
(361, 13, 'QSM-000009', 'Quần lửng thêu 1 ống vàng nhạt', '0000-00-00', 340, 'QSM-000009.jpg', 0, 0, '', 0, 1),
(362, 13, 'QSM-000010', 'Quần short Nam buột rút màu Trắng', '0000-00-00', 380, 'QSM-000010.jpg', 0, 0, '', 0, 1),
(363, 13, 'QSM-000011', 'Quần short Nam túi hộp lai tua màu Kem', '0000-00-00', 380, 'QSM-000011.jpg', 0, 0, '', 0, 1),
(364, 13, 'QSM-000012', 'Quần lửng 2 lưng sau', '0000-00-00', 400, 'QSM-000012.jpg', 0, 0, '', 0, 1),
(365, 13, 'QSM-000013', 'Quần short Nam D&G dây kéo màu Xám', '0000-00-00', 490, 'QSM-000013.jpg', 0, 0, '', 0, 1),
(366, 13, 'QSM-000014', 'Quần lửng kaki D&G 2 lưng màu đen', '0000-00-00', 550, 'QSM-000014.jpg', 0, 0, '', 0, 1),
(367, 14, 'QDM-000001', 'Quần jeasn nam màu xanh', '0000-00-00', 179, 'QDM-000001.jpg', 0, 0, '', 0, 1),
(368, 14, 'QDM-000002', 'QUẦN JEANS 2 LƯNG màu xanh xám', '0000-00-00', 197, 'QDM-000002.jpg', 0, 0, '', 0, 1),
(369, 14, 'QDM-000003', 'QUẦN JEANS DÀI NAM MÀU XANH BẠC', '0000-00-00', 220, 'QDM-000003.jpg', 0, 0, '', 0, 1),
(370, 14, 'QDM-000004', 'Quần JEAN nam JPM màu Xanh biển', '0000-00-00', 230, 'QDM-000004.jpg', 0, 0, '', 0, 1),
(371, 14, 'QDM-000005', 'Quần JEAN Nam suông viền chỉ đỏ màu Xanh bạc', '0000-00-00', 239, 'QDM-000005.jpg', 0, 0, '', 0, 1),
(372, 14, 'QDM-000006', 'Quần JEAN nam wash kiểu túi dây kéo lớn màu Xanh biển', '0000-00-00', 240, 'QDM-000006.jpg', 0, 0, '', 0, 1),
(373, 14, 'QDM-000007', 'Quần Kaki Nam màu Nâu sọc vàng', '0000-00-00', 250, 'QDM-000007.jpg', 0, 0, '', 0, 1),
(374, 14, 'QDM-000008', 'Quần Kaki Nam sọc carô Sọc vàng trắng đen', '0000-00-00', 250, 'QDM-000008.jpg', 0, 0, '', 0, 1),
(375, 14, 'QDM-000009', 'Quần Kaki Nam sọc carô Trắng Đen', '0000-00-00', 250, 'QDM-000009.jpg', 0, 0, '', 0, 1),
(376, 14, 'QDM-000010', 'Quần JEAN nam túi sau kiểu màu Xanh biển', '0000-00-00', 270, 'QDM-000010.jpg', 0, 0, '', 0, 1),
(377, 14, 'QDM-000011', 'Quần jean nam màu đất', '0000-00-00', 289, 'QDM-000011.jpg', 0, 0, '', 0, 1),
(378, 14, 'QDM-000012', 'Quần JEANS Nam màu Đen túi hộp G STAR RAW', '0000-00-00', 295, 'QDM-000012.jpg', 0, 0, '', 0, 1),
(379, 14, 'QDM-000013', 'Quần JEANS Nam màu Xanh hoa văn chỉ đỏ sau túi', '0000-00-00', 295, 'QDM-000013.jpg', 0, 0, '', 0, 1),
(380, 14, 'QDM-000014', 'Quần jean nam màu xanh', '0000-00-00', 299, 'QDM-000014.jpg', 0, 0, '', 0, 1),
(381, 14, 'QDM-000015', 'Quần JEAN Nam suông viền chỉ vàng wash đùi màu Xanh biển', '0000-00-00', 299, 'QDM-000015.jpg', 0, 0, '', 0, 1),
(382, 14, 'QDM-000016', 'Quần JEAN nam MYPL màu Xanh biền', '0000-00-00', 300, 'QDM-000016.jpg', 0, 0, '', 0, 1),
(383, 14, 'QDM-000017', 'Quần JEANS Nam màu Xanh đen wash vàng Cam', '0000-00-00', 320, 'QDM-000017.jpg', 0, 0, '', 0, 1),
(384, 14, 'QDM-000018', 'Quần JEAN nam T.R.F màu Trắng xanh', '0000-00-00', 329, 'QDM-000018.jpg', 0, 0, '', 0, 1),
(385, 14, 'QDM-000019', 'Quần JEANS Nam đen wash đùi hình túi sau', '0000-00-00', 330, 'QDM-000019.jpg', 0, 0, '', 0, 1),
(386, 14, 'QDM-000020', 'Quần JEANS Nam màu Xám in chữ đen túi sau', '0000-00-00', 330, 'QDM-000020.jpg', 0, 0, '', 0, 1),
(387, 14, '', 'Quần JEANS Nam Nâu túi sau thêu chữ D&G', '0000-00-00', 330, '', 0, 0, '', 0, 1),
(388, 14, '', 'Quần JEANS WEAR YAGELAI màu Đen', '0000-00-00', 330, '', 0, 0, '', 0, 1),
(389, 14, '', 'Quần JEANS DOLCE GABBANA màu Nâu', '0000-00-00', 350, '', 0, 0, '', 0, 1),
(390, 14, '', 'Quần JEANS Nam túi hộp màu Xanh biển', '0000-00-00', 350, '', 0, 0, '', 0, 1),
(391, 14, '', 'Quần JEANS Nam túi kết hông màu Xanh biển', '0000-00-00', 350, '', 0, 0, '', 0, 1),
(392, 14, '', 'Quần JEANS Nam xanh đậm EVISU', '0000-00-00', 350, '', 0, 0, '', 0, 1),
(393, 14, '', 'Quần JEANS Nam túi hộp da trắng màu Xanh', '0000-00-00', 365, '', 0, 0, '', 0, 1),
(394, 15, '', 'Thắt lưng Nam mặt vuông inox màu Đen', '0000-00-00', 150, '', 0, 0, '', 0, 1),
(395, 15, '', 'Thắt lưng Nam mặt ngũ giác màu Đen', '0000-00-00', 160, '', 0, 0, '', 0, 1),
(396, 15, '', 'Thắt lưng Nam mặt vuông màu Vàng đồng', '0000-00-00', 165, '', 0, 0, '', 0, 1),
(397, 15, '', 'Thắt lưng Nam mặt đầu lâu đen màu Trắng', '0000-00-00', 195, '', 0, 0, '', 0, 1),
(398, 15, '', 'Thắt lưng Nam mặt thổ dân màu Trắng', '0000-00-00', 195, '', 0, 0, '', 0, 1),
(399, 15, '', 'Thắt lưng Nam LEE dạng cài màu Nâu', '0000-00-00', 395, '', 0, 0, '', 0, 1),
(400, 16, '', 'Ví Nam LEVIS có nút bấm màu Nâu', '0000-00-00', 210, '', 0, 0, '', 0, 1),
(401, 16, '', 'Ví Nam LEVIS da trơn màu Nâu', '0000-00-00', 210, '', 0, 0, '', 0, 1),
(402, 16, '', 'Bóp da nam D&G màu Xám có gài', '0000-00-00', 220, '', 0, 0, '', 0, 1),
(403, 16, '', 'Ví Nam LEVIS da sần màu Nâu', '0000-00-00', 220, '', 0, 0, '', 0, 1),
(404, 16, '', 'Ví MAN MONT Nam màu Đen', '0000-00-00', 336, '', 0, 0, '', 0, 1),
(405, 16, '', 'Ví MAN MONT Nam màu Đen', '0000-00-00', 366, '', 0, 0, '', 0, 1),
(406, 16, '', 'VÍ NAM MÀU NÂU ĐỎ', '0000-00-00', 400, '', 0, 0, '', 0, 1),
(407, 16, '', 'Ví MAN MONT Nam màu Nâu Đen', '0000-00-00', 406, '', 0, 0, '', 0, 1),
(408, 16, '', 'Ví MAN MONT Nam màu Nâu', '0000-00-00', 530, '', 0, 0, '', 0, 1),
(409, 16, '', 'Ví WALIMA Nam màu Nâu', '0000-00-00', 576, '', 0, 0, '', 0, 1),
(410, 16, '', 'VÍ NAM MÀU NÂU', '0000-00-00', 600, '', 0, 0, '', 0, 1),
(411, 16, '', 'VÍ NAM MÀU NÂU DEN', '0000-00-00', 640, '', 0, 0, '', 0, 1),
(412, 16, '', 'VÍ NAM MÀU DEN', '0000-00-00', 650, '', 0, 0, '', 0, 1),
(413, 17, '', 'Gọng kính cận Badiya màu trắng', '0000-00-00', 154, '', 0, 0, '', 0, 1),
(414, 17, '', 'Gọng kính cận CE', '0000-00-00', 196, '', 0, 0, '', 0, 1),
(415, 17, '', 'Gọng kính cận CE màu đen', '0000-00-00', 196, '', 0, 0, '', 0, 1),
(416, 17, '', 'Gọng kính cận W&B kim loại màu đen', '0000-00-00', 238, '', 0, 0, '', 0, 1),
(417, 17, '', 'Gọng kính cận A&D&Y kim loại màu xanh đen', '0000-00-00', 322, '', 0, 0, '', 0, 1),
(418, 17, '', 'Gọng kính cận Goyard', '0000-00-00', 322, '', 0, 0, '', 0, 1),
(419, 17, '', 'Gọng kính cận J&S&K màu xanh đen', '0000-00-00', 322, '', 0, 0, '', 0, 1),
(420, 17, '', 'Gọng kính cận Kerastate màu trắng đỏ', '0000-00-00', 322, '', 0, 0, '', 0, 1),
(421, 17, '', 'Gọng kính cận VS màu xám', '0000-00-00', 322, '', 0, 0, '', 0, 1),
(422, 17, '', 'Gọng kính cận VS màu xanh rêu sọc trắng xanh', '0000-00-00', 322, '', 0, 0, '', 0, 1),
(423, 17, '', 'Gọng kính cận Casero màu xanh rêu', '0000-00-00', 462, '', 0, 0, '', 0, 1),
(424, 17, '', 'Gọng kính cận Romantic màu đen', '0000-00-00', 462, '', 0, 0, '', 0, 1),
(425, 17, '', 'Gọng kính cận Caro', '0000-00-00', 532, '', 0, 0, '', 0, 1),
(426, 17, '', 'Gọng kính cận màu xám đen', '0000-00-00', 532, '', 0, 0, '', 0, 1),
(427, 17, '', 'Kính mát Ferrer màu xanh khói', '0000-00-00', 651, '', 0, 0, '', 0, 1),
(428, 18, '', 'Thắt lưng bản nhỏ đầu vuông màu Vàng', '0000-00-00', 25, '', 0, 0, '', 0, 1),
(429, 18, '', 'Thắt lưng bản nhỏ màu Vàng đầu hột xoàn', '0000-00-00', 60, '', 0, 0, '', 0, 1),
(430, 18, '', 'Thắt lưng da bản nhỏ màu Xanh dương đầu chữ nhật', '0000-00-00', 65, '', 0, 0, '', 0, 1),
(431, 18, '', 'Thắt lưng bản to màu Trắng da và thun đầu kim', '0000-00-00', 100, '', 0, 0, '', 0, 1),
(432, 9, 'BVF-000009', 'Bộ áo quần cổ U tay ngắn +quần lửng phối màu Trắng nâu', '2008-05-14', 650, 'BVF-000009.jpg', 0, 0, '', 0, 1),
(433, 9, 'BVF-000010', 'fafeafdsa', '2008-05-14', 520, 'BVF-000010.jpg', 0, 0, '', 0, 1),
(434, 9, 'BVF-000000', 'Áo cổ tim bông dưới lai màu Xanh+Quần lửng trắng', '2008-05-14', 750, 'BVF-0000005.jpg', 0, 0, '', 0, 1),
(435, 9, 'BVF-000011', 'Áo khoác JACK JONE tay dài hình nhền nhện màu Trắng', '2008-05-14', 750, 'BVF-000011.jpg', 0, 0, '', 0, 1),
(436, 9, 'BVF-000012', 'Áo khoác tay dài màu Nâu viền trắng', '2008-05-14', 960, 'BVF-000012.jpg', 0, 0, '', 0, 1);
INSERT INTO `webtm_sanpham` (`idSP`, `idLoai`, `TenSP`, `MoTa`, `NgayCapNhat`, `Gia`, `UrlHinh`, `SoLanXem`, `SoLuongTonKho`, `GhiChu`, `SoLanMua`, `AnHien`) VALUES
(438, 19, 'TXF-000009', 'wadaw', '2008-05-14', 300, 'TXF-000009.jpg', 0, 0, '', 0, 1),
(439, 19, 'TXF-000008', 'Váy xếp li màu Vàng', '2008-05-14', 500, 'TXF-000008.jpg', 0, 0, '', 0, 1),
(440, 19, 'TXF-000007', 'Áo khoác ENGGRIE cổ sọc túi trước màu Trắng', '2008-05-14', 250, 'TXF-000007.jpg', 0, 0, '', 0, 1),
(441, 19, 'TXF-000006', 'Áo khoác màu Đen chấm bi trắng', '2008-05-14', 400, 'TXF-000006.jpg', 0, 0, '', 0, 1),
(442, 19, 'TXF-000005', 'Áo sơ mi ngắn tay trắng đỏ', '2008-05-14', 650, 'TXF-000005.jpg', 0, 0, '', 0, 1),
(443, 19, 'TXF-000004', 'Áo khoác KAPPA màu Đen', '2008-05-14', 500, 'TXF-000003.jpg', 0, 0, '', 0, 1),
(444, 19, 'TXF-000002', 'Áo khoác màu Đen viền trắng', '2008-05-14', 550, 'TXF-000002.jpg', 0, 0, '', 0, 1),
(445, 19, 'TXF-000001', 'Áo khoác tay dài màu Nâu viền trắng', '2008-05-14', 460, 'TXF-000001.jpg', 0, 0, '', 0, 1),
(446, 19, 'TXF-000004', 'Áo len cổ tim tay dài sọc xám', '2008-05-14', 600, 'TXF-000004.jpg', 0, 0, '', 0, 1),
(34433, 22, 'ta em be 1', 'ta em be loai nho', '2016-12-13', 222, '', 0, 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webtm_thanhvien`
--

CREATE TABLE IF NOT EXISTS `webtm_thanhvien` (
  `idTV` int(4) NOT NULL AUTO_INCREMENT,
  `UserNameTV` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PasswordTV` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoaiTV` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EmailTV` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idTV`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `webtm_thanhvien`
--

INSERT INTO `webtm_thanhvien` (`idTV`, `UserNameTV`, `PasswordTV`, `DienThoaiTV`, `EmailTV`) VALUES
(1, 'khai', '123', '123456', 'khai@gmail.com'),
(2, 'khil', '123', '2334', 'khil@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
