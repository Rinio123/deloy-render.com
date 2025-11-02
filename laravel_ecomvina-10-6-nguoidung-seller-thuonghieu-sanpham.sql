-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 06, 2025 lúc 01:41 PM
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
-- Cơ sở dữ liệu: `laravel_ecomvina`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ai_conversations`
--

CREATE TABLE `ai_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_input` text NOT NULL,
  `ai_response` text NOT NULL,
  `intent` varchar(255) DEFAULT NULL,
  `sentiment` varchar(255) DEFAULT NULL,
  `confidence` double(8,2) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ai_intents`
--

CREATE TABLE `ai_intents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ai_responses`
--

CREATE TABLE `ai_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intent_id` bigint(20) UNSIGNED NOT NULL,
  `response` text NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ai_training_data`
--

CREATE TABLE `ai_training_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `intent_id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anh_sanpham`
--

CREATE TABLE `anh_sanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media` text NOT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `id_sanpham` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `anh_sanpham`
--

INSERT INTO `anh_sanpham` (`id`, `media`, `trangthai`, `id_sanpham`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'yensaonest100_70ml_2.jpg', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'yensaonest100_70ml_3.jpg', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'sua-tam-nuoc-hoa-duong-da-parisian-chic-for-her-265ml-1.jpg', 'ngung_hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'sua-tam-nuoc-hoa-duong-da-parisian-chic-for-her-265ml-2.jpg', 'ngung_hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 'sua-tam-nuoc-hoa-duong-da-parisian-chic-for-her-265ml-3.jpg', 'ngung_hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 'ca-phe-dua-cappuccino-collagen-giup-tinh-tao-dep-da-20-goi-x-18g-1.jpg', 'cho_duyet', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 'ca-phe-dua-cappuccino-collagen-giup-tinh-tao-dep-da-20-goi-x-18g-2.jpg', 'cho_duyet', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 'ca-phe-dua-cappuccino-collagen-giup-tinh-tao-dep-da-20-goi-x-18g-3.jpg', 'cho_duyet', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 'ca-phe-dua-cappuccino-collagen-giup-tinh-tao-dep-da-20-goi-x-18g-4.jpg', 'cho_duyet', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 'ca-phe-dua-cappuccino-collagen-giup-tinh-tao-dep-da-20-goi-x-18g-5.jpg', 'cho_duyet', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-1.jpg', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(12, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-2.jpg', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(13, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-3.jpg', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(14, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-4.jpg', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(15, 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg-5.jpg', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_quangcao`
--

CREATE TABLE `banner_quangcao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vitri` varchar(255) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `duongdan` varchar(255) NOT NULL,
  `tieude` mediumtext NOT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong') NOT NULL DEFAULT 'hoat_dong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner_quangcao`
--

INSERT INTO `banner_quangcao` (`id`, `vitri`, `hinhanh`, `duongdan`, `tieude`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'header', 'banner1.jpg', 'https://fpt.edu.vn', 'Chào mừng đến với FPT Polytechnic', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(2, 'sidebar', 'banner2.jpg', 'https://shopee.vn', 'Mua sắm giảm giá 50%', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(3, 'footer', 'banner3.jpg', 'https://tiki.vn', 'Flash Sale cuối tuần', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(4, 'main', 'banner4.jpg', 'https://lazada.vn', 'Khuyến mãi đặc biệt hôm nay', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(5, 'popup', 'banner5.jpg', 'https://tiktok.com', 'Theo dõi chúng tôi trên TikTok', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bienthe_sp`
--

CREATE TABLE `bienthe_sp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gia` decimal(15,2) NOT NULL,
  `giagiam` decimal(15,2) NOT NULL DEFAULT 0.00,
  `soluong` int(11) NOT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `uutien` int(11) NOT NULL COMMENT 'Độ ưu tiên hiển thị của biến thể (số nhỏ hơn = ưu tiên cao hơn)',
  `id_sanpham` bigint(20) UNSIGNED NOT NULL,
  `id_tenloai` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bienthe_sp`
--

INSERT INTO `bienthe_sp` (`id`, `gia`, `giagiam`, `soluong`, `trangthai`, `uutien`, `id_sanpham`, `id_tenloai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4281285.00, 2207719.00, 170, 'hoat_dong', 2, 17, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 4683347.00, 2350556.00, 5, 'hoat_dong', 2, 17, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 1750965.00, 524204.00, 103, 'hoat_dong', 2, 15, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 2199845.00, 456946.00, 178, 'hoat_dong', 1, 7, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 3101190.00, 0.00, 194, 'hoat_dong', 5, 13, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 3465088.00, 0.00, 99, 'hoat_dong', 5, 16, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 466259.00, 352786.00, 9, 'hoat_dong', 2, 13, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 3210616.00, 1747865.00, 40, 'hoat_dong', 3, 17, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 699294.00, 66628.00, 46, 'hoat_dong', 5, 12, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 4275200.00, 4242522.00, 119, 'hoat_dong', 1, 18, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 3175598.00, 0.00, 158, 'hoat_dong', 5, 15, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(12, 2570790.00, 1243191.00, 51, 'hoat_dong', 1, 7, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(13, 2163694.00, 1286626.00, 126, 'hoat_dong', 2, 5, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(14, 842366.00, 0.00, 133, 'hoat_dong', 5, 18, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(15, 693986.00, 600077.00, 170, 'hoat_dong', 2, 5, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(16, 2971422.00, 0.00, 142, 'hoat_dong', 1, 14, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(17, 210192.00, 102814.00, 152, 'hoat_dong', 4, 15, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(18, 4622840.00, 0.00, 7, 'hoat_dong', 4, 12, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(19, 1670564.00, 978605.00, 12, 'hoat_dong', 4, 11, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(20, 4820898.00, 0.00, 127, 'hoat_dong', 1, 2, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(21, 3339471.00, 0.00, 199, 'hoat_dong', 1, 18, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(22, 4844391.00, 2489697.00, 31, 'hoat_dong', 3, 6, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(23, 609324.00, 0.00, 185, 'hoat_dong', 3, 14, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(24, 1127499.00, 0.00, 78, 'hoat_dong', 3, 16, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(25, 142666.00, 0.00, 134, 'hoat_dong', 1, 1, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(26, 1591179.00, 1065147.00, 13, 'hoat_dong', 5, 20, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(27, 279636.00, 0.00, 199, 'hoat_dong', 1, 20, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(28, 816350.00, 526208.00, 131, 'hoat_dong', 1, 15, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(29, 2702636.00, 0.00, 97, 'hoat_dong', 1, 3, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(30, 4887771.00, 0.00, 87, 'hoat_dong', 5, 20, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gia` decimal(15,2) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` decimal(15,2) NOT NULL,
  `id_donhang` bigint(20) UNSIGNED NOT NULL,
  `id_bienthe` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `gia`, `soluong`, `tongtien`, `id_donhang`, `id_bienthe`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3339471.00, 5, 16697355.00, 4, 21, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 4622840.00, 4, 18491360.00, 7, 18, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 3465088.00, 4, 13860352.00, 7, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 524204.00, 4, 2096816.00, 7, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 1243191.00, 3, 3729573.00, 8, 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 1286626.00, 2, 2573252.00, 8, 13, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 2489697.00, 4, 9958788.00, 8, 22, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 102814.00, 5, 514070.00, 8, 17, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 524204.00, 4, 2096816.00, 2, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 3175598.00, 2, 6351196.00, 2, 11, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 2702636.00, 2, 5405272.00, 2, 29, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(12, 1747865.00, 4, 6991460.00, 2, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(13, 3101190.00, 4, 12404760.00, 2, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(14, 2207719.00, 1, 2207719.00, 6, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(15, 2971422.00, 3, 8914266.00, 6, 16, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(16, 2702636.00, 5, 13513180.00, 6, 29, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(17, 279636.00, 4, 1118544.00, 6, 27, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(18, 609324.00, 5, 3046620.00, 6, 23, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(19, 1065147.00, 5, 5325735.00, 3, 26, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(20, 2702636.00, 3, 8107908.00, 3, 29, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(21, 1127499.00, 5, 5637495.00, 9, 24, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(22, 2489697.00, 1, 2489697.00, 9, 22, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(23, 4820898.00, 1, 4820898.00, 9, 20, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(24, 4820898.00, 5, 24104490.00, 1, 20, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(25, 1243191.00, 3, 3729573.00, 5, 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(26, 526208.00, 3, 1578624.00, 10, 28, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(27, 4242522.00, 3, 12727566.00, 10, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(28, 600077.00, 5, 3000385.00, 10, 15, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_giohang`
--

CREATE TABLE `chitiet_giohang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL DEFAULT 1,
  `tongtien` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gio_hang_id` bigint(20) UNSIGNED NOT NULL,
  `bienthe_sp_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_giohang`
--

INSERT INTO `chitiet_giohang` (`id`, `soluong`, `tongtien`, `created_at`, `updated_at`, `gio_hang_id`, `bienthe_sp_id`) VALUES
(1, 3, 9303570.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 11, 5),
(2, 2, 6930176.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 11, 6),
(3, 2, 6421232.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 11, 8),
(4, 3, 9303570.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 10, 5),
(5, 5, 3469930.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 10, 15),
(6, 2, 4399690.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 4, 4),
(7, 3, 838908.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 4, 27),
(8, 3, 14663313.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 4, 30),
(9, 5, 713330.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 2, 25),
(10, 1, 3175598.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 1, 11),
(11, 5, 4211830.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 1, 14),
(12, 1, 1670564.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 1, 19),
(13, 5, 15505950.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 9, 5),
(14, 1, 142666.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 9, 25),
(15, 1, 2971422.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 7, 16),
(16, 4, 3369464.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 8, 14),
(17, 2, 1387972.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 8, 15),
(18, 1, 609324.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 8, 23),
(19, 5, 3046620.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 3, 23),
(20, 4, 570664.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 5, 25),
(21, 4, 6682256.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', 6, 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongtrinhsukien`
--

CREATE TABLE `chuongtrinhsukien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `media` text DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `ngaybatdau` datetime NOT NULL,
  `ngayketthuc` datetime NOT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuongtrinhsukien`
--

INSERT INTO `chuongtrinhsukien` (`id`, `ten`, `media`, `mota`, `ngaybatdau`, `ngayketthuc`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tuần Lễ Vàng - Flash Sale 9.9', 'https://example.com/media/flashsale99.png', 'Sự kiện giảm giá lớn nhất cho sản phẩm Droppi màu vàng trên App Store - chỉ diễn ra trong 1 ngày!', '2025-09-09 00:00:00', '2025-09-09 23:59:59', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'Tuần Lễ Vàng - Tuần lễ Vàng', 'https://example.com/media/tuanlevang.png', 'Chương trình khuyến mãi đặc biệt kéo dài 7 ngày dành riêng cho Droppi vàng.', '2025-10-01 00:00:00', '2025-10-07 23:59:59', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'Tuần Lễ Vàng - Black Friday 2025', 'https://example.com/media/blackfriday.png', 'Giảm giá sâu cho các sản phẩm Droppi màu vàng trên App Store nhân dịp Black Friday.', '2025-11-28 00:00:00', '2025-11-28 23:59:59', 'cho_duyet', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'Tuần Lễ Vàng - Mua 1 Tặng 1', 'https://example.com/media/mua1tang1.png', 'Mua một sản phẩm Droppi màu vàng tặng thêm một sản phẩm bất kỳ trong danh mục.', '2025-12-01 00:00:00', '2025-12-03 23:59:59', 'ngung_hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 'Giáng Sinh An Lành 2025', 'https://example.com/media/giangsinh.png', 'Khuyến mãi quà tặng hấp dẫn cho mùa Giáng Sinh.', '2025-12-20 00:00:00', '2025-12-26 23:59:59', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 'Tết Nguyên Đán 2026 - Siêu Sale', 'https://example.com/media/tet.png', 'Đón Tết cùng ưu đãi đặc biệt cho khách hàng thân thiết.', '2026-01-25 00:00:00', '2026-02-05 23:59:59', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 'Valentine Ngọt Ngào 2026', 'https://example.com/media/valentine.png', 'Ưu đãi lãng mạn cho các cặp đôi.', '2026-02-10 00:00:00', '2026-02-15 23:59:59', 'cho_duyet', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 'Ngày Quốc Tế Phụ Nữ 8/3', 'https://example.com/media/phunu.png', 'Tôn vinh phái đẹp với hàng ngàn ưu đãi.', '2026-03-05 00:00:00', '2026-03-08 23:59:59', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 'Ngày Cá Tháng Tư - Deal Bất Ngờ', 'https://example.com/media/aprilfool.png', 'Ưu đãi cực sốc, chỉ có trong ngày 1/4.', '2026-04-01 00:00:00', '2026-04-01 23:59:59', 'ngung_hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 'Mùa Hè Sôi Động 2026', 'https://example.com/media/summer.png', 'Chào hè rực rỡ với nhiều chương trình khuyến mãi hấp dẫn.', '2026-06-01 00:00:00', '2026-06-30 23:59:59', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 'Siêu Sale Mùa Thu 2026', 'https://example.com/media/autumn.png', 'Ưu đãi hấp dẫn trong mùa thu cho các sản phẩm hot.', '2026-09-15 00:00:00', '2026-09-25 23:59:59', 'cho_duyet', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(12, 'Ngày Nhà Giáo Việt Nam 20/11', 'https://example.com/media/nhagiaovietnam.png', 'Tri ân thầy cô với quà tặng và ưu đãi đặc biệt.', '2026-11-18 00:00:00', '2026-11-21 23:59:59', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(13, 'Noel 2026 - Sale Cuối Năm', 'https://example.com/media/noel.png', 'Giáng sinh an lành với siêu khuyến mãi cuối năm.', '2026-12-20 00:00:00', '2026-12-27 23:59:59', 'ngung_hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongtrinhsukien_danhmuc`
--

CREATE TABLE `chuongtrinhsukien_danhmuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_chuongtrinhsukien` bigint(20) UNSIGNED NOT NULL,
  `id_danhmuc` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuongtrinhsukien_danhmuc`
--

INSERT INTO `chuongtrinhsukien_danhmuc` (`id`, `id_chuongtrinhsukien`, `id_danhmuc`, `created_at`, `updated_at`) VALUES
(1, 5, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(2, 5, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(3, 5, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(4, 10, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(5, 10, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(6, 10, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(7, 10, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(8, 9, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(9, 9, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(10, 9, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(11, 9, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(12, 12, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(13, 12, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(14, 12, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(15, 8, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(16, 13, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(17, 11, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(18, 11, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(19, 11, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(20, 11, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(21, 11, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(22, 6, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(23, 6, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(24, 3, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(25, 3, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(26, 1, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(27, 4, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(28, 4, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(29, 4, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(30, 4, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(31, 4, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(32, 2, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(33, 7, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia`
--

CREATE TABLE `danh_gia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diem` tinyint(4) NOT NULL,
  `noidung` mediumtext DEFAULT NULL,
  `media` mediumtext DEFAULT NULL COMMENT 'phần nội dung đa phương tiện đi kèm với đánh giá (ảnh/video).',
  `ngaydang` datetime NOT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `id_sanpham` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gia`
--

INSERT INTO `danh_gia` (`id`, `diem`, `noidung`, `media`, `ngaydang`, `trangthai`, `id_sanpham`, `id_nguoidung`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'https://example.com/reviews/review1.jpg', '2025-10-06 17:45:02', 'hoat_dong', 10, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 4, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review2.jpg', '2025-10-06 17:45:02', 'hoat_dong', 6, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 5, 'Sản phẩm giống hình, giao đúng hẹn.', 'https://example.com/reviews/review3.jpg', '2025-10-06 17:45:02', 'hoat_dong', 3, 13, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 4, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'https://example.com/reviews/review4.jpg', '2025-10-06 17:45:02', 'hoat_dong', 11, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 5, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'https://example.com/reviews/review5.jpg', '2025-10-06 17:45:02', 'hoat_dong', 14, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 3, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'https://example.com/reviews/review6.jpg', '2025-10-06 17:45:02', 'hoat_dong', 5, 20, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 4, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'https://example.com/reviews/review7.jpg', '2025-10-06 17:45:02', 'hoat_dong', 11, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 3, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'https://example.com/reviews/review8.jpg', '2025-10-06 17:45:02', 'hoat_dong', 10, 15, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 5, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'https://example.com/reviews/review9.jpg', '2025-10-06 17:45:02', 'hoat_dong', 6, 19, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 4, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'https://example.com/reviews/review10.jpg', '2025-10-06 17:45:02', 'hoat_dong', 7, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 4, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review11.jpg', '2025-10-06 17:45:02', 'hoat_dong', 14, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(12, 4, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review12.jpg', '2025-10-06 17:45:02', 'hoat_dong', 11, 20, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(13, 3, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'https://example.com/reviews/review13.jpg', '2025-10-06 17:45:02', 'hoat_dong', 16, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(14, 3, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'https://example.com/reviews/review14.jpg', '2025-10-06 17:45:02', 'hoat_dong', 9, 19, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(15, 5, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review15.jpg', '2025-10-06 17:45:02', 'hoat_dong', 1, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(16, 4, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'https://example.com/reviews/review16.jpg', '2025-10-06 17:45:02', 'hoat_dong', 3, 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(17, 5, 'Sản phẩm giống hình, giao đúng hẹn.', 'https://example.com/reviews/review17.jpg', '2025-10-06 17:45:02', 'hoat_dong', 2, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(18, 4, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'https://example.com/reviews/review18.jpg', '2025-10-06 17:45:02', 'hoat_dong', 4, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(19, 5, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review19.jpg', '2025-10-06 17:45:02', 'hoat_dong', 9, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(20, 4, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'https://example.com/reviews/review20.jpg', '2025-10-06 17:45:02', 'hoat_dong', 5, 17, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `media` text NOT NULL DEFAULT 'default-danhmuc.png',
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten`, `media`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sức khỏe', 'suc_khoe.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'Chăm sóc cá nhân', 'cham_soc_ca_nhan.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'Điện máy', 'dien_may.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'Thiết bị y tế', 'thiet_bi_y_te.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 'Bách hóa', 'bach_hoa.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 'Nhà cửa - Đời sống', 'nha_cua.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 'Mẹ và bé', 'me_va_be.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 'Thời trang', 'thoi_trang.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 'Sản phẩm khác', 'san_pham_khac.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 'Làm đẹp', 'lam_dep.png', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi_nguoidung`
--

CREATE TABLE `diachi_nguoidung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `thanhpho` text DEFAULT NULL,
  `xaphuong` text DEFAULT NULL,
  `sonha` text DEFAULT NULL,
  `diachi` mediumtext DEFAULT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diachi_nguoidung`
--

INSERT INTO `diachi_nguoidung` (`id`, `ten`, `sodienthoai`, `thanhpho`, `xaphuong`, `sonha`, `diachi`, `trangthai`, `id_nguoidung`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'User 4', '0987654324,919119073', 'Hà Nội', 'Phường 4', 'Số 4, Đường ABC', 'Số 4, Đường ABC, Phường 4, Q.4, Thành phố Hà Nội', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'User 5', '0987654325,993048796', 'Hồ Chí Minh', 'Phường 5', 'Số 5, Đường ABC', 'Số 5, Đường ABC, Phường 5, Q.5, Thành phố Hồ Chí Minh', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'User 6', '0987654326,911974917', 'Hà Nội', 'Phường 6', 'Số 6, Đường ABC', 'Số 6, Đường ABC, Phường 6, Q.6, Thành phố Hà Nội', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'User 7', '0987654327,996378118', 'Hồ Chí Minh', 'Phường 7', 'Số 7, Đường ABC', 'Số 7, Đường ABC, Phường 7, Q.7, Thành phố Hồ Chí Minh', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 'User 8', '0987654328,976604684', 'Hà Nội', 'Phường 8', 'Số 8, Đường ABC', 'Số 8, Đường ABC, Phường 8, Q.8, Thành phố Hà Nội', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 'User 9', '0987654329,956845151', 'Hồ Chí Minh', 'Phường 9', 'Số 9, Đường ABC', 'Số 9, Đường ABC, Phường 9, Q.9, Thành phố Hồ Chí Minh', 'hoat_dong', 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 'User 10', '09876543210,929069703', 'Hà Nội', 'Phường 10', 'Số 10, Đường ABC', 'Số 10, Đường ABC, Phường 10, Q.10, Thành phố Hà Nội', 'hoat_dong', 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 'User 11', '09876543211,943034341', 'Hồ Chí Minh', 'Phường 11', 'Số 11, Đường ABC', 'Số 11, Đường ABC, Phường 11, Q.11, Thành phố Hồ Chí Minh', 'hoat_dong', 11, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 'User 12', '09876543212,938077627', 'Hà Nội', 'Phường 12', 'Số 12, Đường ABC', 'Số 12, Đường ABC, Phường 12, Q.12, Thành phố Hà Nội', 'hoat_dong', 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 'User 13', '09876543213,960545773', 'Hồ Chí Minh', 'Phường 13', 'Số 13, Đường ABC', 'Số 13, Đường ABC, Phường 13, Q.13, Thành phố Hồ Chí Minh', 'hoat_dong', 13, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 'User 14', '09876543214,937988222', 'Hà Nội', 'Phường 14', 'Số 14, Đường ABC', 'Số 14, Đường ABC, Phường 14, Q.14, Thành phố Hà Nội', 'hoat_dong', 14, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(12, 'User 15', '09876543215,919997356', 'Hồ Chí Minh', 'Phường 15', 'Số 15, Đường ABC', 'Số 15, Đường ABC, Phường 15, Q.15, Thành phố Hồ Chí Minh', 'hoat_dong', 15, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(13, 'User 16', '09876543216,914157069', 'Hà Nội', 'Phường 16', 'Số 16, Đường ABC', 'Số 16, Đường ABC, Phường 16, Q.16, Thành phố Hà Nội', 'hoat_dong', 16, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(14, 'User 17', '09876543217,943190805', 'Hồ Chí Minh', 'Phường 17', 'Số 17, Đường ABC', 'Số 17, Đường ABC, Phường 17, Q.17, Thành phố Hồ Chí Minh', 'hoat_dong', 17, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(15, 'User 18', '09876543218,923569962', 'Hà Nội', 'Phường 18', 'Số 18, Đường ABC', 'Số 18, Đường ABC, Phường 18, Q.18, Thành phố Hà Nội', 'hoat_dong', 18, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(16, 'User 19', '09876543219,997343903', 'Hồ Chí Minh', 'Phường 19', 'Số 19, Đường ABC', 'Số 19, Đường ABC, Phường 19, Q.19, Thành phố Hồ Chí Minh', 'hoat_dong', 19, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(17, 'User 20', '09876543220,977858483', 'Hà Nội', 'Phường 20', 'Số 20, Đường ABC', 'Số 20, Đường ABC, Phường 20, Q.20, Thành phố Hà Nội', 'hoat_dong', 20, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(18, 'Anonymous', '0992654321,0999999999', 'Hồ Chí Minh', 'Phường 1', 'Số 1, Đường Test', 'Số 1, Đường Test, Phường 1, Q.1, Thành phố Hồ Chí Minh', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_donhang` varchar(255) DEFAULT NULL,
  `tongtien` decimal(15,2) NOT NULL,
  `tongsoluong` int(11) NOT NULL,
  `ghichu` mediumtext DEFAULT NULL,
  `ngaytao` datetime NOT NULL,
  `trangthai` enum('cho_xac_nhan','da_xac_nhan','dang_giao','da_giao','da_huy') NOT NULL DEFAULT 'cho_xac_nhan' COMMENT 'Trạng thái đơn hàng',
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `id_magiamgia` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `ma_donhang`, `tongtien`, `tongsoluong`, `ghichu`, `ngaytao`, `trangthai`, `id_nguoidung`, `id_magiamgia`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DH0001', 962814.00, 1, 'Ghi chú cho đơn hàng số 1', '2025-09-21 17:45:02', 'cho_xac_nhan', 8, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'DH0002', 2943504.00, 8, 'Ghi chú cho đơn hàng số 2', '2025-10-06 17:45:02', 'cho_xac_nhan', 16, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'DH0003', 1139056.00, 8, 'Ghi chú cho đơn hàng số 3', '2025-09-20 17:45:02', 'da_xac_nhan', 18, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'DH0004', 1337364.00, 6, 'Ghi chú cho đơn hàng số 4', '2025-10-01 17:45:02', 'da_giao', 15, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 'DH0005', 654234.00, 7, 'Ghi chú cho đơn hàng số 5', '2025-09-08 17:45:02', 'da_xac_nhan', 6, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 'DH0006', 4049316.00, 9, 'Ghi chú cho đơn hàng số 6', '2025-09-14 17:45:02', 'da_giao', 10, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 'DH0007', 1433340.00, 9, 'Ghi chú cho đơn hàng số 7', '2025-09-20 17:45:02', 'cho_xac_nhan', 20, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 'DH0008', 713168.00, 2, 'Ghi chú cho đơn hàng số 8', '2025-09-10 17:45:02', 'cho_xac_nhan', 19, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 'DH0009', 5650554.00, 6, 'Ghi chú cho đơn hàng số 9', '2025-09-22 17:45:02', 'da_huy', 6, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 'DH0010', 5102676.00, 6, 'Ghi chú cho đơn hàng số 10', '2025-09-24 17:45:02', 'da_xac_nhan', 16, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED DEFAULT NULL,
  `guest_id` char(36) DEFAULT NULL,
  `tongtien` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `id_nguoidung`, `guest_id`, `tongtien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, NULL, 9057992.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 7, NULL, 713330.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 13, NULL, 3046620.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 5, NULL, 19901911.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 17, NULL, 570664.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 18, NULL, 6682256.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 12, NULL, 2971422.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 12, NULL, 5366760.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 8, NULL, 15648616.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 4, NULL, 12773500.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 1, NULL, 22654978.00, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanhvi_nguoidung`
--

CREATE TABLE `hanhvi_nguoidung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED DEFAULT NULL,
  `id_sanpham` bigint(20) UNSIGNED DEFAULT NULL,
  `id_bienthe` bigint(20) UNSIGNED DEFAULT NULL,
  `hanhdong` enum('xem','click_bienthe','them_gio','mua','danh_gia') NOT NULL,
  `ghichu` text DEFAULT NULL COMMENT 'Thông tin thêm về hành vi nếu cần',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_bienthe`
--

CREATE TABLE `loai_bienthe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_bienthe`
--

INSERT INTO `loai_bienthe` (`id`, `ten`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'lọ', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'hộp', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'chai', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'Chiếc', 'hoat_dong', '2025-08-23 21:00:41', '2025-08-23 21:00:41', NULL),
(5, 'Thùng', 'hoat_dong', '2025-08-23 21:13:36', '2025-08-23 21:13:36', NULL),
(6, 'Cái', 'hoat_dong', '2025-08-23 21:13:36', '2025-08-23 21:13:36', NULL),
(7, 'hehe', 'hoat_dong', '2025-08-23 21:19:47', '2025-08-23 21:19:47', NULL),
(8, 'haha', 'hoat_dong', '2025-08-23 21:20:19', '2025-08-23 21:20:19', NULL),
(9, 'Lọ (265ml)', 'hoat_dong', '2025-08-23 22:20:14', '2025-08-23 22:20:14', NULL),
(10, 'Hộp (30 ống)', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ma_giamgia`
--

CREATE TABLE `ma_giamgia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `magiamgia` varchar(255) NOT NULL,
  `mota` mediumtext DEFAULT NULL,
  `giatri` decimal(15,2) NOT NULL,
  `dieukien` varchar(255) NOT NULL,
  `ngaybatdau` datetime NOT NULL,
  `ngayketthuc` datetime NOT NULL,
  `trangthai` enum('hoat_dong','het_han','tam_khoa','da_xoa') NOT NULL DEFAULT 'hoat_dong' COMMENT 'Trạng thái của mã giảm giá',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'lịch sử các mã giảm giá đã từng tạo (phục vụ báo cáo, thống kê)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ma_giamgia`
--

INSERT INTO `ma_giamgia` (`id`, `magiamgia`, `mota`, `giatri`, `dieukien`, `ngaybatdau`, `ngayketthuc`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FLASHSALE99', 'Giảm 99K cho đơn hàng trong ngày 9.9', 99000.00, 'Áp dụng cho đơn hàng từ 500.000đ', '2025-09-09 00:00:00', '2025-09-09 00:00:00', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'NEWUSER100', 'Voucher 100K cho khách hàng mới', 100000.00, 'Chỉ áp dụng cho tài khoản đăng ký mới', '2025-09-01 00:00:00', '2025-12-31 00:00:00', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'FREESHIP50', 'Giảm tối đa 50K phí ship', 50000.00, 'Áp dụng cho tất cả đơn hàng', '2025-09-01 00:00:00', '2025-11-30 00:00:00', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'BIRTHDAY200', 'Giảm 200K cho khách hàng sinh nhật trong tháng', 200000.00, 'Áp dụng trong tháng sinh nhật, đơn hàng từ 1 triệu', '2025-01-01 00:00:00', '2025-12-31 00:00:00', 'tam_khoa', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 'BLACKFRIDAY25', 'Giảm 25% cho toàn bộ đơn hàng Black Friday', 250000.00, 'Đơn hàng từ 1 triệu', '2025-11-28 00:00:00', '2025-11-28 00:00:00', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 'XMAS150', 'Giáng Sinh - Giảm 150K', 150000.00, 'Áp dụng cho tất cả sản phẩm Droppi vàng', '2025-12-20 00:00:00', '2025-12-25 00:00:00', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 'CLEARANCE50', 'Giảm 50% cho hàng tồn kho', 500000.00, 'Áp dụng cho danh mục \"Điện máy\"', '2025-08-01 00:00:00', '2025-08-31 00:00:00', 'het_han', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 'VIPCUSTOMER20', 'Giảm 20% cho khách VIP', 200000.00, 'Chỉ áp dụng cho tài khoản VIP', '2025-09-01 00:00:00', '2025-12-31 00:00:00', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 'HALLOWEEN66', 'Halloween Sale - Giảm 66K', 66000.00, 'Đơn hàng từ 399K', '2025-10-31 00:00:00', '2025-10-31 00:00:00', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 'TET2026', 'Tết 2026 - Giảm 300K', 300000.00, 'Áp dụng cho đơn từ 2 triệu', '2026-01-15 00:00:00', '2026-02-05 00:00:00', 'da_xoa', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2025_09_17_232154_create_nguoi_dung_table', 1),
(5, '2025_09_17_233959_create_diachi_nguoidung_table', 1),
(6, '2025_09_17_235133_create_thongtin_nguoibanhang_table', 1),
(7, '2025_09_17_235134_create_thuong_hieu_table', 1),
(8, '2025_09_18_000154_create_loai_bienthe_table', 1),
(9, '2025_09_18_001910_create_danh_muc_table', 1),
(10, '2025_09_18_002414_create_san_pham_table', 1),
(11, '2025_09_18_002523_create_gio_hang_table', 1),
(12, '2025_09_18_002524_create_bienthe_sp_table', 1),
(13, '2025_09_18_002543_create_sanpham_danhmuc_table', 1),
(14, '2025_09_18_003946_create_chuongtrinhsukien_table', 1),
(15, '2025_09_18_004441_create_quatang_khuyenmai_table', 1),
(16, '2025_09_18_005251_create_sukien_khuyenmai_table', 1),
(17, '2025_09_18_005904_create_danh_gia_table', 1),
(18, '2025_09_18_011306_create_yeu_thich_table', 1),
(19, '2025_09_18_011826_create_ma_giamgia_table', 1),
(20, '2025_09_18_012705_create_don_hang_table', 1),
(21, '2025_09_18_013303_create_chitiet_donhang_table', 1),
(22, '2025_09_18_013652_create_thanh_toan_table', 1),
(23, '2025_09_18_085022_create_anh_sanpham_table', 1),
(24, '2025_09_18_113543_create_hanhvi_nguoidung_table', 1),
(25, '2025_09_20_104150_create_password_resets_table', 1),
(26, '2025_09_21_103939_create_ai_training_data_table', 1),
(27, '2025_09_25_131814_create_chitiet_giohang_table', 1),
(28, '2025_09_27_235319_reset_all_tables', 1),
(29, '2025_10_01_053346_create_tu_khoa_table', 1),
(30, '2025_10_01_084452_create_banner_quangcao_table', 1),
(31, '2025_10_01_084803_create_thongbao_table', 1),
(32, '2025_10_01_092404_create_chuongtrinhsukien_danhmuc_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `hoten` varchar(255) DEFAULT NULL,
  `gioitinh` enum('nam','nữ') NOT NULL DEFAULT 'nam' COMMENT 'Giới tính',
  `ngaysinh` date DEFAULT NULL,
  `sodienthoai` varchar(15) DEFAULT NULL,
  `vaitro` enum('user','admin','assistant','anonymous') NOT NULL DEFAULT 'user',
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `email`, `email_verified_at`, `password`, `avatar`, `hoten`, `gioitinh`, `ngaysinh`, `sodienthoai`, `vaitro`, `trangthai`, `profile_photo_path`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin@example.com', NULL, '$2y$12$kKBYWXsSgyXhq0PMRZ2JzuuzfUfEW3c91wzCw8EMRp68cw7a.hssO', 'https://multiavatar.com/api/admin.png', 'Admin', 'nam', '2000-12-13', '0997654321', 'admin', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(2, 'assistant@example.com', NULL, '$2y$12$aEYUOZvfd8cqczhDgwOahebXwMTOezeKXgmJA4jqeZtxl4dotRPiK', 'https://multiavatar.com/api/assistant.png', 'Assistant', 'nam', '2000-11-11', '0991654321', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(3, 'anonymous@example.com', NULL, '$2y$12$ZB99vi43rppsyslyg4TvaumHkXmlwkZ42l3gohGKTSY/e0jNsMmGq', 'https://multiavatar.com/api/anonymous.png', 'Anonymous', 'nam', '2000-10-10', '0992654321', 'anonymous', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(4, 'user4@example.com', NULL, '$2y$12$afyVR0aw/reUC6fHisDNJOlX7C.5gaC9.A46mjEzG6zJRr0ivhfYu', 'https://i.pravatar.cc/150?img=4', 'User 4', 'nam', '2000-05-05', '0987654324', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(5, 'user5@example.com', NULL, '$2y$12$AQDkanphTIuU5x/8ow3AoeLngE4Pxv4U3BqfAX2EA5cvyx3hShwAa', 'https://i.pravatar.cc/150?img=5', 'User 5', 'nữ', '2000-06-06', '0987654325', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(6, 'user6@example.com', NULL, '$2y$12$Wfx0Z39TZuvplATYS4k/IeFRpf2q/J6dFZClL6bmmdQhmE9EjhPk6', 'https://i.pravatar.cc/150?img=6', 'User 6', 'nam', '2000-07-07', '0987654326', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(7, 'user7@example.com', NULL, '$2y$12$xChZnfcmx4hk3/n1pEoUVer/V4mSr9jRphRb0D9OlmuSotiJRV1Au', 'https://i.pravatar.cc/150?img=7', 'User 7', 'nữ', '2000-08-08', '0987654327', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(8, 'user8@example.com', NULL, '$2y$12$PzonQLI0jAaiAPCYYfIsjOaV0i5TbQopVTE6ZSlJtNEJTAWFHo/si', 'https://i.pravatar.cc/150?img=8', 'User 8', 'nam', '2000-09-09', '0987654328', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(9, 'user9@example.com', NULL, '$2y$12$/bGaunHcF.HVIJI1HzRisuSQvnGkC7iBYjH/ETDTnscYie9i9Juvi', 'https://i.pravatar.cc/150?img=9', 'User 9', 'nữ', '2000-10-10', '0987654329', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(10, 'user10@example.com', NULL, '$2y$12$kO/u4jFrVQkReNSUoSqbOO3EwB6aR9eR4hZ.BrYCWrmnh2omiS.qS', 'https://i.pravatar.cc/150?img=10', 'User 10', 'nam', '2000-11-11', '09876543210', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(11, 'user11@example.com', NULL, '$2y$12$ByEXEqMSwDwhCEf7CJ8kq.yL/CuUXjexdQfIXfpRhSomSJUTJcu6i', 'https://i.pravatar.cc/150?img=11', 'User 11', 'nữ', '2000-12-12', '09876543211', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(12, 'user12@example.com', NULL, '$2y$12$Wpcxo7pAqMilubm/GfZ8GeuM0Hxex2IQUfrMw.0SBzVNkWB3LVsz2', 'https://i.pravatar.cc/150?img=12', 'User 12', 'nam', '2000-01-13', '09876543212', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(13, 'user13@example.com', NULL, '$2y$12$22pLcYi7QzQemQFUg0TzreC3BoEHaCOUAaofdoD/.SN4pysEfsK2m', 'https://i.pravatar.cc/150?img=13', 'User 13', 'nữ', '2000-02-14', '09876543213', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(14, 'user14@example.com', NULL, '$2y$12$Io8e0RhaMz0hcE3O7Z4yZ.nO2na.9OTOVgp17dWEkGBwiwzktVdfO', 'https://i.pravatar.cc/150?img=14', 'User 14', 'nam', '2000-03-15', '09876543214', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(15, 'user15@example.com', NULL, '$2y$12$j/AiatGz9iXKs4Ear0dg7u7l5AVBYxRUvmDpue1r77FAI2oTolvIG', 'https://i.pravatar.cc/150?img=15', 'User 15', 'nữ', '2000-04-16', '09876543215', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(16, 'user16@example.com', NULL, '$2y$12$lw1pPgcP1n7Q4obD4AOnoeys.2SrAvDOnWSieljht4E0ANy0DuG6e', 'https://i.pravatar.cc/150?img=16', 'User 16', 'nam', '2000-05-17', '09876543216', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(17, 'user17@example.com', NULL, '$2y$12$lPZiHm8lUlnPCpjFKWmAWOoTo4Up3/hC3Hb6Vt8Kg.Y3ps0.arM5a', 'https://i.pravatar.cc/150?img=17', 'User 17', 'nữ', '2000-06-18', '09876543217', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(18, 'user18@example.com', NULL, '$2y$12$DlVlbaSELhY/a14d2SG7keaiG8vqmZUGE3afAo377uHit4K7XlonO', 'https://i.pravatar.cc/150?img=18', 'User 18', 'nam', '2000-07-19', '09876543218', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(19, 'user19@example.com', NULL, '$2y$12$lfh9c/FjvdEmLUWTmv9AVuz4I5f6Ht.TS6E1igyEupwop6Js3xzae', 'https://i.pravatar.cc/150?img=19', 'User 19', 'nữ', '2000-08-20', '09876543219', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(20, 'user20@example.com', NULL, '$2y$12$Q9MPoBiddTjCy/filh66tOGxQzyapU.OoIvAQuihZmHnX4Zj0h93G', 'https://i.pravatar.cc/150?img=20', 'User 20', 'nam', '2000-09-21', '09876543220', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(21, 'user21@example.com', NULL, '$2y$12$iUhsICP01KA6k7ytDndKEuV9Pj934Em6uKgz06z4nRCt8ndaQR4Aa', 'https://i.pravatar.cc/150?img=21', 'User 21', 'nữ', '2000-10-22', '09876543221', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(22, 'user22@example.com', NULL, '$2y$12$YsF0aHLvQ02PnNEcwEcuP.BHClL/H0I0nyXNsnGMBbcsofdR.I2u6', 'https://i.pravatar.cc/150?img=22', 'User 22', 'nam', '2000-11-23', '09876543222', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(23, 'user23@example.com', NULL, '$2y$12$tyT3YvIC2LI6C/ZuSoxS8urXK/RAC4qv1OuIKA8b7zPbL2r9sMLSy', 'https://i.pravatar.cc/150?img=23', 'User 23', 'nữ', '2000-12-24', '09876543223', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(24, 'user24@example.com', NULL, '$2y$12$4llKKZguUuadt83RP0u8hehyrxj7rvFaKkjG9Y/5TnnHzM3TxMoai', 'https://i.pravatar.cc/150?img=24', 'User 24', 'nam', '2000-01-25', '09876543224', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(25, 'user25@example.com', NULL, '$2y$12$ezMZiS1/RVy.Whkpz9G92O8uuiVgJhAmsPIntHLw80.MTV9EEESGW', 'https://i.pravatar.cc/150?img=25', 'User 25', 'nữ', '2000-02-26', '09876543225', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(26, 'user26@example.com', NULL, '$2y$12$Nn.c368hzpk/6I3dOyC/Geq/4hyLhTw0dvU1d3koTcBFpcHkl.p3m', 'https://i.pravatar.cc/150?img=26', 'User 26', 'nam', '2000-03-27', '09876543226', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(27, 'user27@example.com', NULL, '$2y$12$NFiisyXlAs.RtImLB13EV.9AFasCu7M7mLHHPfyEF5vdJsNKbMS6C', 'https://i.pravatar.cc/150?img=27', 'User 27', 'nữ', '2000-04-28', '09876543227', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(28, 'user28@example.com', NULL, '$2y$12$jJcLEEUkGKvyKmSso9u7SOjuMR9CL/ZPkUxnepl5vUCoakpLfPHTi', 'https://i.pravatar.cc/150?img=28', 'User 28', 'nam', '2000-05-01', '09876543228', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(29, 'user29@example.com', NULL, '$2y$12$vpojxzno9ZD1byiYX5CFf.c9FKOMK5L9Bg8v4tGSDatlK8BvuLR4C', 'https://i.pravatar.cc/150?img=29', 'User 29', 'nữ', '2000-06-02', '09876543229', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(30, 'user30@example.com', NULL, '$2y$12$TvK8xbiT3qzky/MG3ofrl..MebGFx2gsI9d2m0h9CujtiHdWQMSM6', 'https://i.pravatar.cc/150?img=30', 'User 30', 'nam', '2000-07-03', '09876543230', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL),
(31, 'user31@example.com', NULL, '$2y$12$2zXMbpedawt.r/kg1LLAW.FyBwW4/kJXlhh4D1YFSRJFZh.kilQS.', 'https://i.pravatar.cc/150?img=31', 'User 31', 'nữ', '2000-08-04', '09876543231', 'assistant', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-06 10:44:56', '2025-10-06 10:44:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatang_khuyenmai`
--

CREATE TABLE `quatang_khuyenmai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `mota` text DEFAULT NULL,
  `ngaybatdau` datetime NOT NULL,
  `ngayketthuc` datetime NOT NULL,
  `min_donhang` decimal(15,2) NOT NULL COMMENT 'giá trị đơn hàng tối thiểu',
  `id_bienthe` bigint(20) UNSIGNED NOT NULL,
  `id_thuonghieu` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quatang_khuyenmai`
--

INSERT INTO `quatang_khuyenmai` (`id`, `soluong`, `mota`, `ngaybatdau`, `ngayketthuc`, `min_donhang`, `id_bienthe`, `id_thuonghieu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 100, 'Tặng kèm Droppi vàng mini khi đơn hàng từ 500k', '2025-09-01 00:00:00', '2025-09-30 00:00:00', 500000.00, 25, 1, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(2, 50, 'Voucher 100k áp dụng cho sản phẩm Droppi vàng', '2025-10-01 00:00:00', '2025-10-07 00:00:00', 1000000.00, 20, 2, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(3, 200, 'Mua 2 Droppi vàng tặng thêm 1 hộp', '2025-11-20 00:00:00', '2025-11-30 00:00:00', 700000.00, 29, 1, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(4, 30, 'Quà tặng Black Friday: Droppi vàng Limited Edition', '2025-11-28 00:00:00', '2025-11-28 00:00:00', 2000000.00, 25, 3, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(5, 75, 'Mua 1 tặng 1 cho khách hàng VIP', '2025-12-01 00:00:00', '2025-12-15 00:00:00', 800000.00, 20, 2, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(6, 40, 'Tặng kèm túi vải sinh thái khi mua từ 300k', '2025-12-20 00:00:00', '2025-12-31 00:00:00', 300000.00, 29, 1, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(7, 120, 'Voucher 50k cho đơn hàng từ 400k', '2026-01-05 00:00:00', '2026-01-20 00:00:00', 400000.00, 25, 2, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(8, 60, 'Tặng kèm sản phẩm nhỏ cho combo gia đình', '2026-02-01 00:00:00', '2026-02-10 00:00:00', 1500000.00, 20, 3, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(9, 25, 'Khuyến mãi Valentine: Tặng kèm hộp quà đặc biệt', '2026-02-14 00:00:00', '2026-02-14 00:00:00', 1000000.00, 29, 1, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL),
(10, 80, 'Tết Nguyên Đán: Tặng bao lì xì may mắn', '2026-01-25 00:00:00', '2026-02-05 00:00:00', 600000.00, 25, 2, '2025-10-06 03:45:02', '2025-10-06 03:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_danhmuc`
--

CREATE TABLE `sanpham_danhmuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_sanpham` bigint(20) UNSIGNED NOT NULL,
  `id_danhmuc` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_danhmuc`
--

INSERT INTO `sanpham_danhmuc` (`id`, `id_sanpham`, `id_danhmuc`, `created_at`, `updated_at`) VALUES
(1, 10, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(2, 13, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(3, 19, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(4, 11, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(5, 10, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(6, 20, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(7, 17, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(8, 9, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(9, 18, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(10, 13, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` text NOT NULL,
  `mota` text DEFAULT NULL,
  `xuatxu` varchar(255) DEFAULT NULL,
  `sanxuat` varchar(255) DEFAULT NULL,
  `mediaurl` text DEFAULT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `id_thuonghieu` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `mota`, `xuatxu`, `sanxuat`, `mediaurl`, `trangthai`, `luotxem`, `id_thuonghieu`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vitamin C 500mg', 'Viên uống tăng sức đề kháng.', 'Mỹ', 'Nature Made', 'https://example.com/images/vitamin-c.jpg', 'hoat_dong', 120, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'Sữa rửa mặt dịu nhẹ', 'Phù hợp cho da nhạy cảm.', 'Hàn Quốc', 'Innisfree', 'https://example.com/images/suaruamat.jpg', 'hoat_dong', 90, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'Máy đo huyết áp Omron', 'Dụng cụ theo dõi sức khỏe tại nhà.', 'Nhật Bản', 'Omron', 'https://example.com/images/maydo-huyetap.jpg', 'hoat_dong', 250, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'Nồi chiên không dầu 5L', 'Nấu ăn nhanh chóng, ít dầu mỡ.', 'Trung Quốc', 'Philips', 'https://example.com/images/noichien.jpg', 'hoat_dong', 310, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 'Khẩu trang y tế 4 lớp', 'Hộp 50 cái, chống bụi và vi khuẩn.', 'Việt Nam', 'VinMask', 'https://example.com/images/khau-trang.jpg', 'hoat_dong', 400, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 'Sữa tắm dưỡng ẩm Dove', 'Dưỡng ẩm cho làn da mềm mịn.', 'Anh', 'Unilever', 'https://example.com/images/suatam-dove.jpg', 'hoat_dong', 180, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 'Sữa bột Abbott Grow', 'Dành cho trẻ từ 2 tuổi trở lên.', 'Mỹ', 'Abbott', 'https://example.com/images/suabottre.jpg', 'hoat_dong', 500, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 'Áo sơ mi nam trắng', 'Chất liệu cotton thoáng mát.', 'Việt Nam', 'Canifa', 'https://example.com/images/ao-somi.jpg', 'hoat_dong', 350, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 'Giày sneaker Adidas', 'Phong cách thể thao, năng động.', 'Đức', 'Adidas', 'https://example.com/images/giay-adidas.jpg', 'hoat_dong', 600, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 'Bột giặt OMO Matic', 'Giặt sạch vết bẩn, hương thơm lâu.', 'Việt Nam', 'Unilever', 'https://example.com/images/botgiat-omo.jpg', 'hoat_dong', 270, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 'Laptop Dell Inspiron 15', 'Máy tính xách tay cho công việc và học tập.', 'Mỹ', 'Dell', 'https://example.com/images/dell-inspiron.jpg', 'hoat_dong', 800, 11, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(12, 'Điện thoại iPhone 15 Pro', 'Công nghệ mới nhất từ Apple.', 'Mỹ', 'Apple', 'https://example.com/images/iphone-15.jpg', 'hoat_dong', 2000, 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(13, 'Tai nghe AirPods Pro', 'Chống ồn chủ động, pin lâu.', 'Mỹ', 'Apple', 'https://example.com/images/airpods.jpg', 'hoat_dong', 1500, 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(14, 'Tivi Samsung 55 inch 4K', 'Màn hình sắc nét, giải trí đỉnh cao.', 'Hàn Quốc', 'Samsung', 'https://example.com/images/tivi-samsung.jpg', 'hoat_dong', 1200, 13, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(15, 'Máy giặt LG Inverter', 'Tiết kiệm điện và nước.', 'Hàn Quốc', 'LG', 'https://example.com/images/maygiat-lg.jpg', 'hoat_dong', 950, 14, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(16, 'Quạt điều hòa Sunhouse', 'Làm mát nhanh, tiết kiệm điện.', 'Việt Nam', 'Sunhouse', 'https://example.com/images/quat-sunhouse.jpg', 'hoat_dong', 410, 15, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(17, 'Bàn chải điện Oral-B', 'Chăm sóc răng miệng hiện đại.', 'Đức', 'Oral-B', 'https://example.com/images/ban-chai.jpg', 'hoat_dong', 300, 16, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(18, 'Bánh quy Oreo', 'Bánh ngọt nhân kem sữa.', 'Mỹ', 'Oreo', 'https://example.com/images/oreo.jpg', 'hoat_dong', 720, 17, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(19, 'Nước ngọt Coca-Cola', 'Thức uống có gas, giải khát nhanh.', 'Mỹ', 'Coca-Cola', 'https://example.com/images/coca.jpg', 'hoat_dong', 2000, 18, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(20, 'Trà xanh Lipton', 'Thức uống giải nhiệt, hương vị tự nhiên.', 'Anh', 'Lipton', 'https://example.com/images/lipton.jpg', 'hoat_dong', 650, 19, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`, `created_at`, `updated_at`) VALUES
('AsjG5b58q71VfiM6UbUPYNUZYFI9M9Ds6hHm6rhe', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36 Edg/141.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUc0c0RnMm0xelEzTWJ5a1pBN1gwZkNpanEyQjhKUzJUaDZqRlI5MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1759747593, NULL, NULL),
('xbVKYrGIX1d7I9qKQsML4y1SvWyQ4Jy8h7NyRFVP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSWhocEVyV1hHVUkyRFpvMnY0U3ZmTmJKN2ttVXM3T0lEakt5S0ZydiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRrS0JZV1hzU2d5WGhxMFBNUloySnp1dXpmVWZFVzNjOTF3ekN3OEVNUnA2OGN3N2EuaHNzTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jdWEtaGFuZyI7fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIka0tCWVdYc1NneVhocTBQTVJaMkp6dXV6ZlVmRVczYzkxd3pDdzhFTVJwNjhjdzdhLmhzc08iO30=', 1759750278, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sukien_khuyenmai`
--

CREATE TABLE `sukien_khuyenmai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_khuyenmai` bigint(20) UNSIGNED NOT NULL,
  `id_sukien` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sukien_khuyenmai`
--

INSERT INTO `sukien_khuyenmai` (`id`, `id_khuyenmai`, `id_sukien`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(2, 8, 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(3, 3, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(4, 4, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(5, 6, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(6, 7, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(7, 3, 11, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(8, 1, 11, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(9, 2, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(10, 9, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(11, 4, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(12, 8, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(13, 8, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(14, 10, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(15, 8, 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanh_toan`
--

CREATE TABLE `thanh_toan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nganhang` varchar(255) DEFAULT NULL,
  `gia` decimal(15,2) NOT NULL,
  `noidung` mediumtext DEFAULT NULL,
  `magiaodich` varchar(255) DEFAULT NULL,
  `ngaythanhtoan` datetime NOT NULL,
  `hinhthucthanhtoan` enum('dbt','cp','cod') NOT NULL,
  `trangthai` enum('cho_xac_nhan','dang_xu_ly','thanh_cong','that_bai','da_huy','hoan_tien','tre_han','cho_xac_nhan_ngan_hang') NOT NULL DEFAULT 'cho_xac_nhan' COMMENT 'Trạng thái thanh toán',
  `id_donhang` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Xóa mềm để lưu lịch sử giao dịch'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanh_toan`
--

INSERT INTO `thanh_toan` (`id`, `nganhang`, `gia`, `noidung`, `magiaodich`, `ngaythanhtoan`, `hinhthucthanhtoan`, `trangthai`, `id_donhang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vietcombank', 1593917.00, 'Thanh toán cho đơn hàng #4', 'XJWFJNOTGQDG', '2025-08-10 17:45:02', 'dbt', 'that_bai', 4, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(2, NULL, 197140.00, 'Thanh toán cho đơn hàng #7', 'P4WKSRS07KQD', '2025-08-10 17:45:02', 'cod', 'tre_han', 7, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(3, 'Vietcombank', 1897210.00, 'Thanh toán cho đơn hàng #8', '7T8ZUWATXGAS', '2025-08-10 17:45:02', 'dbt', 'dang_xu_ly', 8, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(4, 'Vietcombank', 328665.00, 'Thanh toán cho đơn hàng #2', 'AJEUDPQDQZCL', '2025-08-10 17:45:02', 'dbt', 'da_huy', 2, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(5, 'Vietcombank', 1392924.00, 'Thanh toán cho đơn hàng #6', 'SDUUMYPBMKGN', '2025-08-10 17:45:02', 'dbt', 'dang_xu_ly', 6, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(6, 'Vietcombank', 1226919.00, 'Thanh toán cho đơn hàng #3', 'LKR3GIDAQYWB', '2025-08-10 17:45:02', 'dbt', 'that_bai', 3, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(7, 'Vietcombank', 1997719.00, 'Thanh toán cho đơn hàng #9', 'X4NJ1SW8XMZO', '2025-08-10 17:45:02', 'dbt', 'thanh_cong', 9, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(8, 'Vietcombank', 67914.00, 'Thanh toán cho đơn hàng #1', 'YETXNL333JO7', '2025-08-10 17:45:02', 'dbt', 'da_huy', 1, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(9, NULL, 1865844.00, 'Thanh toán cho đơn hàng #5', 'OATL3YINSHCY', '2025-08-10 17:45:02', 'cp', 'dang_xu_ly', 5, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL),
(10, NULL, 98288.00, 'Thanh toán cho đơn hàng #10', 'XSOTYZEIOBOX', '2025-08-10 17:45:02', 'cp', 'dang_xu_ly', 10, '2025-08-10 10:45:02', '2025-08-10 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tieude` mediumtext NOT NULL,
  `noidung` text NOT NULL,
  `phanloai` varchar(100) NOT NULL,
  `url` varchar(500) DEFAULT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong') NOT NULL DEFAULT 'hoat_dong',
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`id`, `tieude`, `noidung`, `phanloai`, `url`, `trangthai`, `id_nguoidung`, `created_at`, `updated_at`) VALUES
(1, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #4, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(2, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #5, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(3, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #6, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(4, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #7, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(5, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #8, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(6, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #9, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(7, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #10, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(8, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #11, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 11, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(9, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #12, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 12, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(10, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #13, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 13, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(11, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #14, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 14, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(12, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #15, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 15, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(13, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #16, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 16, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(14, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #17, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 17, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(15, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #18, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 18, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(16, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #19, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 19, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(17, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #20, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 20, '2025-10-06 10:45:02', '2025-10-06 10:45:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtin_nguoibanhang`
--

CREATE TABLE `thongtin_nguoibanhang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `ten_cuahang` varchar(255) NOT NULL,
  `giayphep_kinhdoanh` varchar(255) NOT NULL,
  `theodoi` int(11) NOT NULL DEFAULT 0,
  `luotban` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(255) DEFAULT NULL,
  `bianen` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sodienthoai` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `trangthai` enum('hoat_dong','ngung_hoa_dong') NOT NULL DEFAULT 'hoat_dong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtin_nguoibanhang`
--

INSERT INTO `thongtin_nguoibanhang` (`id`, `id_nguoidung`, `ten_cuahang`, `giayphep_kinhdoanh`, `theodoi`, `luotban`, `logo`, `bianen`, `mota`, `diachi`, `sodienthoai`, `email`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 21, 'Shop Sức Khỏe Xanh', 'GP-1001', 120, 50, 'https://example.com/logos/shop1.png', 'https://example.com/banners/shop1.jpg', 'Chuyên cung cấp vitamin và thực phẩm chức năng.', '123 Lê Lợi, Hà Nội', '0901000001', 'shop1@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 22, 'Mỹ Phẩm Thiên Nhiên', 'GP-1002', 230, 120, 'https://example.com/logos/shop2.png', 'https://example.com/banners/shop2.jpg', 'Mỹ phẩm organic cho da nhạy cảm.', '45 Nguyễn Huệ, TP.HCM', '0901000002', 'shop2@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 23, 'Thiết Bị Y Tế Omron', 'GP-1003', 500, 300, 'https://example.com/logos/shop3.png', 'https://example.com/banners/shop3.jpg', 'Máy đo huyết áp, máy xông khí dung chính hãng.', '89 Hai Bà Trưng, Đà Nẵng', '0901000003', 'shop3@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 24, 'Gia Dụng Nhà Bếp', 'GP-1004', 320, 210, 'https://example.com/logos/shop4.png', 'https://example.com/banners/shop4.jpg', 'Nồi chiên, máy ép trái cây, bếp điện...', '77 Nguyễn Văn Cừ, Cần Thơ', '0901000004', 'shop4@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 25, 'Khẩu Trang VinMask', 'GP-1005', 150, 90, 'https://example.com/logos/shop5.png', 'https://example.com/banners/shop5.jpg', 'Khẩu trang y tế 4 lớp chất lượng cao.', '12 Hoàng Hoa Thám, Hải Phòng', '0901000005', 'shop5@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 26, 'Dove Care', 'GP-1006', 410, 300, 'https://example.com/logos/shop6.png', 'https://example.com/banners/shop6.jpg', 'Các sản phẩm chăm sóc da của Dove.', '59 Cách Mạng Tháng 8, TP.HCM', '0901000006', 'shop6@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 27, 'Abbott Grow Store', 'GP-1007', 600, 450, 'https://example.com/logos/shop7.png', 'https://example.com/banners/shop7.jpg', 'Sữa bột và dinh dưỡng trẻ em.', '88 Điện Biên Phủ, Hà Nội', '0901000007', 'shop7@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 28, 'Thời Trang Nam Canifa', 'GP-1008', 720, 310, 'https://example.com/logos/shop8.png', 'https://example.com/banners/shop8.jpg', 'Áo sơ mi, quần tây, vest nam.', '20 Bạch Mai, Hà Nội', '0901000008', 'shop8@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 29, 'Adidas Official', 'GP-1009', 1200, 800, 'https://example.com/logos/shop9.png', 'https://example.com/banners/shop9.jpg', 'Giày sneaker, quần áo thể thao Adidas.', '101 Láng Hạ, Hà Nội', '0901000009', 'shop9@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 30, 'OMO Matic Store', 'GP-1010', 650, 500, 'https://example.com/logos/shop10.png', 'https://example.com/banners/shop10.jpg', 'Bột giặt và sản phẩm giặt tẩy.', '45 Võ Văn Ngân, Thủ Đức', '0901000010', 'shop10@example.com', 'hoat_dong', '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuong_hieu`
--

CREATE TABLE `thuong_hieu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` text NOT NULL,
  `mota` text DEFAULT NULL,
  `media` text NOT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `id_cuahang` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuong_hieu`
--

INSERT INTO `thuong_hieu` (`id`, `ten`, `mota`, `media`, `trangthai`, `id_cuahang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vinamilk', 'Thương hiệu sữa và dinh dưỡng', 'vinamilk.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(2, 'Abbott', 'Dinh dưỡng và thực phẩm chức năng', 'abbott.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(3, 'Nestle', 'Sữa và sản phẩm dinh dưỡng', 'nestle.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(4, 'Mead Johnson', 'Dinh dưỡng cho trẻ em', 'mead_johnson.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(5, 'Procare', 'Thực phẩm chức năng', 'procare.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(6, 'Ensure', 'Dinh dưỡng người lớn', 'ensure.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(7, 'VitaDairy', 'Sữa tươi và sản phẩm bổ sung', 'vitadairy.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(8, 'Dielac', 'Sữa bột cho trẻ em', 'dielac.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(9, 'FrieslandCampina', 'Sữa và thực phẩm dinh dưỡng', 'frieslandcampina.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(10, 'Life Nutrition', 'Thực phẩm bổ sung sức khỏe', 'life_nutrition.png', 'hoat_dong', 1, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(11, 'P&G', 'Hàng tiêu dùng chăm sóc cá nhân', 'pg.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(12, 'Unilever', 'Sản phẩm vệ sinh và chăm sóc cá nhân', 'unilever.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(13, 'L’Oreal', 'Mỹ phẩm và chăm sóc tóc', 'loreal.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(14, 'Colgate', 'Kem đánh răng và chăm sóc răng miệng', 'colgate.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(15, 'Dove', 'Xà phòng và chăm sóc cơ thể', 'dove.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(16, 'Nivea', 'Sản phẩm dưỡng da', 'nivea.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(17, 'Garnier', 'Mỹ phẩm và dưỡng da', 'garnier.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(18, 'Pantene', 'Chăm sóc tóc', 'pantene.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(19, 'Olay', 'Dưỡng da và mỹ phẩm', 'olay.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(20, 'Shiseido', 'Mỹ phẩm cao cấp', 'shiseido.png', 'hoat_dong', 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(21, 'Samsung', 'Điện tử và điện thoại', 'samsung.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(22, 'LG', 'Điện tử và điện gia dụng', 'lg.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(23, 'Sony', 'Điện tử, TV, âm thanh', 'sony.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(24, 'Panasonic', 'Điện tử và gia dụng', 'panasonic.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(25, 'Philips', 'Điện tử và chăm sóc sức khỏe', 'philips.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(26, 'Midea', 'Điện gia dụng', 'midea.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(27, 'Electrolux', 'Gia dụng và thiết bị điện', 'electrolux.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(28, 'Toshiba', 'Điện tử, máy tính, gia dụng', 'toshiba.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(29, 'Asanzo', 'Điện tử Việt Nam', 'asanzo.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(30, 'Casper', 'Điện tử và thiết bị gia dụng', 'casper.png', 'hoat_dong', 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(31, 'Omron', 'Thiết bị y tế gia đình', 'omron.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(32, 'Microlife', 'Máy đo huyết áp, nhiệt kế', 'microlife.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(33, 'Beurer', 'Thiết bị y tế và chăm sóc sức khỏe', 'beurer.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(34, 'Medela', 'Thiết bị chăm sóc mẹ và bé', 'medela.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(35, 'Braun', 'Máy đo, nhiệt kế, máy cạo', 'braun.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(36, 'Philips Avent', 'Thiết bị chăm sóc trẻ em', 'philips_avent.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(37, '3M', 'Thiết bị y tế và bảo hộ', '3m.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(38, 'Hartmann', 'Thiết bị y tế và băng gạc', 'hartmann.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(39, 'B Braun', 'Thiết bị chăm sóc sức khỏe', 'bbraun.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(40, 'Omnison', 'Thiết bị y tế gia đình', 'omnison.png', 'hoat_dong', 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(41, 'Co.opMart', 'Siêu thị bách hóa tổng hợp', 'coopmart.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(42, 'BigC', 'Siêu thị bách hóa tổng hợp', 'bigc.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(43, 'VinMart', 'Chuỗi siêu thị bách hóa', 'vinmart.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(44, 'Aeon', 'Trung tâm bách hóa tổng hợp', 'aeon.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(45, 'Lotte Mart', 'Siêu thị đa dạng sản phẩm', 'lotte.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(46, 'Satra', 'Chuỗi siêu thị Việt Nam', 'satra.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(47, 'Circle K', 'Cửa hàng tiện lợi', 'circlek.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(48, '7-Eleven', 'Chuỗi cửa hàng tiện lợi', '7eleven.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(49, 'FamilyMart', 'Cửa hàng tiện lợi', 'familymart.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(50, 'Mini Stop', 'Cửa hàng bách hóa nhỏ lẻ', 'ministop.png', 'hoat_dong', 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(51, 'IKEA', 'Đồ nội thất và trang trí nhà', 'ikea.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(52, 'JYSK', 'Nội thất và gia dụng', 'jysk.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(53, 'Homecenter', 'Đồ gia dụng và nội thất', 'homecenter.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(54, 'Aeon Home', 'Gia dụng và trang trí nhà', 'aeon_home.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(55, 'Tiki Home', 'Đồ gia dụng, trang trí', 'tiki_home.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(56, 'Lazada Home', 'Nội thất và đồ gia dụng', 'lazada_home.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(57, 'Phong Cách Việt', 'Nội thất và decor', 'phongcachviet.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(58, 'DecoX', 'Đồ trang trí nhà cửa', 'decox.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(59, 'Casa', 'Trang trí và nội thất', 'casa.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(60, 'MyHome', 'Đồ gia dụng và nội thất', 'myhome.png', 'hoat_dong', 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(61, 'Pigeon', 'Sản phẩm mẹ và bé', 'pigeon.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(62, 'Munchkin', 'Đồ chơi và chăm sóc bé', 'munchkin.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(63, 'Chicco', 'Đồ dùng trẻ em', 'chicco.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(64, 'Combi', 'Xe đẩy và sản phẩm trẻ em', 'combi.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(65, 'Fisher-Price', 'Đồ chơi giáo dục trẻ em', 'fisherprice.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(66, 'Dr.Brown', 'Bình sữa và phụ kiện', 'drbrown.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(67, 'Babyhug', 'Đồ dùng và quần áo trẻ em', 'babyhug.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(68, 'Aprica', 'Xe đẩy và sản phẩm mẹ bé', 'aprica.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(69, 'Pampers', 'Tã giấy và sản phẩm vệ sinh', 'pampers.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(70, 'Huggies', 'Tã giấy trẻ em', 'huggies.png', 'hoat_dong', 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(71, 'Adidas', 'Thời trang thể thao', 'adidas.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(72, 'Zara', 'Thời trang nhanh', 'zara.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(73, 'H&M', 'Thời trang phổ thông', 'hm.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(74, 'Uniqlo', 'Thời trang cơ bản và casual', 'uniqlo.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(75, 'Gucci', 'Thời trang cao cấp', 'gucci.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(76, 'Louis Vuitton', 'Thời trang và phụ kiện cao cấp', 'louis_vuitton.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(77, 'Puma', 'Thời trang và giày thể thao', 'puma.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(78, 'Levi\'s', 'Thời trang denim và casual', 'levis.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(79, 'Converse', 'Giày và thời trang casual', 'converse.png', 'hoat_dong', 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(80, 'Apple', 'Điện thoại, máy tính và phụ kiện', 'apple.png', 'hoat_dong', 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(81, 'Canon', 'Máy ảnh và thiết bị hình ảnh', 'canon.png', 'hoat_dong', 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(82, 'HP', 'Máy tính, laptop và thiết bị văn phòng', 'hp.png', 'hoat_dong', 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(83, 'Dell', 'Laptop và thiết bị máy tính', 'dell.png', 'hoat_dong', 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(84, 'Asus', 'Laptop, máy tính và linh kiện', 'asus.png', 'hoat_dong', 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL),
(85, 'Xiaomi', 'Điện thoại, thiết bị thông minh và phụ kiện', 'xiaomi.png', 'hoat_dong', 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tu_khoa`
--

CREATE TABLE `tu_khoa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dulieu` text NOT NULL,
  `soluot` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tu_khoa`
--

INSERT INTO `tu_khoa` (`id`, `dulieu`, `soluot`, `created_at`, `updated_at`) VALUES
(1, 'Chăm sóc cá nhân', 150, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(2, 'Làm đẹp', 200, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(3, 'Tìm kiếm sản phẩm', 80, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(4, 'Thực phâm thức năng', 120, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(5, 'Điện máy', 90, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(6, 'Thời trang', 70, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(7, 'Bách hóa', 70, '2025-10-06 10:45:02', '2025-10-06 10:45:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeu_thich`
--

CREATE TABLE `yeu_thich` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trangthai` enum('dang_thich','bo_thich') NOT NULL DEFAULT 'dang_thich',
  `id_sanpham` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeu_thich`
--

INSERT INTO `yeu_thich` (`id`, `trangthai`, `id_sanpham`, `id_nguoidung`, `created_at`, `updated_at`) VALUES
(1, 'dang_thich', 1, 2, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(2, 'dang_thich', 2, 3, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(3, 'bo_thich', 3, 4, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(4, 'dang_thich', 4, 5, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(5, 'dang_thich', 5, 6, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(6, 'bo_thich', 6, 7, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(7, 'dang_thich', 7, 8, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(8, 'dang_thich', 8, 9, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(9, 'dang_thich', 9, 10, '2025-10-06 10:45:02', '2025-10-06 10:45:02'),
(10, 'bo_thich', 10, 11, '2025-10-06 10:45:02', '2025-10-06 10:45:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ai_conversations`
--
ALTER TABLE `ai_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ai_intents`
--
ALTER TABLE `ai_intents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ai_intents_name_unique` (`name`);

--
-- Chỉ mục cho bảng `ai_responses`
--
ALTER TABLE `ai_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_responses_intent_id_foreign` (`intent_id`);

--
-- Chỉ mục cho bảng `ai_training_data`
--
ALTER TABLE `ai_training_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ai_training_data_intent_id_foreign` (`intent_id`);

--
-- Chỉ mục cho bảng `anh_sanpham`
--
ALTER TABLE `anh_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anh_sanpham_id_sanpham_foreign` (`id_sanpham`);

--
-- Chỉ mục cho bảng `banner_quangcao`
--
ALTER TABLE `banner_quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bienthe_sp`
--
ALTER TABLE `bienthe_sp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bienthe_sp_id_sanpham_foreign` (`id_sanpham`),
  ADD KEY `bienthe_sp_id_tenloai_foreign` (`id_tenloai`);

--
-- Chỉ mục cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chitiet_donhang_id_donhang_id_bienthe_unique` (`id_donhang`,`id_bienthe`),
  ADD KEY `chitiet_donhang_id_bienthe_foreign` (`id_bienthe`);

--
-- Chỉ mục cho bảng `chitiet_giohang`
--
ALTER TABLE `chitiet_giohang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chitiet_giohang_gio_hang_id_bienthe_sp_id_unique` (`gio_hang_id`,`bienthe_sp_id`),
  ADD KEY `chitiet_giohang_bienthe_sp_id_foreign` (`bienthe_sp_id`);

--
-- Chỉ mục cho bảng `chuongtrinhsukien`
--
ALTER TABLE `chuongtrinhsukien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chuongtrinhsukien_ten_unique` (`ten`);

--
-- Chỉ mục cho bảng `chuongtrinhsukien_danhmuc`
--
ALTER TABLE `chuongtrinhsukien_danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chuongtrinhsukien_danhmuc_id_chuongtrinhsukien_id_danhmuc_unique` (`id_chuongtrinhsukien`,`id_danhmuc`),
  ADD KEY `chuongtrinhsukien_danhmuc_id_danhmuc_foreign` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danh_gia_id_sanpham_foreign` (`id_sanpham`),
  ADD KEY `danh_gia_id_nguoidung_foreign` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `danh_muc_ten_unique` (`ten`);

--
-- Chỉ mục cho bảng `diachi_nguoidung`
--
ALTER TABLE `diachi_nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diachi_nguoidung_id_nguoidung_foreign` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `don_hang_id_nguoidung_id_magiamgia_unique` (`id_nguoidung`,`id_magiamgia`),
  ADD KEY `don_hang_id_magiamgia_foreign` (`id_magiamgia`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gio_hang_id_nguoidung_foreign` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `hanhvi_nguoidung`
--
ALTER TABLE `hanhvi_nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hanhvi_nguoidung_id_nguoidung_foreign` (`id_nguoidung`),
  ADD KEY `hanhvi_nguoidung_id_sanpham_foreign` (`id_sanpham`),
  ADD KEY `hanhvi_nguoidung_id_bienthe_foreign` (`id_bienthe`);

--
-- Chỉ mục cho bảng `loai_bienthe`
--
ALTER TABLE `loai_bienthe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loai_bienthe_ten_unique` (`ten`);

--
-- Chỉ mục cho bảng `ma_giamgia`
--
ALTER TABLE `ma_giamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nguoi_dung_email_unique` (`email`),
  ADD UNIQUE KEY `nguoi_dung_sodienthoai_unique` (`sodienthoai`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `quatang_khuyenmai`
--
ALTER TABLE `quatang_khuyenmai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quatang_khuyenmai_id_bienthe_foreign` (`id_bienthe`),
  ADD KEY `quatang_khuyenmai_id_thuonghieu_foreign` (`id_thuonghieu`);

--
-- Chỉ mục cho bảng `sanpham_danhmuc`
--
ALTER TABLE `sanpham_danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sanpham_danhmuc_id_sanpham_id_danhmuc_unique` (`id_sanpham`,`id_danhmuc`),
  ADD KEY `sanpham_danhmuc_id_danhmuc_foreign` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `san_pham_ten_unique` (`ten`) USING HASH,
  ADD KEY `san_pham_id_thuonghieu_foreign` (`id_thuonghieu`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `sukien_khuyenmai`
--
ALTER TABLE `sukien_khuyenmai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sukien_khuyenmai_id_khuyenmai_id_sukien_unique` (`id_khuyenmai`,`id_sukien`),
  ADD KEY `sukien_khuyenmai_id_sukien_foreign` (`id_sukien`);

--
-- Chỉ mục cho bảng `thanh_toan`
--
ALTER TABLE `thanh_toan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thanh_toan_magiaodich_unique` (`magiaodich`),
  ADD KEY `thanh_toan_id_donhang_foreign` (`id_donhang`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thongbao_id_nguoidung_foreign` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `thongtin_nguoibanhang`
--
ALTER TABLE `thongtin_nguoibanhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thongtin_nguoibanhang_id_nguoidung_unique` (`id_nguoidung`),
  ADD UNIQUE KEY `thongtin_nguoibanhang_ten_cuahang_unique` (`ten_cuahang`),
  ADD UNIQUE KEY `thongtin_nguoibanhang_giayphep_kinhdoanh_unique` (`giayphep_kinhdoanh`),
  ADD UNIQUE KEY `thongtin_nguoibanhang_sodienthoai_unique` (`sodienthoai`),
  ADD UNIQUE KEY `thongtin_nguoibanhang_email_unique` (`email`);

--
-- Chỉ mục cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thuong_hieu_ten_unique` (`ten`) USING HASH,
  ADD KEY `thuong_hieu_id_cuahang_foreign` (`id_cuahang`);

--
-- Chỉ mục cho bảng `tu_khoa`
--
ALTER TABLE `tu_khoa`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tu_khoa` ADD FULLTEXT KEY `tu_khoa_dulieu_fulltext` (`dulieu`);

--
-- Chỉ mục cho bảng `yeu_thich`
--
ALTER TABLE `yeu_thich`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `yeu_thich_id_sanpham_id_nguoidung_unique` (`id_sanpham`,`id_nguoidung`),
  ADD KEY `yeu_thich_id_nguoidung_foreign` (`id_nguoidung`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ai_conversations`
--
ALTER TABLE `ai_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ai_intents`
--
ALTER TABLE `ai_intents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ai_responses`
--
ALTER TABLE `ai_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ai_training_data`
--
ALTER TABLE `ai_training_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `anh_sanpham`
--
ALTER TABLE `anh_sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `banner_quangcao`
--
ALTER TABLE `banner_quangcao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `bienthe_sp`
--
ALTER TABLE `bienthe_sp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `chitiet_giohang`
--
ALTER TABLE `chitiet_giohang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `chuongtrinhsukien`
--
ALTER TABLE `chuongtrinhsukien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `chuongtrinhsukien_danhmuc`
--
ALTER TABLE `chuongtrinhsukien_danhmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `diachi_nguoidung`
--
ALTER TABLE `diachi_nguoidung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `hanhvi_nguoidung`
--
ALTER TABLE `hanhvi_nguoidung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loai_bienthe`
--
ALTER TABLE `loai_bienthe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ma_giamgia`
--
ALTER TABLE `ma_giamgia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quatang_khuyenmai`
--
ALTER TABLE `quatang_khuyenmai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sanpham_danhmuc`
--
ALTER TABLE `sanpham_danhmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `sukien_khuyenmai`
--
ALTER TABLE `sukien_khuyenmai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `thanh_toan`
--
ALTER TABLE `thanh_toan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `thongtin_nguoibanhang`
--
ALTER TABLE `thongtin_nguoibanhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `tu_khoa`
--
ALTER TABLE `tu_khoa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `yeu_thich`
--
ALTER TABLE `yeu_thich`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ai_responses`
--
ALTER TABLE `ai_responses`
  ADD CONSTRAINT `ai_responses_intent_id_foreign` FOREIGN KEY (`intent_id`) REFERENCES `ai_intents` (`id`);

--
-- Các ràng buộc cho bảng `ai_training_data`
--
ALTER TABLE `ai_training_data`
  ADD CONSTRAINT `ai_training_data_intent_id_foreign` FOREIGN KEY (`intent_id`) REFERENCES `ai_intents` (`id`);

--
-- Các ràng buộc cho bảng `anh_sanpham`
--
ALTER TABLE `anh_sanpham`
  ADD CONSTRAINT `anh_sanpham_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `bienthe_sp`
--
ALTER TABLE `bienthe_sp`
  ADD CONSTRAINT `bienthe_sp_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `bienthe_sp_id_tenloai_foreign` FOREIGN KEY (`id_tenloai`) REFERENCES `loai_bienthe` (`id`);

--
-- Các ràng buộc cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD CONSTRAINT `chitiet_donhang_id_bienthe_foreign` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe_sp` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiet_donhang_id_donhang_foreign` FOREIGN KEY (`id_donhang`) REFERENCES `don_hang` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chitiet_giohang`
--
ALTER TABLE `chitiet_giohang`
  ADD CONSTRAINT `chitiet_giohang_bienthe_sp_id_foreign` FOREIGN KEY (`bienthe_sp_id`) REFERENCES `bienthe_sp` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiet_giohang_gio_hang_id_foreign` FOREIGN KEY (`gio_hang_id`) REFERENCES `gio_hang` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chuongtrinhsukien_danhmuc`
--
ALTER TABLE `chuongtrinhsukien_danhmuc`
  ADD CONSTRAINT `chuongtrinhsukien_danhmuc_id_chuongtrinhsukien_foreign` FOREIGN KEY (`id_chuongtrinhsukien`) REFERENCES `chuongtrinhsukien` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chuongtrinhsukien_danhmuc_id_danhmuc_foreign` FOREIGN KEY (`id_danhmuc`) REFERENCES `danh_muc` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD CONSTRAINT `danh_gia_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `danh_gia_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `diachi_nguoidung`
--
ALTER TABLE `diachi_nguoidung`
  ADD CONSTRAINT `diachi_nguoidung_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_id_magiamgia_foreign` FOREIGN KEY (`id_magiamgia`) REFERENCES `ma_giamgia` (`id`),
  ADD CONSTRAINT `don_hang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `gio_hang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hanhvi_nguoidung`
--
ALTER TABLE `hanhvi_nguoidung`
  ADD CONSTRAINT `hanhvi_nguoidung_id_bienthe_foreign` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe_sp` (`id`),
  ADD CONSTRAINT `hanhvi_nguoidung_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `hanhvi_nguoidung_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `quatang_khuyenmai`
--
ALTER TABLE `quatang_khuyenmai`
  ADD CONSTRAINT `quatang_khuyenmai_id_bienthe_foreign` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe_sp` (`id`),
  ADD CONSTRAINT `quatang_khuyenmai_id_thuonghieu_foreign` FOREIGN KEY (`id_thuonghieu`) REFERENCES `thuong_hieu` (`id`);

--
-- Các ràng buộc cho bảng `sanpham_danhmuc`
--
ALTER TABLE `sanpham_danhmuc`
  ADD CONSTRAINT `sanpham_danhmuc_id_danhmuc_foreign` FOREIGN KEY (`id_danhmuc`) REFERENCES `danh_muc` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sanpham_danhmuc_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_id_thuonghieu_foreign` FOREIGN KEY (`id_thuonghieu`) REFERENCES `thuong_hieu` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sukien_khuyenmai`
--
ALTER TABLE `sukien_khuyenmai`
  ADD CONSTRAINT `sukien_khuyenmai_id_khuyenmai_foreign` FOREIGN KEY (`id_khuyenmai`) REFERENCES `quatang_khuyenmai` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sukien_khuyenmai_id_sukien_foreign` FOREIGN KEY (`id_sukien`) REFERENCES `chuongtrinhsukien` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thanh_toan`
--
ALTER TABLE `thanh_toan`
  ADD CONSTRAINT `thanh_toan_id_donhang_foreign` FOREIGN KEY (`id_donhang`) REFERENCES `don_hang` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `thongtin_nguoibanhang`
--
ALTER TABLE `thongtin_nguoibanhang`
  ADD CONSTRAINT `thongtin_nguoibanhang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  ADD CONSTRAINT `thuong_hieu_id_cuahang_foreign` FOREIGN KEY (`id_cuahang`) REFERENCES `thongtin_nguoibanhang` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `yeu_thich`
--
ALTER TABLE `yeu_thich`
  ADD CONSTRAINT `yeu_thich_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `yeu_thich_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
