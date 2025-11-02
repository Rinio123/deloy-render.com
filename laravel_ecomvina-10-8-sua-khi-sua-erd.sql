-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 08, 2025 lúc 02:29 PM
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
  `media` text NOT NULL DEFAULT 'uploads/anh_sanpham/media/anh_sanpham.png',
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
(1, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 'uploads/anh_sanpham/media/anh_sanpham.png', 'ngung_hoat_dong', 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 'uploads/anh_sanpham/media/anh_sanpham.png', 'ngung_hoat_dong', 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 'uploads/anh_sanpham/media/anh_sanpham.png', 'ngung_hoat_dong', 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(11, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(12, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(13, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(14, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(15, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_viet`
--

CREATE TABLE `bai_viet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tieude` varchar(255) NOT NULL DEFAULT '<h1>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà</h1>',
  `mota` text DEFAULT NULL,
  `noidung` longtext NOT NULL DEFAULT '<p class="text-success">Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.</p>',
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `trangthai` enum('nháp','đã xuất bản','đã lưu trữ','đang chờ duyệt') NOT NULL DEFAULT 'nháp',
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_viet`
--

INSERT INTO `bai_viet` (`id`, `tieude`, `mota`, `noidung`, `luotxem`, `trangthai`, `id_nguoidung`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Siêu Thị Vina Khai Trương Chi Nhánh Mới Tại Quận 1', 'Khám phá không gian mua sắm hiện đại với hàng ngàn sản phẩm chất lượng', '<p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 150, 'đã xuất bản', 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'Cẩm Nang Chăm Sóc Sức Khỏe Mùa Hè', 'Bí quyết bảo vệ sức khỏe cho cả gia đình trong những ngày nắng nóng', '<p>Mùa hè với thời tiết nắng nóng dễ khiến cơ thể mệt mỏi. Bài viết cung cấp những tips chăm sóc sức khỏe hiệu quả từ các chuyên gia.</p>', 89, 'đã xuất bản', 1, '2025-10-07 12:28:58', '2025-10-07 12:28:58', NULL),
(3, 'Thiết Bị Y Tế Gia Đình - Nên Có Những Gì?', 'Danh sách các thiết bị y tế cần thiết cho mỗi gia đình', '<p>Từ nhiệt kế, máy đo huyết áp đến tủ thuốc gia đình, đâu là những thiết bị y tế không thể thiếu trong mỗi gia đình hiện đại?</p>', 203, 'đã xuất bản', 1, '2025-10-06 12:28:58', '2025-10-06 12:28:58', NULL),
(4, 'Xu Hướng Điện Máy Xanh 2024', 'Các thiết bị điện máy tiết kiệm điện năng đang được ưa chuộng', '<p>Cùng điểm qua những xu hướng điện máy xanh đang thịnh hành trong năm 2024 và lợi ích mà chúng mang lại.</p>', 167, 'đã lưu trữ', 1, '2025-10-05 12:28:58', '2025-10-05 12:28:58', NULL),
(5, 'Bách Hóa Siêu Thị Vina - Đa Dạng Sản Phẩm', 'Khám phá thế giới bách hóa đa dạng với hàng ngàn mặt hàng', '<p>Từ thực phẩm khô đến đồ gia dụng, bách hóa Siêu Thị Vina đáp ứng mọi nhu cầu thiết yếu của gia đình bạn.</p>', 95, 'đã xuất bản', 1, '2025-10-04 12:28:58', '2025-10-04 12:28:58', NULL),
(6, 'Nhà Cửa Đời Sống - Tổ Ấm Của Bạn', 'Cải thiện không gian sống với các sản phẩm nhà cửa đời sống', '<p>Những gợi ý trang trí và cải tạo không gian sống từ các sản phẩm nhà cửa đời sống tại Siêu Thị Vina.</p>', 78, 'đang chờ duyệt', 1, '2025-10-03 12:28:58', '2025-10-03 12:28:58', NULL),
(7, 'Mẹ Và Bé - Hành Trình Làm Mẹ', 'Đồng hành cùng mẹ trong hành trình chăm sóc bé yêu', '<p>Chuyên mục chia sẻ kinh nghiệm chăm sóc mẹ và bé với các sản phẩm chất lượng, an toàn.</p>', 234, 'đã xuất bản', 1, '2025-10-02 12:28:58', '2025-10-02 12:28:58', NULL),
(8, 'Thời Trang Công Sở - Phong Cách Mới', 'Cập nhật xu hướng thời trang công sở 2024', '<p>Những items thời trang công sở không thể thiếu trong tủ đồ của bạn mùa này.</p>', 145, 'đã xuất bản', 1, '2025-10-01 12:28:58', '2025-10-01 12:28:58', NULL),
(9, 'Làm Đẹp Tự Nhiên - Bí Quyết Từ Chuyên Gia', 'Bật mí bí quyết làm đẹp an toàn và hiệu quả', '<p>Khám phá những phương pháp làm đẹp tự nhiên cùng các sản phẩm chăm sóc da chất lượng.</p>', 189, 'nháp', 1, '2025-09-30 12:28:58', '2025-09-30 12:28:58', NULL),
(10, 'Chăm Sóc Cá Nhân - Nâng Tầm Cuộc Sống', 'Sản phẩm chăm sóc cá nhân cao cấp cho cuộc sống hiện đại', '<p>Nâng cao chất lượng cuộc sống với các sản phẩm chăm sóc cá nhân đến từ thương hiệu uy tín.</p>', 112, 'đã xuất bản', 1, '2025-09-29 12:28:58', '2025-09-29 12:28:58', NULL);

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
(1, 'header', 'banner1.jpg', 'https://fpt.edu.vn', 'Chào mừng đến với FPT Polytechnic', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 'sidebar', 'banner2.jpg', 'https://shopee.vn', 'Mua sắm giảm giá 50%', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 'footer', 'banner3.jpg', 'https://tiki.vn', 'Flash Sale cuối tuần', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 'main', 'banner4.jpg', 'https://lazada.vn', 'Khuyến mãi đặc biệt hôm nay', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 'popup', 'banner5.jpg', 'https://tiktok.com', 'Theo dõi chúng tôi trên TikTok', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bienthe_sp`
--

CREATE TABLE `bienthe_sp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gia` decimal(15,2) NOT NULL,
  `giagiam` decimal(15,2) NOT NULL DEFAULT 0.00,
  `soluong` int(11) NOT NULL DEFAULT 1,
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `uutien` int(11) NOT NULL COMMENT 'Độ ưu tiên hiển thị của biến thể (số nhỏ hơn = ưu tiên cao hơn)',
  `id_sanpham` bigint(20) UNSIGNED NOT NULL,
  `id_tenloai` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bienthe_sp`
--

INSERT INTO `bienthe_sp` (`id`, `gia`, `giagiam`, `soluong`, `trangthai`, `uutien`, `id_sanpham`, `id_tenloai`, `created_at`, `updated_at`) VALUES
(1, 4916490.00, 1825285.00, 9, 'hoat_dong', 1, 12, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 383928.00, 351655.00, 6, 'hoat_dong', 5, 7, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 2754576.00, 0.00, 63, 'hoat_dong', 2, 16, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 1779864.00, 1287847.00, 163, 'hoat_dong', 2, 16, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 3023278.00, 0.00, 100, 'hoat_dong', 2, 20, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(6, 3990310.00, 2679338.00, 199, 'hoat_dong', 5, 12, 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(7, 1749746.00, 0.00, 75, 'hoat_dong', 1, 9, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(8, 3393718.00, 0.00, 187, 'hoat_dong', 2, 9, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(9, 3811892.00, 2998147.00, 53, 'hoat_dong', 2, 17, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(10, 3458426.00, 2406950.00, 124, 'hoat_dong', 4, 18, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(11, 4064922.00, 2183691.00, 135, 'hoat_dong', 4, 11, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(12, 436845.00, 0.00, 95, 'hoat_dong', 5, 11, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(13, 162541.00, 0.00, 20, 'hoat_dong', 2, 16, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(14, 2197207.00, 0.00, 32, 'hoat_dong', 4, 15, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(15, 2917744.00, 0.00, 171, 'hoat_dong', 3, 16, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(16, 619261.00, 0.00, 88, 'hoat_dong', 3, 13, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(17, 1235837.00, 493461.00, 36, 'hoat_dong', 3, 7, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(18, 2145180.00, 1360124.00, 20, 'hoat_dong', 2, 7, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(19, 915663.00, 117253.00, 154, 'hoat_dong', 1, 11, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(20, 3420422.00, 0.00, 63, 'hoat_dong', 1, 6, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(21, 2076684.00, 0.00, 24, 'hoat_dong', 2, 3, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(22, 2559476.00, 498893.00, 94, 'hoat_dong', 2, 14, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(23, 2764700.00, 0.00, 125, 'hoat_dong', 3, 11, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(24, 4922710.00, 3406158.00, 40, 'hoat_dong', 5, 3, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(25, 4583250.00, 2969202.00, 191, 'hoat_dong', 3, 6, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(26, 4067109.00, 0.00, 134, 'hoat_dong', 3, 14, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(27, 1794866.00, 0.00, 54, 'hoat_dong', 5, 11, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(28, 111926.00, 58042.00, 187, 'hoat_dong', 5, 5, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(29, 1764255.00, 0.00, 56, 'hoat_dong', 4, 4, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(30, 4359272.00, 4084937.00, 79, 'hoat_dong', 1, 7, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `gia`, `soluong`, `tongtien`, `id_donhang`, `id_bienthe`, `created_at`, `updated_at`) VALUES
(1, 1825285.00, 2, 3650570.00, 3, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 351655.00, 3, 1054965.00, 3, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 1825285.00, 4, 7301140.00, 10, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 117253.00, 5, 586265.00, 10, 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 2917744.00, 2, 5835488.00, 10, 15, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(6, 2183691.00, 4, 8734764.00, 10, 11, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(7, 3393718.00, 2, 6787436.00, 6, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(8, 498893.00, 3, 1496679.00, 6, 22, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(9, 1749746.00, 1, 1749746.00, 6, 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(10, 351655.00, 1, 351655.00, 6, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(11, 493461.00, 1, 493461.00, 6, 17, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(12, 1360124.00, 5, 6800620.00, 8, 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(13, 619261.00, 4, 2477044.00, 8, 16, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(14, 162541.00, 3, 487623.00, 8, 13, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(15, 58042.00, 1, 58042.00, 8, 28, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(16, 2183691.00, 2, 4367382.00, 8, 11, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(17, 2679338.00, 1, 2679338.00, 2, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(18, 619261.00, 4, 2477044.00, 1, 16, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(19, 1360124.00, 5, 6800620.00, 1, 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(20, 2076684.00, 4, 8306736.00, 7, 21, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(21, 2969202.00, 1, 2969202.00, 7, 25, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(22, 1794866.00, 4, 7179464.00, 7, 27, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(23, 436845.00, 4, 1747380.00, 7, 12, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(24, 2998147.00, 3, 8994441.00, 7, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(25, 1360124.00, 3, 4080372.00, 9, 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(26, 1764255.00, 1, 1764255.00, 9, 29, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(27, 2969202.00, 4, 11876808.00, 9, 25, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(28, 2754576.00, 5, 13772880.00, 4, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(29, 117253.00, 3, 351759.00, 4, 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(30, 3406158.00, 5, 17030790.00, 4, 24, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(31, 1794866.00, 5, 8974330.00, 4, 27, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(32, 3420422.00, 5, 17102110.00, 4, 20, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(33, 1287847.00, 1, 1287847.00, 5, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(34, 2969202.00, 5, 14846010.00, 5, 25, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(35, 117253.00, 2, 234506.00, 5, 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuongtrinhsukien`
--

CREATE TABLE `chuongtrinhsukien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `media` text NOT NULL DEFAULT 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png',
  `mota` text NOT NULL DEFAULT '<p class="text-success">Sự kiện đặc biệt sắp diễn ra, hứa hẹn mang đến nhiều ưu đãi và trải nghiệm thú vị cho khách hàng. Hãy cùng chờ đón và tham gia ngay khi chương trình được mở!</p>',
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
(1, 'Tuần Lễ Vàng - Flash Sale 9.9', 'https://example.com/media/flashsale99.png', 'Sự kiện giảm giá lớn nhất cho sản phẩm Droppi màu vàng trên App Store - chỉ diễn ra trong 1 ngày!', '2025-09-09 00:00:00', '2025-09-09 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'Tuần Lễ Vàng - Tuần lễ Vàng', 'https://example.com/media/tuanlevang.png', 'Chương trình khuyến mãi đặc biệt kéo dài 7 ngày dành riêng cho Droppi vàng.', '2025-10-01 00:00:00', '2025-10-07 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 'Tuần Lễ Vàng - Black Friday 2025', 'https://example.com/media/blackfriday.png', 'Giảm giá sâu cho các sản phẩm Droppi màu vàng trên App Store nhân dịp Black Friday.', '2025-11-28 00:00:00', '2025-11-28 23:59:59', 'cho_duyet', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 'Tuần Lễ Vàng - Mua 1 Tặng 1', 'https://example.com/media/mua1tang1.png', 'Mua một sản phẩm Droppi màu vàng tặng thêm một sản phẩm bất kỳ trong danh mục.', '2025-12-01 00:00:00', '2025-12-03 23:59:59', 'ngung_hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 'Giáng Sinh An Lành 2025', 'https://example.com/media/giangsinh.png', 'Khuyến mãi quà tặng hấp dẫn cho mùa Giáng Sinh.', '2025-12-20 00:00:00', '2025-12-26 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 'Tết Nguyên Đán 2026 - Siêu Sale', 'https://example.com/media/tet.png', 'Đón Tết cùng ưu đãi đặc biệt cho khách hàng thân thiết.', '2026-01-25 00:00:00', '2026-02-05 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 'Valentine Ngọt Ngào 2026', 'https://example.com/media/valentine.png', 'Ưu đãi lãng mạn cho các cặp đôi.', '2026-02-10 00:00:00', '2026-02-15 23:59:59', 'cho_duyet', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 'Ngày Quốc Tế Phụ Nữ 8/3', 'https://example.com/media/phunu.png', 'Tôn vinh phái đẹp với hàng ngàn ưu đãi.', '2026-03-05 00:00:00', '2026-03-08 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 'Ngày Cá Tháng Tư - Deal Bất Ngờ', 'https://example.com/media/aprilfool.png', 'Ưu đãi cực sốc, chỉ có trong ngày 1/4.', '2026-04-01 00:00:00', '2026-04-01 23:59:59', 'ngung_hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 'Mùa Hè Sôi Động 2026', 'https://example.com/media/summer.png', 'Chào hè rực rỡ với nhiều chương trình khuyến mãi hấp dẫn.', '2026-06-01 00:00:00', '2026-06-30 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(11, 'Siêu Sale Mùa Thu 2026', 'https://example.com/media/autumn.png', 'Ưu đãi hấp dẫn trong mùa thu cho các sản phẩm hot.', '2026-09-15 00:00:00', '2026-09-25 23:59:59', 'cho_duyet', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(12, 'Ngày Nhà Giáo Việt Nam 20/11', 'https://example.com/media/nhagiaovietnam.png', 'Tri ân thầy cô với quà tặng và ưu đãi đặc biệt.', '2026-11-18 00:00:00', '2026-11-21 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(13, 'Noel 2026 - Sale Cuối Năm', 'https://example.com/media/noel.png', 'Giáng sinh an lành với siêu khuyến mãi cuối năm.', '2026-12-20 00:00:00', '2026-12-27 23:59:59', 'ngung_hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gia`
--

INSERT INTO `danh_gia` (`id`, `diem`, `noidung`, `media`, `ngaydang`, `trangthai`, `id_sanpham`, `id_nguoidung`, `created_at`, `updated_at`) VALUES
(1, 3, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'https://example.com/reviews/review1.jpg', '2025-10-08 19:28:58', 'hoat_dong', 9, 14, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 5, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'https://example.com/reviews/review2.jpg', '2025-10-08 19:28:58', 'hoat_dong', 21, 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 4, 'Sản phẩm giống hình, giao đúng hẹn.', 'https://example.com/reviews/review3.jpg', '2025-10-08 19:28:58', 'hoat_dong', 7, 17, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 5, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'https://example.com/reviews/review4.jpg', '2025-10-08 19:28:58', 'hoat_dong', 14, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 5, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'https://example.com/reviews/review5.jpg', '2025-10-08 19:28:58', 'hoat_dong', 20, 12, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(6, 3, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review6.jpg', '2025-10-08 19:28:58', 'hoat_dong', 18, 12, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(7, 3, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review7.jpg', '2025-10-08 19:28:58', 'hoat_dong', 15, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(8, 4, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'https://example.com/reviews/review8.jpg', '2025-10-08 19:28:58', 'hoat_dong', 2, 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(9, 3, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'https://example.com/reviews/review9.jpg', '2025-10-08 19:28:58', 'hoat_dong', 3, 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(10, 3, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'https://example.com/reviews/review10.jpg', '2025-10-08 19:28:58', 'hoat_dong', 20, 20, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(11, 4, 'Sản phẩm giống hình, giao đúng hẹn.', 'https://example.com/reviews/review11.jpg', '2025-10-08 19:28:58', 'hoat_dong', 10, 14, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(12, 3, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'https://example.com/reviews/review12.jpg', '2025-10-08 19:28:58', 'hoat_dong', 22, 14, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(13, 3, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'https://example.com/reviews/review13.jpg', '2025-10-08 19:28:58', 'hoat_dong', 11, 15, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(14, 3, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'https://example.com/reviews/review14.jpg', '2025-10-08 19:28:58', 'hoat_dong', 4, 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(15, 5, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'https://example.com/reviews/review15.jpg', '2025-10-08 19:28:58', 'hoat_dong', 3, 16, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(16, 4, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'https://example.com/reviews/review16.jpg', '2025-10-08 19:28:58', 'hoat_dong', 7, 20, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(17, 4, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'https://example.com/reviews/review17.jpg', '2025-10-08 19:28:58', 'hoat_dong', 7, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(18, 3, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review18.jpg', '2025-10-08 19:28:58', 'hoat_dong', 12, 13, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(19, 5, 'Sản phẩm giống hình, giao đúng hẹn.', 'https://example.com/reviews/review19.jpg', '2025-10-08 19:28:58', 'hoat_dong', 2, 20, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(20, 4, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'https://example.com/reviews/review20.jpg', '2025-10-08 19:28:58', 'hoat_dong', 10, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `media` text NOT NULL DEFAULT 'uploads/danhmuc/media/danhmuc.png',
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten`, `media`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sức khỏe', 'suc_khoe.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'Chăm sóc cá nhân', 'cham_soc_ca_nhan.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 'Điện máy', 'dien_may.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 'Thiết bị y tế', 'thiet_bi_y_te.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 'Bách hóa', 'bach_hoa.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 'Nhà cửa - Đời sống', 'nha_cua.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 'Mẹ và bé', 'me_va_be.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 'Thời trang', 'thoi_trang.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 'Sản phẩm khác', 'san_pham_khac.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 'Làm đẹp', 'lam_dep.png', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi_nguoidung`
--

CREATE TABLE `diachi_nguoidung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
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

INSERT INTO `diachi_nguoidung` (`id`, `ten`, `sodienthoai`, `diachi`, `trangthai`, `id_nguoidung`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'User 3', '0987654323,910051411', 'Số 3, Đường ABC, Phường 3, Q.3, Thành phố Hồ Chí Minh', 'hoat_dong', 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'User 4', '0987654324,991921941', 'Số 4, Đường ABC, Phường 4, Q.4, Thành phố Hà Nội', 'hoat_dong', 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 'User 5', '0987654325,941370062', 'Số 5, Đường ABC, Phường 5, Q.5, Thành phố Hồ Chí Minh', 'hoat_dong', 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 'User 6', '0987654326,931053497', 'Số 6, Đường ABC, Phường 6, Q.6, Thành phố Hà Nội', 'hoat_dong', 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 'User 7', '0987654327,963602965', 'Số 7, Đường ABC, Phường 7, Q.7, Thành phố Hồ Chí Minh', 'hoat_dong', 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 'User 8', '0987654328,911380932', 'Số 8, Đường ABC, Phường 8, Q.8, Thành phố Hà Nội', 'hoat_dong', 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 'User 9', '0987654329,929209645', 'Số 9, Đường ABC, Phường 9, Q.9, Thành phố Hồ Chí Minh', 'hoat_dong', 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 'User 10', '09876543210,962375268', 'Số 10, Đường ABC, Phường 10, Q.10, Thành phố Hà Nội', 'hoat_dong', 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 'User 11', '09876543211,938240027', 'Số 11, Đường ABC, Phường 11, Q.11, Thành phố Hồ Chí Minh', 'hoat_dong', 11, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 'User 12', '09876543212,967531975', 'Số 12, Đường ABC, Phường 12, Q.12, Thành phố Hà Nội', 'hoat_dong', 12, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(11, 'User 13', '09876543213,950126478', 'Số 13, Đường ABC, Phường 13, Q.13, Thành phố Hồ Chí Minh', 'hoat_dong', 13, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(12, 'User 14', '09876543214,901241010', 'Số 14, Đường ABC, Phường 14, Q.14, Thành phố Hà Nội', 'hoat_dong', 14, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(13, 'User 15', '09876543215,959474969', 'Số 15, Đường ABC, Phường 15, Q.15, Thành phố Hồ Chí Minh', 'hoat_dong', 15, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(14, 'User 16', '09876543216,946722359', 'Số 16, Đường ABC, Phường 16, Q.16, Thành phố Hà Nội', 'hoat_dong', 16, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(15, 'User 17', '09876543217,946761826', 'Số 17, Đường ABC, Phường 17, Q.17, Thành phố Hồ Chí Minh', 'hoat_dong', 17, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(16, 'User 18', '09876543218,997714153', 'Số 18, Đường ABC, Phường 18, Q.18, Thành phố Hà Nội', 'hoat_dong', 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(17, 'User 19', '09876543219,966630041', 'Số 19, Đường ABC, Phường 19, Q.19, Thành phố Hồ Chí Minh', 'hoat_dong', 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(18, 'User 20', '09876543220,959554030', 'Số 20, Đường ABC, Phường 20, Q.20, Thành phố Hà Nội', 'hoat_dong', 20, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(19, 'seller', '0991654321,0999999999', 'Số 1, Đường Test, Phường 1, Q.1, Thành phố Hồ Chí Minh', 'hoat_dong', 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ma_donhang` varchar(255) NOT NULL,
  `tongsoluong` int(11) NOT NULL,
  `ghichu` mediumtext DEFAULT NULL,
  `tongtien` decimal(15,2) NOT NULL,
  `ngaytao` datetime NOT NULL DEFAULT current_timestamp(),
  `trangthai` enum('cho_xac_nhan','da_xac_nhan','dang_giao','da_giao','da_huy') NOT NULL DEFAULT 'cho_xac_nhan' COMMENT 'Trạng thái đơn hàng',
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `id_magiamgia` bigint(20) UNSIGNED DEFAULT NULL,
  `id_phuongthuc_thanhtoan` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `ma_donhang`, `tongsoluong`, `ghichu`, `tongtien`, `ngaytao`, `trangthai`, `id_nguoidung`, `id_magiamgia`, `id_phuongthuc_thanhtoan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DH0001', 5, 'Ghi chú cho đơn hàng số 1', 1049080.00, '2025-09-19 19:28:58', 'da_xac_nhan', 9, 1, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'DH0002', 4, 'Ghi chú cho đơn hàng số 2', 1135008.00, '2025-10-02 19:28:58', 'cho_xac_nhan', 8, 5, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 'DH0003', 4, 'Ghi chú cho đơn hàng số 3', 1650132.00, '2025-09-10 19:28:58', 'cho_xac_nhan', 4, 3, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 'DH0004', 3, 'Ghi chú cho đơn hàng số 4', 278610.00, '2025-10-03 19:28:58', 'dang_giao', 20, 9, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 'DH0005', 7, 'Ghi chú cho đơn hàng số 5', 1492925.00, '2025-09-29 19:28:58', 'dang_giao', 20, 6, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 'DH0006', 4, 'Ghi chú cho đơn hàng số 6', 1481548.00, '2025-09-11 19:28:58', 'da_giao', 6, 6, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 'DH0007', 5, 'Ghi chú cho đơn hàng số 7', 1906605.00, '2025-09-18 19:28:58', 'dang_giao', 17, 8, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 'DH0008', 7, 'Ghi chú cho đơn hàng số 8', 2653084.00, '2025-10-07 19:28:58', 'da_giao', 7, 9, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 'DH0009', 3, 'Ghi chú cho đơn hàng số 9', 1226133.00, '2025-09-16 19:28:58', 'da_huy', 19, 8, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 'DH0010', 5, 'Ghi chú cho đơn hàng số 10', 593030.00, '2025-09-28 19:28:58', 'cho_xac_nhan', 5, 6, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

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
  `soluong` int(11) NOT NULL,
  `tongtien` decimal(15,2) NOT NULL,
  `id_sanpham` bigint(20) UNSIGNED NOT NULL,
  `id_nguoidung` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `soluong`, `tongtien`, `id_sanpham`, `id_nguoidung`, `created_at`, `updated_at`) VALUES
(1, 3, 136725.00, 2, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 3, 139632.00, 4, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 3, 68595.00, 18, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 2, 94550.00, 17, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 2, 54980.00, 13, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(6, 4, 72076.00, 21, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(7, 4, 102632.00, 7, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(8, 3, 112461.00, 17, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(9, 2, 31622.00, 8, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(10, 2, 55250.00, 12, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(11, 3, 101859.00, 15, 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(12, 2, 93798.00, 22, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(13, 3, 140058.00, 1, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(14, 3, 144723.00, 11, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(15, 3, 84615.00, 4, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(16, 3, 94452.00, 17, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(17, 3, 109374.00, 5, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(18, 2, 70548.00, 21, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(19, 5, 109155.00, 21, 11, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(20, 2, 85454.00, 6, 11, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(21, 1, 11338.00, 7, 12, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(22, 1, 44619.00, 22, 13, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(23, 3, 57027.00, 20, 13, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(24, 2, 53140.00, 8, 13, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(25, 5, 219190.00, 3, 14, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(26, 3, 119436.00, 17, 14, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(27, 4, 40648.00, 3, 15, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(28, 2, 48410.00, 22, 16, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(29, 5, 242095.00, 19, 16, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(30, 1, 40745.00, 21, 17, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(31, 1, 34094.00, 12, 17, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(32, 4, 151992.00, 11, 17, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(33, 5, 87405.00, 22, 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(34, 1, 17377.00, 4, 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(35, 3, 92244.00, 13, 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(36, 3, 107163.00, 21, 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(37, 1, 47497.00, 6, 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(38, 5, 86830.00, 11, 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(39, 1, 19242.00, 5, 20, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(40, 3, 37962.00, 7, 20, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(41, 2, 90922.00, 21, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58');

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
-- Cấu trúc bảng cho bảng `lichsu_thanhtoan`
--

CREATE TABLE `lichsu_thanhtoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nganhang` varchar(255) DEFAULT NULL,
  `gia` decimal(15,2) NOT NULL,
  `noidung` mediumtext DEFAULT NULL,
  `magiaodich` varchar(255) DEFAULT NULL,
  `ngaythanhtoan` datetime NOT NULL,
  `trangthai` enum('cho_xac_nhan','dang_xu_ly','thanh_cong','that_bai','da_huy','hoan_tien','tre_han','cho_xac_nhan_ngan_hang') NOT NULL DEFAULT 'cho_xac_nhan' COMMENT 'Trạng thái thanh toán',
  `id_donhang` bigint(20) UNSIGNED NOT NULL,
  `id_phuongthuc_thanhtoan` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Xóa mềm để lưu lịch sử giao dịch'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichsu_thanhtoan`
--

INSERT INTO `lichsu_thanhtoan` (`id`, `nganhang`, `gia`, `noidung`, `magiaodich`, `ngaythanhtoan`, `trangthai`, `id_donhang`, `id_phuongthuc_thanhtoan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 275449.00, 'Thanh toán cho đơn hàng #3', 'NBNXVQ3GLKVL', '2025-07-27 19:28:58', 'cho_xac_nhan', 3, 3, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(2, 'Vietcombank', 1966597.00, 'Thanh toán cho đơn hàng #10', 'W5KDKOWFNLJ5', '2025-07-27 19:28:58', 'tre_han', 10, 1, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(3, NULL, 1692706.00, 'Thanh toán cho đơn hàng #6', 'OQGOYHSDZA6X', '2025-07-27 19:28:58', 'hoan_tien', 6, 3, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(4, NULL, 1999541.00, 'Thanh toán cho đơn hàng #8', 'LX8VGL2ANHX9', '2025-07-27 19:28:58', 'cho_xac_nhan', 8, 3, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(5, NULL, 1854608.00, 'Thanh toán cho đơn hàng #2', '3IGZ2RELPFVT', '2025-07-27 19:28:58', 'da_huy', 2, 2, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(6, 'Vietcombank', 86975.00, 'Thanh toán cho đơn hàng #1', '36ZCPLXW61KF', '2025-07-27 19:28:58', 'da_huy', 1, 1, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(7, 'Vietcombank', 1629984.00, 'Thanh toán cho đơn hàng #7', '8QYNAHCEZTIN', '2025-07-27 19:28:58', 'dang_xu_ly', 7, 1, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(8, NULL, 1222074.00, 'Thanh toán cho đơn hàng #9', 'KU0YFB9RDBRF', '2025-07-27 19:28:58', 'da_huy', 9, 2, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(9, NULL, 945819.00, 'Thanh toán cho đơn hàng #4', 'Q7VN3OOXAIQY', '2025-07-27 19:28:58', 'hoan_tien', 4, 3, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL),
(10, 'Vietcombank', 1229449.00, 'Thanh toán cho đơn hàng #5', 'PJ1IY4UEOMAC', '2025-07-27 19:28:58', 'cho_xac_nhan', 5, 1, '2025-07-27 12:28:58', '2025-07-27 12:28:58', NULL);

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
(1, 'lọ', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'hộp', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 'chai', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 'Chiếc', 'hoat_dong', '2025-08-23 21:00:41', '2025-08-23 21:00:41', NULL),
(5, 'Thùng', 'hoat_dong', '2025-08-23 21:13:36', '2025-08-23 21:13:36', NULL),
(6, 'Cái', 'hoat_dong', '2025-08-23 21:13:36', '2025-08-23 21:13:36', NULL),
(7, 'Màu đỏ', 'hoat_dong', '2025-08-23 21:19:47', '2025-08-23 21:19:47', NULL),
(8, 'Màu xám', 'hoat_dong', '2025-08-23 21:20:19', '2025-08-23 21:20:19', NULL),
(9, 'Lọ (265ml)', 'hoat_dong', '2025-08-23 22:20:14', '2025-08-23 22:20:14', NULL),
(10, 'Hộp (30 ống)', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL),
(11, 'Màu xanh', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL),
(12, 'Màu Trắng', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL),
(13, 'Màu Đen', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL),
(14, 'Màu Vàng', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL),
(15, 'Size M', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL),
(16, 'Size L', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL),
(17, 'Size S', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL),
(18, 'Size XL', 'hoat_dong', '2025-09-07 22:21:36', '2025-09-07 22:21:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ma_giamgia`
--

CREATE TABLE `ma_giamgia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `magiamgia` varchar(255) NOT NULL,
  `mota` mediumtext DEFAULT NULL,
  `giatri` decimal(15,2) NOT NULL,
  `dieukien` enum('tatca','donhang_toi_thieu_500k','sanpham_cu_the_ban_cham','khachhang_moi','khachhang_than_thiet','lan_dau_mua','the_loai_cu_the_ban_cham') NOT NULL DEFAULT 'tatca' COMMENT 'Điều kiện áp dụng mã giảm giá',
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
(1, 'FLASHSALE99', 'Giảm 99K cho đơn hàng trong ngày 9.9', 99000.00, 'donhang_toi_thieu_500k', '2025-09-09 00:00:00', '2025-09-09 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'NEWUSER100', 'Voucher 100K cho khách hàng mới', 100000.00, 'khachhang_moi', '2025-09-01 00:00:00', '2025-12-31 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 'FREESHIP50', 'Giảm tối đa 50K phí ship', 50000.00, 'tatca', '2025-09-01 00:00:00', '2025-11-30 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 'BIRTHDAY200', 'Giảm 200K cho khách hàng sinh nhật trong tháng', 200000.00, 'khachhang_than_thiet', '2025-01-01 00:00:00', '2025-12-31 23:59:59', 'tam_khoa', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 'BLACKFRIDAY25', 'Giảm 25% cho toàn bộ đơn hàng Black Friday', 250000.00, 'tatca', '2025-11-28 00:00:00', '2025-11-28 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 'XMAS150', 'Giáng Sinh - Giảm 150K', 150000.00, 'tatca', '2025-12-20 00:00:00', '2025-12-25 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 'CLEARANCE50', 'Giảm 50% cho hàng tồn kho', 500000.00, 'the_loai_cu_the_ban_cham', '2025-08-01 00:00:00', '2025-08-31 23:59:59', 'het_han', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 'VIPCUSTOMER20', 'Giảm 20% cho khách VIP', 200000.00, 'khachhang_than_thiet', '2025-09-01 00:00:00', '2025-12-31 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 'HALLOWEEN66', 'Halloween Sale - Giảm 66K', 66000.00, 'tatca', '2025-10-31 00:00:00', '2025-10-31 23:59:59', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 'TET2026', 'Tết 2026 - Giảm 300K', 300000.00, 'tatca', '2026-01-15 00:00:00', '2026-02-05 23:59:59', 'da_xoa', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

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
(31, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(32, '2019_08_19_000000_create_failed_jobs_table', 1),
(33, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(34, '2025_09_17_232154_create_nguoi_dung_table', 1),
(35, '2025_09_17_233959_create_diachi_nguoidung_table', 1),
(36, '2025_09_17_235133_create_thongtin_nguoibanhang_table', 1),
(37, '2025_09_18_000154_create_loai_bienthe_table', 1),
(38, '2025_09_18_001910_create_danh_muc_table', 1),
(39, '2025_09_18_002414_create_san_pham_table', 1),
(40, '2025_09_18_002523_create_gio_hang_table', 1),
(41, '2025_09_18_002524_create_bienthe_sp_table', 1),
(42, '2025_09_18_002543_create_sanpham_danhmuc_table', 1),
(43, '2025_09_18_003946_create_chuongtrinhsukien_table', 1),
(44, '2025_09_18_004441_create_quatang_khuyenmai_table', 1),
(45, '2025_09_18_005904_create_danh_gia_table', 1),
(46, '2025_09_18_011306_create_yeu_thich_table', 1),
(47, '2025_09_18_011826_create_ma_giamgia_table', 1),
(48, '2025_09_18_012704_create_phuongthuc_thanhtoan_table', 1),
(49, '2025_09_18_012705_create_don_hang_table', 1),
(50, '2025_09_18_013303_create_chitiet_donhang_table', 1),
(51, '2025_09_18_013652_create_thanh_toan_table', 1),
(52, '2025_09_18_085022_create_anh_sanpham_table', 1),
(53, '2025_09_18_113543_create_hanhvi_nguoidung_table', 1),
(54, '2025_09_20_104150_create_password_resets_table', 1),
(55, '2025_09_21_103939_create_ai_training_data_table', 1),
(56, '2025_09_27_235319_reset_all_tables', 1),
(57, '2025_10_01_053346_create_tu_khoa_table', 1),
(58, '2025_10_01_084452_create_banner_quangcao_table', 1),
(59, '2025_10_01_084803_create_thongbao_table', 1),
(60, '2025_10_08_114815_create_bai_viet_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT '123456789',
  `avatar` varchar(255) NOT NULL DEFAULT 'uploads/nguoidung/avatar/nguoidung.png',
  `hoten` varchar(255) DEFAULT NULL,
  `gioitinh` enum('nam','nữ') NOT NULL DEFAULT 'nam' COMMENT 'Giới tính',
  `ngaysinh` date DEFAULT NULL,
  `sodienthoai` varchar(15) DEFAULT NULL,
  `vaitro` enum('user','admin','seller') NOT NULL DEFAULT 'user',
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
(1, 'admin@example.com', NULL, '$2y$12$Wo5eet7eqZm77WJsUKX2..TmZHK4bMGW5AjbUNBMdx3CIp9kHhZVK', 'uploads/nguoidung/avatar/nguoidung.png', 'Admin', 'nam', '2000-12-13', '0997654321', 'admin', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(2, 'seller@example.com', NULL, '$2y$12$X6ghGqIxGZyNJJABBP4O9.FmlA5O0Nxr9gOwgVcpG/OSMpafwh/qu', 'uploads/nguoidung/avatar/nguoidung.png', 'seller', 'nam', '2000-11-11', '0991654321', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(3, 'user3@example.com', NULL, '$2y$12$IXyGgAFool77H30RiNod0uonXX/2ZLVO5yJmnygqlZi9IRrhaE9uW', 'uploads/nguoidung/avatar/nguoidung.png', 'User 3', 'nữ', '2000-04-04', '0987654323', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(4, 'user4@example.com', NULL, '$2y$12$I8RTSWmZACrHAH3TjWnZIueoD36uTCK47Z8PyGVlfvLNyOmerkqwy', 'uploads/nguoidung/avatar/nguoidung.png', 'User 4', 'nam', '2000-05-05', '0987654324', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(5, 'user5@example.com', NULL, '$2y$12$P2430pfQKnDhnM8ij5gYG.LzMJPyKFHd3VmHwU4vI3hJD0lpZ4i2q', 'uploads/nguoidung/avatar/nguoidung.png', 'User 5', 'nữ', '2000-06-06', '0987654325', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(6, 'user6@example.com', NULL, '$2y$12$39Lt10RiFIBkFsHqtNDA9u9pL7tsgKx5uN7rvvm.oLszeP2he/sZK', 'uploads/nguoidung/avatar/nguoidung.png', 'User 6', 'nam', '2000-07-07', '0987654326', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(7, 'user7@example.com', NULL, '$2y$12$0g8EsG1m78DXg9MuI1XXVOkxRzYHO/YZc8EPiyrEYqYJ0JtcJN062', 'uploads/nguoidung/avatar/nguoidung.png', 'User 7', 'nữ', '2000-08-08', '0987654327', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(8, 'user8@example.com', NULL, '$2y$12$M18ePGpMeJU0nPNIPV5kEePMhWEtFTPCUwj46uYqWf1PAf5X/xD.G', 'uploads/nguoidung/avatar/nguoidung.png', 'User 8', 'nam', '2000-09-09', '0987654328', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(9, 'user9@example.com', NULL, '$2y$12$Pd4dCGFno3mXInCIh2hKB.ofw9My8FmNJ4FdC/gniHE6dHJGAx3nO', 'uploads/nguoidung/avatar/nguoidung.png', 'User 9', 'nữ', '2000-10-10', '0987654329', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(10, 'user10@example.com', NULL, '$2y$12$3lU7uD7GO3gASIepYTfOpOLfJXlg8VlP68ekd7N2E6mh4oJo5KEsG', 'uploads/nguoidung/avatar/nguoidung.png', 'User 10', 'nam', '2000-11-11', '09876543210', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(11, 'user11@example.com', NULL, '$2y$12$nEalfTPzCasC30qN.kgS..CtwT3LoNqZofw6IUIoazjFpBA976Rme', 'uploads/nguoidung/avatar/nguoidung.png', 'User 11', 'nữ', '2000-12-12', '09876543211', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(12, 'user12@example.com', NULL, '$2y$12$tsZ7C4LWVyUsx9fIX/ix9O.yw48I0nqrzlKW6PfnynC5FKt31b88O', 'uploads/nguoidung/avatar/nguoidung.png', 'User 12', 'nam', '2000-01-13', '09876543212', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(13, 'user13@example.com', NULL, '$2y$12$zhU6.anJUvnINmEsfQxfMec6RZFC3KfN03SGgQwYQhuQnifdEwyqW', 'uploads/nguoidung/avatar/nguoidung.png', 'User 13', 'nữ', '2000-02-14', '09876543213', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(14, 'user14@example.com', NULL, '$2y$12$uVSx9BCbLAxgtiM4.ZwWKuuccHo3IJNrAsWiJmxtc2PlPOqYQYCKO', 'uploads/nguoidung/avatar/nguoidung.png', 'User 14', 'nam', '2000-03-15', '09876543214', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(15, 'user15@example.com', NULL, '$2y$12$LuM557G.oZvU0cZZtdPTK.MvchyQ9Xxe9FJdU5xSy/cXUZB6dyLZa', 'uploads/nguoidung/avatar/nguoidung.png', 'User 15', 'nữ', '2000-04-16', '09876543215', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(16, 'user16@example.com', NULL, '$2y$12$inTaLeJdtwXRukdq0L831.JkfZv5/8RtfTLBZHy1z2A6jEnuDiu2C', 'uploads/nguoidung/avatar/nguoidung.png', 'User 16', 'nam', '2000-05-17', '09876543216', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(17, 'user17@example.com', NULL, '$2y$12$U3OuDVovWpd5zB9H7mSnFOD5OujQcIwDU3PsSSpExO8n9u8xcIjDq', 'uploads/nguoidung/avatar/nguoidung.png', 'User 17', 'nữ', '2000-06-18', '09876543217', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(18, 'user18@example.com', NULL, '$2y$12$ubvpKAh2kV36UOrIt78ws.HvDUeQtsBM.UL6s0NqSuoSNKzLb4rsO', 'uploads/nguoidung/avatar/nguoidung.png', 'User 18', 'nam', '2000-07-19', '09876543218', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(19, 'user19@example.com', NULL, '$2y$12$KaEBF8Ytl52.B7Z70HazWuPZtt5W8jy7xePnW6APBCXDUZeeD6itO', 'uploads/nguoidung/avatar/nguoidung.png', 'User 19', 'nữ', '2000-08-20', '09876543219', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(20, 'user20@example.com', NULL, '$2y$12$WQjbvSnO4Nj.RrBv0LW4/OpRKGJ5dPiaHOWaON08fXufETnbqZS3.', 'uploads/nguoidung/avatar/nguoidung.png', 'User 20', 'nam', '2000-09-21', '09876543220', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(21, 'user21@example.com', NULL, '$2y$12$M1ziSIYEGHpCk7jx4muGEe9AfcnUWV8aQNr5EksL2of68NTInltlO', 'uploads/nguoidung/avatar/nguoidung.png', 'User 21', 'nữ', '2000-10-22', '09876543221', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(22, 'user22@example.com', NULL, '$2y$12$YQzh9GC6kLOP1XR94llqyuKmfXoxAV1yfF2jk1f6FOPCyc9B6126K', 'uploads/nguoidung/avatar/nguoidung.png', 'User 22', 'nam', '2000-11-23', '09876543222', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(23, 'user23@example.com', NULL, '$2y$12$mDeBAScu1eoahZWhlXe47OZAu2Rd5QigJ8XfKRaCMhhkvz5V.7.Vq', 'uploads/nguoidung/avatar/nguoidung.png', 'User 23', 'nữ', '2000-12-24', '09876543223', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(24, 'user24@example.com', NULL, '$2y$12$ZaM/cFkkn3RiZTKMuuhlP.TB7QbYQ25HRWZpsS082LlwIZ5p6Qak.', 'uploads/nguoidung/avatar/nguoidung.png', 'User 24', 'nam', '2000-01-25', '09876543224', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(25, 'user25@example.com', NULL, '$2y$12$DNI4U9jpOxmBOWWCJn0zwuQsYLUHrjQoYuF6aK4WlZZKuFvHR3pqi', 'uploads/nguoidung/avatar/nguoidung.png', 'User 25', 'nữ', '2000-02-26', '09876543225', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(26, 'user26@example.com', NULL, '$2y$12$gn1YYjl1PVm0XemlAwuiwORc3fhiMDGUqclW2Q6ho8iNWzliRwz0.', 'uploads/nguoidung/avatar/nguoidung.png', 'User 26', 'nam', '2000-03-27', '09876543226', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(27, 'user27@example.com', NULL, '$2y$12$MCPbIJfgY.Wm9mWryiKckOPBEbUmZpGP2JErPzkkrYUDYqLwhihES', 'uploads/nguoidung/avatar/nguoidung.png', 'User 27', 'nữ', '2000-04-28', '09876543227', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(28, 'user28@example.com', NULL, '$2y$12$rp5gkJKNz02hSpXRCYJrMeyiiE0PAf2zD75NWSDftejYXdXOO7tdy', 'uploads/nguoidung/avatar/nguoidung.png', 'User 28', 'nam', '2000-05-01', '09876543228', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(29, 'user29@example.com', NULL, '$2y$12$gLBNOLZrDqSfW4fvqGLKqeo0hYAHb6pl0zaaXQkf0dj/GR5D/2Nya', 'uploads/nguoidung/avatar/nguoidung.png', 'User 29', 'nữ', '2000-06-02', '09876543229', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(30, 'user30@example.com', NULL, '$2y$12$HKBNLmPHxozFZZi6XoHS8ufDhvbqsFNKhZ9PMZkcVAV9M/e28nFxm', 'uploads/nguoidung/avatar/nguoidung.png', 'User 30', 'nam', '2000-07-03', '09876543230', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL),
(31, 'user31@example.com', NULL, '$2y$12$toWa5rYmWp3NRS6bIJQqRuXpZzYsKV4X84j.5ypu4zhfdcRtghrGe', 'uploads/nguoidung/avatar/nguoidung.png', 'User 31', 'nữ', '2000-08-04', '09876543231', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-08 12:28:52', '2025-10-08 12:28:52', NULL);

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
-- Cấu trúc bảng cho bảng `phuongthuc_thanhtoan`
--

CREATE TABLE `phuongthuc_thanhtoan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(100) NOT NULL,
  `ma` varchar(50) NOT NULL,
  `mota` text DEFAULT NULL,
  `trangthai` enum('hoat_dong','ngung_hoat_dong') NOT NULL DEFAULT 'hoat_dong',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuongthuc_thanhtoan`
--

INSERT INTO `phuongthuc_thanhtoan` (`id`, `ten`, `ma`, `mota`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Chuyển khoản ngân hàng trực tiếp', 'dbt', 'Khách hàng thanh toán trực tiếp bằng chuyển khoản ngân hàng. Sau khi chuyển, vui lòng gửi minh chứng để xác nhận đơn hàng.', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 'Kiểm tra thanh toán', 'cp', 'Phương thức dành cho các đơn hàng cần xác nhận thủ công trước khi hoàn tất thanh toán (Check payments).', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 'Thanh toán khi nhận hàng (COD)', 'cod', 'Khách hàng thanh toán trực tiếp bằng tiền mặt cho nhân viên giao hàng khi nhận sản phẩm.', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatang_khuyenmai`
--

CREATE TABLE `quatang_khuyenmai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `mota` text DEFAULT NULL,
  `ngaybatdau` datetime NOT NULL DEFAULT current_timestamp(),
  `ngayketthuc` datetime NOT NULL DEFAULT current_timestamp(),
  `soluongapdung` int(11) NOT NULL COMMENT 'Số lượng áp dụng giảm giá, ví dụ: mua 2 giảm 50%, mua 2 tặng 1',
  `kieuapdung` enum('giam_%','tang_1') NOT NULL COMMENT 'Kiểu áp dụng khuyến mãi: giảm theo %, hoặc tặng sản phẩm',
  `id_bienthe` bigint(20) UNSIGNED NOT NULL,
  `id_cuahang` bigint(20) UNSIGNED NOT NULL,
  `id_chuongtrinhsukien` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quatang_khuyenmai`
--

INSERT INTO `quatang_khuyenmai` (`id`, `soluong`, `mota`, `ngaybatdau`, `ngayketthuc`, `soluongapdung`, `kieuapdung`, `id_bienthe`, `id_cuahang`, `id_chuongtrinhsukien`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Khuyến mãi mùa lễ hội - mua 2 tặng 1 cho các sản phẩm chăm sóc cá nhân.', '2025-10-10 19:28:58', '2025-10-23 19:28:58', 2, 'tang_1', 1, 1, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 2, 'Giảm 20% cho đơn hàng trên 500.000đ.', '2025-10-13 19:28:58', '2025-10-28 19:28:58', 2, 'giam_%', 2, 1, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 2, 'Mua 3 sản phẩm bất kỳ - giảm ngay 30%.', '2025-10-18 19:28:58', '2025-11-07 19:28:58', 3, 'giam_%', 3, 2, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 2, 'Mua 2 tặng 1 cho tất cả sản phẩm sữa bột.', '2025-10-11 19:28:58', '2025-10-26 19:28:58', 2, 'tang_1', 4, 3, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 2, 'Giảm giá 15% toàn bộ sản phẩm thể thao Adidas.', '2025-10-09 19:28:58', '2025-10-18 19:28:58', 1, 'giam_%', 5, 4, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 2, 'Ưu đãi đặc biệt nhân dịp khai trương - giảm ngay 25% cho toàn bộ sản phẩm.', '2025-10-09 19:28:58', '2025-10-15 19:28:58', 1, 'giam_%', 6, 5, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 2, 'Giảm 10% khi mua combo 2 sản phẩm thời trang mùa đông.', '2025-10-12 19:28:58', '2025-10-22 19:28:58', 2, 'giam_%', 7, 6, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 2, 'Tặng kèm túi vải khi mua giày thể thao chính hãng.', '2025-10-11 19:28:58', '2025-10-21 19:28:58', 1, 'tang_1', 8, 7, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 2, 'Giảm giá 50.000đ cho đơn hàng trên 300.000đ.', '2025-10-10 19:28:58', '2025-10-20 19:28:58', 1, 'tang_1', 9, 8, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 3, 'Flash Sale cuối tuần - giảm 40% cho tất cả sản phẩm công nghệ.', '2025-10-14 19:28:58', '2025-10-16 19:28:58', 1, 'giam_%', 10, 9, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(11, 3, 'Tặng thêm 1 sản phẩm bất kỳ khi mua đơn hàng trên 1.000.000đ.', '2025-10-13 19:28:58', '2025-10-23 19:28:58', 1, 'tang_1', 11, 10, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(12, 3, 'Mua 4 sản phẩm cùng loại - giảm ngay 25%.', '2025-10-15 19:28:58', '2025-10-25 19:28:58', 4, 'giam_%', 12, 1, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

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
(1, 16, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 20, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 6, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 2, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 20, 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(6, 7, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(7, 22, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(8, 3, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(9, 4, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(10, 15, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58');

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
  `mediaurl` text NOT NULL DEFAULT 'uploads/sanpham/mediaurl/sanpham.png',
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'hoat_dong',
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `id_cuahang` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `mota`, `xuatxu`, `sanxuat`, `mediaurl`, `trangthai`, `luotxem`, `id_cuahang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vitamin C 500mg', 'Viên uống tăng sức đề kháng.', 'Mỹ', 'Nature Made', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 120, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 'Sữa rửa mặt dịu nhẹ', 'Phù hợp cho da nhạy cảm.', 'Hàn Quốc', 'Innisfree', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 90, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 'Máy đo huyết áp Omron', 'Dụng cụ theo dõi sức khỏe tại nhà.', 'Nhật Bản', 'Omron', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 250, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 'Nồi chiên không dầu 5L', 'Nấu ăn nhanh chóng, ít dầu mỡ.', 'Trung Quốc', 'Philips', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 310, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 'Khẩu trang y tế 4 lớp', 'Hộp 50 cái, chống bụi và vi khuẩn.', 'Việt Nam', 'VinMask', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 400, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 'Sữa tắm dưỡng ẩm Dove', 'Dưỡng ẩm cho làn da mềm mịn.', 'Anh', 'Unilever', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 180, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 'Sữa bột Abbott Grow', 'Dành cho trẻ từ 2 tuổi trở lên.', 'Mỹ', 'Abbott', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 500, 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 'Áo sơ mi nam trắng', 'Chất liệu cotton thoáng mát.', 'Việt Nam', 'Canifa', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 350, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 'Giày sneaker Adidas', 'Phong cách thể thao, năng động.', 'Đức', 'Adidas', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 600, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 'Bột giặt OMO Matic', 'Giặt sạch vết bẩn, hương thơm lâu.', 'Việt Nam', 'Unilever', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 270, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(11, 'Laptop Dell Inspiron 15', 'Máy tính xách tay cho công việc và học tập.', 'Mỹ', 'Dell', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 800, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(12, 'Điện thoại iPhone 15 Pro', 'Công nghệ mới nhất từ Apple.', 'Mỹ', 'Apple', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 2000, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(13, 'Tai nghe AirPods Pro', 'Chống ồn chủ động, pin lâu.', 'Mỹ', 'Apple', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 1500, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(14, 'Tivi Samsung 55 inch 4K', 'Màn hình sắc nét, giải trí đỉnh cao.', 'Hàn Quốc', 'Samsung', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 1200, 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(15, 'Máy giặt LG Inverter', 'Tiết kiệm điện và nước.', 'Hàn Quốc', 'LG', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 950, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(16, 'Quạt điều hòa Sunhouse', 'Làm mát nhanh, tiết kiệm điện.', 'Việt Nam', 'Sunhouse', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 410, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(17, 'Bàn chải điện Oral-B', 'Chăm sóc răng miệng hiện đại.', 'Đức', 'Oral-B', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 300, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(18, 'Bánh quy Oreo', 'Bánh ngọt nhân kem sữa.', 'Mỹ', 'Oreo', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 720, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(19, 'Nước ngọt Coca-Cola', 'Thức uống có gas, giải khát nhanh.', 'Mỹ', 'Coca-Cola', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 2000, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(20, 'Trà xanh Lipton', 'Thức uống giải nhiệt, hương vị tự nhiên.', 'Anh', 'Lipton', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 650, 1, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(21, 'Cà phê Trung Nguyên', 'Cà phê rang xay nguyên chất, hương vị đậm đà.', 'Việt Nam', 'Trung Nguyên Legend', 'uploads/sanpham/mediaurl/sanpham.png', 'cho_duyet', 820, NULL, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(22, 'Sữa tươi TH True Milk', 'Sản phẩm sữa tươi sạch từ trang trại TH.', 'Việt Nam', 'TH Group', 'uploads/sanpham/mediaurl/sanpham.png', 'cho_duyet', 940, NULL, '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

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
(1, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #3, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #4, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #5, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #6, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #7, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(6, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #8, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(7, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #9, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(8, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #10, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(9, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #11, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 11, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(10, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #12, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 12, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(11, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #13, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 13, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(12, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #14, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 14, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(13, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #15, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 15, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(14, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #16, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 16, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(15, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #17, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 17, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(16, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #18, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 18, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(17, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #19, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 19, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(18, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #20, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 20, '2025-10-08 12:28:58', '2025-10-08 12:28:58');

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
  `logo` varchar(255) NOT NULL DEFAULT 'uploads/cuahang/logo/logo.png',
  `bianen` varchar(255) NOT NULL DEFAULT 'uploads/cuahang/bianen/bianen.png',
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
(1, 21, 'Shop Sức Khỏe Xanh', 'GP-1001', 120, 50, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Chuyên cung cấp vitamin và thực phẩm chức năng.', '123 Lê Lợi, Hà Nội', '0901000001', 'shop1@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(2, 22, 'Mỹ Phẩm Thiên Nhiên', 'GP-1002', 230, 120, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Mỹ phẩm organic cho da nhạy cảm.', '45 Nguyễn Huệ, TP.HCM', '0901000002', 'shop2@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(3, 23, 'Thiết Bị Y Tế Omron', 'GP-1003', 500, 300, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Máy đo huyết áp, máy xông khí dung chính hãng.', '89 Hai Bà Trưng, Đà Nẵng', '0901000003', 'shop3@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(4, 24, 'Gia Dụng Nhà Bếp', 'GP-1004', 320, 210, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Nồi chiên, máy ép trái cây, bếp điện...', '77 Nguyễn Văn Cừ, Cần Thơ', '0901000004', 'shop4@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(5, 25, 'Khẩu Trang VinMask', 'GP-1005', 150, 90, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Khẩu trang y tế 4 lớp chất lượng cao.', '12 Hoàng Hoa Thám, Hải Phòng', '0901000005', 'shop5@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(6, 26, 'Dove Care', 'GP-1006', 410, 300, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Các sản phẩm chăm sóc da của Dove.', '59 Cách Mạng Tháng 8, TP.HCM', '0901000006', 'shop6@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(7, 27, 'Abbott Grow Store', 'GP-1007', 600, 450, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Sữa bột và dinh dưỡng trẻ em.', '88 Điện Biên Phủ, Hà Nội', '0901000007', 'shop7@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(8, 28, 'Thời Trang Nam Canifa', 'GP-1008', 720, 310, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Áo sơ mi, quần tây, vest nam.', '20 Bạch Mai, Hà Nội', '0901000008', 'shop8@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(9, 29, 'Adidas Official', 'GP-1009', 1200, 800, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Giày sneaker, quần áo thể thao Adidas.', '101 Láng Hạ, Hà Nội', '0901000009', 'shop9@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL),
(10, 30, 'OMO Matic Store', 'GP-1010', 650, 500, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Bột giặt và sản phẩm giặt tẩy.', '45 Võ Văn Ngân, Thủ Đức', '0901000010', 'shop10@example.com', 'hoat_dong', '2025-10-08 12:28:58', '2025-10-08 12:28:58', NULL);

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
(1, 'Chăm sóc cá nhân', 150, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 'Làm đẹp', 200, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 'Tìm kiếm sản phẩm', 80, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 'Thực phâm thức năng', 120, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 'Điện máy', 90, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(6, 'Thời trang', 70, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(7, 'Bách hóa', 70, '2025-10-08 12:28:58', '2025-10-08 12:28:58');

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
(1, 'dang_thich', 1, 2, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(2, 'dang_thich', 2, 3, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(3, 'bo_thich', 3, 4, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(4, 'dang_thich', 4, 5, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(5, 'dang_thich', 5, 6, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(6, 'bo_thich', 6, 7, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(7, 'dang_thich', 7, 8, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(8, 'dang_thich', 8, 9, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(9, 'dang_thich', 9, 10, '2025-10-08 12:28:58', '2025-10-08 12:28:58'),
(10, 'bo_thich', 10, 11, '2025-10-08 12:28:58', '2025-10-08 12:28:58');

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
-- Chỉ mục cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bai_viet_id_nguoidung_foreign` (`id_nguoidung`);

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
-- Chỉ mục cho bảng `chuongtrinhsukien`
--
ALTER TABLE `chuongtrinhsukien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chuongtrinhsukien_ten_unique` (`ten`);

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
  ADD UNIQUE KEY `don_hang_ma_donhang_unique` (`ma_donhang`),
  ADD KEY `don_hang_id_nguoidung_foreign` (`id_nguoidung`),
  ADD KEY `don_hang_id_magiamgia_foreign` (`id_magiamgia`),
  ADD KEY `don_hang_id_phuongthuc_thanhtoan_foreign` (`id_phuongthuc_thanhtoan`);

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
  ADD UNIQUE KEY `gio_hang_id_sanpham_id_nguoidung_unique` (`id_sanpham`,`id_nguoidung`),
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
-- Chỉ mục cho bảng `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lichsu_thanhtoan_magiaodich_unique` (`magiaodich`),
  ADD KEY `lichsu_thanhtoan_id_donhang_foreign` (`id_donhang`),
  ADD KEY `lichsu_thanhtoan_id_phuongthuc_thanhtoan_foreign` (`id_phuongthuc_thanhtoan`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ma_giamgia_magiamgia_unique` (`magiamgia`);

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
-- Chỉ mục cho bảng `phuongthuc_thanhtoan`
--
ALTER TABLE `phuongthuc_thanhtoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phuongthuc_thanhtoan_ma_unique` (`ma`);

--
-- Chỉ mục cho bảng `quatang_khuyenmai`
--
ALTER TABLE `quatang_khuyenmai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quatang_khuyenmai_id_bienthe_foreign` (`id_bienthe`),
  ADD KEY `quatang_khuyenmai_id_cuahang_foreign` (`id_cuahang`),
  ADD KEY `quatang_khuyenmai_id_chuongtrinhsukien_foreign` (`id_chuongtrinhsukien`);

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
  ADD KEY `san_pham_id_cuahang_foreign` (`id_cuahang`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `chuongtrinhsukien`
--
ALTER TABLE `chuongtrinhsukien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `hanhvi_nguoidung`
--
ALTER TABLE `hanhvi_nguoidung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `loai_bienthe`
--
ALTER TABLE `loai_bienthe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `ma_giamgia`
--
ALTER TABLE `ma_giamgia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
-- AUTO_INCREMENT cho bảng `phuongthuc_thanhtoan`
--
ALTER TABLE `phuongthuc_thanhtoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `quatang_khuyenmai`
--
ALTER TABLE `quatang_khuyenmai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sanpham_danhmuc`
--
ALTER TABLE `sanpham_danhmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `thongtin_nguoibanhang`
--
ALTER TABLE `thongtin_nguoibanhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- Các ràng buộc cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD CONSTRAINT `bai_viet_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON UPDATE CASCADE;

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
  ADD CONSTRAINT `chitiet_donhang_id_bienthe_foreign` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe_sp` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiet_donhang_id_donhang_foreign` FOREIGN KEY (`id_donhang`) REFERENCES `don_hang` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD CONSTRAINT `danh_gia_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `danh_gia_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `diachi_nguoidung`
--
ALTER TABLE `diachi_nguoidung`
  ADD CONSTRAINT `diachi_nguoidung_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_id_magiamgia_foreign` FOREIGN KEY (`id_magiamgia`) REFERENCES `ma_giamgia` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `don_hang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `don_hang_id_phuongthuc_thanhtoan_foreign` FOREIGN KEY (`id_phuongthuc_thanhtoan`) REFERENCES `phuongthuc_thanhtoan` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `gio_hang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `gio_hang_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hanhvi_nguoidung`
--
ALTER TABLE `hanhvi_nguoidung`
  ADD CONSTRAINT `hanhvi_nguoidung_id_bienthe_foreign` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe_sp` (`id`),
  ADD CONSTRAINT `hanhvi_nguoidung_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `hanhvi_nguoidung_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  ADD CONSTRAINT `lichsu_thanhtoan_id_donhang_foreign` FOREIGN KEY (`id_donhang`) REFERENCES `don_hang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lichsu_thanhtoan_id_phuongthuc_thanhtoan_foreign` FOREIGN KEY (`id_phuongthuc_thanhtoan`) REFERENCES `phuongthuc_thanhtoan` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `quatang_khuyenmai`
--
ALTER TABLE `quatang_khuyenmai`
  ADD CONSTRAINT `quatang_khuyenmai_id_bienthe_foreign` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe_sp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quatang_khuyenmai_id_chuongtrinhsukien_foreign` FOREIGN KEY (`id_chuongtrinhsukien`) REFERENCES `chuongtrinhsukien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quatang_khuyenmai_id_cuahang_foreign` FOREIGN KEY (`id_cuahang`) REFERENCES `thongtin_nguoibanhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham_danhmuc`
--
ALTER TABLE `sanpham_danhmuc`
  ADD CONSTRAINT `sanpham_danhmuc_id_danhmuc_foreign` FOREIGN KEY (`id_danhmuc`) REFERENCES `danh_muc` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_danhmuc_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_id_cuahang_foreign` FOREIGN KEY (`id_cuahang`) REFERENCES `thongtin_nguoibanhang` (`id`) ON DELETE CASCADE;

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
-- Các ràng buộc cho bảng `yeu_thich`
--
ALTER TABLE `yeu_thich`
  ADD CONSTRAINT `yeu_thich_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `yeu_thich_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
