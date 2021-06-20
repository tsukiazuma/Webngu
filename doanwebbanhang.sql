-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 20, 2021 lúc 07:00 AM
-- Phiên bản máy phục vụ: 8.0.17
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doanwebbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaDH` char(20) NOT NULL,
  `MaSP` char(20) NOT NULL,
  `Gia` bigint(20) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `NgayDH` timestamp NULL DEFAULT NULL,
  `HinhThucThanhToan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaDH`, `MaSP`, `Gia`, `SoLuong`, `NgayDH`, `HinhThucThanhToan`) VALUES
('DH1', 'SP02', 799000, 1, '2020-12-01 17:35:35', 'OCEANBANK'),
('DH1', 'SP06', 1564000, 2, '2020-12-01 00:54:04', 'BIDV'),
('DH12', 'SP01', 6350000, 1, '2020-12-01 17:03:43', 'BIDV'),
('DH12', 'SP02', 799000, 1, '2020-10-31 07:11:23', 'BIDV'),
('DH12', 'SP04', 170000, 1, '2020-10-31 07:14:20', 'BIDV'),
('DH12', 'SP08', 21979000, 1, '2020-12-01 17:04:33', 'ARGIBANK'),
('DH12', 'SP18', 455000, 1, '2020-12-01 17:03:43', 'BIDV'),
('DH13', 'SP01', 6350000, 1, '2020-11-17 00:44:45', 'ViettinBank'),
('DH13', 'SP19', 38000, 1, '2020-11-17 00:47:43', 'OCEANBANK'),
('DH13', 'SP26', 279000, 4, '2020-11-17 00:47:43', 'OCEANBANK'),
('DH13', 'SP33', 19690000, 1, '2020-11-17 00:46:35', 'OCEANBANK'),
('DH2', 'SP06', 1564000, 2, '2021-06-10 03:00:14', 'ViettinBank'),
('DH2', 'SP10', 7690000, 1, '2021-06-10 03:00:14', 'ViettinBank'),
('DH22', 'SP01', 6350000, 1, '2021-01-15 03:49:43', 'BIDV'),
('DH22', 'SP05', 7990000, 2, '2021-01-15 03:49:43', 'BIDV'),
('DH22', 'SP06', 1564000, 1, '2021-01-15 03:49:43', 'BIDV'),
('DH25', 'SP02', 799000, 2, '2021-01-27 02:59:21', 'BIDV'),
('DH30', 'SP10', 7690000, 3, '2021-03-18 09:39:10', 'ViettinBank'),
('DH31', 'SP08', 21979000, 2, '2021-03-18 09:58:31', 'ViettinBank'),
('DH4', 'SP01', 6350000, 1, '2021-06-17 11:47:37', 'OCEANBANK'),
('DH4', 'SP09', 6390000, 1, '2021-06-10 12:35:56', 'ViettinBank'),
('DH4', 'SP23', 55000, 10, '2021-06-10 12:35:56', 'ViettinBank'),
('DH4', 'SP34', 5200000, 1, '2021-06-17 03:22:34', 'ACB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsp`
--

CREATE TABLE `chitietsp` (
  `MaSP` char(20) NOT NULL,
  `NgaySX` date DEFAULT NULL,
  `HanSD` date DEFAULT NULL,
  `XuatSu` varchar(50) DEFAULT NULL,
  `NoiSX` varchar(50) DEFAULT NULL,
  `HuongDanSD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsp`
--

INSERT INTO `chitietsp` (`MaSP`, `NgaySX`, `HanSD`, `XuatSu`, `NoiSX`, `HuongDanSD`) VALUES
('SP01', '2021-04-14', '2021-06-21', 'China', 'China', 'Cắm điện và tận hưởng'),
('SP02', '2020-08-18', '2021-06-24', 'Hàn Quốc', 'Hàn Quốc', 'Có thể nấu cơm, cháo và các món hầm,...'),
('SP03', '2021-04-12', '2021-06-16', 'Mỹ', 'LosAngeless', 'Phục vụ việc học tập và giải trí của bạn'),
('SP04', '2020-06-22', '2021-06-16', 'Việt Nam', 'Bình Dương', 'Mặc giữu ấm vào màu lạnh'),
('SP05', '2021-02-21', '2021-06-15', 'Nhật Bản', 'Nhật Bản', 'Cắm điện và tận hưởng giải trí đỉnh cao trong ngôi nhà của bạn mùa dịch'),
('SP06', '2021-04-13', '2021-06-16', 'Nhật Bản', 'Nhật Bản', 'Giúp cho bạn lưu giữ những khoảnh khắc đáng nhớ'),
('SP07', '2021-06-07', '2021-06-16', 'Hàn Quốc', 'Hàn Quốc', 'Chụp ảnh và quay phim với chất lượng cao'),
('SP08', '2021-02-15', '2021-06-16', 'China', 'China', 'Phục vụ nhu cầu liên lạc và giải trí của bạn'),
('SP09', '2021-06-01', '2021-06-25', 'China', 'China', 'Smartphone gọn nhẹ cho mọi người'),
('SP10', '2021-04-13', '2021-06-22', 'China', 'China', 'Selfie đỉnh cao'),
('SP11', '2021-01-01', '2021-06-30', 'Nhật Bản', 'Nhật Bản', 'Cách âm tuyệt đối cách nhiệt tuyệt vời chống nước = 0'),
('SP12', '2021-03-16', '2021-06-29', 'Nhật Bản', 'Nhật Bản', 'Mang lại những bữa ăn tuyệt vời cho gia đình của bạn'),
('SP13', '2021-05-16', '2021-06-23', 'Việt Nam', 'Chợ Kim Biên', 'Bạn cần nước nóng? Đừng lo vì đã có chúng tôi ở đây mang lại sự ấm lòng cho bạn.'),
('SP14', '2021-06-03', '2021-06-23', 'Mỹ', 'LosAngeless', 'Bếp 1 ô quá cô đơn? Hãy chọn bếp đôi của chúng tôi mang lại sự ấm áp cho mỗi bữa cơm'),
('SP15', '2021-03-21', '2021-06-22', 'Việt Nam', 'Đồng Nai', 'Bạn đã mua đồ điện của chúng tôi nhưng lại thiếu ổ cắm cho chúng? Còn chờ gì mà không thêm vào giỏ hàng ngay nào'),
('SP16', '2021-06-15', '2021-06-28', 'Nhật Bản', 'Nhật Bản', 'Cách ly ở nhà nhưng quá nóng, hãy để cái quạt này mang đến những luồng gió thổi rỗng ví của bạn'),
('SP17', '2021-02-21', '2021-06-23', 'Philippines', 'Philippines', 'Chỉ với 129k đã có thể lấp đầy căn phòng bằng sự ấm áp.'),
('SP18', '2021-04-12', '2021-06-15', 'China', 'China', 'Quạt không gật bao giờ'),
('SP19', '2021-01-17', '2021-06-23', 'Anh', 'Anh', 'Chân kinh về giao tiếp'),
('SP20', '2021-04-18', '2021-06-29', 'Nhật Bản', 'Nhật Bản', 'Học cách bỏ đi những thứ không cần thiết trong cuộc sông'),
('SP21', '2021-02-21', '2021-06-29', 'Việt Nam', 'Việt Nam', 'Hiểu về cách đến với trái tim crush của bạn'),
('SP22', '2021-02-28', '2021-06-29', 'Việt Nam', 'Việt Nam', '\"Sách hay và thâm thúy\"_Shop 19.5 tuổi '),
('SP23', '2021-03-23', '2021-06-29', 'Việt Nam', 'Việt Nam', 'Con đường danh vọng'),
('SP24', '2021-02-14', '2021-06-30', 'Việt Nam', 'Việt Nam', 'Có chí làm quan có gan làm liều'),
('SP25', '2021-03-14', '2021-06-30', 'Việt Nam', 'Việt Nam', 'Sách hay về giáo dục con cái, khởi nghiệp và cách suy nghĩ'),
('SP26', '2021-03-22', '2021-06-22', 'China', 'China', 'Balo thông minh nhiều  tiện ích'),
('SP27', '2021-04-11', '2021-06-30', 'Nhật Bản', 'Nhật Bản', 'Giày thời trang cho cho giớ trẻ'),
('SP28', '2021-04-18', '2021-06-30', 'Ấn Độ', 'Ấn Độ', 'Túi đẹp phù hợp cho nam giới xách hộ'),
('SP29', '2021-04-18', '2021-06-30', 'Nhật Bản', 'Nhật Bản', 'Áo phug hợp công sở và đi học, mặc đẹp cũng được '),
('SP30', '2021-03-14', '2021-06-30', 'Mỹ', 'LosAngeless', 'Đồng hồ chanh sả cho nữ'),
('SP31', '2021-03-21', '2021-06-30', 'Việt Nam', 'Việt Nam', 'Vòng đỏ tập hợp may mắn'),
('SP32', '2021-04-18', '2021-06-30', 'Việt Nam', 'Việt Nam', 'Phù hợp đi chơi và đi làm'),
('SP33', '2021-02-07', '2021-06-30', 'Nhật Bản', 'Nhật Bản', 'Máy tính xách tay phù hợp cho nhân viên văn phòng'),
('SP34', '2021-04-11', '2021-06-30', 'Mỹ', 'Mỹ', 'Màn hình FullHD mang lại trải nghiệm tuyệt vời'),
('SP35', '2021-03-08', '2021-06-30', 'Nhật Bản', 'Nhật Bản', 'Màn hình máy tính tuyệt vời'),
('SP36', '2020-11-17', '2021-06-30', 'China', 'China', 'Laptop tốt cho dân văn phòng và gaming'),
('SP37', '2021-04-11', '2021-06-30', 'China', 'China', 'Laptop nhỏ gọn phù hợp cho người thích sự gọn nhẹ'),
('SP38', '2021-03-07', '2021-06-30', 'Mỹ', 'Mỹ', 'Chip xử lý mạnh mẽ cho các dòng máy'),
('SP39', '2021-04-19', '2021-06-30', 'Mỹ', 'Nhật Bản', 'Mang lại sự mát lạnh cho máy tính của bạn cũng như ví tiền'),
('SP40', '2021-01-31', '2021-06-30', 'Việt Nam', 'Việt Nam', 'Sách hay cuộc sông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenmuc`
--

CREATE TABLE `chuyenmuc` (
  `MaCM` char(20) NOT NULL,
  `TenCM` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyenmuc`
--

INSERT INTO `chuyenmuc` (`MaCM`, `TenCM`) VALUES
('CM01', 'Thiết bị điện tử'),
('CM02', 'Thiết bị điện gia dụng'),
('CM03', 'Máy tính & Laptop'),
('CM04', 'Thời trang'),
('CM05', 'Sách');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` char(20) NOT NULL,
  `ID` int(11) NOT NULL,
  `TongTien` bigint(20) DEFAULT NULL,
  `DiaChiNhan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDH`, `ID`, `TongTien`, `DiaChiNhan`) VALUES
('DH1', 1, 3128000, ''),
('DH12', 12, 799000, 'zzzzzzz'),
('DH13', 13, 6350000, ''),
('DH2', 2, 10818000, 'Bình Dương'),
('DH22', 22, 23894000, 'dđ'),
('DH25', 25, 1598000, 'fg'),
('DH30', 30, 23070000, 'Số 23 nguyễn văn trỗi bến thủy tp VInh'),
('DH31', 31, 43958000, 'số 44 Lê Duẩn Bến Thủy Tp VInh '),
('DH4', 4, 6940000, 'American Tho');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khohang`
--

CREATE TABLE `khohang` (
  `MaSP` char(20) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GhiChu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `khohang`
--

INSERT INTO `khohang` (`MaSP`, `SoLuong`, `GhiChu`) VALUES
('SP01', 100, 'Còn'),
('SP02', 100, 'Còn'),
('SP03', 100, 'Còn'),
('SP04', 100, 'Còn'),
('SP05', 100, 'Còn'),
('SP06', 100, 'Còn'),
('SP07', 100, 'Còn'),
('SP08', 100, 'Còn'),
('SP09', 100, 'Còn'),
('SP10', 100, 'Còn'),
('SP11', 100, 'Còn'),
('SP12', 100, 'Còn'),
('SP13', 100, 'Còn'),
('SP14', 100, 'Còn'),
('SP15', 100, 'Còn'),
('SP16', 100, 'Còn'),
('SP17', 100, 'Còn'),
('SP18', 100, 'Còn'),
('SP19', 100, 'Còn'),
('SP20', 100, 'Còn'),
('SP21', 100, 'Còn'),
('SP22', 100, 'Còn'),
('SP23', 100, 'Còn'),
('SP24', 100, 'Còn'),
('SP25', 100, 'Còn'),
('SP26', 100, 'Còn'),
('SP27', 100, 'Còn'),
('SP28', 100, 'Còn'),
('SP29', 100, 'Còn'),
('SP30', 100, 'Còn'),
('SP31', 100, 'Còn'),
('SP32', 100, 'Còn'),
('SP33', 100, 'Còn'),
('SP34', 100, 'Còn'),
('SP35', 100, 'Còn'),
('SP36', 100, 'Còn'),
('SP37', 100, 'Còn'),
('SP38', 100, 'Còn'),
('SP39', 100, 'Còn'),
('SP40', 100, 'Còn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` char(20) NOT NULL,
  `TenSP` varchar(100) DEFAULT NULL,
  `MaCM` char(20) DEFAULT NULL,
  `Gia` bigint(20) DEFAULT NULL,
  `HinhAnh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaCM`, `Gia`, `HinhAnh`) VALUES
('SP01', 'Smart Tivi Samsung 4K 55 inch', 'CM01', 6350000, 'tiviSS.jpg'),
('SP02', 'Nồi Cơm Điện Tử Kangaroo ', 'CM02', 799000, 'ncd1.jpg'),
('SP03', 'Dell Precision 5510 Core i7', 'CM03', 31999000, 'Dell.png'),
('SP04', 'Áo Hoodie Tay Dài Có Mũ Super Man', 'CM04', 170000, 'aokhoat.jpg'),
('SP05', 'Tivi LG 43 Inch Full HD 43LK', 'CM01', 7990000, 'tiviLG.jpg'),
('SP06', 'Camera IP Dome l HIKVISI', 'CM01', 1564000, 'camera1.jpg'),
('SP07', 'Camera VANTECH VP-1100D', 'CM01', 680000, 'camera2.jpg'),
('SP08', 'Iphone Xs Max 64GB Lock ', 'CM01', 21979000, 'ipxm.jpg'),
('SP09', 'Lenovo Z5 6.2 Inch 4G LTE', 'CM01', 6390000, 'lenovoz5.jpeg'),
('SP10', 'Oppo F9', 'CM01', 7690000, 'oppof9.png'),
('SP11', 'Tai Nghe Nhét Tai BYZ S389', 'CM01', 60000, 'tainghe.jpg'),
('SP12', 'Bếp Điện Từ Philips HD4921', 'CM02', 1229000, 'bepdt.jpg'),
('SP13', 'Ấm Đun Nước  BLUESTONE ', 'CM02', 499000, 'bdn.jpg'),
('SP14', 'Bếp Đôi Điện Từ  SHB9103MT', 'CM02', 2049000, 'bephn.jpg'),
('SP15', 'Ổ Cắm Điện  Titan T-CA11', 'CM02', 379000, 'ocdtm.jpg'),
('SP16', 'Quạt làm lạnh không khí Kachi ', 'CM02', 1290000, 'quat.jpg'),
('SP17', 'Bóng Đèn LED Philips Ledglobe ', 'CM02', 129000, 'bds.jpg'),
('SP18', 'Quạt cây điện cơ Tico  B500', 'CM02', 455000, 'quatcao.jpg'),
('SP19', ' Đắc Nhân Tâm', 'CM05', 38000, 'dacnhantam.jpg'),
('SP20', 'Quẳng Gánh Lo Đi Và Vui Sống ', 'CM05', 52000, 'quangganhlo.jpg'),
('SP21', 'Hiểu Về Trái Tim', 'CM05', 92000, 'hieuvetraitim.jpg'),
('SP22', 'Nếu Tôi Biết Được Khi Còn 20', 'CM05', 48000, '20biet.jpg'),
('SP23', 'Nhà Lãnh Đạo Không Chức Danh', 'CM05', 55000, 'nhalanhdao.jpg'),
('SP24', 'Dấn Thân', 'CM05', 74000, 'danthan.jpg'),
('SP25', 'Kiến Thức Làm Giàu - Cha Giàu, Cha Nghèo', 'CM05', 42000, 'chagiau.jpg'),
('SP26', 'Balo Thời Trang Xiaomi Mi Casual ', 'CM04', 279000, 'balo.jpg'),
('SP27', 'Giày Sneaker Thời Trang Nam SACAS ', 'CM04', 119000, 'giay.jpg'),
('SP28', 'Túi Thời Trang 5051HB0075 Sablanca ', 'CM04', 900000, 'tuixach.jpg'),
('SP29', 'Áo Sơ Mi Form Dài Lilya', 'CM04', 365000, 'ao.jpg'),
('SP30', 'Đồng Hồ Nữ Dây Kim Loại Julius JA-728C', 'CM04', 616000, 'dongho.jpg'),
('SP31', 'Vòng tay dây đỏ may mắn', 'CM04', 38000, 'vongtay.jpg'),
('SP32', 'Sandal Gót Vuông Mika Quay Mảnh Nados S05018', 'CM04', 580000, 'guoc.jpg'),
('SP33', 'Macbook Air 2017 MQD32 (13.3 inch)', 'CM03', 19690000, 'macbook.jpg'),
('SP34', 'Màn Hình Dell U2417H 24inch FullHD 8ms 60Hz IPS ', 'CM03', 5200000, 'manhinh.jpg'),
('SP35', 'Màn Hình Gaming LG 27GK750F 27inch', 'CM03', 11650000, 'manhinh1.jpg'),
('SP36', 'Laptop Lenovo ThinkPad Edge E480 20KN005GVA', 'CM03', 14049000, 'laptop.jpg'),
('SP37', 'Laptop Asus Zenbook S UX391UA-EG030T', 'CM03', 35359000, 'laptop1.jpg'),
('SP38', 'Bộ Vi Xử Lý CPU AMD Ryzen 3 1200', 'CM03', 2710000, 'xuli.jpg'),
('SP39', 'Tản nhiệt khí CPU Cooler Master MasterAir MA610P', 'CM03', 1370000, 'tannhiet.jpg'),
('SP40', 'Tony Buổi Sáng - Trên Đường Băng', 'CM05', 55000, 'tenduongbang.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slidebanner`
--

CREATE TABLE `slidebanner` (
  `slidebannerID` int(11) NOT NULL,
  `slidebannerImage` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `slidebanner`
--

INSERT INTO `slidebanner` (`slidebannerID`, `slidebannerImage`) VALUES
(1, 'banner4.jpg'),
(2, 'banner5.jpg'),
(3, 'banner7.jpg'),
(4, 'banner3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slidebannerlogo`
--

CREATE TABLE `slidebannerlogo` (
  `slidebannerLogoID` int(11) NOT NULL,
  `slidebannerLogoName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `slidebannerlogo`
--

INSERT INTO `slidebannerlogo` (`slidebannerLogoID`, `slidebannerLogoName`) VALUES
(1, 'ap.png'),
(2, 'logo_chanel.png'),
(3, 'ap1.png'),
(4, 'logo_gucci.jpg'),
(5, 'ap2.png'),
(6, 'logo_redbull.jpg'),
(7, 'ap3.png'),
(8, 'logo_cocacola.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` int(11) NOT NULL,
  `UserEmail` char(50) NOT NULL,
  `Pass` char(50) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(10) DEFAULT NULL,
  `SDT` char(12) DEFAULT NULL,
  `PhanLoai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ID`, `UserEmail`, `Pass`, `HoTen`, `GioiTinh`, `SDT`, `PhanLoai`) VALUES
(1, 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'null', 'null', 'null', 0),
(2, 'ptson@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Phan Thanh Sơn', 'Nam', '0976198271', 1),
(3, 'mthyen@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Mai Thị Hoàng Yến', 'Nữ', '0352174901', 1),
(4, 'tnnam@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'Nam', '0333066579', 1),
(5, 'admin1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'Nữ', '0976198272', 0),
(33, 'test@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, NULL, 1),
(34, 'test2@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, 1),
(35, 'test3@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaDH`,`MaSP`);

--
-- Chỉ mục cho bảng `chitietsp`
--
ALTER TABLE `chitietsp`
  ADD PRIMARY KEY (`MaSP`);

--
-- Chỉ mục cho bảng `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  ADD PRIMARY KEY (`MaCM`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`);

--
-- Chỉ mục cho bảng `khohang`
--
ALTER TABLE `khohang`
  ADD PRIMARY KEY (`MaSP`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Chỉ mục cho bảng `slidebanner`
--
ALTER TABLE `slidebanner`
  ADD PRIMARY KEY (`slidebannerID`);

--
-- Chỉ mục cho bảng `slidebannerlogo`
--
ALTER TABLE `slidebannerlogo`
  ADD PRIMARY KEY (`slidebannerLogoID`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
