-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 26, 2025 lúc 10:45 AM
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
-- Cơ sở dữ liệu: `laravel_ecomvina_v4`
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
(1, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 'uploads/anh_sanpham/media/anh_sanpham.png', 'ngung_hoat_dong', 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 'uploads/anh_sanpham/media/anh_sanpham.png', 'ngung_hoat_dong', 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 'uploads/anh_sanpham/media/anh_sanpham.png', 'ngung_hoat_dong', 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 'uploads/anh_sanpham/media/anh_sanpham.png', 'cho_duyet', 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(11, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(12, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(13, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(14, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(15, 'uploads/anh_sanpham/media/anh_sanpham.png', 'hoat_dong', 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

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
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `id_nguoidung`, `tieude`, `slug`, `noidung`, `luotxem`, `hinhanh`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'Kinh Đô là một thương hiệu gắn liền với trung thu tại việt nam.', 'kinh-do-la-mot-thuong-hieu-gan-lien-voi-trung-thu-tai-viet-nam', 'Kinh Đô là một thương hiệu gắn liền với ngành bánh kẹo và thực phẩm của Việt Nam, nổi tiếng với các sản phẩm được người tiêu dùng cả nước ưa chuộng, đặc biệt là trong các dịp lễ, Tết.', 2, 'kinh-do-trung-thu.png', 'Hiển thị', '2025-10-15 09:50:51', '2025-10-15 07:11:03', NULL);

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
(1, 'Siêu Thị Vina Khai Trương Chi Nhánh Mới Tại Quận 1', 'Khám phá không gian mua sắm hiện đại với hàng ngàn sản phẩm chất lượng', '<p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 150, 'đã xuất bản', 1, '2025-10-26 09:17:35', '2025-10-26 09:17:35', NULL),
(2, 'Cẩm Nang Chăm Sóc Sức Khỏe Mùa Hè', 'Bí quyết bảo vệ sức khỏe cho cả gia đình trong những ngày nắng nóng', '<p>Mùa hè với thời tiết nắng nóng dễ khiến cơ thể mệt mỏi. Bài viết cung cấp những tips chăm sóc sức khỏe hiệu quả từ các chuyên gia.</p>', 89, 'đã xuất bản', 1, '2025-10-25 09:17:35', '2025-10-25 09:17:35', NULL),
(3, 'Thiết Bị Y Tế Gia Đình - Nên Có Những Gì?', 'Danh sách các thiết bị y tế cần thiết cho mỗi gia đình', '<p>Từ nhiệt kế, máy đo huyết áp đến tủ thuốc gia đình, đâu là những thiết bị y tế không thể thiếu trong mỗi gia đình hiện đại?</p>', 203, 'đã xuất bản', 1, '2025-10-24 09:17:35', '2025-10-24 09:17:35', NULL),
(4, 'Xu Hướng Điện Máy Xanh 2024', 'Các thiết bị điện máy tiết kiệm điện năng đang được ưa chuộng', '<p>Cùng điểm qua những xu hướng điện máy xanh đang thịnh hành trong năm 2024 và lợi ích mà chúng mang lại.</p>', 167, 'đã lưu trữ', 1, '2025-10-23 09:17:35', '2025-10-23 09:17:35', NULL),
(5, 'Bách Hóa Siêu Thị Vina - Đa Dạng Sản Phẩm', 'Khám phá thế giới bách hóa đa dạng với hàng ngàn mặt hàng', '<p>Từ thực phẩm khô đến đồ gia dụng, bách hóa Siêu Thị Vina đáp ứng mọi nhu cầu thiết yếu của gia đình bạn.</p>', 95, 'đã xuất bản', 1, '2025-10-22 09:17:35', '2025-10-22 09:17:35', NULL),
(6, 'Nhà Cửa Đời Sống - Tổ Ấm Của Bạn', 'Cải thiện không gian sống với các sản phẩm nhà cửa đời sống', '<p>Những gợi ý trang trí và cải tạo không gian sống từ các sản phẩm nhà cửa đời sống tại Siêu Thị Vina.</p>', 78, 'đang chờ duyệt', 1, '2025-10-21 09:17:35', '2025-10-21 09:17:35', NULL),
(7, 'Mẹ Và Bé - Hành Trình Làm Mẹ', 'Đồng hành cùng mẹ trong hành trình chăm sóc bé yêu', '<p>Chuyên mục chia sẻ kinh nghiệm chăm sóc mẹ và bé với các sản phẩm chất lượng, an toàn.</p>', 234, 'đã xuất bản', 1, '2025-10-20 09:17:35', '2025-10-20 09:17:35', NULL),
(8, 'Thời Trang Công Sở - Phong Cách Mới', 'Cập nhật xu hướng thời trang công sở 2024', '<p>Những items thời trang công sở không thể thiếu trong tủ đồ của bạn mùa này.</p>', 145, 'đã xuất bản', 1, '2025-10-19 09:17:35', '2025-10-19 09:17:35', NULL),
(9, 'Làm Đẹp Tự Nhiên - Bí Quyết Từ Chuyên Gia', 'Bật mí bí quyết làm đẹp an toàn và hiệu quả', '<p>Khám phá những phương pháp làm đẹp tự nhiên cùng các sản phẩm chăm sóc da chất lượng.</p>', 189, 'nháp', 1, '2025-10-18 09:17:35', '2025-10-18 09:17:35', NULL),
(10, 'Chăm Sóc Cá Nhân - Nâng Tầm Cuộc Sống', 'Sản phẩm chăm sóc cá nhân cao cấp cho cuộc sống hiện đại', '<p>Nâng cao chất lượng cuộc sống với các sản phẩm chăm sóc cá nhân đến từ thương hiệu uy tín.</p>', 112, 'đã xuất bản', 1, '2025-10-17 09:17:35', '2025-10-17 09:17:35', NULL);

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
(1, 'header', 'banner1.jpg', 'https://fpt.edu.vn', 'Chào mừng đến với FPT Polytechnic', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 'sidebar', 'banner2.jpg', 'https://shopee.vn', 'Mua sắm giảm giá 50%', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 'footer', 'banner3.jpg', 'https://tiki.vn', 'Flash Sale cuối tuần', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 'main', 'banner4.jpg', 'https://lazada.vn', 'Khuyến mãi đặc biệt hôm nay', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 'popup', 'banner5.jpg', 'https://tiktok.com', 'Theo dõi chúng tôi trên TikTok', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34');

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
  `trangthai` enum('Còn hàng','Hết hàng','Sắp hết hàng') DEFAULT 'Còn hàng',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bienthe`
--

INSERT INTO `bienthe` (`id`, `id_loaibienthe`, `id_sanpham`, `giagoc`, `soluong`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 270000, 10, 'Còn hàng', '2025-10-10 06:56:49', '2025-10-10 06:56:49', NULL),
(2, 2, 2, 385000, 10, 'Còn hàng', '2025-10-10 07:05:14', '2025-10-10 07:05:14', NULL),
(3, 1, 3, 466560, 10, 'Còn hàng', '2025-10-10 07:06:58', '2025-10-10 07:06:58', NULL),
(4, 1, 4, 260000, 10, 'Còn hàng', '2025-10-10 07:06:58', '2025-10-10 07:06:58', NULL),
(5, 2, 5, 512000, 10, 'Còn hàng', '2025-10-10 07:19:41', '2025-10-10 07:19:41', NULL),
(6, 1, 6, 270000, 2, 'Còn hàng', '2025-10-11 14:57:46', '2025-10-11 14:57:46', NULL);

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
(1, 4136571.00, 3382800.00, 133, 'hoat_dong', 4, 4, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 2295129.00, 80882.00, 133, 'hoat_dong', 4, 20, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 104369.00, 63605.00, 170, 'hoat_dong', 1, 1, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 3112914.00, 2660481.00, 168, 'hoat_dong', 5, 3, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 2651368.00, 512277.00, 103, 'hoat_dong', 1, 7, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(6, 3841675.00, 0.00, 130, 'hoat_dong', 3, 3, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(7, 4702714.00, 0.00, 15, 'hoat_dong', 3, 20, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(8, 1707694.00, 1695982.00, 194, 'hoat_dong', 5, 19, 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(9, 4961315.00, 3346996.00, 41, 'hoat_dong', 5, 20, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(10, 2462767.00, 960008.00, 94, 'hoat_dong', 3, 5, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(11, 4777375.00, 0.00, 192, 'hoat_dong', 4, 10, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(12, 3656948.00, 1589903.00, 182, 'hoat_dong', 3, 18, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(13, 2715587.00, 0.00, 196, 'hoat_dong', 1, 16, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(14, 1443463.00, 0.00, 162, 'hoat_dong', 3, 19, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(15, 805053.00, 543212.00, 16, 'hoat_dong', 4, 15, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(16, 2627448.00, 1604072.00, 76, 'hoat_dong', 5, 4, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(17, 3337973.00, 0.00, 64, 'hoat_dong', 3, 13, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(18, 272768.00, 189418.00, 76, 'hoat_dong', 1, 11, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(19, 4067194.00, 0.00, 130, 'hoat_dong', 2, 16, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(20, 231181.00, 129860.00, 186, 'hoat_dong', 4, 10, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(21, 2264775.00, 912091.00, 55, 'hoat_dong', 4, 18, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(22, 3885184.00, 118335.00, 150, 'hoat_dong', 1, 17, 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(23, 2251057.00, 465782.00, 150, 'hoat_dong', 5, 9, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(24, 761297.00, 0.00, 7, 'hoat_dong', 5, 18, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(25, 621794.00, 163560.00, 57, 'hoat_dong', 3, 17, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(26, 4754626.00, 0.00, 141, 'hoat_dong', 1, 5, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(27, 3405941.00, 0.00, 79, 'hoat_dong', 2, 18, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(28, 4468017.00, 2896956.00, 188, 'hoat_dong', 4, 2, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(29, 806857.00, 0.00, 150, 'hoat_dong', 5, 4, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(30, 4213927.00, 3663906.00, 68, 'hoat_dong', 5, 14, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `id_bienthe`, `id_donhang`, `soluong`, `dongia`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 50000, '2025-10-15 05:21:29', '2025-10-15 05:21:29'),
(2, 5, 1, 1, 50000, '2025-10-15 05:21:29', '2025-10-15 05:21:29');

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
(1, 'Tuần Lễ Vàng - Flash Sale 9.9', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Sự kiện giảm giá lớn nhất cho sản phẩm Droppi màu vàng trên App Store - chỉ diễn ra trong 1 ngày!', '2025-09-09 00:00:00', '2025-09-09 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 'Tuần Lễ Vàng - Tuần lễ Vàng', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Chương trình khuyến mãi đặc biệt kéo dài 7 ngày dành riêng cho Droppi vàng.', '2025-10-01 00:00:00', '2025-10-07 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 'Tuần Lễ Vàng - Black Friday 2025', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Giảm giá sâu cho các sản phẩm Droppi màu vàng trên App Store nhân dịp Black Friday.', '2025-11-28 00:00:00', '2025-11-28 23:59:59', 'cho_duyet', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 'Tuần Lễ Vàng - Mua 1 Tặng 1', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Mua một sản phẩm Droppi màu vàng tặng thêm một sản phẩm bất kỳ trong danh mục.', '2025-12-01 00:00:00', '2025-12-03 23:59:59', 'ngung_hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 'Giáng Sinh An Lành 2025', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Khuyến mãi quà tặng hấp dẫn cho mùa Giáng Sinh.', '2025-12-20 00:00:00', '2025-12-26 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 'Tết Nguyên Đán 2026 - Siêu Sale', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Đón Tết cùng ưu đãi đặc biệt cho khách hàng thân thiết.', '2026-01-25 00:00:00', '2026-02-05 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 'Valentine Ngọt Ngào 2026', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Ưu đãi lãng mạn cho các cặp đôi.', '2026-02-10 00:00:00', '2026-02-15 23:59:59', 'cho_duyet', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 'Ngày Quốc Tế Phụ Nữ 8/3', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Tôn vinh phái đẹp với hàng ngàn ưu đãi.', '2026-03-05 00:00:00', '2026-03-08 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 'Ngày Cá Tháng Tư - Deal Bất Ngờ', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Ưu đãi cực sốc, chỉ có trong ngày 1/4.', '2026-04-01 00:00:00', '2026-04-01 23:59:59', 'ngung_hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 'Mùa Hè Sôi Động 2026', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Chào hè rực rỡ với nhiều chương trình khuyến mãi hấp dẫn.', '2026-06-01 00:00:00', '2026-06-30 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(11, 'Siêu Sale Mùa Thu 2026', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Ưu đãi hấp dẫn trong mùa thu cho các sản phẩm hot.', '2026-09-15 00:00:00', '2026-09-25 23:59:59', 'cho_duyet', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(12, 'Ngày Nhà Giáo Việt Nam 20/11', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Tri ân thầy cô với quà tặng và ưu đãi đặc biệt.', '2026-11-18 00:00:00', '2026-11-21 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(13, 'Noel 2026 - Sale Cuối Năm', 'uploads/chuongtrinhsukien/media/chuongtrinhsukien.png', 'Giáng sinh an lành với siêu khuyến mãi cuối năm.', '2026-12-20 00:00:00', '2026-12-27 23:59:59', 'ngung_hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_chitietdonhang` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `noidung` text DEFAULT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`id`, `id_sanpham`, `id_nguoidung`, `id_chitietdonhang`, `diem`, `noidung`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, 1, 5, 'sản phẩm đẹp nhất thị trường', 'Hiển thị', '2025-10-22 02:20:34', '2025-10-22 02:20:34', NULL),
(2, 4, 3, 1, 3, 'sản phẩm đẹp thế, lần sau tôi sẽ mua thêm', 'Hiển thị', '2025-10-22 02:20:34', '2025-10-22 02:20:34', NULL),
(3, 2, 2, 2, 5, 'sản phẩm đẹp nhất thị trường', 'Hiển thị', '2025-10-22 04:54:10', '2025-10-22 04:54:10', NULL),
(4, 4, 2, 2, 3, 'sản tốt nhất thị trường', 'Hiển thị', '2025-10-22 04:54:51', '2025-10-22 04:54:51', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `slug` text NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT 'danhmuc.jpg',
  `parent` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten`, `slug`, `logo`, `parent`, `created_at`, `updated_at`) VALUES
(1, 'Sức khỏe', 'suc-khoe', 'suc-khoe.svg', NULL, '2025-10-10 07:22:53', '2025-10-10 07:22:53'),
(2, 'Thực phẩm chức năng', 'thuc-pham-chuc-nang', 'thuc-pham-chuc-nang.svg', NULL, '2025-10-10 07:24:35', '2025-10-10 07:24:35'),
(3, 'Chăm sóc cá nhân', 'cham-soc-ca-nhan', 'cham-soc-ca-nhan.svg', NULL, '2025-10-10 07:45:15', '2025-10-10 07:45:15'),
(4, 'Làm đẹp', 'lam-dep', 'lam-dep.svg', NULL, '2025-10-10 07:48:26', '2025-10-10 07:48:26'),
(5, 'Điện máy', 'dien-may', 'dien-may.svg', NULL, '2025-10-10 07:48:26', '2025-10-10 07:48:26'),
(6, 'Thiết bị y tế', 'thiet-bi-y-te', 'thiet-bi-y-te.svg', NULL, '2025-10-10 07:48:26', '2025-10-10 07:48:26'),
(7, 'Bách hóa', 'bach-hoa', 'bach-hoa.svg', NULL, '2025-10-10 07:48:26', '2025-10-10 07:48:26'),
(8, 'Nội thất - Trang trí', 'noi-that-trang-tri', 'noi-that-trang-tri.svg', NULL, '2025-10-10 07:48:26', '2025-10-10 07:48:26'),
(9, 'Mẹ & bé', 'me-va-be', 'me-va-be.svg', NULL, '2025-10-10 07:48:26', '2025-10-10 07:48:26'),
(10, 'Thời trang', 'thoi-trang', 'thoi-trang.svg', NULL, '2025-10-10 07:48:26', '2025-10-10 07:48:26'),
(11, 'Thực phẩm - đồ ăn', 'thuc-pham-do-an', 'thuc-pham-do-an.svg', 1, '2025-10-10 07:48:26', '2025-10-10 07:48:26'),
(12, 'Đối tượng sử dụng', 'doi-tuong-su-dung', 'doi-tuong-su-dung.svg', 1, '2025-10-22 01:29:10', '2025-10-22 01:29:10'),
(13, 'vitamin & khoáng chất', 'vitamin-va-khoang-chat', 'vitamin-va-khoang-chat.svg', 1, '2025-10-22 01:30:42', '2025-10-22 01:30:42'),
(14, 'Dinh dưỡng (Sữa)', 'dinh-duong-sua', 'dinh-duong-sua.svg', 1, '2025-10-22 01:31:39', '2025-10-22 01:31:39'),
(15, 'Chăm sóc tóc', 'cham-soc-toc', 'cham-soc-toc.svg', 3, '2025-10-22 01:32:40', '2025-10-22 01:32:40'),
(16, 'Chăm sóc răng miệng', 'cham-soc-rang-mieng', 'cham-soc-rang-mieng.svg', 3, '2025-10-22 01:33:27', '2025-10-22 01:33:27'),
(17, 'Vấn đề về tóc & da đầu', 'van-de-ve-toc-da-dau', 'van-de-ve-toc-da-dau.svg', 3, '2025-10-22 01:35:03', '2025-10-22 01:35:03'),
(18, 'Nước hoa', 'nuoc-da', 'nuoc-da.svg', 3, '2025-10-22 01:35:03', '2025-10-22 01:35:03'),
(19, 'Sản phẩm nam giới', 'san-pham-nam-gioi', 'san-pham-nam-gioi.svg', 3, '2025-10-22 01:36:50', '2025-10-22 01:36:50'),
(20, 'Dung cụ & phụ kiện', 'dung-cu-va-phu-kien', 'dung-cu-va-phu-kien.svg', 3, '2025-10-22 01:36:50', '2025-10-22 01:36:50'),
(21, 'Thiết bị nghe nhìn', 'thiet-bi-nghe-nhin', 'thiet-bi-nghe-nhin.svg', 5, '2025-10-22 01:38:39', '2025-10-22 01:38:39'),
(22, 'Thiết bị viễn thông', 'thiet-bi-vien-thong', 'thiet-bi-vien-thong.svg', 5, '2025-10-22 01:40:09', '2025-10-22 01:40:09'),
(23, 'Thiết bị gia đình', 'thiet-bi-gia-dinh', 'thiet-bi-gia-dinh.svg', 5, '2025-10-22 01:41:02', '2025-10-22 01:41:02'),
(24, 'Thiết bị nhà bếp', 'thiet-bi-nha-bep', 'thiet-bi-nha-bep.svg', 5, '2025-10-22 01:41:48', '2025-10-22 01:41:48'),
(25, 'Thiết bị sức khỏe và làm đẹp', 'thiet-bi-suc-khoe-va-lam-dep', 'thiet-bi-suc-khoe-va-lam-dep.svg', 5, '2025-10-22 01:42:45', '2025-10-22 01:42:45'),
(26, 'Dung cụ y tế', 'dung-cu-y-te', 'dung-cu-y-te.svg', 6, '2025-10-22 01:43:45', '2025-10-22 01:43:45'),
(27, 'Thực phẩm', 'thuc-pham', 'thuc-pham.svg', 7, '2025-10-22 01:44:53', '2025-10-22 01:44:53'),
(28, 'Thức uống', 'thuc-uong', 'thuc-uong.svg', 7, '2025-10-22 01:45:28', '2025-10-22 01:45:28'),
(29, 'Gia vi & Chê biến', 'gia-vi-va-che-bien', 'gia-vi-va-che-bien.svg', 7, '2025-10-22 01:46:23', '2025-10-22 01:46:23'),
(30, 'Vệ sinh nhà cửa', 've-sinh-nha-cua', 've-sinh-nha-cua.svg', 7, '2025-10-22 01:47:15', '2025-10-22 01:47:15'),
(31, 'Nội thất', 'noi-that', 'noi-that.svg', 8, '2025-10-22 01:47:52', '2025-10-22 01:47:52'),
(32, 'Đồ dùng gia đình', 'do-dung-gia-dinh', 'do-dung-gia-dinh.svg', 8, '2025-10-22 01:48:36', '2025-10-22 01:48:36'),
(33, 'Sản phẩm cho bé', 'san-pham-cho-be', 'san-pham-cho-be.svg', 9, '2025-10-22 01:50:08', '2025-10-22 01:50:08'),
(34, 'Bé vui chơi, học tập', 'be-vui-choi-hoc-tap', 'be-vui-choi-hoc-tap.svg', 9, '2025-10-22 01:51:12', '2025-10-22 01:51:12'),
(35, 'Vali - Balo', 'vali-balo', 'vali-balo.svg', 10, '2025-10-22 01:52:08', '2025-10-22 01:52:08'),
(36, 'Thời trang nữ', 'thoi-trang-nu', 'thoi-trang-nu.svg', 10, '2025-10-22 01:52:57', '2025-10-22 01:52:57'),
(37, 'Thời trang Nam', 'thoi-trang-nam', 'thoi-trang-nam.svg', 10, '2025-10-22 01:53:48', '2025-10-22 01:53:48'),
(38, 'Phụ kiện thời trang', 'phu-kien-thoi-trang', 'phu-kien-thoi-trang.svg', 10, '2025-10-22 01:54:41', '2025-10-22 01:54:41'),
(39, 'Thời trang Mẹ & Bé', 'thoi-trang-me-va-be', 'thoi-trang-me-va-be.svg', 10, '2025-10-22 01:55:51', '2025-10-22 01:55:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_sanpham`
--

CREATE TABLE `danhmuc_sanpham` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_sanpham`
--

INSERT INTO `danhmuc_sanpham` (`id`, `id_danhmuc`, `id_sanpham`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2025-10-10 07:27:45', '2025-10-10 07:27:45'),
(2, 1, 4, '2025-10-10 07:27:45', '2025-10-10 07:27:45'),
(3, 2, 1, '2025-10-10 07:27:45', '2025-10-10 07:27:45'),
(4, 2, 3, '2025-10-10 07:27:45', '2025-10-10 07:27:45'),
(5, 1, 2, '2025-10-10 07:27:45', '2025-10-10 07:27:45');

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
(1, 4, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'uploads/danhgia/media/danhgia1.png', '2025-10-26 16:17:34', 'hoat_dong', 6, 14, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 3, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'uploads/danhgia/media/danhgia2.png', '2025-10-26 16:17:34', 'hoat_dong', 9, 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 3, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'uploads/danhgia/media/danhgia3.png', '2025-10-26 16:17:34', 'hoat_dong', 3, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 5, 'Sản phẩm giống hình, giao đúng hẹn.', 'uploads/danhgia/media/danhgia4.png', '2025-10-26 16:17:34', 'hoat_dong', 8, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 4, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'uploads/danhgia/media/danhgia5.png', '2025-10-26 16:17:34', 'hoat_dong', 6, 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(6, 3, 'Sản phẩm giống hình, giao đúng hẹn.', 'uploads/danhgia/media/danhgia6.png', '2025-10-26 16:17:34', 'hoat_dong', 2, 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(7, 5, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'uploads/danhgia/media/danhgia7.png', '2025-10-26 16:17:34', 'hoat_dong', 18, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(8, 3, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'uploads/danhgia/media/danhgia8.png', '2025-10-26 16:17:34', 'hoat_dong', 21, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(9, 3, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'uploads/danhgia/media/danhgia9.png', '2025-10-26 16:17:34', 'hoat_dong', 2, 17, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(10, 3, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'uploads/danhgia/media/danhgia10.png', '2025-10-26 16:17:34', 'hoat_dong', 19, 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(11, 3, 'Giá cả hợp lý, chất lượng tuyệt vời.', 'uploads/danhgia/media/danhgia11.png', '2025-10-26 16:17:34', 'hoat_dong', 3, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(12, 5, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'uploads/danhgia/media/danhgia12.png', '2025-10-26 16:17:34', 'hoat_dong', 18, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(13, 3, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'uploads/danhgia/media/danhgia13.png', '2025-10-26 16:17:34', 'hoat_dong', 3, 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(14, 5, 'Sản phẩm giống hình, giao đúng hẹn.', 'uploads/danhgia/media/danhgia14.png', '2025-10-26 16:17:34', 'hoat_dong', 5, 11, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(15, 5, 'Mình sẽ tiếp tục ủng hộ trong những lần sau.', 'uploads/danhgia/media/danhgia15.png', '2025-10-26 16:17:34', 'hoat_dong', 12, 17, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(16, 5, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'uploads/danhgia/media/danhgia16.png', '2025-10-26 16:17:34', 'hoat_dong', 3, 19, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(17, 3, 'Hàng ổn, nhưng đóng gói chưa kỹ. Cần cải thiện thêm.', 'uploads/danhgia/media/danhgia17.png', '2025-10-26 16:17:34', 'hoat_dong', 11, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(18, 4, 'Sản phẩm rất tốt, chất lượng đúng như mô tả. Giao hàng nhanh.', 'uploads/danhgia/media/danhgia18.png', '2025-10-26 16:17:34', 'hoat_dong', 8, 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(19, 5, 'Đánh giá thử: chất lượng sản phẩm tốt, hài lòng.', 'uploads/danhgia/media/danhgia19.png', '2025-10-26 16:17:34', 'hoat_dong', 15, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(20, 3, 'Sản phẩm giống hình, giao đúng hẹn.', 'uploads/danhgia/media/danhgia20.png', '2025-10-26 16:17:34', 'hoat_dong', 12, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34');

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
(1, 'Sức khỏe', 'suc_khoe.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 'Chăm sóc cá nhân', 'cham_soc_ca_nhan.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 'Điện máy', 'dien_may.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 'Thiết bị y tế', 'thiet_bi_y_te.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 'Bách hóa', 'bach_hoa.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 'Nhà cửa - Đời sống', 'nha_cua.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 'Mẹ và bé', 'me_va_be.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 'Thời trang', 'thoi_trang.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 'Sản phẩm khác', 'san_pham_khac.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 'Làm đẹp', 'lam_dep.png', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

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
  `trangthai` enum('Mặc định','Khác','Tạm ẩn') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diachi_giaohang`
--

INSERT INTO `diachi_giaohang` (`id`, `id_nguoidung`, `hoten`, `sodienthoai`, `diachi`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(0, 2, 'Nguyễn Văn Admin', '9876543211', '101 Nguyễn Tất Thành, p1, q.12, tp.HCM', 'Mặc định', '2025-10-15 12:53:24', '2025-10-15 12:53:24', NULL),
(1, 3, 'Nguyễn Văn Demo', '9876543212', '110 nguyễn tất thành, p.3, q.12, tp.HCM', 'Mặc định', '2025-10-15 09:56:57', '2025-10-15 09:56:57', NULL),
(2, 2, 'Nguyễn Văn Admin', '9876543211', '90 Nguyễn Tất Thành, p.2, q.12, tp.HCM', 'Khác', '2025-10-15 12:55:40', '2025-10-15 12:55:40', NULL);

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
(1, 'User 3', '0987654323,980493517', 'Số 3, Đường ABC, Phường 3, Q.3, Thành phố Hồ Chí Minh', 'hoat_dong', 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 'User 4', '0987654324,963794188', 'Số 4, Đường ABC, Phường 4, Q.4, Thành phố Hà Nội', 'hoat_dong', 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 'User 5', '0987654325,980055225', 'Số 5, Đường ABC, Phường 5, Q.5, Thành phố Hồ Chí Minh', 'hoat_dong', 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 'User 6', '0987654326,997959397', 'Số 6, Đường ABC, Phường 6, Q.6, Thành phố Hà Nội', 'hoat_dong', 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 'User 7', '0987654327,936074556', 'Số 7, Đường ABC, Phường 7, Q.7, Thành phố Hồ Chí Minh', 'hoat_dong', 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 'User 8', '0987654328,934061576', 'Số 8, Đường ABC, Phường 8, Q.8, Thành phố Hà Nội', 'hoat_dong', 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 'User 9', '0987654329,992223596', 'Số 9, Đường ABC, Phường 9, Q.9, Thành phố Hồ Chí Minh', 'hoat_dong', 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 'User 10', '09876543210,991451920', 'Số 10, Đường ABC, Phường 10, Q.10, Thành phố Hà Nội', 'hoat_dong', 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 'User 11', '09876543211,941215070', 'Số 11, Đường ABC, Phường 11, Q.11, Thành phố Hồ Chí Minh', 'hoat_dong', 11, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 'User 12', '09876543212,965986329', 'Số 12, Đường ABC, Phường 12, Q.12, Thành phố Hà Nội', 'hoat_dong', 12, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(11, 'User 13', '09876543213,929073272', 'Số 13, Đường ABC, Phường 13, Q.13, Thành phố Hồ Chí Minh', 'hoat_dong', 13, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(12, 'User 14', '09876543214,912697161', 'Số 14, Đường ABC, Phường 14, Q.14, Thành phố Hà Nội', 'hoat_dong', 14, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(13, 'User 15', '09876543215,937594563', 'Số 15, Đường ABC, Phường 15, Q.15, Thành phố Hồ Chí Minh', 'hoat_dong', 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(14, 'User 16', '09876543216,933950545', 'Số 16, Đường ABC, Phường 16, Q.16, Thành phố Hà Nội', 'hoat_dong', 16, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(15, 'User 17', '09876543217,921588381', 'Số 17, Đường ABC, Phường 17, Q.17, Thành phố Hồ Chí Minh', 'hoat_dong', 17, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(16, 'User 18', '09876543218,953528880', 'Số 18, Đường ABC, Phường 18, Q.18, Thành phố Hà Nội', 'hoat_dong', 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(17, 'User 19', '09876543219,987706447', 'Số 19, Đường ABC, Phường 19, Q.19, Thành phố Hồ Chí Minh', 'hoat_dong', 19, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(18, 'User 20', '09876543220,953145867', 'Số 20, Đường ABC, Phường 20, Q.20, Thành phố Hà Nội', 'hoat_dong', 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(19, 'seller', '0991654321,0999999999', 'Số 1, Đường Test, Phường 1, Q.1, Thành phố Hồ Chí Minh', 'hoat_dong', 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
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

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_nguoidung`, `id_phuongthuc`, `id_magiamgia`, `madon`, `tongsoluong`, `thanhtien`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 1, 'ecomvina15', 2, 100000, 'Chờ xử lý', '2025-10-15 05:20:22', '2025-10-15 05:20:22', NULL),
(2, 3, 1, 1, 'ecomvina15', 2, 100000, 'Chờ xử lý', '2025-10-15 09:55:11', '2025-10-15 09:55:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang_chitiet`
--

CREATE TABLE `donhang_chitiet` (
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
-- Đang đổ dữ liệu cho bảng `donhang_chitiet`
--

INSERT INTO `donhang_chitiet` (`id`, `gia`, `soluong`, `tongtien`, `id_donhang`, `id_bienthe`, `created_at`, `updated_at`) VALUES
(1, 543212.00, 1, 543212.00, 8, 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 129860.00, 5, 649300.00, 8, 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 4777375.00, 3, 14332125.00, 3, 11, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 3346996.00, 2, 6693992.00, 3, 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 189418.00, 1, 189418.00, 3, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(6, 2715587.00, 4, 10862348.00, 3, 13, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(7, 761297.00, 4, 3045188.00, 4, 24, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(8, 163560.00, 1, 163560.00, 4, 25, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(9, 960008.00, 1, 960008.00, 4, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(10, 4067194.00, 1, 4067194.00, 4, 19, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(11, 912091.00, 5, 4560455.00, 4, 21, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(12, 4067194.00, 1, 4067194.00, 7, 19, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(13, 1604072.00, 2, 3208144.00, 7, 16, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(14, 912091.00, 1, 912091.00, 2, 21, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(15, 465782.00, 5, 2328910.00, 2, 23, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(16, 3663906.00, 1, 3663906.00, 2, 30, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(17, 3346996.00, 5, 16734980.00, 9, 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(18, 761297.00, 5, 3806485.00, 9, 24, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(19, 1604072.00, 4, 6416288.00, 9, 16, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(20, 189418.00, 4, 757672.00, 9, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(21, 3663906.00, 3, 10991718.00, 9, 30, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(22, 2715587.00, 1, 2715587.00, 10, 13, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(23, 3663906.00, 4, 14655624.00, 10, 30, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(24, 189418.00, 2, 378836.00, 10, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(25, 3405941.00, 5, 17029705.00, 10, 27, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(26, 1589903.00, 5, 7949515.00, 1, 12, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(27, 4754626.00, 1, 4754626.00, 1, 26, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(28, 189418.00, 4, 757672.00, 1, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(29, 3841675.00, 4, 15366700.00, 1, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(30, 543212.00, 1, 543212.00, 1, 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(31, 129860.00, 2, 259720.00, 5, 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(32, 2715587.00, 2, 5431174.00, 5, 13, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(33, 3663906.00, 2, 7327812.00, 5, 30, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(34, 3841675.00, 3, 11525025.00, 6, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34');

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
(1, 'DH0001', 6, 'Ghi chú cho đơn hàng số 1', 5492184.00, '2025-10-03 16:17:34', 'da_giao', 15, 1, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 'DH0002', 2, 'Ghi chú cho đơn hàng số 2', 733526.00, '2025-09-29 16:17:34', 'da_huy', 11, 5, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 'DH0003', 3, 'Ghi chú cho đơn hàng số 3', 2559879.00, '2025-10-26 16:17:34', 'da_xac_nhan', 8, 1, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 'DH0004', 5, 'Ghi chú cho đơn hàng số 4', 4046995.00, '2025-10-11 16:17:34', 'da_huy', 8, 6, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 'DH0005', 8, 'Ghi chú cho đơn hàng số 5', 3473304.00, '2025-10-06 16:17:34', 'da_xac_nhan', 15, 2, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 'DH0006', 5, 'Ghi chú cho đơn hàng số 6', 711685.00, '2025-10-26 16:17:34', 'da_huy', 20, 2, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 'DH0007', 9, 'Ghi chú cho đơn hàng số 7', 5883804.00, '2025-10-04 16:17:34', 'cho_xac_nhan', 9, 2, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 'DH0008', 7, 'Ghi chú cho đơn hàng số 8', 3275300.00, '2025-10-16 16:17:34', 'da_huy', 5, 3, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 'DH0009', 8, 'Ghi chú cho đơn hàng số 9', 7797768.00, '2025-10-14 16:17:34', 'cho_xac_nhan', 12, 9, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 'DH0010', 6, 'Ghi chú cho đơn hàng số 10', 5846196.00, '2025-10-21 16:17:34', 'cho_xac_nhan', 13, 8, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

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
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `id_bienthe` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `id_bienthe`, `id_nguoidung`, `soluong`, `thanhtien`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 100000, 'Hiển thị', '2025-10-15 09:53:17', '2025-10-15 09:53:17'),
(2, 2, 2, 2, 100000, 'Hiển thị', '2025-10-15 09:53:58', '2025-10-15 09:53:58');

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
(1, 3, 139542.00, 20, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 5, 108620.00, 21, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 1, 11464.00, 19, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 3, 108087.00, 13, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 1, 37552.00, 17, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(6, 1, 44561.00, 6, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(7, 2, 35280.00, 9, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(8, 3, 63480.00, 20, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(9, 3, 144951.00, 16, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(10, 2, 83542.00, 8, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(11, 2, 38278.00, 22, 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(12, 2, 25980.00, 14, 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(13, 4, 72388.00, 9, 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(14, 5, 197045.00, 19, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(15, 5, 92480.00, 17, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(16, 2, 26214.00, 15, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(17, 1, 21479.00, 15, 11, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(18, 3, 119835.00, 4, 12, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(19, 1, 13195.00, 5, 12, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(20, 1, 39022.00, 9, 12, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(21, 3, 74484.00, 19, 13, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(22, 3, 76941.00, 3, 14, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(23, 3, 128964.00, 6, 14, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(24, 3, 77580.00, 8, 14, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(25, 2, 20268.00, 20, 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(26, 4, 195200.00, 12, 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(27, 2, 58490.00, 11, 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(28, 2, 51246.00, 22, 16, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(29, 1, 30860.00, 4, 17, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(30, 2, 81576.00, 13, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(31, 4, 87844.00, 12, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(32, 4, 193940.00, 10, 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(33, 4, 76728.00, 6, 19, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(34, 4, 112840.00, 3, 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(35, 3, 39786.00, 4, 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(36, 5, 118985.00, 8, 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(37, 2, 85642.00, 6, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34');

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
-- Cấu trúc bảng cho bảng `hinhanh_sanpham`
--

CREATE TABLE `hinhanh_sanpham` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh_sanpham`
--

INSERT INTO `hinhanh_sanpham` (`id`, `id_sanpham`, `hinhanh`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha-1.webp', 'Hiển thị', '2025-10-10 07:10:24', '2025-10-10 07:10:24', NULL),
(2, 1, 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha-2.webp', 'Hiển thị', '2025-10-10 07:10:24', '2025-10-10 07:10:24', NULL),
(3, 1, 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha-3.webp', 'Hiển thị', '2025-10-10 07:10:24', '2025-10-10 07:10:24', NULL),
(4, 1, 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha-4.webp', 'Hiển thị', '2025-10-10 07:10:24', '2025-10-10 07:10:24', NULL),
(5, 2, 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g-1.webp', 'Hiển thị', '2025-10-10 07:13:57', '2025-10-10 07:13:57', NULL),
(6, 2, 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g-2.webp', 'Hiển thị', '2025-10-10 07:13:57', '2025-10-10 07:13:57', NULL),
(7, 2, 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g-3.webp', 'Hiển thị', '2025-10-10 07:13:57', '2025-10-10 07:13:57', NULL),
(8, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-1.webp', 'Hiển thị', '2025-10-10 07:16:36', '2025-10-10 07:16:36', NULL),
(9, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-2.webp', 'Hiển thị', '2025-10-10 07:16:36', '2025-10-10 07:16:36', NULL),
(10, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-3.webp', 'Hiển thị', '2025-10-10 07:16:36', '2025-10-10 07:16:36', NULL),
(11, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-4.webp', 'Hiển thị', '2025-10-10 07:16:36', '2025-10-10 07:16:36', NULL),
(12, 3, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-5.webp', 'Hiển thị', '2025-10-10 07:16:36', '2025-10-10 07:16:36', NULL),
(13, 4, 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml-1.webp', 'Hiển thị', '2025-10-10 07:18:38', '2025-10-10 07:18:38', NULL),
(14, 4, 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml-2.webp', 'Hiển thị', '2025-10-10 07:18:38', '2025-10-10 07:18:38', NULL),
(15, 4, 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml-3.webp', 'Hiển thị', '2025-10-10 07:18:38', '2025-10-10 07:18:38', NULL),
(16, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-1.webp', 'Hiển thị', '2025-10-10 07:22:36', '2025-10-10 07:22:36', NULL),
(17, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-2.webp', 'Hiển thị', '2025-10-10 07:22:36', '2025-10-10 07:22:36', NULL),
(18, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-3.webp', 'Hiển thị', '2025-10-10 07:22:36', '2025-10-10 07:22:36', NULL),
(19, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-4.webp', 'Hiển thị', '2025-10-10 07:22:36', '2025-10-10 07:22:36', NULL),
(20, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-5.webp', 'Hiển thị', '2025-10-10 07:22:36', '2025-10-10 07:22:36', NULL),
(21, 5, 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g-6.webp', 'Hiển thị', '2025-10-10 07:22:36', '2025-10-10 07:22:36', NULL),
(22, 6, 'sam-ngoc-linh-truong-sinh-do-thung-24lon-1.webp', 'Tạm ẩn', '2025-10-11 14:58:11', '2025-10-11 14:58:11', NULL);

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
(1, 'Vietcombank', 364905.00, 'Thanh toán cho đơn hàng #8', 'HULZBTX1RQHC', '2025-08-05 16:17:34', 'thanh_cong', 8, 1, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(2, NULL, 263899.00, 'Thanh toán cho đơn hàng #3', 'GMXJA3OQEXRO', '2025-08-05 16:17:34', 'da_huy', 3, 2, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(3, NULL, 1225433.00, 'Thanh toán cho đơn hàng #4', 'Z8JFG94F1GFR', '2025-08-05 16:17:34', 'thanh_cong', 4, 2, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(4, NULL, 1164135.00, 'Thanh toán cho đơn hàng #7', 'ZSRIEDCCHTSS', '2025-08-05 16:17:34', 'that_bai', 7, 2, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(5, NULL, 1425516.00, 'Thanh toán cho đơn hàng #2', 'XJ98PUMASAIU', '2025-08-05 16:17:34', 'tre_han', 2, 3, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(6, 'Vietcombank', 1310769.00, 'Thanh toán cho đơn hàng #9', '2XAURCM0STLG', '2025-08-05 16:17:34', 'hoan_tien', 9, 1, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(7, NULL, 1564078.00, 'Thanh toán cho đơn hàng #10', 'IRVPURX6I6EC', '2025-08-05 16:17:34', 'dang_xu_ly', 10, 3, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(8, NULL, 1471584.00, 'Thanh toán cho đơn hàng #1', '23L9IDFXB6ZG', '2025-08-05 16:17:34', 'dang_xu_ly', 1, 3, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(9, 'Vietcombank', 775661.00, 'Thanh toán cho đơn hàng #5', 'QRHCKABHXNFU', '2025-08-05 16:17:34', 'cho_xac_nhan', 5, 1, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL),
(10, NULL, 309845.00, 'Thanh toán cho đơn hàng #6', 'X0PZ9WOSATUV', '2025-08-05 16:17:34', 'cho_xac_nhan_ngan_hang', 6, 2, '2025-08-05 09:17:34', '2025-08-05 09:17:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaibienthe`
--

CREATE TABLE `loaibienthe` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaibienthe`
--

INSERT INTO `loaibienthe` (`id`, `ten`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Lọ', 'Hiển thị', '2025-10-10 06:55:28', '2025-10-10 06:55:28'),
(2, 'Hộp', 'Hiển thị', '2025-10-10 07:04:13', '2025-10-10 07:04:13');

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
(1, 'lọ', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 'hộp', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 'chai', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `magiamgia`, `dieukien`, `mota`, `giatri`, `ngaybatdau`, `ngayketthuc`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 321321, 'là khách hàng mới', 'là khách hàng mới sẽ được giảm 20%', 0, '2025-10-09', '2025-10-31', 'Hoạt động', '2025-10-15 05:12:20', '2025-10-15 05:12:20', NULL);

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
(1, 'FLASHSALE99', 'Giảm 99K cho đơn hàng trong ngày 9.9', 99000.00, 'donhang_toi_thieu_500k', '2025-09-09 00:00:00', '2025-09-09 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 'NEWUSER100', 'Voucher 100K cho khách hàng mới', 100000.00, 'khachhang_moi', '2025-09-01 00:00:00', '2025-12-31 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 'FREESHIP50', 'Giảm tối đa 50K phí ship', 50000.00, 'tatca', '2025-09-01 00:00:00', '2025-11-30 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 'BIRTHDAY200', 'Giảm 200K cho khách hàng sinh nhật trong tháng', 200000.00, 'khachhang_than_thiet', '2025-01-01 00:00:00', '2025-12-31 23:59:59', 'tam_khoa', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 'BLACKFRIDAY25', 'Giảm 25% cho toàn bộ đơn hàng Black Friday', 250000.00, 'tatca', '2025-11-28 00:00:00', '2025-11-28 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 'XMAS150', 'Giáng Sinh - Giảm 150K', 150000.00, 'tatca', '2025-12-20 00:00:00', '2025-12-25 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 'CLEARANCE50', 'Giảm 50% cho hàng tồn kho', 500000.00, 'the_loai_cu_the_ban_cham', '2025-08-01 00:00:00', '2025-08-31 23:59:59', 'het_han', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 'VIPCUSTOMER20', 'Giảm 20% cho khách VIP', 200000.00, 'khachhang_than_thiet', '2025-09-01 00:00:00', '2025-12-31 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 'HALLOWEEN66', 'Halloween Sale - Giảm 66K', 66000.00, 'tatca', '2025-10-31 00:00:00', '2025-10-31 23:59:59', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 'TET2026', 'Tết 2026 - Giảm 300K', 300000.00, 'tatca', '2026-01-15 00:00:00', '2026-02-05 23:59:59', 'da_xoa', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

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
(140, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(141, '2019_08_19_000000_create_failed_jobs_table', 1),
(142, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(143, '2025_09_17_232154_create_nguoi_dung_table', 1),
(144, '2025_09_17_233959_create_diachi_nguoidung_table', 1),
(145, '2025_09_17_235133_create_thongtin_nguoibanhang_table', 1),
(146, '2025_09_18_000154_create_loai_bienthe_table', 1),
(147, '2025_09_18_001910_create_danh_muc_table', 1),
(148, '2025_09_18_002414_create_san_pham_table', 1),
(149, '2025_09_18_002523_create_gio_hang_table', 1),
(150, '2025_09_18_002524_create_bienthe_sp_table', 1),
(151, '2025_09_18_002543_create_sanpham_danhmuc_table', 1),
(152, '2025_09_18_003946_create_chuongtrinhsukien_table', 1),
(153, '2025_09_18_004441_create_quatang_khuyenmai_table', 1),
(154, '2025_09_18_005904_create_danh_gia_table', 1),
(155, '2025_09_18_011306_create_yeu_thich_table', 1),
(156, '2025_09_18_011826_create_ma_giamgia_table', 1),
(157, '2025_09_18_012704_create_phuongthuc_thanhtoan_table', 1),
(158, '2025_09_18_012705_create_don_hang_table', 1),
(159, '2025_09_18_013303_create_donhang_chitiet_table', 1),
(160, '2025_09_18_013652_create_thanh_toan_table', 1),
(161, '2025_09_18_085022_create_anh_sanpham_table', 1),
(162, '2025_09_18_113543_create_hanhvi_nguoidung_table', 1),
(163, '2025_09_20_104150_create_password_resets_table', 1),
(164, '2025_09_21_103939_create_ai_training_data_table', 1),
(165, '2025_09_27_235319_reset_all_tables', 1),
(166, '2025_10_01_053346_create_tu_khoa_table', 1),
(167, '2025_10_01_084452_create_banner_quangcao_table', 1),
(168, '2025_10_01_084803_create_thong_bao_table', 1),
(169, '2025_10_08_114815_create_bai_viet_table', 1);

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `username`, `password`, `sodienthoai`, `hoten`, `gioitinh`, `ngaysinh`, `avatar`, `vaitro`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'lyhuu123', '$2y$12$wIPmnGuR2oUT9MrzYAIiK.Tv8Sy6dXA5CLEySQ8vZguis7JjilWBu', '0845381121', 'Cao Kiến Hựu', 'Nam', '2004-10-13', 'khachhang.jpg', 'admin', 'Hoạt động', '2025-10-10 06:43:52', '2025-10-10 06:43:52', NULL),
(2, 'admindemo', '$2y$12$wIPmnGuR2oUT9MrzYAIiK.Tv8Sy6dXA5CLEySQ8vZguis7JjilWBu', '9876543212', 'admindemo', 'Nam', '2000-09-06', 'khachhang.jpg', 'admin', 'Hoạt động', '2025-10-15 05:00:01', '2025-10-15 05:00:01', NULL),
(3, 'userdemo', '$2y$12$wIPmnGuR2oUT9MrzYAIiK.Tv8Sy6dXA5CLEySQ8vZguis7JjilWBu', '987654323', 'userdemo', 'Nam', '2000-01-02', 'khachhang.jpg', 'client', 'Hoạt động', '2025-10-15 09:52:19', '2025-10-15 09:52:19', NULL);

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
(1, 'admin@example.com', NULL, '$2y$12$8B2FC7eJswGJxB4BvUl0Zu68I8yK4yYccoTlzjthDQW97YThXzeTa', 'uploads/nguoidung/avatar/nguoidung.png', 'Admin', 'nam', '2000-12-13', '0997654321', 'admin', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(2, 'seller@example.com', NULL, '$2y$12$Ne/xWhL/j9h2tmM8zUH2/upvYpACE.2ejL0Gol1eoLvrFy7wNXvb.', 'uploads/nguoidung/avatar/nguoidung.png', 'seller', 'nam', '2000-11-11', '0991654321', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(3, 'user3@example.com', NULL, '$2y$12$r0I1xRifc5bzpNvZsVSZIOZNl9xUHbhvwcNCIUdeb7zHl8fih59LS', 'uploads/nguoidung/avatar/nguoidung.png', 'User 3', 'nữ', '2000-04-04', '0987654323', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(4, 'user4@example.com', NULL, '$2y$12$IoloI.Ohy9NVxxqteIL9P.TeSAAi/Ig1SqKstsCoPKFIyndeNyYwK', 'uploads/nguoidung/avatar/nguoidung.png', 'User 4', 'nam', '2000-05-05', '0987654324', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(5, 'user5@example.com', NULL, '$2y$12$NcWHNGBLfcrqAuHrqHOdIODXZO4tnan8e5anl0NMAfxVqJssYVe7a', 'uploads/nguoidung/avatar/nguoidung.png', 'User 5', 'nữ', '2000-06-06', '0987654325', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(6, 'user6@example.com', NULL, '$2y$12$p25Q3ziv/WLGc9ovdiEUieDxg0upvzEGEXs2v8v7ka.pNu/NVAjWK', 'uploads/nguoidung/avatar/nguoidung.png', 'User 6', 'nam', '2000-07-07', '0987654326', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(7, 'user7@example.com', NULL, '$2y$12$LlF.4VcVF3CyzcOUWDWtqeQ/92zFgw0RFrS4CEicJHUvdzWFrblTC', 'uploads/nguoidung/avatar/nguoidung.png', 'User 7', 'nữ', '2000-08-08', '0987654327', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(8, 'user8@example.com', NULL, '$2y$12$W16r0QdGjqgm6p3BYz4PluKZHm4hZPIvtAmHw6RB4b/257vXezPM6', 'uploads/nguoidung/avatar/nguoidung.png', 'User 8', 'nam', '2000-09-09', '0987654328', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(9, 'user9@example.com', NULL, '$2y$12$S3dq8FJaLEOcoLw2.xyU0OkQnmLuI6/Ufj0m3355uj4ONGVVfDPli', 'uploads/nguoidung/avatar/nguoidung.png', 'User 9', 'nữ', '2000-10-10', '0987654329', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(10, 'user10@example.com', NULL, '$2y$12$BL5zrpKMLmxtJ2oANnT2ZOIIyALnyfSix/MoXElOvVqYU9gMALQpm', 'uploads/nguoidung/avatar/nguoidung.png', 'User 10', 'nam', '2000-11-11', '09876543210', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(11, 'user11@example.com', NULL, '$2y$12$T6aaJ5rFsikcsEU9gWa8auqu296uYakOfHnbhaOQ8QRuXDSluk6/S', 'uploads/nguoidung/avatar/nguoidung.png', 'User 11', 'nữ', '2000-12-12', '09876543211', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(12, 'user12@example.com', NULL, '$2y$12$wYUC24iMWn8qNOT3JSoFWO66KS8WbaVkGKawy8P5UN/wEQcLEo1Fq', 'uploads/nguoidung/avatar/nguoidung.png', 'User 12', 'nam', '2000-01-13', '09876543212', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(13, 'user13@example.com', NULL, '$2y$12$Ze05/FLB.2GJf90dWpuAT.68GfxO5PbU65.nwg9m1lYsop/URaW9O', 'uploads/nguoidung/avatar/nguoidung.png', 'User 13', 'nữ', '2000-02-14', '09876543213', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(14, 'user14@example.com', NULL, '$2y$12$OlNDoKFdCGod.AbzG2DdFeqSvySq.D6QqmGhlWc0PMPFNnL/h/Xri', 'uploads/nguoidung/avatar/nguoidung.png', 'User 14', 'nam', '2000-03-15', '09876543214', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(15, 'user15@example.com', NULL, '$2y$12$Tqnh7owQeI0OL9T.rk1lKOZJhCvQKm9lOd7TFc.LrQLhXAMkIAav6', 'uploads/nguoidung/avatar/nguoidung.png', 'User 15', 'nữ', '2000-04-16', '09876543215', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(16, 'user16@example.com', NULL, '$2y$12$WDsyfCTUJTshF.bn1AKedOp0PSHndm5FqTuGXSxVA4YbTyY1ytPFC', 'uploads/nguoidung/avatar/nguoidung.png', 'User 16', 'nam', '2000-05-17', '09876543216', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(17, 'user17@example.com', NULL, '$2y$12$N8mwxIGUAzRnA1xBs0YA7urYAVDAAX4177aFwTZ0YXQeHw8YAa5Ay', 'uploads/nguoidung/avatar/nguoidung.png', 'User 17', 'nữ', '2000-06-18', '09876543217', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(18, 'user18@example.com', NULL, '$2y$12$L/zMuc5DwaEdRsvCyYWnSeLKT62u1de6Wwq6hAzl7qq0EsssdBeI6', 'uploads/nguoidung/avatar/nguoidung.png', 'User 18', 'nam', '2000-07-19', '09876543218', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(19, 'user19@example.com', NULL, '$2y$12$5R3GXV3B9TuB7uH/XfDqB.r4ZdHjoc3uK79Mtc6H9cPCfGeBPM6Jm', 'uploads/nguoidung/avatar/nguoidung.png', 'User 19', 'nữ', '2000-08-20', '09876543219', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(20, 'user20@example.com', NULL, '$2y$12$2nUllKEJBzdROjUbM0OHJOYOQndRl1k0suPb5fLsnTJu.WrOEfbWe', 'uploads/nguoidung/avatar/nguoidung.png', 'User 20', 'nam', '2000-09-21', '09876543220', 'user', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(21, 'user21@example.com', NULL, '$2y$12$TBoj7rOX4cplp1vHD8q.Mea1V9p0UCicAtjZV0.3xIeKxs4trTibu', 'uploads/nguoidung/avatar/nguoidung.png', 'User 21', 'nữ', '2000-10-22', '09876543221', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(22, 'user22@example.com', NULL, '$2y$12$TnsJhuc/Z4ATI8qbRpRtquPKwPNUxPxvuZngNM2cX.PAoUK9.Hyia', 'uploads/nguoidung/avatar/nguoidung.png', 'User 22', 'nam', '2000-11-23', '09876543222', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(23, 'user23@example.com', NULL, '$2y$12$P2BUpYGwK.0ZJbCfEmW3DuAm.qtAezvufsnqZPHTeSZtL35/ygL6u', 'uploads/nguoidung/avatar/nguoidung.png', 'User 23', 'nữ', '2000-12-24', '09876543223', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(24, 'user24@example.com', NULL, '$2y$12$JMkuqlHvbJK/1YkO/5mxnOjScdJraqiwXIsrGe94Z9C0ONOrzbr9u', 'uploads/nguoidung/avatar/nguoidung.png', 'User 24', 'nam', '2000-01-25', '09876543224', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(25, 'user25@example.com', NULL, '$2y$12$kfTM1Dlnk4UaXUSPDol0Ge5iiGa6Dd90cza7/6hKv0hQ5Q7opCrdq', 'uploads/nguoidung/avatar/nguoidung.png', 'User 25', 'nữ', '2000-02-26', '09876543225', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(26, 'user26@example.com', NULL, '$2y$12$3L0THLUHYBBlkWNHPb3bz.tMZP7dR4qt6zyBhoKdPNc1vIkB9q3pW', 'uploads/nguoidung/avatar/nguoidung.png', 'User 26', 'nam', '2000-03-27', '09876543226', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(27, 'user27@example.com', NULL, '$2y$12$bLgyw3xHLRuCHb9UrJTf8OQIaoGHyOAwE4FIz9FmUYBtKTOHnyZ36', 'uploads/nguoidung/avatar/nguoidung.png', 'User 27', 'nữ', '2000-04-28', '09876543227', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(28, 'user28@example.com', NULL, '$2y$12$PsKF0ffkiFZfC9BPZFqVpePYXb1k9Z8bQj7yOoFrAOj8PtbZ2/lGe', 'uploads/nguoidung/avatar/nguoidung.png', 'User 28', 'nam', '2000-05-01', '09876543228', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(29, 'user29@example.com', NULL, '$2y$12$TM5O6frv1wnFDLiYAYWqm.6LHuOyA1zWWRo4hAnYXk/IqNS518/SK', 'uploads/nguoidung/avatar/nguoidung.png', 'User 29', 'nữ', '2000-06-02', '09876543229', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(30, 'user30@example.com', NULL, '$2y$12$JyMSmsEFMOOJNoNAOcgOLugZTgGCQQO9SdmxQ.16INoasmUgdvxSm', 'uploads/nguoidung/avatar/nguoidung.png', 'User 30', 'nam', '2000-07-03', '09876543230', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL),
(31, 'user31@example.com', NULL, '$2y$12$MAsBd8pLdtUsCcgEN1I.8uDehoq/p4xol9HzlWUZJAFPf.AQUl5YW', 'uploads/nguoidung/avatar/nguoidung.png', 'User 31', 'nữ', '2000-08-04', '09876543231', 'seller', 'hoat_dong', NULL, NULL, NULL, NULL, NULL, '2025-10-26 09:17:28', '2025-10-26 09:17:28', NULL);

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
-- Cấu trúc bảng cho bảng `phuongthuc`
--

CREATE TABLE `phuongthuc` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `maphuongthuc` text DEFAULT NULL,
  `trangthai` enum('Hoạt động','Tạm khóa','Dừng hoạt động') NOT NULL DEFAULT 'Hoạt động',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuongthuc`
--

INSERT INTO `phuongthuc` (`id`, `ten`, `maphuongthuc`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán khi nhận hàng(Cash on delivery)', 'cod', 'Hoạt động', '2025-10-15 05:16:32', '2025-10-15 05:16:32'),
(2, 'Chuyển khoản ngân hàng trực tiếp(\nDirect Bank transfer)', 'dbt', 'Hoạt động', '2025-10-15 05:17:03', '2025-10-15 05:17:03'),
(3, 'Kiểm tra thanh toán(Check payments)', 'cp', 'Hoạt động', '2025-10-15 05:17:52', '2025-10-15 05:17:52');

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
(1, 'Chuyển khoản ngân hàng trực tiếp', 'dbt', 'Khách hàng thanh toán trực tiếp bằng chuyển khoản ngân hàng. Sau khi chuyển, vui lòng gửi minh chứng để xác nhận đơn hàng.', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 'Kiểm tra thanh toán', 'cp', 'Phương thức dành cho các đơn hàng cần xác nhận thủ công trước khi hoàn tất thanh toán (Check payments).', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 'Thanh toán khi nhận hàng (COD)', 'cod', 'Khách hàng thanh toán trực tiếp bằng tiền mặt cho nhân viên giao hàng khi nhận sản phẩm.', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34');

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
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id`, `vitri`, `hinhanh`, `lienket`, `mota`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 'home_banner_slider', 'banner-droppii-1.png', 'https://droppii.vn', 'Liên kết đến Droppii Mall', 'Hiển thị', '2025-10-11 06:29:37', '2025-10-11 06:29:37'),
(2, 'home_banner_slider', 'banner-droppii-2.png', 'https://droppii.vn', 'Liên kết đến Droppii Mall', 'Hiển thị', '2025-10-11 06:29:37', '2025-10-11 06:29:37'),
(3, 'home_banner_slider', 'banner-droppii-3.png', 'https://droppii.vn', 'Liên kết đến Droppii Mall', 'Hiển thị', '2025-10-11 06:29:37', '2025-10-11 06:29:37'),
(4, 'home_banner_event_1', 'shopee-1.jpg', 'https://shopee.tw', 'Liên kết đến Shopee', 'Hiển thị', '2025-10-11 06:34:31', '2025-10-11 06:34:31'),
(5, 'home_banner_event_2', 'shopee-2.jpg', 'https://shopee.tw', 'liên kết đến Shopee', 'Hiển thị', '2025-10-11 06:34:31', '2025-10-11 06:34:31'),
(6, 'home_banner_event_3', 'shopee-3.jpg', 'https://shopee.tw', 'Liên kết đến Shopee', 'Hiển thị', '2025-10-11 06:34:31', '2025-10-11 06:34:31'),
(7, 'home_banner_event_4', 'shopee-04.webp', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị', '2025-10-11 06:34:31', '2025-10-11 06:34:31'),
(8, 'home_banner_promotion_1', 'shopee-05.jpg', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị', '2025-10-11 06:37:07', '2025-10-11 06:37:07'),
(9, 'home_banner_promotion_2', 'shopee-06.jpg', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị', '2025-10-11 06:37:07', '2025-10-11 06:37:07'),
(10, 'home_banner_promotion_3', 'shopee-07.jpg', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị', '2025-10-11 06:37:07', '2025-10-11 06:37:07'),
(11, 'home_banner_ads', 'shopee-05.jpg', 'https://shopee.tw', 'Liên kết đến shopee', 'Hiển thị', '2025-10-11 06:40:36', '2025-10-11 06:40:36'),
(12, 'home_banner_product', 'shopee-09.jfif', 'https://shopee.tw', 'Liên kết đến Shopee', 'Hiển thị', '2025-10-11 06:40:36', '2025-10-11 06:40:36');

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
(1, 2, 'Khuyến mãi mùa lễ hội - mua 2 tặng 1 cho các sản phẩm chăm sóc cá nhân.', '2025-10-28 16:17:34', '2025-11-10 16:17:34', 2, 'tang_1', 1, 1, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 2, 'Giảm 20% cho đơn hàng trên 500.000đ.', '2025-10-31 16:17:34', '2025-11-15 16:17:34', 2, 'giam_%', 2, 1, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 2, 'Mua 3 sản phẩm bất kỳ - giảm ngay 30%.', '2025-11-05 16:17:34', '2025-11-25 16:17:34', 3, 'giam_%', 3, 2, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 2, 'Mua 2 tặng 1 cho tất cả sản phẩm sữa bột.', '2025-10-29 16:17:34', '2025-11-13 16:17:34', 2, 'tang_1', 4, 3, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 2, 'Giảm giá 15% toàn bộ sản phẩm thể thao Adidas.', '2025-10-27 16:17:34', '2025-11-05 16:17:34', 1, 'giam_%', 5, 4, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 2, 'Ưu đãi đặc biệt nhân dịp khai trương - giảm ngay 25% cho toàn bộ sản phẩm.', '2025-10-27 16:17:34', '2025-11-02 16:17:34', 1, 'giam_%', 6, 5, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 2, 'Giảm 10% khi mua combo 2 sản phẩm thời trang mùa đông.', '2025-10-30 16:17:34', '2025-11-09 16:17:34', 2, 'giam_%', 7, 6, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 2, 'Tặng kèm túi vải khi mua giày thể thao chính hãng.', '2025-10-29 16:17:34', '2025-11-08 16:17:34', 1, 'tang_1', 8, 7, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 2, 'Giảm giá 50.000đ cho đơn hàng trên 300.000đ.', '2025-10-28 16:17:34', '2025-11-07 16:17:34', 1, 'tang_1', 9, 8, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 3, 'Flash Sale cuối tuần - giảm 40% cho tất cả sản phẩm công nghệ.', '2025-11-01 16:17:34', '2025-11-03 16:17:34', 1, 'giam_%', 10, 9, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(11, 3, 'Tặng thêm 1 sản phẩm bất kỳ khi mua đơn hàng trên 1.000.000đ.', '2025-10-31 16:17:34', '2025-11-10 16:17:34', 1, 'tang_1', 11, 10, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(12, 3, 'Mua 4 sản phẩm cùng loại - giảm ngay 25%.', '2025-11-02 16:17:34', '2025-11-12 16:17:34', 4, 'giam_%', 12, 1, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quatang_sukien`
--

CREATE TABLE `quatang_sukien` (
  `id` int(11) NOT NULL,
  `id_bienthe` int(11) NOT NULL,
  `id_thuonghieu` int(11) NOT NULL,
  `id_sukien` int(11) NOT NULL,
  `soluongapdung` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `thongtin` longtext NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quatang_sukien`
--

INSERT INTO `quatang_sukien` (`id`, `id_bienthe`, `id_thuonghieu`, `id_sukien`, `soluongapdung`, `tieude`, `thongtin`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, 2, 'Kinh Đô nhân diệp trung thu giảm giá các mặc hàng bánh kẹo', 'Kinh Đô là một thương hiệu gắn liền với ngành bánh kẹo và thực phẩm của Việt Nam, nổi tiếng với các sản phẩm được người tiêu dùng cả nước ưa chuộng, đặc biệt là trong các dịp lễ, Tết. ', 'Hiển thị', '2025-10-15 09:47:21', '2025-10-15 09:47:21', NULL);

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
  `luotban` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Sản phẩm';

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_thuonghieu`, `ten`, `slug`, `mota`, `xuatxu`, `sanxuat`, `trangthai`, `giamgia`, `luotxem`, `luotban`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Keo ong xanh Tracybee Propolis Mint & Honey – Giảm đau rát họng, ho, viêm họng (Vị Bạc Hà)', 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha', 'Bạn đang tìm kiếm giải pháp kháng khuẩn tự nhiên và giảm đau họng tức thì? Keo ong xanh Tracybee Propolis Mint & Honey là sự kết hợp hoàn hảo giữa dược liệu quý từ thiên nhiên và hương vị the mát, giúp bạn vượt qua những cơn đau rát họng, ho và viêm họng khó chịu một cách nhanh chóng.', 'Brazil', 'Nhập khẩu chính ngạch bởi Siêu Thị Vina', 'Công khai', 10, 4, 10, '2025-10-10 06:52:46', '2025-10-26 09:02:44', NULL),
(2, 1, 'Mật ong Tây Bắc đông trùng hạ thảo X3 (Hũ 240g)', 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g', 'Mật ong Tây Bắc Đông Trùng Hạ Thảo X3 là siêu phẩm bồi bổ sức khỏe, kết hợp giữa mật ong rừng Tây Bắc nguyên chất và hàm lượng Đông Trùng Hạ Thảo được tăng cường gấp 3 lần (X3). Sản phẩm mang đến giải pháp tiện lợi và hiệu quả tối ưu để nâng cao thể trạng, tăng cường đề kháng và phục hồi sức khỏe.', 'Việt Nam', 'Việt Nam', 'Công khai', 20, 0, 100, '2025-10-10 07:03:55', '2025-10-10 07:03:55', NULL),
(3, 1, 'Sâm Ngọc Linh trường sinh đỏ (Thùng 24lon)', 'sam-ngoc-linh-truong-sinh-do-thung-24lon', 'Sâm Ngọc Linh Trường Sinh Đỏ là tinh hoa của dược liệu quý hiếm, mang đến giải pháp tiện lợi để bồi bổ sức khỏe và nâng cao thể trạng mỗi ngày. Được chiết xuất từ Sâm Ngọc Linh quý giá – \"Quốc bảo của Việt Nam\" – sản phẩm ở dạng lon uống liền giúp bạn hấp thu trọn vẹn dưỡng chất một cách nhanh chóng và hiệu quả.', 'Việt Nam', 'Việt Nam', 'Công khai', 10, 0, 0, '2025-10-10 07:03:55', '2025-10-10 07:03:55', NULL),
(4, 1, 'Tinh dầu tràm tự nhiên ECO - Hỗ trợ giảm ho, cảm cúm, sổ mũi, cảm lạnh (Lọ 30ml)', 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml', 'Tinh Dầu Tràm Tự Nhiên ECO là sản phẩm chiết xuất 100% từ lá tràm nguyên chất, mang trong mình những công dụng truyền thống tuyệt vời trong việc bảo vệ sức khỏe, đặc biệt là hệ hô hấp. Với khả năng kháng khuẩn, làm ấm và thư giãn, Tinh dầu Tràm ECO là người bạn đồng hành không thể thiếu trong tủ thuốc gia đình, giúp đối phó hiệu quả với các triệu chứng cảm thông thường.', 'Việt Nam', 'Việt Nam', 'Công khai', 85, 0, 0, '2025-10-10 07:03:55', '2025-10-10 07:03:55', NULL),
(5, 1, 'Sữa non tổ yến Papamilk Height & Gain giúp tăng cân tăng chiều cao cho Trẻ từ 1-19 tuổi - Lon 830G', 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g', 'Sữa Non Tổ Yến Papamilk Height & Gain là công thức dinh dưỡng đột phá được thiết kế chuyên biệt để hỗ trợ tăng cân khỏe mạnh và tối ưu hóa chiều cao cho trẻ em và thanh thiếu niên từ 1 đến 19 tuổi. Sự kết hợp độc đáo giữa Sữa Non cao cấp, Tổ Yến quý giá cùng hệ dưỡng chất khoa học giúp con bạn xây dựng nền tảng vững chắc cho một tương lai phát triển vượt trội.', 'Việt Nam', 'Việt Nam', 'Công khai', 20, 0, 0, '2025-10-10 07:03:55', '2025-10-10 07:03:55', NULL),
(6, 1, 'hahaha', 'hahahaha', 'ádasdasd', 'ss', 'ss', 'Công khai', 20, 1, 2, '2025-10-11 14:57:25', '2025-10-11 14:57:25', NULL);

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
(1, 21, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 8, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 22, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 6, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 15, 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(6, 2, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(7, 3, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(8, 19, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(9, 7, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(10, 7, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34');

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
(1, 'Vitamin C 500mg', 'Viên uống tăng sức đề kháng.', 'Mỹ', 'Nature Made', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 120, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 'Sữa rửa mặt dịu nhẹ', 'Phù hợp cho da nhạy cảm.', 'Hàn Quốc', 'Innisfree', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 90, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 'Máy đo huyết áp Omron', 'Dụng cụ theo dõi sức khỏe tại nhà.', 'Nhật Bản', 'Omron', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 250, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 'Nồi chiên không dầu 5L', 'Nấu ăn nhanh chóng, ít dầu mỡ.', 'Trung Quốc', 'Philips', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 310, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 'Khẩu trang y tế 4 lớp', 'Hộp 50 cái, chống bụi và vi khuẩn.', 'Việt Nam', 'VinMask', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 400, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 'Sữa tắm dưỡng ẩm Dove', 'Dưỡng ẩm cho làn da mềm mịn.', 'Anh', 'Unilever', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 180, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 'Sữa bột Abbott Grow', 'Dành cho trẻ từ 2 tuổi trở lên.', 'Mỹ', 'Abbott', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 500, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 'Áo sơ mi nam trắng', 'Chất liệu cotton thoáng mát.', 'Việt Nam', 'Canifa', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 350, 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 'Giày sneaker Adidas', 'Phong cách thể thao, năng động.', 'Đức', 'Adidas', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 600, 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 'Bột giặt OMO Matic', 'Giặt sạch vết bẩn, hương thơm lâu.', 'Việt Nam', 'Unilever', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 270, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(11, 'Laptop Dell Inspiron 15', 'Máy tính xách tay cho công việc và học tập.', 'Mỹ', 'Dell', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 800, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(12, 'Điện thoại iPhone 15 Pro', 'Công nghệ mới nhất từ Apple.', 'Mỹ', 'Apple', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 2000, 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(13, 'Tai nghe AirPods Pro', 'Chống ồn chủ động, pin lâu.', 'Mỹ', 'Apple', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 1500, 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(14, 'Tivi Samsung 55 inch 4K', 'Màn hình sắc nét, giải trí đỉnh cao.', 'Hàn Quốc', 'Samsung', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 1200, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(15, 'Máy giặt LG Inverter', 'Tiết kiệm điện và nước.', 'Hàn Quốc', 'LG', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 950, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(16, 'Quạt điều hòa Sunhouse', 'Làm mát nhanh, tiết kiệm điện.', 'Việt Nam', 'Sunhouse', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 410, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(17, 'Bàn chải điện Oral-B', 'Chăm sóc răng miệng hiện đại.', 'Đức', 'Oral-B', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 300, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(18, 'Bánh quy Oreo', 'Bánh ngọt nhân kem sữa.', 'Mỹ', 'Oreo', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 720, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(19, 'Nước ngọt Coca-Cola', 'Thức uống có gas, giải khát nhanh.', 'Mỹ', 'Coca-Cola', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 2000, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(20, 'Trà xanh Lipton', 'Thức uống giải nhiệt, hương vị tự nhiên.', 'Anh', 'Lipton', 'uploads/sanpham/mediaurl/sanpham.png', 'hoat_dong', 650, 1, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(21, 'Cà phê Trung Nguyên', 'Cà phê rang xay nguyên chất, hương vị đậm đà.', 'Việt Nam', 'Trung Nguyên Legend', 'uploads/sanpham/mediaurl/sanpham.png', 'cho_duyet', 820, NULL, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(22, 'Sữa tươi TH True Milk', 'Sản phẩm sữa tươi sạch từ trang trại TH.', 'Việt Nam', 'TH Group', 'uploads/sanpham/mediaurl/sanpham.png', 'cho_duyet', 940, NULL, '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

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
('pGwMW03tPrweZ2DfNxqiyh9mQgaVX9mQOmX1PlRE', NULL, '127.0.0.1', 'PostmanRuntime/7.49.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNWRWRUpnZUczR0VOU2JuSjIyZHQwNzBIT3ZGRm1kWXg1bXFNcHY5WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1761470340, NULL, NULL),
('Rb4oZjxSBptGZtx6fEzrxTnWSXU4PzGfhuDWdVsR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUXk0cFYwb1dyTnRMczBKQVY0OUh0MW9VNWppaXk4WXRqQlJVQ1VKSiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiQ4QjJGQzdlSnN3R0p4QjRCdlVsMFp1NjhJOHlLNHlZY2NvVGx6anRoRFFXOTdZVGhYemVUYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFuZy1jaHUiO319', 1761470634, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sukien`
--

CREATE TABLE `sukien` (
  `id` int(11) NOT NULL,
  `tieude` text NOT NULL,
  `slug` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `ngaybatdau` date NOT NULL,
  `ngayketthuc` date NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sukien`
--

INSERT INTO `sukien` (`id`, `tieude`, `slug`, `hinhanh`, `noidung`, `ngaybatdau`, `ngayketthuc`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Giảm giá sập sàn mùa trung thu', 'giam-gia-sap-san-mua-trung-thu', 'giam-gia-sap-san-mua-trung-thu.png', 'Giảm giá sập sàn mùa trung thu với các mặt hàng của đến từ thương hiệu kinh đô', '2025-10-01', '2025-10-31', 'Hiển thị', '2025-10-15 09:42:02', '2025-10-15 09:42:02', NULL);

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
  `trangthai` enum('Đã đọc','Chưa đọc','Tạm ẩn') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`id`, `id_nguoidung`, `tieude`, `noidung`, `lienket`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Bạn có đơn hàng mới ', 'Bạn có đơn hàng mới mới đã được xác nhận', NULL, 'Chưa đọc', '2025-10-15 09:59:13', '2025-10-15 09:59:13', NULL),
(2, 2, 'test admin gửi thông báo cho admin postmen', '', 'test admin gửi thông báo cho admin postmen', 'Chưa đọc', '2025-10-15 13:49:19', '2025-10-15 13:49:19', NULL);

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
  `trangthai` enum('hoat_dong','ngung_hoat_dong','bi_khoa','cho_duyet') NOT NULL DEFAULT 'cho_duyet',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtin_nguoibanhang`
--

INSERT INTO `thongtin_nguoibanhang` (`id`, `id_nguoidung`, `ten_cuahang`, `giayphep_kinhdoanh`, `theodoi`, `luotban`, `logo`, `bianen`, `mota`, `diachi`, `sodienthoai`, `email`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 21, 'Shop Sức Khỏe Xanh', 'GP-1001', 120, 50, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Chuyên cung cấp vitamin và thực phẩm chức năng.', '123 Lê Lợi, Hà Nội', '0901000001', 'shop1@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(2, 22, 'Mỹ Phẩm Thiên Nhiên', 'GP-1002', 230, 120, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Mỹ phẩm organic cho da nhạy cảm.', '45 Nguyễn Huệ, TP.HCM', '0901000002', 'shop2@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(3, 23, 'Thiết Bị Y Tế Omron', 'GP-1003', 500, 300, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Máy đo huyết áp, máy xông khí dung chính hãng.', '89 Hai Bà Trưng, Đà Nẵng', '0901000003', 'shop3@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(4, 24, 'Gia Dụng Nhà Bếp', 'GP-1004', 320, 210, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Nồi chiên, máy ép trái cây, bếp điện...', '77 Nguyễn Văn Cừ, Cần Thơ', '0901000004', 'shop4@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(5, 25, 'Khẩu Trang VinMask', 'GP-1005', 150, 90, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Khẩu trang y tế 4 lớp chất lượng cao.', '12 Hoàng Hoa Thám, Hải Phòng', '0901000005', 'shop5@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(6, 26, 'Dove Care', 'GP-1006', 410, 300, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Các sản phẩm chăm sóc da của Dove.', '59 Cách Mạng Tháng 8, TP.HCM', '0901000006', 'shop6@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(7, 27, 'Abbott Grow Store', 'GP-1007', 600, 450, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Sữa bột và dinh dưỡng trẻ em.', '88 Điện Biên Phủ, Hà Nội', '0901000007', 'shop7@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(8, 28, 'Thời Trang Nam Canifa', 'GP-1008', 720, 310, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Áo sơ mi, quần tây, vest nam.', '20 Bạch Mai, Hà Nội', '0901000008', 'shop8@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(9, 29, 'Adidas Official', 'GP-1009', 1200, 800, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Giày sneaker, quần áo thể thao Adidas.', '101 Láng Hạ, Hà Nội', '0901000009', 'shop9@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL),
(10, 30, 'OMO Matic Store', 'GP-1010', 650, 500, 'uploads/cuahang/logo/logo.png', 'uploads/cuahang/bianen/bianen.png', 'Bột giặt và sản phẩm giặt tẩy.', '45 Võ Văn Ngân, Thủ Đức', '0901000010', 'shop10@example.com', 'hoat_dong', '2025-10-26 09:17:34', '2025-10-26 09:17:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_bao`
--

CREATE TABLE `thong_bao` (
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
-- Đang đổ dữ liệu cho bảng `thong_bao`
--

INSERT INTO `thong_bao` (`id`, `tieude`, `noidung`, `phanloai`, `url`, `trangthai`, `id_nguoidung`, `created_at`, `updated_at`) VALUES
(1, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #3, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #4, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #5, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #6, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #7, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(6, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #8, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(7, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #9, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(8, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #10, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(9, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #11, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 11, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(10, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #12, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 12, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(11, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #13, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 13, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(12, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #14, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 14, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(13, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #15, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 15, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(14, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #16, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 16, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(15, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #17, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 17, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(16, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #18, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 18, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(17, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #19, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 19, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(18, 'Chào mừng bạn đến với hệ thống!', 'Xin chào User #20, chúc bạn có trải nghiệm vui vẻ.', 'welcome', NULL, 'hoat_dong', 20, '2025-10-26 09:17:34', '2025-10-26 09:17:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `ten` text NOT NULL,
  `slug` text DEFAULT NULL,
  `mota` longtext DEFAULT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `ten`, `slug`, `mota`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Vina Mild', 'Vina-Mild', 'Vina Mild nhãn hiệu bán chạy nhất ', 'Hiển thị', '2025-10-15 03:45:58', '2025-10-15 03:45:58', NULL),
(2, 'kinh đô', 'kinh-do', 'Kinh Đô là một thương hiệu gắn liền với ngành bánh kẹo và thực phẩm của Việt Nam, nổi tiếng với các sản phẩm được người tiêu dùng cả nước ưa chuộng, đặc biệt là trong các dịp lễ, Tết.', 'Hiển thị', '2025-10-15 09:44:50', '2025-10-15 09:44:50', NULL);

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
(3, 'Đồ chơi minecraft', 152),
(4, 'Sách hán ngữ 3', 596),
(5, 'Huyndai decor', 62),
(6, 'Điện nội thất', 125),
(7, 'Móc khóa genshin', 246),
(8, 'Phiền Muộn Của Afratu', 9),
(9, 'Kẹo', 50),
(10, 'Sâm Ngọc Linh', 606),
(11, 'Thầy Hộ', 1);

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
(1, 'Chăm sóc cá nhân', 150, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 'Làm đẹp', 200, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 'Tìm kiếm sản phẩm', 80, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 'Thực phâm thức năng', 120, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 'Điện máy', 90, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(6, 'Thời trang', 70, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(7, 'Bách hóa', 70, '2025-10-26 09:17:34', '2025-10-26 09:17:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeuthich`
--

CREATE TABLE `yeuthich` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeuthich`
--

INSERT INTO `yeuthich` (`id`, `id_nguoidung`, `id_sanpham`, `trangthai`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Hiển thị', '2025-10-15 09:59:37', '2025-10-15 09:59:37'),
(2, 2, 4, 'Hiển thị', '2025-10-15 11:11:55', '2025-10-15 11:11:55');

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
(1, 'dang_thich', 1, 2, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(2, 'dang_thich', 2, 3, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(3, 'bo_thich', 3, 4, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(4, 'dang_thich', 4, 5, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(5, 'dang_thich', 5, 6, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(6, 'bo_thich', 6, 7, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(7, 'dang_thich', 7, 8, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(8, 'dang_thich', 8, 9, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(9, 'dang_thich', 9, 10, '2025-10-26 09:17:34', '2025-10-26 09:17:34'),
(10, 'bo_thich', 10, 11, '2025-10-26 09:17:34', '2025-10-26 09:17:34');

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
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

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
-- Chỉ mục cho bảng `bienthe`
--
ALTER TABLE `bienthe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `id_loaibienthe` (`id_loaibienthe`);

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
  ADD KEY `id_bienthe` (`id_bienthe`),
  ADD KEY `id_donhang` (`id_donhang`);

--
-- Chỉ mục cho bảng `chuongtrinhsukien`
--
ALTER TABLE `chuongtrinhsukien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chuongtrinhsukien_ten_unique` (`ten`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_danhgia_3fields` (`id_sanpham`,`id_nguoidung`,`id_chitietdonhang`),
  ADD KEY `id_nguoidung` (`id_nguoidung`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `danhgia_chitietdonhangibfk_3` (`id_chitietdonhang`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_danhmuc_parent` (`parent`);

--
-- Chỉ mục cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_danhmuc` (`id_danhmuc`),
  ADD KEY `id_sanpham` (`id_sanpham`);

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
-- Chỉ mục cho bảng `diachi_giaohang`
--
ALTER TABLE `diachi_giaohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `diachi_nguoidung`
--
ALTER TABLE `diachi_nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diachi_nguoidung_id_nguoidung_foreign` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`),
  ADD KEY `id_magiamgia` (`id_magiamgia`),
  ADD KEY `id_phuongthuc` (`id_phuongthuc`);

--
-- Chỉ mục cho bảng `donhang_chitiet`
--
ALTER TABLE `donhang_chitiet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `donhang_chitiet_id_donhang_id_bienthe_unique` (`id_donhang`,`id_bienthe`),
  ADD KEY `donhang_chitiet_id_bienthe_foreign` (`id_bienthe`);

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
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bienthe` (`id_bienthe`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

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
-- Chỉ mục cho bảng `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lichsu_thanhtoan_magiaodich_unique` (`magiaodich`),
  ADD KEY `lichsu_thanhtoan_id_donhang_foreign` (`id_donhang`),
  ADD KEY `lichsu_thanhtoan_id_phuongthuc_thanhtoan_foreign` (`id_phuongthuc_thanhtoan`);

--
-- Chỉ mục cho bảng `loaibienthe`
--
ALTER TABLE `loaibienthe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_bienthe`
--
ALTER TABLE `loai_bienthe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loai_bienthe_ten_unique` (`ten`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
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
-- Chỉ mục cho bảng `phuongthuc`
--
ALTER TABLE `phuongthuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phuongthuc_thanhtoan`
--
ALTER TABLE `phuongthuc_thanhtoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phuongthuc_thanhtoan_ma_unique` (`ma`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quatang_khuyenmai`
--
ALTER TABLE `quatang_khuyenmai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quatang_khuyenmai_id_bienthe_foreign` (`id_bienthe`),
  ADD KEY `quatang_khuyenmai_id_cuahang_foreign` (`id_cuahang`),
  ADD KEY `quatang_khuyenmai_id_chuongtrinhsukien_foreign` (`id_chuongtrinhsukien`);

--
-- Chỉ mục cho bảng `quatang_sukien`
--
ALTER TABLE `quatang_sukien`
  ADD KEY `id_bienthe` (`id_bienthe`),
  ADD KEY `id_cuahang` (`id_thuonghieu`),
  ADD KEY `id_sukien` (`id_sukien`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuonghieu_ibfk_1` (`id_thuonghieu`);

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
-- Chỉ mục cho bảng `sukien`
--
ALTER TABLE `sukien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

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
-- Chỉ mục cho bảng `thong_bao`
--
ALTER TABLE `thong_bao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thong_bao_id_nguoidung_foreign` (`id_nguoidung`);

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
-- Chỉ mục cho bảng `tu_khoa`
--
ALTER TABLE `tu_khoa`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tu_khoa` ADD FULLTEXT KEY `tu_khoa_dulieu_fulltext` (`dulieu`);

--
-- Chỉ mục cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_nguoidung` (`id_nguoidung`,`id_sanpham`),
  ADD KEY `id_sanpham` (`id_sanpham`);

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
-- AUTO_INCREMENT cho bảng `bienthe`
--
ALTER TABLE `bienthe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `bienthe_sp`
--
ALTER TABLE `bienthe_sp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `chuongtrinhsukien`
--
ALTER TABLE `chuongtrinhsukien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT cho bảng `donhang_chitiet`
--
ALTER TABLE `donhang_chitiet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `hanhvi_nguoidung`
--
ALTER TABLE `hanhvi_nguoidung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `lichsu_thanhtoan`
--
ALTER TABLE `lichsu_thanhtoan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `loaibienthe`
--
ALTER TABLE `loaibienthe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `quatang_khuyenmai`
--
ALTER TABLE `quatang_khuyenmai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT cho bảng `thongtin_nguoibanhang`
--
ALTER TABLE `thongtin_nguoibanhang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `thong_bao`
--
ALTER TABLE `thong_bao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tukhoa`
--
ALTER TABLE `tukhoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `bai_viet`
--
ALTER TABLE `bai_viet`
  ADD CONSTRAINT `bai_viet_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `bienthe`
--
ALTER TABLE `bienthe`
  ADD CONSTRAINT `bienthe_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `bienthe_ibfk_2` FOREIGN KEY (`id_loaibienthe`) REFERENCES `loaibienthe` (`id`);

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
  ADD CONSTRAINT `chitiet_donhang_ibfk_1` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe` (`id`),
  ADD CONSTRAINT `chitiet_donhang_ibfk_2` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_chitietdonhangibfk_3` FOREIGN KEY (`id_chitietdonhang`) REFERENCES `chitiet_donhang` (`id`),
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD CONSTRAINT `FK_danhmuc_parent` FOREIGN KEY (`parent`) REFERENCES `danhmuc` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danhmuc_sanpham`
--
ALTER TABLE `danhmuc_sanpham`
  ADD CONSTRAINT `danhmuc_sanpham_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id`),
  ADD CONSTRAINT `danhmuc_sanpham_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD CONSTRAINT `danh_gia_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `danh_gia_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `san_pham` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `diachi_giaohang`
--
ALTER TABLE `diachi_giaohang`
  ADD CONSTRAINT `diachi_giaohang_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `diachi_nguoidung`
--
ALTER TABLE `diachi_nguoidung`
  ADD CONSTRAINT `diachi_nguoidung_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`id_magiamgia`) REFERENCES `magiamgia` (`id`),
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`id_phuongthuc`) REFERENCES `phuongthuc` (`id`);

--
-- Các ràng buộc cho bảng `donhang_chitiet`
--
ALTER TABLE `donhang_chitiet`
  ADD CONSTRAINT `donhang_chitiet_id_bienthe_foreign` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe_sp` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donhang_chitiet_id_donhang_foreign` FOREIGN KEY (`id_donhang`) REFERENCES `don_hang` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_id_magiamgia_foreign` FOREIGN KEY (`id_magiamgia`) REFERENCES `ma_giamgia` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `don_hang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `don_hang_id_phuongthuc_thanhtoan_foreign` FOREIGN KEY (`id_phuongthuc_thanhtoan`) REFERENCES `phuongthuc_thanhtoan` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe` (`id`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`);

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
-- Các ràng buộc cho bảng `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  ADD CONSTRAINT `hinhanh_sanpham_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

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
-- Các ràng buộc cho bảng `quatang_sukien`
--
ALTER TABLE `quatang_sukien`
  ADD CONSTRAINT `quatang_sukien_ibfk_1` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe` (`id`),
  ADD CONSTRAINT `quatang_sukien_ibfk_3` FOREIGN KEY (`id_sukien`) REFERENCES `sukien` (`id`),
  ADD CONSTRAINT `thuonghieu_quatang_sukien_ibfk_2` FOREIGN KEY (`id_thuonghieu`) REFERENCES `thuonghieu` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `thuonghieu_ibfk_1` FOREIGN KEY (`id_thuonghieu`) REFERENCES `thuonghieu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `thongtin_nguoibanhang`
--
ALTER TABLE `thongtin_nguoibanhang`
  ADD CONSTRAINT `thongtin_nguoibanhang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `thong_bao`
--
ALTER TABLE `thong_bao`
  ADD CONSTRAINT `thong_bao_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  ADD CONSTRAINT `yeuthich_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `yeuthich_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

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
