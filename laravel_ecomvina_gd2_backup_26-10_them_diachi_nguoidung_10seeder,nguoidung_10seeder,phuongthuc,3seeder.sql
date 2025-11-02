-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 26, 2025 lúc 04:59 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_ecomvina_gd2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `slug` text NOT NULL,
  `noidung` longtext NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `hinhanh` varchar(255) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bienthe`
--

CREATE TABLE `bienthe` (
  `id` int(11) NOT NULL,
  `id_loaibienthe` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `giagoc` int(11) NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `luottang` int(11) NOT NULL DEFAULT 0,
  `luotban` int(11) NOT NULL DEFAULT 0,
  `trangthai` enum('Còn hàng','Hết hàng','Sắp hết hàng') DEFAULT 'Còn hàng',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bienthe`
--

INSERT INTO `bienthe` (`id`, `id_loaibienthe`, `id_sanpham`, `giagoc`, `soluong`, `luottang`, `luotban`, `trangthai`, `deleted_at`) VALUES
(1, 1, 1, 270000, 10, 0, 0, 'Còn hàng', NULL),
(2, 2, 2, 385000, 10, 0, 0, 'Còn hàng', NULL),
(3, 1, 3, 466560, 10, 0, 23, 'Còn hàng', NULL),
(4, 1, 4, 260000, 10, 0, 0, 'Còn hàng', NULL),
(5, 2, 5, 512000, 10, 0, 0, 'Còn hàng', NULL),
(6, 1, 6, 270000, 2, 0, 0, 'Sắp hết hàng', NULL),
(7, 2, 9, 360000, 253, 0, 28, 'Còn hàng', NULL),
(8, 1, 9, 260000, 5, 0, 2, 'Sắp hết hàng', NULL),
(9, 1, 10, 795000, 200, 0, 10, 'Còn hàng', NULL),
(10, 2, 11, 950000, 27, 0, 124, 'Còn hàng', NULL),
(11, 1, 11, 500000, 5, 0, 10, 'Sắp hết hàng', NULL),
(12, 1, 12, 330000, 63, 0, 12, 'Còn hàng', NULL),
(13, 2, 12, 330000, 92, 0, 72, 'Còn hàng', NULL),
(14, 3, 12, 512000, 12, 0, 0, 'Còn hàng', NULL),
(15, 4, 13, 90000, 240, 7, 142, 'Còn hàng', NULL),
(16, 2, 14, 369000, 75, 20, 472, 'Còn hàng', NULL),
(17, 5, 15, 282000, 25, 0, 782, 'Còn hàng', NULL),
(18, 6, 15, 282000, 23, 0, 0, 'Còn hàng', NULL),
(19, 3, 16, 249000, 2, 0, 187, 'Sắp hết hàng', NULL),
(20, 3, 17, 220800, 12, 0, 17, 'Còn hàng', NULL),
(21, 8, 18, 69000, 76, 5, 76, 'Còn hàng', NULL),
(22, 3, 19, 160000, 1214, 0, 67, 'Còn hàng', NULL),
(23, 9, 20, 490000, 107, 0, 193, 'Còn hàng', NULL),
(24, 9, 21, 799000, 123, 1, 3, 'Còn hàng', NULL),
(25, 1, 22, 42000, 7, 0, 3, 'Sắp hết hàng', NULL),
(26, 9, 23, 290000, 100, 0, 74, 'Còn hàng', NULL),
(27, 8, 22, 89000, 123, 0, 3, 'Còn hàng', NULL),
(28, 10, 24, 699000, 20, 0, 0, 'Còn hàng', NULL),
(29, 11, 25, 690000, 24, 0, 20, 'Còn hàng', NULL),
(30, 7, 26, 560000, 123, 0, 0, 'Còn hàng', NULL),
(31, 9, 27, 89000, 12, 0, 0, 'Còn hàng', NULL),
(32, 8, 26, 799000, 87, 25, 123, 'Còn hàng', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id` int(11) NOT NULL,
  `id_bienthe` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongtrinh`
--

CREATE TABLE `chuongtrinh` (
  `id` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `slug` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuongtrinh`
--

INSERT INTO `chuongtrinh` (`id`, `tieude`, `slug`, `hinhanh`, `noidung`, `trangthai`) VALUES
(1, 'Sinh Nhật 13/10', 'sinh-nhat-13-10', 'sinhnhat13102025.png', 'không có', 'Hiển thị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_chitietdonhang` int(11) NOT NULL,
  `diem` int(11) NOT NULL DEFAULT 5,
  `noidung` text DEFAULT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT 'danhmuc.jpg',
  `parent` enum('Cha','Con') NOT NULL DEFAULT 'Cha',
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`, `slug`, `logo`, `parent`, `trangthai`) VALUES
(1, 'Sức khỏe', 'suc-khoe', 'suc-khoe.svg', 'Cha', 'Hiển thị'),
(2, 'Thực phẩm chức năng', 'thuc-pham-chuc-nang', 'thuc-pham-chuc-nang.svg', 'Cha', 'Hiển thị'),
(3, 'Chăm sóc cá nhân', 'cham-soc-ca-nhan', 'cham-soc-ca-nhan.svg', 'Cha', 'Hiển thị'),
(4, 'Làm đẹp', 'lam-dep', 'lam-dep.svg', 'Cha', 'Hiển thị'),
(5, 'Điện máy', 'dien-may', 'dien-may.svg', 'Cha', 'Hiển thị'),
(6, 'Thiết bị y tế', 'thiet-bi-y-te', 'thiet-bi-y-te.svg', 'Cha', 'Hiển thị'),
(7, 'Bách hóa', 'bach-hoa', 'bach-hoa.svg', 'Cha', 'Hiển thị'),
(8, 'Nội thất - Trang trí', 'noi-that-trang-tri', 'noi-that-trang-tri.svg', 'Cha', 'Hiển thị'),
(9, 'Mẹ & bé', 'me-va-be', 'me-va-be.svg', 'Cha', 'Hiển thị'),
(10, 'Thời trang', 'thoi-trang', 'thoi-trang.svg', 'Cha', 'Hiển thị'),
(11, 'Thực phẩm - đồ ăn', 'thuc-pham-do-an', 'thuc-pham-do-an.svg', 'Con', 'Hiển thị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_sanpham`
--

CREATE TABLE `danhmuc_sanpham` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_sanpham`
--

INSERT INTO `danhmuc_sanpham` (`id`, `id_danhmuc`, `id_sanpham`) VALUES
(1, 1, 5),
(2, 1, 4),
(3, 2, 1),
(4, 2, 3),
(5, 1, 2),
(6, 2, 9),
(7, 3, 9),
(8, 1, 9),
(9, 7, 6),
(10, 1, 10),
(11, 4, 10),
(12, 4, 11),
(13, 4, 12),
(14, 7, 15),
(15, 7, 14),
(16, 7, 13),
(17, 11, 14),
(18, 11, 15),
(23, 7, 16),
(24, 7, 17),
(25, 7, 18),
(26, 6, 19),
(27, 6, 20),
(28, 6, 21),
(29, 6, 22),
(30, 6, 23),
(31, 4, 24),
(32, 4, 25),
(33, 4, 26),
(34, 4, 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi_giaohang`
--

CREATE TABLE `diachi_giaohang` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `diachi` text NOT NULL,
  `tinhthanh` varchar(100) NOT NULL,
  `trangthai` enum('Mặc định','Khác','Tạm ẩn') NOT NULL DEFAULT 'Khác',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diachi_giaohang`
--

INSERT INTO `diachi_giaohang` (`id`, `id_nguoidung`, `hoten`, `sodienthoai`, `diachi`, `tinhthanh`, `trangthai`, `deleted_at`) VALUES
(1, 1, 'Cao Kiến Hựu', '0845381121', '123 Lê Lợi, Quận 1', 'TP. Hồ Chí Minh', 'Mặc định', NULL),
(2, 2, 'Quản trị viên', '0900000002', '45 Hoàng Diệu, Quận Hải Châu', 'Đà Nẵng', 'Khác', NULL),
(3, 3, 'Khách hàng 1', '0900000003', '78 Nguyễn Huệ, Quận Ba Đình', 'Hà Nội', 'Khác', NULL),
(4, 4, 'Khách hàng 2', '0900000004', '56 Trần Phú, Quận Ninh Kiều', 'Cần Thơ', 'Khác', NULL),
(5, 5, 'Khách hàng 3', '0900000005', '12 Lý Thường Kiệt, Phường 2', 'Huế', 'Khác', NULL),
(6, 6, 'Khách hàng 4', '0900000006', '22 Nguyễn Văn Cừ, Quận 5', 'TP. Hồ Chí Minh', 'Khác', NULL),
(7, 7, 'Khách hàng 5', '0900000007', '9A Hai Bà Trưng, Quận Hoàn Kiếm', 'Hà Nội', 'Khác', NULL),
(8, 8, 'Khách hàng 6', '0900000008', '67 Nguyễn Trãi, Phường 3', 'Đà Lạt', 'Khác', NULL),
(9, 9, 'Khách hàng 7', '0900000009', '101 Pasteur, Quận 3', 'TP. Hồ Chí Minh', 'Khác', NULL),
(10, 10, 'Khách hàng 8', '0900000010', '32 Nguyễn Đình Chiểu, Quận 1', 'TP. Hồ Chí Minh', 'Khác', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_diachinguoidung` int(11) NOT NULL,
  `id_phuongthuc` int(11) NOT NULL,
  `id_magiamgia` int(11) DEFAULT NULL,
  `madon` varchar(10) NOT NULL,
  `tongsoluong` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `trangthai` enum('Chờ xử lý','Đã chấp nhận','Đang giao hàng','Đã giao hàng','Đã hủy đơn') NOT NULL DEFAULT 'Chờ xử lý',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `id_bienthe` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh_sanpham`
--

CREATE TABLE `hinhanh_sanpham` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh_sanpham`
--

INSERT INTO `hinhanh_sanpham` (`id`, `id_sanpham`, `hinhanh`, `trangthai`, `deleted_at`) VALUES
(1, 1, 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha-1.webp', 'Hiển thị', NULL),
(2, 1, 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha-2.webp', 'Hiển thị', NULL),
(3, 1, 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha-3.webp', 'Hiển thị', NULL),
(4, 1, 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha-4.webp', 'Hiển thị', NULL),
(5, 2, 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g-1.webp', 'Hiển thị', NULL),
(6, 2, 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g-2.webp', 'Hiển thị', NULL),
(7, 2, 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g-3.webp', 'Hiển thị', NULL),
(8, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-1.webp', 'Hiển thị', NULL),
(9, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-2.webp', 'Hiển thị', NULL),
(10, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-3.webp', 'Hiển thị', NULL),
(11, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-4.webp', 'Hiển thị', NULL),
(12, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-5.webp', 'Hiển thị', NULL),
(13, 4, 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml-1.webp', 'Hiển thị', NULL),
(14, 4, 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml-2.webp', 'Hiển thị', NULL),
(15, 4, 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml-3.webp', 'Hiển thị', NULL),
(16, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-1.webp', 'Hiển thị', NULL),
(17, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-2.webp', 'Hiển thị', NULL),
(18, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-3.webp', 'Hiển thị', NULL),
(19, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-4.webp', 'Hiển thị', NULL),
(20, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-5.webp', 'Hiển thị', NULL),
(21, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-6.webp', 'Hiển thị', NULL),
(22, 6, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-1.webp', 'Hiển thị', NULL),
(23, 9, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-1.webp', 'Hiển thị', NULL),
(24, 9, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-2.webp', 'Hiển thị', NULL),
(25, 9, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-3.webp', 'Hiển thị', NULL),
(26, 9, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-4.webp', 'Hiển thị', NULL),
(27, 9, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-5.webp', 'Hiển thị', NULL),
(28, 10, 'collagen-thuy-phan-ho-tro-da-mong-toc-acai-labs-marine-collagen-beauty-australia-90v-1.webp', 'Hiển thị', NULL),
(29, 10, 'collagen-thuy-phan-ho-tro-da-mong-toc-acai-labs-marine-collagen-beauty-australia-90v-2.webp', 'Hiển thị', NULL),
(30, 10, 'collagen-thuy-phan-ho-tro-da-mong-toc-acai-labs-marine-collagen-beauty-australia-90v-3.webp', 'Hiển thị', NULL),
(31, 10, 'collagen-thuy-phan-ho-tro-da-mong-toc-acai-labs-marine-collagen-beauty-australia-90v-4.webp', 'Hiển thị', NULL),
(32, 10, 'collagen-thuy-phan-ho-tro-da-mong-toc-acai-labs-marine-collagen-beauty-australia-90v-5.webp', 'Hiển thị', NULL),
(33, 11, 'vien-uong-bishin-tripeptide-collagen-nhat-ban-60v-1.webp', 'Hiển thị', NULL),
(34, 11, 'vien-uong-bishin-tripeptide-collagen-nhat-ban-60v-2.webp', 'Hiển thị', NULL),
(35, 11, 'vien-uong-bishin-tripeptide-collagen-nhat-ban-60v-3.webp', 'Hiển thị', NULL),
(36, 11, 'vien-uong-bishin-tripeptide-collagen-nhat-ban-60v-4.webp', 'Hiển thị', NULL),
(37, 12, 'duong-mi-te-bao-goc-cchoi-bio-placenta-lash-serum-1.webp', 'Hiển thị', NULL),
(38, 12, 'duong-mi-te-bao-goc-cchoi-bio-placenta-lash-serum-2.webp', 'Hiển thị', NULL),
(39, 12, 'duong-mi-te-bao-goc-cchoi-bio-placenta-lash-serum-3.webp', 'Hiển thị', NULL),
(40, 12, 'duong-mi-te-bao-goc-cchoi-bio-placenta-lash-serum-4.webp', 'Hiển thị', NULL),
(41, 13, 'nuoc-rua-bat-bio-formula-bo-va-lo-hoi-tui-500ml-1.webp', 'Hiển thị', NULL),
(42, 13, 'nuoc-rua-bat-bio-formula-bo-va-lo-hoi-tui-500ml-2.webp', 'Hiển thị', NULL),
(43, 13, 'nuoc-rua-bat-bio-formula-bo-va-lo-hoi-tui-500ml-3.webp', 'Hiển thị', NULL),
(44, 14, 'banh-trung-thu-2025-thu-an-nhien-banh-chay-hop-2-banh-1-tra-1.webp', 'Hiển thị', NULL),
(45, 14, 'banh-trung-thu-2025-thu-an-nhien-banh-chay-hop-2-banh-1-tra-2.webp', 'Hiển thị', NULL),
(46, 14, 'banh-trung-thu-2025-thu-an-nhien-banh-chay-hop-2-banh-1-tra-3.webp', 'Hiển thị', NULL),
(47, 14, 'banh-trung-thu-2025-thu-an-nhien-banh-chay-hop-2-banh-1-tra-4.webp', 'Hiển thị', NULL),
(48, 14, 'banh-trung-thu-2025-thu-an-nhien-banh-chay-hop-2-banh-1-tra-5.webp', 'Hiển thị', NULL),
(49, 15, 'hat-dieu-rang-muoi-loai-1-con-vo-lua-happy-nuts-500g-1.webp', 'Hiển thị', NULL),
(50, 15, 'hat-dieu-rang-muoi-loai-1-con-vo-lua-happy-nuts-500g-2.webp', 'Hiển thị', NULL),
(51, 15, 'hat-dieu-rang-muoi-loai-1-con-vo-lua-happy-nuts-500g-3.webp', 'Hiển thị', NULL),
(52, 16, 'keo-qua-sam-khong-duong-free-suger-ginseng-berry-s-candy-200g-1.webp', 'Hiển thị', NULL),
(53, 16, 'keo-qua-sam-khong-duong-free-suger-ginseng-berry-s-candy-200g-2.webp', 'Hiển thị', NULL),
(54, 16, 'keo-qua-sam-khong-duong-free-suger-ginseng-berry-s-candy-200g-3.webp', 'Hiển thị', NULL),
(55, 16, 'keo-qua-sam-khong-duong-free-suger-ginseng-berry-s-candy-200g-4.webp', 'Hiển thị', NULL),
(56, 17, 'bot-matcha-gao-rang-nhat-ban-onelife-goi-100g-1.webp', 'Hiển thị', NULL),
(57, 17, 'bot-matcha-gao-rang-nhat-ban-onelife-goi-100g-2.webp', 'Hiển thị', NULL),
(58, 17, 'bot-matcha-gao-rang-nhat-ban-onelife-goi-100g-3.webp', 'Hiển thị', NULL),
(59, 18, 'nuoc-rua-chen-sa-chanh-come-on-lam-sach-bat-dia-an-toan-da-tay-1-lit-1.webp', 'Hiển thị', NULL),
(60, 18, 'nuoc-rua-chen-sa-chanh-come-on-lam-sach-bat-dia-an-toan-da-tay-1-lit-2.webp', 'Hiển thị', NULL),
(61, 19, 'gang-lau-abena-wash-gloves-50-mienggoi-1.webp', 'Hiển thị', NULL),
(62, 19, 'gang-lau-abena-wash-gloves-50-mienggoi-2.webp', 'Hiển thị', NULL),
(63, 19, 'gang-lau-abena-wash-gloves-50-mienggoi-3.webp', 'Hiển thị', NULL),
(64, 20, 'tam-lot-giuong-abena-pad-giat-duoc-85x90cm-1.webp', 'Hiển thị', NULL),
(65, 20, 'tam-lot-giuong-abena-pad-giat-duoc-85x90cm-2.webp', 'Hiển thị', NULL),
(66, 20, 'tam-lot-giuong-abena-pad-giat-duoc-85x90cm-3.webp', 'Hiển thị', NULL),
(67, 21, 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi-1.webp', 'Hiển thị', NULL),
(68, 21, 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi-2.webp', 'Hiển thị', NULL),
(69, 21, 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi-3.webp', 'Hiển thị', NULL),
(70, 21, 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi-4.webp', 'Hiển thị', NULL),
(71, 21, 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi-5.webp', 'Hiển thị', NULL),
(72, 21, 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi-6.webp', 'Hiển thị', NULL),
(73, 21, 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi-7.webp', 'Hiển thị', NULL),
(74, 21, 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi-8.webp', 'Hiển thị', NULL),
(75, 22, 'hu-hit-thao-duoc-nhi-thien-duong-hu-5g-1.webp', 'Hiển thị', NULL),
(76, 22, 'hu-hit-thao-duoc-nhi-thien-duong-hu-5g-2.webp', 'Hiển thị', NULL),
(77, 22, 'hu-hit-thao-duoc-nhi-thien-duong-hu-5g-3.webp', 'Hiển thị', NULL),
(78, 23, 'tam-lot-abena-pad-45x45-1.webp', 'Hiển thị', NULL),
(79, 23, 'tam-lot-abena-pad-45x45-2.webp', 'Hiển thị', NULL),
(80, 23, 'tam-lot-abena-pad-45x45-3.webp', 'Hiển thị', NULL),
(81, 24, 'serum-angels-liquid-glutathione-plus-niacinamide-cica-ampoule-ho-tro-lam-trang-kiem-soat-dau-thu-nho-lo-chan-long-chai-45ml-1.webp', 'Hiển thị', NULL),
(82, 24, 'serum-angels-liquid-glutathione-plus-niacinamide-cica-ampoule-ho-tro-lam-trang-kiem-soat-dau-thu-nho-lo-chan-long-chai-45ml-2.webp', 'Hiển thị', NULL),
(83, 24, 'serum-angels-liquid-glutathione-plus-niacinamide-cica-ampoule-ho-tro-lam-trang-kiem-soat-dau-thu-nho-lo-chan-long-chai-45ml-3.webp', 'Hiển thị', NULL),
(84, 24, 'serum-angels-liquid-glutathione-plus-niacinamide-cica-ampoule-ho-tro-lam-trang-kiem-soat-dau-thu-nho-lo-chan-long-chai-45ml-4.webp', 'Hiển thị', NULL),
(85, 24, 'serum-angels-liquid-glutathione-plus-niacinamide-cica-ampoule-ho-tro-lam-trang-kiem-soat-dau-thu-nho-lo-chan-long-chai-45ml-5.webp', 'Hiển thị', NULL),
(86, 24, 'serum-angels-liquid-glutathione-plus-niacinamide-cica-ampoule-ho-tro-lam-trang-kiem-soat-dau-thu-nho-lo-chan-long-chai-45ml-6.webp', 'Hiển thị', NULL),
(87, 25, 'thanh-lan-serum-cellbn-ho-tro-cai-thien-nep-nhan-giup-da-san-chac-peptide-collagen-adenosine-15ml-1.webp', 'Hiển thị', NULL),
(88, 25, 'thanh-lan-serum-cellbn-ho-tro-cai-thien-nep-nhan-giup-da-san-chac-peptide-collagen-adenosine-15ml-2.webp', 'Hiển thị', NULL),
(89, 25, 'thanh-lan-serum-cellbn-ho-tro-cai-thien-nep-nhan-giup-da-san-chac-peptide-collagen-adenosine-15ml-3.webp', 'Hiển thị', NULL),
(90, 25, 'thanh-lan-serum-cellbn-ho-tro-cai-thien-nep-nhan-giup-da-san-chac-peptide-collagen-adenosine-15ml-4.webp', 'Hiển thị', NULL),
(91, 25, 'thanh-lan-serum-cellbn-ho-tro-cai-thien-nep-nhan-giup-da-san-chac-peptide-collagen-adenosine-15ml-5.webp', 'Hiển thị', NULL),
(92, 25, 'thanh-lan-serum-cellbn-ho-tro-cai-thien-nep-nhan-giup-da-san-chac-peptide-collagen-adenosine-15ml-6.webp', 'Hiển thị', NULL),
(93, 26, 'nuoc-tay-trang-rua-mat-cap-am-can-bang-do-ph-tren-da-cell-fusion-c-low-ph-pharrier-cleansing-water-1.webp', 'Hiển thị', NULL),
(94, 26, 'nuoc-tay-trang-rua-mat-cap-am-can-bang-do-ph-tren-da-cell-fusion-c-low-ph-pharrier-cleansing-water-2.webp', 'Hiển thị', NULL),
(95, 26, 'nuoc-tay-trang-rua-mat-cap-am-can-bang-do-ph-tren-da-cell-fusion-c-low-ph-pharrier-cleansing-water-3.webp', 'Hiển thị', NULL),
(96, 26, 'nuoc-tay-trang-rua-mat-cap-am-can-bang-do-ph-tren-da-cell-fusion-c-low-ph-pharrier-cleansing-water-4.webp', 'Hiển thị', NULL),
(97, 26, 'nuoc-tay-trang-rua-mat-cap-am-can-bang-do-ph-tren-da-cell-fusion-c-low-ph-pharrier-cleansing-water-5.webp', 'Hiển thị', NULL),
(98, 26, 'nuoc-tay-trang-rua-mat-cap-am-can-bang-do-ph-tren-da-cell-fusion-c-low-ph-pharrier-cleansing-water-6.webp', 'Hiển thị', NULL),
(100, 27, 'mat-na-bun-luvum-pore-reset-mud-mask-giup-lam-sach-thu-nho-lo-chan-long-mieng-le-16g-2.webp', 'Hiển thị', NULL),
(102, 27, 'mat-na-bun-luvum-pore-reset-mud-mask-giup-lam-sach-thu-nho-lo-chan-long-mieng-le-16g-4.webp', 'Hiển thị', NULL),
(103, 27, 'mat-na-bun-luvum-pore-reset-mud-mask-giup-lam-sach-thu-nho-lo-chan-long-mieng-le-16g-5.webp', 'Hiển thị', NULL),
(104, 27, 'mat-na-bun-luvum-pore-reset-mud-mask-giup-lam-sach-thu-nho-lo-chan-long-mieng-le-16g-6.webp', 'Hiển thị', NULL),
(105, 27, 'mat-na-bun-luvum-pore-reset-mud-mask-giup-lam-sach-thu-nho-lo-chan-long-mieng-le-16g-7.webp', 'Hiển thị', NULL),
(106, 27, 'mat-na-bun-luvum-pore-reset-mud-mask-giup-lam-sach-thu-nho-lo-chan-long-mieng-le-16g-8.webp', 'Hiển thị', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaibienthe`
--

CREATE TABLE `loaibienthe` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaibienthe`
--

INSERT INTO `loaibienthe` (`id`, `ten`, `trangthai`) VALUES
(1, 'Lọ', 'Hiển thị'),
(2, 'Hộp', 'Hiển thị'),
(3, 'Gói', 'Hiển thị'),
(4, 'Túi 500ml', 'Hiển thị'),
(5, 'Hộp (Vỏ lụa) 500g', 'Hiển thị'),
(6, 'Hộp (đã lột vỏ) 500g', 'Hiển thị'),
(7, 'Chai', 'Hiển thị'),
(8, 'Bình xịt', 'Hiển thị'),
(9, 'Cái', 'Hiển thị'),
(10, 'Chai 45ml', 'Hiển thị'),
(11, 'Loại 15ml', 'Hiển thị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` int(11) NOT NULL,
  `magiamgia` int(11) NOT NULL,
  `dieukien` varchar(255) NOT NULL,
  `mota` text DEFAULT NULL,
  `giatri` int(11) NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `trangthai` enum('Hoạt động','Tạm khóa','Dừng hoạt động') NOT NULL DEFAULT 'Hoạt động',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` enum('Nam','Nữ') NOT NULL,
  `ngaysinh` date NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'khachhang.jpg',
  `vaitro` enum('admin','seller','client') NOT NULL,
  `trangthai` enum('Hoạt động','Tạm khóa','Dừng hoạt động') NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `username`, `password`, `sodienthoai`, `hoten`, `gioitinh`, `ngaysinh`, `avatar`, `vaitro`, `trangthai`, `deleted_at`) VALUES
(1, 'lyhuu123', '$2y$12$AJPcc5roamhyM3lnvS/43Os9Rtpid.N7kiru4TcAPcXY40LQpjBK6', '0845381121', 'Cao Kiến Hựu', 'Nam', '2004-10-13', 'khachhang.jpg', 'seller', 'Hoạt động', NULL),
(2, 'admindemo', '$2y$12$PDbfT41cUl6VFlLjV9WdAup59mNIWuIuBP1LV2Gc1mm0xbR3Hjfo2', '0900000002', 'Người bán hàng', 'Nữ', '1995-05-05', 'khachhang.jpg', 'admin', 'Hoạt động', NULL),
(3, 'user1', '$2y$12$UZ68u.4zKKk84DO2iZKIZujt51QddTmTK1tafKU7nRt3mbd/7P0bK', '0900000003', 'Khách hàng 1', 'Nam', '2000-01-01', 'khachhang.jpg', 'client', 'Hoạt động', NULL),
(4, 'user2', '$2y$12$zS4JtABgN/wVN9muL91stullBJ2JwilMO9dE.l3Gd9/UvwwWpwd3y', '0900000004', 'Khách hàng 2', 'Nữ', '2000-01-02', 'khachhang.jpg', 'client', 'Hoạt động', NULL),
(5, 'user3', '$2y$12$KGINiwPcrW/mNca.bk1eK.2bIHRZ9tmIdy1L0GfRFw1nVaxl0K3Pq', '0900000005', 'Khách hàng 3', 'Nam', '2000-01-03', 'khachhang.jpg', 'client', 'Hoạt động', NULL),
(6, 'user4', '$2y$12$4zxjsyOdCXeZzDmYvYWKv.HATWvidHaR28D.eB6SnlpSsHxvnXTba', '0900000006', 'Khách hàng 4', 'Nữ', '2000-01-04', 'khachhang.jpg', 'client', 'Hoạt động', NULL),
(7, 'user5', '$2y$12$I1Z46PM2/Evi5uAdToxjq.gYu1QZGM90c5F3IHcNBNkpSP7ZReBHK', '0900000007', 'Khách hàng 5', 'Nam', '2000-01-05', 'khachhang.jpg', 'client', 'Hoạt động', NULL),
(8, 'user6', '$2y$12$C4lct1J.z3glG83yvqEE8eaBrpWXt514ikFPd6FwfZ4reDopjb6G6', '0900000008', 'Khách hàng 6', 'Nữ', '2000-01-06', 'khachhang.jpg', 'client', 'Hoạt động', NULL),
(9, 'user7', '$2y$12$B1/sArC4XdCuz7TVV8ey5.sk14ZNisA2XGEhAilS9sY54Pyb4j22C', '0900000009', 'Khách hàng 7', 'Nam', '2000-01-07', 'khachhang.jpg', 'client', 'Hoạt động', NULL),
(10, 'user8', '$2y$12$Zpwe.oRM8N5sU9HqYOeghuavV.zc5.QAMIUNWxUDPhhSMPsDTz4qS', '0900000010', 'Khách hàng 8', 'Nữ', '2000-01-08', 'khachhang.jpg', 'client', 'Hoạt động', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuongthuc`
--

CREATE TABLE `phuongthuc` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `maphuongthuc` text DEFAULT NULL,
  `trangthai` enum('Hoạt động','Tạm khóa','Dừng hoạt động') NOT NULL DEFAULT 'Hoạt động'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuongthuc`
--

INSERT INTO `phuongthuc` (`id`, `ten`, `maphuongthuc`, `trangthai`) VALUES
(1, 'Chuyển khoản ngân hàng trực tiếp', 'dbt', 'Hoạt động'),
(2, 'Kiểm tra thanh toán', 'cp', 'Hoạt động'),
(3, 'Thanh toán khi nhận hàng (COD)', 'cod', 'Hoạt động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `id` int(11) NOT NULL,
  `vitri` enum('home_banner_slider','home_banner_event_1','home_banner_event_2','home_banner_event_3','home_banner_event_4','home_banner_promotion_1','home_banner_promotion_2','home_banner_promotion_3','home_banner_ads','home_banner_product') NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `lienket` text NOT NULL,
  `mota` text NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id`, `vitri`, `hinhanh`, `lienket`, `mota`, `trangthai`) VALUES
(1, 'home_banner_slider', 'banner-droppii-1.png', 'https://droppii.vn', 'Liên kết đến Droppii Mall', 'Hiển thị'),
(2, 'home_banner_slider', 'banner-droppii-2.png', 'https://droppii.vn', 'Liên kết đến Droppii Mall', 'Hiển thị'),
(3, 'home_banner_slider', 'banner-droppii-3.png', 'https://droppii.vn', 'Liên kết đến Droppii Mall', 'Hiển thị'),
(4, 'home_banner_event_1', 'shopee-1.jpg', 'https://shopee.tw', 'Liên kết đến Shopee', 'Hiển thị'),
(5, 'home_banner_event_2', 'shopee-2.jpg', 'https://shopee.tw', 'liên kết đến Shopee', 'Hiển thị'),
(6, 'home_banner_event_3', 'shopee-3.jpg', 'https://shopee.tw', 'Liên kết đến Shopee', 'Hiển thị'),
(7, 'home_banner_event_4', 'shopee-04.webp', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị'),
(8, 'home_banner_promotion_1', 'shopee-05.jpg', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị'),
(9, 'home_banner_promotion_2', 'shopee-06.jpg', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị'),
(10, 'home_banner_promotion_3', 'shopee-07.jpg', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị'),
(11, 'home_banner_ads', 'shopee-05.jpg', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị'),
(12, 'home_banner_product', 'shopee-09.jfif', 'https://shopee.tw', 'Liên kết đến Shopee', 'Hiển thị');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatang_sukien`
--

CREATE TABLE `quatang_sukien` (
  `id` int(11) NOT NULL,
  `id_bienthe` int(11) NOT NULL,
  `id_chuongtrinh` int(11) NOT NULL,
  `dieukien` varchar(255) NOT NULL,
  `tieude` text NOT NULL,
  `thongtin` longtext NOT NULL,
  `hinhanh` text NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `ngaybatdau` date DEFAULT NULL,
  `ngayketthuc` date DEFAULT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quatang_sukien`
--

INSERT INTO `quatang_sukien` (`id`, `id_bienthe`, `id_chuongtrinh`, `dieukien`, `tieude`, `thongtin`, `hinhanh`, `luotxem`, `ngaybatdau`, `ngayketthuc`, `trangthai`, `deleted_at`) VALUES
(1, 1, 1, '2', 'Ưu đãi sinh nhật 13/10 - Tặng 1 sản phẩm bất kỳ', 'Mua 2 sản phẩm từ Trung Tâm Bán Hàng Siêu Thị Vina để nhận được ưu đãi tặng 1 sản phẩm nhân ngày sinh nhật 13/10', 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-2.webp', 0, '2025-10-18', '2025-11-02', 'Hiển thị', NULL),
(2, 2, 1, '5', 'Tặng 1 sản phẩm từ thương hiệu khi thêm 5 sản phẩm bất kỳ trong giỏ hàng của thương hiệu', 'Không có thông tin', 'sam-ngoc-linh-truong-sinh-do-thung-24lon-1.webp', 5, '2025-10-18', '2025-10-25', 'Hiển thị', NULL),
(3, 18, 1, '3', 'Tặng 1 quà Trung Thu khi mua 3 sản phẩm từ Trung Tâm Bán Hàng', 'Không có thông tin', 'banh-trung-thu-2025-thu-an-nhien-banh-chay-hop-2-banh-1-tra-1.webp', 12, '2025-10-01', '2025-11-20', 'Hiển thị', NULL),
(4, 27, 1, '2', 'Tặng 1 thiết bị y tế khi 2 sản phẩm y tế khác nhau của thương hiệu y tế ABENA', 'Không có thông tin', 'tam-lot-abena-pad-45x45-1.webp', 0, '2025-10-13', '2025-12-31', 'Hiển thị', NULL),
(5, 17, 1, '3', 'Tặng 1 sản phẩm bách hóa khi mua 3 sản phẩm bất kỳ từ Trung Tâm Bán Hàng nhân ngày sinh nhật 13/10', 'Không có thông tin', 'nuoc-rua-bat-bio-formula-bo-va-lo-hoi-tui-500ml-1.webp', 1200, '2025-10-13', '2025-12-31', 'Hiển thị', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_thuonghieu` int(11) NOT NULL,
  `ten` text NOT NULL,
  `slug` text NOT NULL,
  `mota` longtext NOT NULL,
  `xuatxu` varchar(255) DEFAULT NULL,
  `sanxuat` varchar(255) DEFAULT NULL,
  `trangthai` enum('Công khai','Chờ duyệt','Tạm ẩn','Tạm khóa') NOT NULL DEFAULT 'Chờ duyệt',
  `giamgia` int(11) NOT NULL DEFAULT 0,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Sản phẩm';

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_thuonghieu`, `ten`, `slug`, `mota`, `xuatxu`, `sanxuat`, `trangthai`, `giamgia`, `luotxem`, `deleted_at`) VALUES
(1, 1, 'Keo ong xanh Tracybee Propolis Mint & Honey – Giảm đau rát họng, ho, viêm họng (Vị Bạc Hà)', 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha', 'Bạn đang tìm kiếm giải pháp kháng khuẩn tự nhiên và giảm đau họng tức thì? Keo ong xanh Tracybee Propolis Mint & Honey là sự kết hợp hoàn hảo giữa dược liệu quý từ thiên nhiên và hương vị the mát, giúp bạn vượt qua những cơn đau rát họng, ho và viêm họng khó chịu một cách nhanh chóng.', 'Brazil', 'Nhập khẩu chính ngạch bởi Siêu Thị Vina', 'Công khai', 10, 0, NULL),
(2, 1, 'Mật ong Tây Bắc đông trùng hạ thảo X3 (Hũ 240g)', 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g', 'Mật ong Tây Bắc Đông Trùng Hạ Thảo X3 là siêu phẩm bồi bổ sức khỏe, kết hợp giữa mật ong rừng Tây Bắc nguyên chất và hàm lượng Đông Trùng Hạ Thảo được tăng cường gấp 3 lần (X3). Sản phẩm mang đến giải pháp tiện lợi và hiệu quả tối ưu để nâng cao thể trạng, tăng cường đề kháng và phục hồi sức khỏe.', 'Việt Nam', 'Việt Nam', 'Công khai', 20, 0, NULL),
(3, 1, 'Sâm Ngọc Linh trường sinh đỏ (Thùng 24lon)', 'sam-ngoc-linh-truong-sinh-do-thung-24lon', 'Sâm Ngọc Linh Trường Sinh Đỏ là tinh hoa của dược liệu quý hiếm, mang đến giải pháp tiện lợi để bồi bổ sức khỏe và nâng cao thể trạng mỗi ngày. Được chiết xuất từ Sâm Ngọc Linh quý giá – \"Quốc bảo của Việt Nam\" – sản phẩm ở dạng lon uống liền giúp bạn hấp thu trọn vẹn dưỡng chất một cách nhanh chóng và hiệu quả.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 1, NULL),
(4, 1, 'Tinh dầu tràm tự nhiên ECO - Hỗ trợ giảm ho, cảm cúm, sổ mũi, cảm lạnh (Lọ 30ml)', 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml', 'Tinh Dầu Tràm Tự Nhiên ECO là sản phẩm chiết xuất 100% từ lá tràm nguyên chất, mang trong mình những công dụng truyền thống tuyệt vời trong việc bảo vệ sức khỏe, đặc biệt là hệ hô hấp. Với khả năng kháng khuẩn, làm ấm và thư giãn, Tinh dầu Tràm ECO là người bạn đồng hành không thể thiếu trong tủ thuốc gia đình, giúp đối phó hiệu quả với các triệu chứng cảm thông thường.', 'Việt Nam', 'Việt Nam', 'Công khai', 85, 0, NULL),
(5, 1, 'Sữa non tổ yến Papamilk Height & Gain giúp tăng cân tăng chiều cao cho Trẻ từ 1-19 tuổi - Lon 830G', 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g', 'Sữa Non Tổ Yến Papamilk Height & Gain là công thức dinh dưỡng đột phá được thiết kế chuyên biệt để hỗ trợ tăng cân khỏe mạnh và tối ưu hóa chiều cao cho trẻ em và thanh thiếu niên từ 1 đến 19 tuổi. Sự kết hợp độc đáo giữa Sữa Non cao cấp, Tổ Yến quý giá cùng hệ dưỡng chất khoa học giúp con bạn xây dựng nền tảng vững chắc cho một tương lai phát triển vượt trội.', 'Việt Nam', 'Việt Nam', 'Công khai', 20, 0, NULL),
(6, 1, 'hahaha', 'hahahaha', 'ádasdasd', 'ss', 'ss', 'Công khai', 20, 1, NULL),
(9, 1, 'Thực phẩm bảo vệ sức khỏe: Midu MenaQ7 180mcg', 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg', 'Midu MenaQ7 180mcg bổ sung canxi, Vitamin D3, Vitamin K2 dạng MenaQ7 và Arginine phù hợp với tất cả độ tuổi từ 1 đến 100 tuổi. Đặc biệt giúp phát triển chiều cao cho trẻ em 1-15 tuổi; mẹ bầu bổ sung canxi trong giai đoạn thai kì không gây tiểu đường, không gây táo bón và giúp con cao ngay từ trong bụng mẹ.', 'Việt Nam', 'Việt Nam', 'Công khai', 10, 26, NULL),
(10, 3, 'Collagen thủy phân hỗ trợ Da Móng Tóc Acai Labs Marine Collagen Beauty Australia 90v', 'collagen-thuy-phan-ho-tro-da-mong-toc-acai-labs-marine-collagen-beauty-australia-90v', 'Acacia Labs, với trụ sở chính tại Sydney, Australia, là thương hiệu hàng đầu trong lĩnh vực sản xuất thực phẩm chức năng, vitamin và khoáng chất. Chúng tôi tập trung vào việc nghiên cứu và phát triển các sản phẩm chăm sóc sức khỏe và sắc đẹp, mang đến cho khách hàng những giải pháp toàn diện cho một cuộc sống khỏe mạnh, tràn đầy năng lượng và hạnh phúc.\r\n\r\nKhởi nguồn từ vẻ đẹp thật sự đến từ bên trong, phòng thí nghiệm Acaci Labs với đội ngũ các chuyên gia hàng đầu thế giới đã không ngừng nghiên cứu tìm ra công thức và sản phẩm chất lượng tốt nhất để mang đến hạnh phúc lâu dài cho người sử dụng.', 'Australia', 'Australia', 'Công khai', 0, 68, NULL),
(11, 1, 'Viên uống Bishin Tripeptide Collagen Nhật Bản 60v', 'vien-uong-bishin-tripeptide-collagen-nhat-ban-60v', 'BISHIN chứa tinh chất Collagen tripeptide giúp tăng cường khả năng hấp thụ cho cơ thể, cấu trúc da, giúp da giữ được sự săn chắc, đàn hồi, tươi trẻ, hạn chế được các nếp nhăn (dấu hiệu của sự lão hóa) xuất hiện.', 'Nhật Bản', 'Phân phối tại Việt Nam', 'Công khai', 0, 3, NULL),
(12, 2, 'Dưỡng mi tế bào gốc C’Choi - Bio Placenta Lash Serum', 'duong-mi-te-bao-goc-cchoi-bio-placenta-lash-serum', 'DƯỠNG MI TẾ BÀO GỐC C’CHOI Bio-Placenta Lash Serum', 'Việt Nam', 'Việt Nam', 'Công khai', 30, 23, NULL),
(13, 1, 'Nước rửa bát Bio Formula - Bơ và Lô Hội (Túi 500ml)', 'nuoc-rua-bat-bio-formula-bo-va-lo-hoi-tui-500ml', 'Chiết xuất lô hội giúp làm dịu da tay khi tiếp xúc với chất tẩy rửa, đặc biệt dịu nhẹ với những người có da nhạy cảm. Dầu quả bơ dưỡng ẩm, bảo vệ da tay nhờ các acid béo thiết yếu trong dầu bơ. Chiết xuất rễ cây lá giang hỗ trợ làm sạch an toàn, giảm vi khuẩn bám trên bề mặt bát đĩa.', 'Ukraine', 'Ukraine', 'Công khai', 0, 1200, NULL),
(14, 1, 'Bánh Trung Thu 2025 - Thu An Nhiên (bánh chay hộp 2 bánh 1 trà)', 'banh-trung-thu-2025-thu-an-nhien-banh-chay-hop-2-banh-1-tra', 'Tết Trung Thu - Tết Đoàn Viên là dịp lý tưởng để gửi tặng những món quà ý nghĩa cho bạn bè, gia đình hay đối tác. Không chỉ đơn thuần là một nét đẹp văn hóa, quà tặng Trung Thu còn là biểu hiện của tấm chân tình và lời chúc mọi điều viên mãn. \r\n\r\nThấu hiểu và trân trọng giá trị truyền thống, Nonglamfood gửi đến quý khách hàng bộ quà tặng Trung Thu cao cấp “Thu An Nhiên”. Bánh được tinh tuyển từ dược liệu thượng hạng, làm hoàn toàn thủ công bởi các nghệ nhân có hơn 30 năm kinh nghiệm.\r\n\r\nNonglamfood ra mắt set “Thu An Nhiên” với hai loại bánh trung thu chay đặc biệt, được làm từ các nguyên liệu thượng hạng như blueberry, đông trùng hạ thảo kết hợp với các loại hạt dinh dưỡng như hạt macca, hạt sen,... hứa hẹn không chỉ mang đến những trải nghiệm tuyệt vời khi thưởng thức mà còn mang lại những lợi ích tuyệt vời về sức khỏe.\r\n\r\nTrung thu này, hãy để Nonglamfood đồng hành cùng bạn trên hành trình gửi trao “mỹ vị” mùa trăng đến những người yêu thương của mình nhé! ', 'Việt Nam', 'Việt Nam', 'Công khai', 70, 33, NULL),
(15, 1, 'Hạt điều rang muối loại 1 (còn vỏ lụa) Happy Nuts 500g', 'hat-dieu-rang-muoi-loai-1-con-vo-lua-happy-nuts-500g', 'Hạt điều rang muối Happy Nuts là một trong những loại hạt có hàm lượng carbohydrate, chất xơ thấp, nhưng chúng lại chứa nhiều vitamin, khoáng chất và chất chống oxy hóa. Chúng bao gồm vitamin E, K và B6, cùng với các khoáng chất như đồng, phốt pho, kẽm, magiê, sắt và selen.', 'Việt Nam', 'Việt Nam', 'Công khai', 10, 3, NULL),
(16, 1, 'Kẹo Quả Sâm không đường Free Suger Ginseng Berry S candy 200g', 'keo-qua-sam-khong-duong-free-suger-ginseng-berry-s-candy-200g', 'Giảm đau họng. (không nên ngậm quá 3 viên/ ngày)\r\n\r\nTăng sinh Collagen.\r\n\r\nCân bằng huyết áp, ổn định thần kinh (khi nhức đầu hay mệt mỏi hãy dùng 1 viên và nghỉ ngơi sau 30 phút sẽ thấy giảm các triệu chứng khó chịu).\r\n\r\nGiảm triệu chứng chóng mặt, buồn nôn do say tàu xe\r\n\r\nBổ sung năng lượng nhanh, giảm stress, lo lắng, nhức đầu, chóng mặt.\r\n\r\nHạn chế cơn thèm ngọt, cung cấp năng lượng cho người bị tiểu đường', 'Hàn Quốc', 'KORYO CONFECTIONERY CO., LTD', 'Công khai', 25, 12, NULL),
(17, 1, 'Bột Matcha Gạo Rang Nhật Bản ONELIFE (Gói 100g)', 'bot-matcha-gao-rang-nhat-ban-onelife-goi-100g', 'Bột Matcha Gạo Rang Nhật Bản Onelife Onlife (Gói 100g) là loại bột trà cao cấp, nhuyễn mịn, được kết hợp giữa bột trà xanh Matcha Nhật Bản và chiết xuất gạo Nhật Niigata Koshihikari rang chín theo tỉ lệ đặc biệt, tạo nên vị trà ngọt hậu tự nhiên, không thêm đường hay bất kỳ thành phần hương liệu nào khác.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 115, NULL),
(18, 1, 'Nước rửa chén sả chanh COME ON làm sạch bát đĩa, an toàn da tay 1 lít', 'nuoc-rua-chen-sa-chanh-come-on-lam-sach-bat-dia-an-toan-da-tay-1-lit', 'Tên sản phẩm: Nước rửa chén sả chanh COME ON làm sạch bát đĩa, an toàn da tay 1 lít\r\nDung tích: 1 lít\r\nThương hiệu: COME ON', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 67, NULL),
(19, 1, 'Găng lau Abena Wash Gloves (50 miếng/gói)', 'gang-lau-abena-wash-gloves-50-mienggoi', 'Abena là tập đoàn sản xuất sản phẩm chăm sóc sức khỏe hàng đầu đến từ Đan Mạch. Thành lập từ năm 1953, trải qua một giai đoạn hình thành và phát triển, Abena đã chinh phục được các thị trường khó tính Bắc Âu bằng chất lượng sản phẩm cũng như trách nhiệm xã hội của mình. Hầu hết các sản phẩm của công ty đều qua kiểm nghiệm lâm sàn của các chuyên gia da liễu và nhận được các chứng nhận y tế nghiêm ngặt của thị trường Bắc Âu như: Nordic Eco-Label, Asthma Allegry Nordic.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 51, NULL),
(20, 1, 'Tấm lót giường Abena Pad (giặt được) 85x90cm', 'tam-lot-giuong-abena-pad-giat-duoc-85x90cm', ' Abena là tập đoàn sản xuất sản phẩm chăm sóc sức khỏe hàng đầu đến từ Đan Mạch. Thành lập từ năm 1953, trải qua một giai đoạn hình thành và phát triển, Abena đã chinh phục được các thị trường khó tính Bắc Âu bằng chất lượng sản phẩm cũng như trách nhiệm xã hội của mình. Hầu hết các sản phẩm của công ty đều qua kiểm nghiệm lâm sàn của các chuyên gia da liễu và nhận được các chứng nhận y tế nghiêm ngặt của thị trường Bắc Âu như: Nordic Eco-Label, Asthma Allegry Nordic.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 76, NULL),
(21, 1, 'Máy Xông Khí Dung Cầm Tay Kachi YS35: Giải Pháp Hô Hấp Linh Hoạt Mọi Lúc, Mọi Nơi', 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi', 'Máy xông khí dung cầm tay Kachi YS35 giúp hỗ trợ điều trị và phòng ngừa các bệnh đường hô hấp như viêm phế quản, hen suyễn, viêm mũi xoang, cảm lạnh… Máy sử dụng công nghệ khí dung tạo hạt sương mịn, dễ thẩm thấu sâu vào hệ hô hấp, hiệu quả cao cho cả người lớn và trẻ em. Thiết kế nhỏ gọn, có thể dùng pin AA hoặc cáp Type-C tiện lợi.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 854, NULL),
(22, 1, 'Hũ Hít Thảo Dược Nhị Thiên Đường - Hũ 5g', 'hu-hit-thao-duoc-nhi-thien-duong-hu-5g', 'Hơn một Thế Kỷ gắn bó với bao Thế Hệ, thương hiệu Nhị Thiên Đường không chỉ là dầu gió lâu đời mà còn không ngừng đổi mới. Hũ Hít thảo dược Nhị Thiên Đường ra đời, kế thừa Tinh Hoa Trăm Năm, nay được NÂNG TẦM để phù hợp với nhịp sống hiện đại. Nhỏ gọn, tiện lợi, giúp thông mũi, sảng khoái tức thì – Một lựa chọn mới cho mọi độ tuổi, từ dân văn phòng, tài xế đến người lớn tuổi.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 26, NULL),
(23, 1, 'Tấm lót Abena Pad (45x45)', 'tam-lot-abena-pad-45x45', 'Abena là tập đoàn sản xuất sản phẩm chăm sóc sức khỏe hàng đầu đến từ Đan Mạch. Thành lập từ năm 1953, trải qua một giai đoạn hình thành và phát triển, Abena đã chinh phục được các thị trường khó tính Bắc Âu bằng chất lượng sản phẩm cũng như trách nhiệm xã hội của mình. Hầu hết các sản phẩm của công ty đều qua kiểm nghiệm lâm sàn của các chuyên gia da liễu và nhận được các chứng nhận y tế nghiêm ngặt của thị trường Bắc Âu như: Nordic Eco-Label, Asthma Allegry Nordic.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 224, NULL),
(24, 1, 'Serum ANGEL\'S LIQUID GLUTATHIONE PLUS NIACINAMIDE CICA AMPOULE hỗ trợ làm trắng, kiểm soát dầu & thu nhỏ lỗ chân lông (chai 45ml)', 'serum-angels-liquid-glutathione-plus-niacinamide-cica-ampoule-ho-tro-lam-trang-kiem-soat-dau-thu-nho-lo-chan-long-chai-45ml', 'Glutathione Plus Niacinamide Cica Ampoule -  sự kết hợp của bộ 3 hoạt chất “vàng\" 700mg Glutathione, 10% Niacinamide & 2% Arbutin sẽ giúp dưỡng trắng da từ sâu bên trong nhằm cải thiện tất cả các vấn đề sắc tố da như thâm, sạm nám, tối màu, xỉn màu,... Đồng thời duy trì độ ẩm, cũng như giúp kiểm soát dầu, mụn & thu nhỏ lỗ chân lông một cách tối ưu hơn.', 'South Korea', 'South Korea', 'Công khai', 0, 1, NULL),
(25, 1, 'Thanh Lăn Serum CELLBN Hỗ Trợ Cải Thiện Nếp Nhăn Giúp Da Săn Chắc Peptide, Collagen & Adenosine 15ml', 'thanh-lan-serum-cellbn-ho-tro-cai-thien-nep-nhan-giup-da-san-chac-peptide-collagen-adenosine-15ml', 'CELLBN - thương hiệu dược mỹ phẩm Hàn Quốc ra mắt từ năm 2009, đạt TOP 1 thương hiệu do người tiêu dùng bình chọn trên tờ báo lớn uy tín Korea JoongAng Ilbo 2020 - 2022. Tất cả sản phẩm CELLBN đều được sử dụng chất bảo quản từ thảo dược thiên nhiên lành tính, đồng thời hỗ trợ các dưỡng chất khác hoạt động tốt hơn tăng khả năng hấp thụ nuôi dưỡng làn da sáng khoẻ từ bên trong. ', 'South Korea', 'South Korea', 'Công khai', 0, 1, NULL),
(26, 1, 'Nước Tẩy Trang Rửa Mặt Cấp Ẩm Cân Bằng độ pH Trên Da Cell Fusion C Low pH Pharrier Cleansing Water', 'nuoc-tay-trang-rua-mat-cap-am-can-bang-do-ph-tren-da-cell-fusion-c-low-ph-pharrier-cleansing-water', 'Cell Fusion C Low pH pHarrier Cleansing Water có khả năng làm sạch 3 trong 1, vừa làm sạch lớp trang điểm, chống nắng & bụi bẩn, vừa có khả năng cân bằng độ pH và tăng cường hàng rào bảo vệ da, mang đến làn da sạch sẽ và khỏe mạnh ngay sau khi sử dụng.', 'South Korea', 'South Korea', 'Công khai', 15, 2, NULL),
(27, 1, 'Mặt nạ bùn LUVUM Pore Reset Mud Mask giúp làm sạch thu nhỏ lỗ chân lông (miếng lẻ 16g)', 'mat-na-bun-luvum-pore-reset-mud-mask-giup-lam-sach-thu-nho-lo-chan-long-mieng-le-16g', 'Mặt nạ bùn dạng miếng LUVUM Pore Reset Mud Mask kết hợp bùn Bentonite và Kaolin, nhẹ nhàng làm sạch dầu thừa và bã nhờn trên da, thu nhỏ lỗ chân lông và cải thiện kết cấu da chỉ sau một lần sử dụng. Thành phần PHA giúp tẩy da chết dịu nhẹ, mang lại làn da mịn màng, sáng khỏe, không gây khô hay kích ứng.', 'South Korea', 'South Korea', 'Công khai', 0, 6, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `noidung` text NOT NULL,
  `lienket` text DEFAULT NULL,
  `trangthai` enum('Đã đọc','Chưa đọc','Tạm ẩn') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `ten` text NOT NULL,
  `slug` text NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT 'logo_shop.jpg',
  `trangthai` enum('Hoạt động','Tạm khóa','Dừng hoạt động') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `ten`, `slug`, `logo`, `trangthai`) VALUES
(1, 'Trung Tâm Bán Hàng Siêu Thị Vina', 'trung-tam-ban-hang-sieu-thi-vina', 'trung-tam-ban-hang-sieu-thi-vina.png', 'Hoạt động'),
(2, 'C\'CHOI', 'cchoi', 'thuonghieu-logo.png', 'Hoạt động'),
(3, 'ACACI LABS', 'acaci-labs', 'thuonghieu-logo.png', 'Hoạt động');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tukhoa`
--

CREATE TABLE `tukhoa` (
  `id` int(11) NOT NULL,
  `tukhoa` text NOT NULL,
  `luottruycap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tukhoa`
--

INSERT INTO `tukhoa` (`id`, `tukhoa`, `luottruycap`) VALUES
(1, 'Máy massage', 5),
(2, 'Điện gia dụng', 1),
(3, 'Đồ chơi minecraft', 153),
(4, 'Sách hán ngữ 3', 597),
(5, 'Huyndai decor', 62),
(6, 'Điện nội thất', 125),
(7, 'Móc khóa genshin', 246),
(8, 'Phiền Muộn Của Afratu', 13),
(9, 'Kẹo', 50),
(10, 'Sâm Ngọc Linh', 626),
(11, 'Thầy Hộ', 1),
(12, 'y tế', 1),
(13, 'abena', 77),
(14, 'a', 39),
(15, 'abena pad', 6),
(16, 'thiết bị y tế', 3),
(17, 'cchoi', 1),
(18, 'c\'choi', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeuthich`
--

CREATE TABLE `yeuthich` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `bienthe`
--
ALTER TABLE `bienthe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `id_loaibienthe` (`id_loaibienthe`);

--
-- Chỉ mục cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bienthe` (`id_bienthe`),
  ADD KEY `id_donhang` (`id_donhang`);

--
-- Chỉ mục cho bảng `chuongtrinh`
--
ALTER TABLE `chuongtrinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `id_chitietdonhang` (`id_chitietdonhang`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_danhmuc` (`id_danhmuc`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `diachi_giaohang`
--
ALTER TABLE `diachi_giaohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`),
  ADD KEY `id_magiamgia` (`id_magiamgia`),
  ADD KEY `id_phuongthuc` (`id_phuongthuc`),
  ADD KEY `id_diachinguoidung` (`id_diachinguoidung`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bienthe` (`id_bienthe`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `loaibienthe`
--
ALTER TABLE `loaibienthe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phuongthuc`
--
ALTER TABLE `phuongthuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quatang_sukien`
--
ALTER TABLE `quatang_sukien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bienthe` (`id_bienthe`),
  ADD KEY `id_sukien` (`id_chuongtrinh`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cuahang` (`id_thuonghieu`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tukhoa`
--
ALTER TABLE `tukhoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_nguoidung` (`id_nguoidung`,`id_sanpham`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bienthe`
--
ALTER TABLE `bienthe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `chuongtrinh`
--
ALTER TABLE `chuongtrinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `loaibienthe`
--
ALTER TABLE `loaibienthe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `quatang_sukien`
--
ALTER TABLE `quatang_sukien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tukhoa`
--
ALTER TABLE `tukhoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `bienthe`
--
ALTER TABLE `bienthe`
  ADD CONSTRAINT `bienthe_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `bienthe_ibfk_2` FOREIGN KEY (`id_loaibienthe`) REFERENCES `loaibienthe` (`id`);

--
-- Các ràng buộc cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD CONSTRAINT `chitiet_donhang_ibfk_1` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe` (`id`),
  ADD CONSTRAINT `chitiet_donhang_ibfk_2` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `danhgia_ibfk_3` FOREIGN KEY (`id_chitietdonhang`) REFERENCES `chitiet_donhang` (`id`);

--
-- Các ràng buộc cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  ADD CONSTRAINT `danhmuc_sanpham_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id`),
  ADD CONSTRAINT `danhmuc_sanpham_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `diachi_giaohang`
--
ALTER TABLE `diachi_giaohang`
  ADD CONSTRAINT `diachi_giaohang_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`id_magiamgia`) REFERENCES `magiamgia` (`id`),
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`id_phuongthuc`) REFERENCES `phuongthuc` (`id`),
  ADD CONSTRAINT `donhang_ibfk_4` FOREIGN KEY (`id_diachinguoidung`) REFERENCES `diachi_giaohang` (`id`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe` (`id`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  ADD CONSTRAINT `hinhanh_sanpham_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `quatang_sukien`
--
ALTER TABLE `quatang_sukien`
  ADD CONSTRAINT `quatang_sukien_ibfk_1` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe` (`id`),
  ADD CONSTRAINT `quatang_sukien_ibfk_3` FOREIGN KEY (`id_chuongtrinh`) REFERENCES `chuongtrinh` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_thuonghieu`) REFERENCES `thuonghieu` (`id`);

--
-- Các ràng buộc cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD CONSTRAINT `yeuthich_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `yeuthich_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
