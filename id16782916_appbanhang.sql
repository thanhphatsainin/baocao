-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 26, 2021 lúc 07:56 AM
-- Phiên bản máy phục vụ: 10.3.31-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id16782916_appbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiecdonhang`
--

CREATE TABLE `chitiecdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL,
  `tientungsanpham` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiecdonhang`
--

INSERT INTO `chitiecdonhang` (`id`, `madonhang`, `masanpham`, `soluongsanpham`, `tientungsanpham`) VALUES
(12, 20, 20, 4, 65960000),
(13, 21, 21, 1, 30490000),
(14, 22, 21, 2, 60980000),
(15, 22, 19, 4, 65560000),
(16, 23, 19, 4, 65560000),
(17, 24, 2, 1, 21990000),
(18, 24, 17, 1, 19990000),
(19, 24, 23, 1, 22990000),
(20, 25, 1, 1, 5400000),
(21, 25, 2, 1, 21990000),
(22, 25, 10, 3, 65970000),
(23, 27, 21, 1, 30490000),
(24, 28, 18, 6, 53940000),
(25, 28, 17, 1, 19990000),
(26, 28, 10, 2, 43980000),
(27, 29, 12, 2, 25980000),
(28, 50, 17, 1, 19990000),
(29, 51, 20, 1, 16490000),
(30, 52, 20, 2, 32980000),
(31, 53, 18, 2, 17980000),
(32, 54, 17, 1, 19990000),
(33, 55, 1, 1, 4500000),
(34, 56, 11, 1, 9990000),
(35, 57, 5, 1, 20990000),
(36, 58, 15, 1, 8990000),
(37, 59, 8, 2, 20980000),
(38, 60, 21, 1, 30490000),
(39, 60, 5, 1, 20990000),
(40, 61, 19, 1, 16390000),
(41, 62, 1, 3, 13500000),
(42, 62, 19, 1, 16390000),
(43, 63, 23, 3, 68970000),
(44, 63, 19, 2, 32780000),
(45, 64, 1, 1, 4500000),
(46, 65, 17, 1, 19990000),
(47, 66, 18, 2, 17980000),
(48, 66, 20, 2, 32980000),
(49, 68, 23, 6, 137940000),
(50, 68, 17, 1, 19990000),
(51, 69, 23, 3, 68970000),
(52, 69, 19, 5, 81950000),
(53, 70, 21, 3, 91470000),
(54, 70, 18, 3, 26970000),
(55, 71, 23, 4, 91960000),
(56, 71, 18, 5, 44950000),
(57, 72, 20, 7, 115430000),
(58, 72, 17, 1, 19990000),
(59, 73, 23, 2, 45980000),
(60, 73, 18, 4, 35960000),
(61, 74, 23, 5, 114950000),
(62, 74, 18, 2, 17980000),
(63, 75, 21, 5, 152450000),
(64, 75, 20, 1, 16490000),
(65, 76, 20, 4, 65960000),
(66, 77, 20, 3, 49470000),
(67, 77, 19, 4, 65560000),
(68, 78, 23, 3, 68970000),
(69, 78, 10, 2, 43980000),
(70, 78, 3, 4, 69960000),
(71, 79, 18, 1, 8990000),
(72, 80, 8, 1, 10490000),
(73, 83, 19, 1, 16390000),
(74, 84, 21, 1, 30490000),
(75, 85, 19, 1, 16390000),
(76, 85, 1, 2, 9000000),
(77, 86, 23, 4, 91960000),
(78, 87, 21, 1, 30490000),
(79, 88, 23, 4, 91960000),
(80, 89, 19, 1, 16390000),
(81, 90, 23, 2, 45980000),
(82, 90, 19, 1, 16390000),
(83, 91, 1, 3, 13500000),
(84, 91, 8, 2, 20980000),
(85, 92, 23, 1, 22990000),
(86, 93, 1, 3, 13500000),
(87, 93, 8, 2, 20980000),
(88, 94, 23, 1, 22990000),
(89, 95, 1, 1, 4500000),
(90, 95, 12, 1, 12990000),
(91, 96, 23, 6, 137940000),
(92, 97, 1, 1, 4500000),
(93, 97, 11, 1, 9990000),
(94, 98, 8, 6, 62940000),
(95, 98, 18, 3, 26970000),
(96, 99, 7, 1, 43990000),
(97, 100, 23, 2, 45980000),
(98, 100, 12, 1, 12990000),
(99, 101, 18, 2, 17980000),
(100, 102, 16, 1, 20990000),
(101, 103, 8, 1, 10490000),
(102, 103, 18, 2, 17980000),
(103, 103, 7, 1, 43990000),
(104, 104, 16, 2, 41980000),
(105, 104, 9, 1, 11990000),
(106, 105, 18, 3, 26970000),
(107, 106, 1, 1, 4500000),
(108, 107, 4, 1, 6390000),
(109, 108, 17, 1, 19990000),
(110, 109, 4, 1, 6390000),
(111, 110, 23, 1, 22990000),
(112, 110, 4, 1, 6390000),
(113, 111, 21, 1, 30490000),
(114, 111, 17, 1, 19990000),
(115, 112, 8, 1, 10490000),
(116, 113, 21, 1, 30490000),
(117, 113, 23, 4, 91960000),
(118, 113, 20, 1, 16490000),
(119, 113, 19, 1, 16390000),
(120, 113, 18, 1, 8990000),
(121, 113, 17, 1, 19990000),
(122, 114, 28, 1, 22990000),
(123, 114, 24, 3, 72570000),
(124, 114, 25, 1, 44990000),
(125, 115, 28, 4, 91960000),
(126, 115, 24, 1, 24190000),
(127, 115, 29, 2, 23980000),
(128, 116, 28, 1, 22990000),
(129, 117, 28, 5, 114950000),
(130, 117, 24, 2, 48380000),
(131, 118, 25, 1, 44990000),
(132, 118, 27, 1, 8590000),
(133, 118, 28, 1, 22990000),
(134, 118, 29, 1, 11990000),
(135, 119, 29, 1, 11990000),
(136, 119, 28, 1, 22990000),
(137, 119, 25, 1, 44990000),
(138, 119, 24, 1, 24190000),
(139, 120, 8, 1, 10490000),
(140, 120, 9, 1, 11990000),
(141, 120, 1, 1, 3500000),
(142, 120, 2, 1, 15990000),
(143, 120, 7, 2, 25980000),
(144, 121, 1, 1, 3500000),
(145, 121, 3, 1, 6350000),
(146, 121, 4, 1, 5390000),
(147, 122, 27, 1, 8590000),
(148, 122, 1, 1, 3500000),
(149, 122, 4, 1, 5390000),
(150, 123, 29, 1, 11990000),
(151, 123, 27, 1, 8590000),
(152, 123, 24, 1, 24190000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `idkhachhang` int(11) DEFAULT NULL,
  `TONGTIEN` float DEFAULT NULL,
  `NgayThanhToan` date DEFAULT NULL,
  `DiaChi` text NOT NULL,
  `TrangThai` text NOT NULL,
  `HinhThucThanhToan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `idkhachhang`, `TONGTIEN`, `NgayThanhToan`, `DiaChi`, `TrangThai`, `HinhThucThanhToan`) VALUES
(20, 11, 65960000, '2019-05-03', 'HN', '', ''),
(21, 0, 30490000, '2019-05-03', 'HN', '', ''),
(22, 12, 126540000, '2019-05-03', 'HN', '', ''),
(23, 3, 65560000, '2019-05-05', 'HN', '', ''),
(24, 3, 64970000, '2019-05-06', 'HN', '', ''),
(25, 13, 93360000, '2019-05-06', 'HN', '', ''),
(26, 13, 30490000, '2019-05-06', '', '', ''),
(27, 13, 30490000, '2019-05-06', '', '', ''),
(28, 3, 117910000, '2019-05-06', '', '', ''),
(29, 13, 25980000, '2019-05-06', '', '', ''),
(30, 15, 22990000, '2021-05-12', 'HN', '', ''),
(31, 15, 46880000, '2021-05-12', 'HN', '', ''),
(32, 15, 5400000, '2021-05-12', 'HN', '', ''),
(33, 15, 32980000, '2021-05-12', 'HN', '', ''),
(34, 15, 8990000, '2021-05-12', 'HN', '', ''),
(35, 15, 8990000, '2021-05-12', 'HN', '', ''),
(36, 15, 16490000, '2021-05-12', 'HN', '', ''),
(37, 16, 16490000, '2021-05-12', 'HN', '', ''),
(38, 16, 22990000, '2021-05-12', '', '', ''),
(39, 16, 22990000, '2021-05-12', '', '', ''),
(40, 15, 22990000, '2021-05-12', 'HN', '', ''),
(41, 15, 16390000, '2021-05-12', 'HN', '', ''),
(42, 15, 22990000, '2021-05-12', 'HN', '', ''),
(43, 15, 0, '2021-05-12', 'HN', '', ''),
(44, 15, 16490000, '2021-05-12', 'HN', '', ''),
(45, 15, 16490000, '2021-05-12', 'HN', '', ''),
(46, 15, 16490000, '2021-05-12', 'HN', '', ''),
(47, 15, 8990000, '2021-05-14', 'HN', '', ''),
(48, 15, 30490000, '2021-05-18', 'HN', '', ''),
(49, 15, 8990000, '2021-05-18', 'HN', '', ''),
(50, 15, 19990000, '2021-05-18', 'HN', '', ''),
(51, 15, 16490000, '2021-05-18', 'HN', '', ''),
(52, 15, 32980000, '2021-05-25', 'HN', '', ''),
(53, 15, 17980000, '2021-05-25', 'HN', '', ''),
(54, 15, 19990000, '2021-05-25', 'HN', '', ''),
(55, 15, 4500000, '2021-05-25', 'HN', '', ''),
(56, 15, 9990000, '2021-05-25', 'HN', '', ''),
(57, 15, 20990000, '2021-05-25', 'HN', '', ''),
(58, 15, 8990000, '2021-05-25', 'HN', '', ''),
(59, 15, 20980000, '2021-05-26', 'HN', '', ''),
(60, 15, 51480000, '2021-05-27', 'HN', '', ''),
(61, 15, 16390000, '2021-05-27', 'HN', '', ''),
(62, 15, 29890000, '2021-05-27', 'HN', '', ''),
(63, 17, 101750000, '2021-05-27', 'HN', '', ''),
(64, 17, 4500000, '2021-05-29', 'HN', '', ''),
(65, 17, 19990000, '2021-05-29', 'HN', '', ''),
(66, 17, 50960000, '2021-05-29', 'HN', '', ''),
(67, 17, 0, '2021-05-29', 'HN', '', ''),
(68, 17, 157930000, '2021-05-29', 'HN', '', ''),
(69, 17, 150920000, '2021-05-29', 'HN', '', ''),
(70, 18, 118440000, '2021-05-29', 'HN', '', ''),
(71, 19, 136910000, '2021-05-29', 'HN', '', ''),
(72, 21, 135420000, '2021-05-30', 'HN', '', ''),
(73, 22, 81940000, '2021-05-30', 'HN', '', ''),
(74, 23, 132930000, '2021-05-30', 'HN', '', ''),
(75, 24, 168940000, '2021-05-30', 'HN', '', ''),
(76, 15, 65960000, '2021-05-31', 'HN', '', ''),
(77, 26, 115030000, '2021-06-03', 'HN', '', ''),
(78, 15, 182910000, '2021-06-03', 'HN', '', ''),
(79, 15, 8990000, '2021-06-04', 'HN', '', ''),
(80, 15, 10490000, '2021-06-01', 'HN', '', ''),
(81, 28, 0, '2021-06-02', 'HN', '', ''),
(82, 28, 0, '2021-06-02', 'HN', '', ''),
(83, 28, 16390000, '2021-06-02', 'HN', '', ''),
(84, 26, 30490000, '2021-06-02', 'HN', '', ''),
(85, 15, 25390000, '2021-06-02', 'HN', '', ''),
(86, 15, 91960000, '2021-06-03', 'HN', 'Giao hàng thành công', ''),
(87, 15, 30490000, '2021-06-03', 'HN', 'Giao hàng thành công', ''),
(88, 15, 91960000, '2021-06-03', 'HN', 'Giao hàng thành công', ''),
(89, 15, 16390000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(90, 29, 62370000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(91, 29, 34480000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(92, 30, 22990000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(93, 30, 34480000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(94, 31, 22990000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(95, 31, 17490000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(96, 15, 137940000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(97, 15, 14490000, '2021-06-04', 'HN', 'Giao hàng thành công', ''),
(98, 32, 89910000, '2021-06-15', 'HN', 'Giao hàng thành công', 'Thanh toán khi nhận hàng'),
(99, 15, 43990000, '2021-09-18', 'HN', 'Giao hàng thành công', 'Thanh toán khi nhận hàng'),
(100, 15, 58970000, '2021-09-18', 'HN', 'Giao hàng thành công', 'Thanh toán khi nhận hàng'),
(101, 15, 17980000, '2021-09-18', 'Nam Định', 'Giao hàng thành công', 'Thanh toán khi nhận hàng'),
(102, 15, 20990000, '2021-10-06', 'Ngã tư mụa, Nam Định', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(103, 15, 72460000, '2021-10-07', 'ngã tư mụa, ý yên, nam định', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(104, 15, 53970000, '2021-10-07', 'Nam Định', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(105, 15, 26970000, '2021-10-14', 'Ngã tư mụa, Ý Yên, Nam Định', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(106, 15, 4500000, '2021-10-14', 'Vũ Xuyên, Yên Dương', 'Đang xử lý', 'Online Ngân lượng'),
(107, 15, 6390000, '2021-10-15', 'ngã tư mụa, Nam Định', 'Đang xử lý', 'Online Ngân lượng'),
(108, 15, 19990000, '2021-10-18', 'Ha noi', 'Đã giao cho Shipper', 'Online Ngân lượng'),
(109, 15, 6390000, '2021-10-19', 'Ha noi', 'Đang xử lý', 'Online ZaloPay'),
(110, 15, 29380000, '2021-10-22', 'Ha noi', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(111, 15, 50480000, '2021-10-22', 'yên dương, nam định', 'Đang xử lý', 'Online Ngân lượng'),
(112, 15, 10490000, '2021-10-22', 'Hà Nội', 'Đang xử lý', 'Online ZaloPay'),
(113, 15, 184310000, '2021-10-22', 'Ninh Bình', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(114, 15, 140550000, '2021-10-24', 'Thanh Xuân, Hà Nội', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(115, 15, 140130000, '2021-10-24', 'Hà Nội', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(116, 15, 22990000, '2021-10-24', 'Hà Nội', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(117, 15, 163330000, '2021-10-24', 'Ha noi', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(118, 15, 88560000, '2021-10-24', 'Yên Dương', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(119, 15, 104160000, '2021-10-24', 'Ha noi', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(120, 15, 67950000, '2021-10-24', 'Ha noi', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(121, 15, 15240000, '2021-10-26', 'Ha noi', 'Đang xử lý', 'Thanh toán khi nhận hàng'),
(122, 15, 17480000, '2021-10-26', 'Ha noi', 'Đang xử lý', 'Online ZaloPay'),
(123, 15, 44770000, '2021-10-26', 'Ha noi', 'Đang xử lý', 'Online Ngân lượng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `Id` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`Id`, `TenLoaiSanPham`, `hinhanhloaisanpham`) VALUES
(1, 'Điện Thoại', 'https://vn-test-11.slatic.net/p/huawei-gr5-mini-l31g-16gb-gold-8778-6189362-2eb679224529d3ff0f02a4f320843b9f-catalog.jpg_340x340q80.jpg_.webp'),
(2, 'Laptop', 'https://i.dell.com/sites/csimages/Videos_Images/en/9eb776ec-d2b3-450c-b340-e1b5f6f31eeb.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `STT` int(11) NOT NULL,
  `TenLoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`STT`, `TenLoai`) VALUES
(1, 'Người Quản Trị'),
(2, 'Khách Hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(2000) NOT NULL,
  `motasanpham` varchar(1000) NOT NULL,
  `idsanpham` int(3) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`, `SoLuong`) VALUES
(1, 'Huawei Y9', 3500000, 'https://cdn.tgdd.vn/Products/Images/42/192313/huawei-y9-2019-blue-600x600.jpg', 'Màn hình \"tai thỏ\" FullView kích thước lớn.Huawei Y9 (2019) mang trong mình tới 4 camera với camera kép phía trước độ phân giải 16 MP + 2 MP và camera kép phía sau là 13 MP + 2 MP, cả hai cụm camera đều tích hợp với công nghệ chụp ảnh AI .Công nghệ nhận diện vân tay 4.0\r\n', 1, 17),
(2, 'Huawei Mate 20 Pro', 6790000, 'https://cdn.tgdd.vn/Products/Images/42/188963/huawei-mate-20-pro-tim-400x460.png', 'Huawei Mate 20 Pro được trang bị một không gian hiển thị rộng rãi có kích thước lên đến 6.39 inch đi kèm độ phân giải Quad HD+ (2K+) siêu nét.-Hiệu năng hàng đầu hiện nay.-6 GB RAM và 128 GB bộ nhớ trong đi kèm giúp bạn thỏa sức chạy đa nhiệm hay lưu trữ game và ứng dụng mà không cần lo lắng', 1, 19),
(3, 'Samsung Galaxy Note 9', 6350000, 'https://cdn.mobilecity.vn/mobilecity-vn/images/2019/01/w300/samaung-galaxy-note-9-cu-purple.jpg', 'Sử dụng chung con chip Exynos 9810 nhưng Galaxy Note 9 sẽ có RAM mặc định 6GB (thay vì chỉ có một số phiên bản). Mặt khác, bộ nhớ trong cũng khởi đầu từ 128GB và cao nhất lên đến 512GB, tức tương đương nhiều mẫu laptop, giúp người dùng thoải mái chơi nhiều game 3D và lưu trữ nhiều tài liệu công việc hoặc video phim, ca nhạc để giải trí.', 1, 19),
(4, 'Samsung Galaxy A7', 5390000, 'https://cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/a/7/a7_xanh.jpg', 'Galaxy A7 2018 sở hữu màn hình có kích thước 6 inch tỷ lệ 18,5:9, độ phân giải FullHD+ kết hợp với công nghệ hiển thị Super AMOLED mang lại những hình ảnh sắc nét với màu sắc rực rỡ, màu đen sâu. Đồng thời, màn hình được tối ưu phần viền giúp cho màn hình có thêm không gian hiển thị đáp ứng nhu cầu xem phim, giải trí thú vị hơn', 1, 18),
(5, 'Điện thoại OPPO Find X', 9990000, 'https://cdn.tgdd.vn/Products/Images/42/165189/oppo-find-x-2-400x460-400x460.png', 'Sức mạnh đến từ con chip Snapdragon 845 cùng 8 GB RAM sẽ là thông số đáng mơ ước trên một chiếc smartphone và nay đã có mặt trên OPPO Find X.', 1, 20),
(6, 'Điện thoại OPPO R17 Pro', 16000000, 'https://cdn.tgdd.vn/Products/Images/42/186395/oppo-r17-pro-2-400x460.png', 'Sức mạnh của R17 Pro sẽ không làm bạn thất vọng khi mang trong mình con chip Snapdragon 710 kết hợp 8 GB RAM cùng 128 GB bộ nhớ trong.', 1, 20),
(7, 'Điện thoại iPhone Xs Max 512GB', 12990000, 'https://cdn.tgdd.vn/Products/Images/42/191482/iphone-xs-max-512gb-gold-400x460.png', 'Là chiếc smartphone cao cấp nhất của Apple với mức giá khủng chưa từng có, bộ nhớ trong lên tới 512GB, iPhone XS Max 512GB - sở hữu cái tên khác biệt so với các thế hệ trước, trang bị tới 6.5 inch đầu tiên của hãng cùng các thiết kế cao cấp hiện đại từ chip A12 cho tới camera AI.', 1, 18),
(8, 'Laptop Dell Vostro 3468', 10490000, 'https://cdn.tgdd.vn/Products/Images/44/166382/dell-vostro-3468-70142649-450-600x600.jpg', 'Dell Vostro 3468 i3 6006U là chiếc máy tính xách tay có cấu hình tốt trong tầm giá, được trang bị chip Intel Core i3 cho hiệu năng ổn định, ổ cứng HDD lưu trữ lên đến 500 GB.', 2, 19),
(9, 'Laptop Dell Inspiron', 11990000, 'https://cdn.tgdd.vn/Products/Images/44/189385/dell-inspiron-3476-8j61p11-450-600x600.png', 'Dell Inspiron 3476 i3 8130U là phiên bản máy tính xách tay được trang bị cấu hình cơ bản với chip Intel Core i3 Kabylake Refresh, RAM DDR4 4 GB, ổ cứng HDD lên đến 1 TB, cùng hệ điều hành Windows 10 được cài đặt sẵn. Đây sẽ là lựa chọn phù hợp cho đối tượng như học sinh - sinh viên cần một chiếc laptop đáp ứng tốt các nhu cầu cơ bản của công việc văn phòng cũng như học tập.', 2, 19),
(10, 'Laptop Apple Macbook Air', 21990000, 'https://cdn.tgdd.vn/Products/Images/44/106875/apple-macbook-air-mqd32sa-a-i5-5350u-400-1-450x300-600x600.jpg', 'Macbook Air MQD32SA/A i5 5350U với thiết kế vỏ nhôm nguyên khối Unibody rất đẹp, chắc chắn và sang trọng. Macbook Air là một chiếc máy tính xách tay siêu mỏng nhẹ, hiệu năng ổn định mượt mà, thời lượng pin cực lâu, phục vụ tốt cho nhu cầu làm việc lẫn giải trí..', 2, 20),
(11, 'Laptop Acer Aspire', 9990000, 'https://cdn.tgdd.vn/Products/Images/44/160296/acer-aspire-e5-476-i3-8130u-nxgwtsv002-ava-600x600.jpg', 'Acer Aspire E5 476 i3 8130U là phiên bản máy tính xách tay với cấu hình cao, sử dụng vi xử lý mạnh mẽ trong phân khúc nhưng vẫn rất tiết kiệm pin do sử dụng kiến trúc chip mới từ Intel. Laptop Acer với mức giá thành hợp lý cùng cấu hình cực kì mạnh mẽ, Aspire E5 476 có thể đáp ứng tốt cho người dùng phổ thông cần một chiếc máy laptop để học tập, giải trí.', 2, 20),
(12, 'Laptop Acer Spin 3 SP314 51 39WK', 12990000, 'https://cdn.tgdd.vn/Products/Images/44/145919/acer-spin-3-sp314-51-39wk-i3-7130u-nxguwsv001-cava-600x600.jpg', 'Acer Spin 3 SP314 51 39WK là mẫu máy tính có thiên hướng thiết kế về thời trang và sự linh hoạt, tiện lợi vượt trội. Là một chiếc laptop nhỏ gọn, màn hình cảm ứng và có thể biến đổi nhiều hình dạng phù hợp với các nhu cầu sử dụng.', 2, 20),
(13, 'Laptop HP Pavilion x360 ba080TU ', 13990000, 'https://cdn.tgdd.vn/Products/Images/44/179677/hp-pavilion-x360-ba080tu-3mr79pa-450-600x600.jpg', 'HP Pavilion x360 ba080TU là chiếc laptop xuất thân từ dòng sản phẩm Pavillion đến từ thương hiệu nổi tiếng HP. Với thiết kế vô cùng gọn nhẹ và cấu hình khá tốt, đáp ứng tốt cho người dùng có nhu cầu mang theo máy tính để học tập, làm việc', 2, 20),
(14, 'Laptop HP Pavilion 14 ce1011TU i3', 13290000, 'https://cdn.tgdd.vn/Products/Images/44/197626/hp-pavilion-14-ce1011tu-i3-8145u-4gb-1tb-win10-5j-600x600.jpg', 'Laptop HP Pavilion 14 ce1011TU (5JN17PA) với thiết kế trang nhã, mỏng nhẹ thuận tiện cho việc di chuyển. Cùng với đó là một cấu hình đáp ứng mượt mà các ứng dụng văn phòng cũng như xử lý khá tốt các ứng dụng đồ họa cơ bản, thì đây chắc hẳn sẽ là một sự lựa chọn đáng để cân nhắc dành cho các bạn sinh viên và nhân viên văn phòng trong phân khúc', 2, 20),
(15, 'Laptop Lenovo IdeaPad 130', 8990000, 'https://cdn.tgdd.vn/Products/Images/44/187012/lenovo-ideapad-130-14ikb-81h60017vn-ava-600x600.jpg', 'Laptop Lenovo IdeaPad 130 14IKB có cấu hình ở mức khá với hệ điều hành Windows 10 bản quyền, chip Intel Core i3 thế hệ thứ 7, 4 GB RAM cùng ổ cứng lưu trữ HDD 1 TB, cho hiệu năng hoạt động ổn định đối với các tác vụ cơ bản như soạn thảo văn bản, nhập liệu, học anh văn, làm bài thuyết trình,... Đây sẽ là chiếc máy tính phù hợp với đối tượng người dùng như nhân viên văn phòng, học sinh - sinh viên', 2, 20),
(16, 'Samsung Galaxy S9 Plus', 11990000, 'https://cdn.tgdd.vn/Products/Images/42/154695/samsung-galaxy-s9-plus-128gb-400x460-400x460.png', 'Samsung Galaxy S9 Plus 128Gb, siêu phẩm smartphone hàng đầu trong thế giới Android đã ra mắt với màn hình vô cực, camera chuyên nghiệp như máy ảnh và hàng loạt những tính năng cao cấp đầy hấp dẫn.', 1, 20),
(17, ' Samsung Galaxy S9', 9500000, 'https://cdn.tgdd.vn/Products/Images/42/197080/samsung-galaxy-s9-plus-64gb-vang-do-400x460.png', 'Galaxy S9+ Vang Đỏ đã được Samsung chính thức mở bán vào dịp Noel, đầu năm mới. Máy tích hợp toàn bộ những tính năng cao cấp nhất như camera kép điều chỉnh khẩu độ, quét mống mắt, chống nước chống bụi và trang bị chip Exynos 9810 đầy mạnh mẽ', 1, 20),
(18, 'Samsung Galaxy A8 Star', 5990000, 'https://cdn.tgdd.vn/Products/Images/42/166247/samsung-galaxy-a8-star-tet-giatot-400x460-400x460.png', 'Samsung Galaxy A8 Star là một biến thể mới của dòng A trong gia đình Samsung với sự nâng cấp vượt trội về camera cũng như thay đổi trong thiết kế', 1, 20),
(19, 'Laptop HP Pavilion 14', 16390000, 'https://cdn.tgdd.vn/Products/Images/44/196907/hp-pavilion-14-ce1018tu-i5-8265u-4gb-16gb-1tb-14f-33397-thumb-600x600.jpg', 'Laptop HP Pavilion 14 (5RL41PA) vừa được HP đưa ra thị trường với thiết kế tinh tế, cùng với trọng lượng khá nhẹ thuận tiện hơn cho việc di chuyển hằng ngày. Cấu hình đủ mạnh để chạy mượt mà các ứng dụng văn phòng, xử lý tốt các thao tác kéo thả trong ứng dụng đồ họa cơ bản. Đây sẽ là sự lựa chọn đáng cân nhắc cho các bạn nhà học sinh, sinh viên và nhân viên văn phòng', 2, 20),
(20, 'Laptop HP 15', 16490000, 'https://cdn.tgdd.vn/Products/Images/44/181322/hp-15-da0036tx-4me78pa-cava-600x600.jpg', 'Laptop HP 15 da0036TX i7 8550U với cấu hình khá nhau mang đến hiệu năng hoạt động mượt mà cùng khả năng tiết kiệm điện năng, ổ cứng HDD 1 TB lưu trữ dữ liệu thoải mái. Trọng lượng máy khá nhẹ thích hợp cho nhiều đối tượng khách hàng khác nhau từ học sinh, sinh viên dùng để học tập - làm việc cho đến những người chuyên làm về thiết kế đồ hoạ hay những khách hàng thường xuyên di chuyển cùng chiếc \"laptop\"', 2, 20),
(21, 'Laptop MSI GF63 9RD', 30490000, 'https://asset.msi.com/resize/image/global/product/product_7_20180212154449_5a8145f16571d.png62405b38c58fe0f07fcef2367d8a9ba1/600.png', 'MSI GF63 8RD là sự lựa chọn dành cho người dùng nói chung và game thủ nói riêng khi có ý định chọn mua laptop gaming của MSI. Máy được trang bị chip Intel Core i7 cùng card đồ hoạ rời NVIDIA GeForce GTX 1050Ti đủ sức chiến mọi game \"khủng\" hiện nay trên thị trường.', 2, 20),
(23, 'Macbook Air 13 128GB', 22990000, 'https://cdn.fptshop.com.vn/Uploads/Originals/2017/7/13/636355328334271890_Macbook-Air-13%202017%20(1).jpg', 'Macbook Air 13 128 GB MQD32SA/A (2017) với thiết kế không thay đổi, vỏ nhôm sang trọng, siêu mỏng và siêu nhẹ, hiệu năng được nâng cấp, thời lượng pin cực lâu, phù hợp cho nhu cầu làm việc văn phòng nhẹ nhàng, không cần quá chú trọng vào hiển thị của màn hình.\r\n ', 2, 20),
(24, 'Điện thoại Apple iPhone 13 - 256GB', 24190000, 'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/09/15/image-removebg-preview-10.png', 'Theo thông báo từ phía Apple, iPhone 13 năm nay sẽ có kích thước màn hình 6.1 inch. Nhìn chung, ngôn ngữ thiết kế vẫn sẽ không có quá nhiều thay đổi so với thế hệ tiền nhiệm iPhone 12, vẫn là các cạnh vát phẳng vuông góc. \r\n\r\nTuy nhiên, hãng đã rút gọn phần notch nhỏ hơn 20%, để tăng thêm diện tích hiển thị cho người dùng. Mặt trước làm từ kính cường lực Ceramic Shield có độ bền hơn tới 4 lần so với kính cường lực thông thường.', 1, 17),
(25, 'Điện thoại Samsung Galaxy Z Fold3 5G - 512GB', 44990000, 'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/08/11/den-f.png', 'Samsung Galaxy Z Fold3 5G được thiết kế kích thước hài hòa hơn, hoàn thiện hơn 2 phiên bản trước. Toàn bộ phần thân máy được chế tác từ hợp kim nhôm Armor Aluminum với khung viền được vát phẳng trông cứng cáp cực kỳ đẳng cấp và sang trọng. Bộ khớp nối bản lề mới giúp kết nối bộ khung của Samsung Galaxy Z Fold3 hoàn hảo hơn, làm tăng độ bền khi đóng mở liên tục và cố định cực kỳ chắc chắn.', 1, 19),
(26, 'Điện thoại Xiaomi 11 Lite 5G NE - 8GB/128GB', 9490000, 'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/09/16/image-removebg-preview-19.png', 'Xiaomi 11 Lite 5G NE ra mắt với các biến thể màu bao gồm: Trắng băng tuyết, Xanh kẹo ngọt, Hồng thanh đào và Đen trân châu. Chiếc điện thoại thông minh này cực kỳ nhẹ và mỏng như những gì Xiaomi hứa hẹn: sản phẩm có độ dày chỉ 6,8mm và nặng 158 gram. Xiaomi đã tích hợp một máy quét vân tay gắn trong smartphone này. Các nút nguồn và âm lượng nằm ở bên phải, cổng USB type-C và khay SIM ở phía dưới. Hãng có hỗ trợ đầu nối tai nghe type-C sang 3,5mm trong hộp bán lẻ.', 1, 0),
(27, 'Điện thoại OPPO Reno6 Z 5G - 8GB/128GB', 8590000, 'https://cdn.hoanghamobile.com/i/preview/Uploads/2021/07/23/image-removebg-preview-3.png', 'OPPO đã trang bị cho Reno6 Z con chip đến từ nhà MediaTek mạnh mẽ bậc nhất hiện nay - Dimensity 800U 5G, mang đến hiệu năng cực đỉnh. Với sự trang bị ấn tượng này, người dùng có thể thoải mái thực hiện các tác vụ đa nhiệm cũng như tự tin chiến mọi tựa game đồ hoạ từ thấp đến cao trên thị trường hiện nay.', 1, 18),
(28, 'Laptop Gaming Asus ROG Strix G15 G513IH HN015T', 22990000, 'https://product.hstatic.net/1000026716/product/02_strixg_15_grey_l_b33b3e528c024d20839282ac2258c0b0.png', 'Phong cách thể thao thể hiện qua ba màu sắc khác biệt giúp nâng tầm diện mạo và phong cách của bạn. Những phiên bản với màu đen nguyên bản Original Black, xám cực chất Eclipse Gray, và Electro Punk rực rỡ sẽ thể hiện phong cách của bạn. Chơi game tại bất kỳ đâu với khung máy có kích thước nhỏ hơn đến 7% và gọn nhẹ hơn những thế hệ tiền nhiệm. Những biểu tượng và đường cắt tinh tế tô điểm bên ngoài máy và thậm chí thêm phần thu hút ở phần đế máy, tạo điểm nhấn khác biệt từ mọi góc độ. Làm bừng sáng cho môi trường xung quanh bạn với hệ thống Aura Sync nổi bật từ logo kim loại của ROG, dọc bàn phím có đèn nền tới dải đèn chiếu sáng ở mặt đáy.', 2, 5),
(29, 'Laptop Acer Aspire 3 A315 56 37DV', 11990000, 'https://product.hstatic.net/1000026716/product/p-acer-aspire-3-a315-42-r8px-1_14c2a4369f244da3a18a6a9884da2f0a_grande_990d111a99f9421ab10e7a8a31b3dc12.jpg', 'Acer Aspire 3 A315 56 37DV được trang bị bộ vi xử lý Intel Core i3 1005G1, con chip mới nhất thuộc thế hệ thứ 10 Ice Lake, sản xuất trên tiến trình 10nm, vừa mạnh mẽ lại vừa tiết kiệm điện năng. Đi cùng với bộ vi xử lý mới là 4GB RAM DDR4 và đặc biệt là 256GB ổ cứng SSD. Việc sử dụng ổ cứng SSD cao cấp thay vì ổ HDD cũ là một bước tiến tuyệt vời của Acer Aspire A315 56 37DV. Ổ SSD mang đến rất nhiều lợi ích khi giúp laptop khởi động, vào ứng dụng và sao chép dữ liệu cực nhanh. Chưa hết, độ bền tuổi thọ SSD còn lâu hơn rất nhiều so với HDD truyền thống, đồng thời hoạt động hết sức êm ái. Acer Aspire A315 56 37DV đảm bảo hiệu năng mượt mà cho công việc và giải trí của bạn.', 2, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `Ho` varchar(150) DEFAULT NULL,
  `Ten` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `MatKhau` varchar(250) DEFAULT NULL,
  `SDT` varchar(150) DEFAULT NULL,
  `GioiTinh` varchar(150) DEFAULT NULL,
  `MaLoaiTK` int(11) DEFAULT NULL,
  `diachi` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `Ho`, `Ten`, `Email`, `MatKhau`, `SDT`, `GioiTinh`, `MaLoaiTK`, `diachi`) VALUES
(3, 'tran', 'phuoc', 'trananhphuoc0603@gmail.com', '0494459ab444f856789bd049f000c5ce', '0943597722', 'Nam', 2, 'nam dinh'),
(6, 'nam', 'nam', 'minhhoangnam1997@gmail.com', '0494459ab444f856789bd049f000c5ce', '0947994443', 'Nam', 2, 'nam dinh'),
(9, 'tran', 'phuoc', 'trananhphuoc0603@gmail.com', '0494459ab444f856789bd049f000c5ce', '0943597722', 'Nam', 1, 'nam dinh'),
(10, 'Trần', 'Hoàng Nam', 'minhhien1997@gmail.com', '0494459ab444f856789bd049f000c5ce', '0996325752', 'Nam', 2, 'nam dinh'),
(11, 'le', 'nhi', 'quynhi1320@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0795420051', 'Nam', 2, 'nam dinh'),
(12, 'trang', 'thức', 'thuc1234@gmail.com', '0494459ab444f856789bd049f000c5ce', '0945236581', 'Nam', 2, 'nam dinh'),
(13, 'nguyễn', 'toan', 'toanbeob@gmail.com', '0494459ab444f856789bd049f000c5ce', '0123569854', 'Nam', 2, 'cầu giấy đống đa hà nội'),
(15, 'namtc', 'tran', 'namtc101099@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0946131591', 'Nam', 2, 'Ha noi'),
(16, 'bui', 'dat', 'buichat99@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0936362545', 'Nam', 2, 'thanh hoá'),
(17, 'Nguyễn', 'bảo', 'baopro@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0946135963', 'Nam', 2, 'Hà Tĩnh'),
(18, 'van', 'nguyen', 'buivan@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0963528743', 'Nam', 2, 'ha noi'),
(19, 'nguyễn', 'đức', 'vanduc@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0943656535', 'Nam', 2, 'hải dương'),
(20, 'lkm', 'uh', 'kim@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '16648496464', 'Nam', 2, 'thành đô'),
(21, 'nguyễn', 'quân', 'vanquan@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0936121458', 'Nam', 2, 'bắc giang'),
(22, 'nguyen', 'oanh', 'kimlong@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0963451253', 'Nam', 2, 'hà nam'),
(23, 'phạm', 'phong', 'vanphong@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0946132598', 'Nam', 2, 'hà nội'),
(24, 'bui', 'nam', 'kimkim@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0865325698', 'Nam', 2, 'Ninh Bình'),
(25, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 2, ''),
(26, 'oanh', 'minh', 'minhhh@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0896352114', 'Nam', 2, ''),
(27, 'nam', 'tran', 'na@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0946131594', 'Nam', 2, 'nam định'),
(28, 'do', 'truong', 'truong@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0987654321', 'Nam', 2, 'Nam Dinh'),
(29, 'oanh', 'faa', 'oanh12@gail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '1234567891', 'Nam', 2, 'hn'),
(30, 'lam', 'nguyen', 'lam12@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '0987654343', 'Nam', 2, 'Kim Giang'),
(31, 'minh', 'ngf', 'minh123@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '1090909090', 'Nam', 2, 'name'),
(32, 'trần', 'thịnh', 'tranthinh@gmail.com', '6dadc0d8cf6f6c90d03abe6bfa064486', '9635623596', 'Nam', 2, 'nam định');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiecdonhang`
--
ALTER TABLE `chitiecdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `MaLoaiTK` (`MaLoaiTK`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiecdonhang`
--
ALTER TABLE `chitiecdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaLoaiTK`) REFERENCES `loaitaikhoan` (`STT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
