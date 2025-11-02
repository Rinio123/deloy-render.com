-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 02, 2025 lúc 08:09 PM
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

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`id`, `id_nguoidung`, `tieude`, `slug`, `noidung`, `luotxem`, `hinhanh`, `trangthai`) VALUES
(1, 2, 'Chương trình Siêu Sale Tháng 11 - Mua Sắm Thả Ga, Giảm Giá Tận Tay!', 'chuong-trinh-sieu-sale-thang-11-mua-sam-tha-ga-giam-gia-tan-tay', '<p>Siêu Thị Vina mang đến chương trình <strong>Siêu Sale Tháng 11</strong> với hàng ngàn sản phẩm giảm giá đến <strong>70%</strong>. Từ thực phẩm chức năng, mỹ phẩm, đồ gia dụng cho đến sản phẩm chăm sóc sức khỏe – tất cả đều có mặt!</p>\n                <p>Thời gian: <strong>01/11/2025 - 15/11/2025</strong></p>\n                <p>Hãy nhanh tay đặt hàng và nhận quà hấp dẫn ngay hôm nay!</p><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 120, 'sale-thang-11.jpg', 'Hiển thị'),
(2, 2, 'Mẹo bảo quản mật ong đúng cách giúp giữ nguyên dinh dưỡng', 'meo-bao-quan-mat-ong-dung-cach-giup-giu-nguyen-dinh-duong', '<p>Mật ong là món quà quý từ thiên nhiên, nhưng nếu bảo quản không đúng cách, hương vị và chất lượng sẽ giảm sút.</p>\n                <ul>\n                    <li>Bảo quản trong lọ thủy tinh, nơi khô ráo, tránh ánh nắng trực tiếp.</li>\n                    <li>Không để mật ong trong tủ lạnh vì dễ kết tinh.</li>\n                    <li>Đậy kín nắp sau khi sử dụng để tránh ẩm mốc.</li>\n                </ul>\n                <p>Áp dụng những mẹo nhỏ này để mật ong của bạn luôn thơm ngon nhé!</p><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 80, 'bao-quan-mat-ong.jpg', 'Hiển thị'),
(3, 2, 'Cách lựa chọn sữa non phù hợp cho bé yêu phát triển toàn diện', 'cach-lua-chon-sua-non-phu-hop-cho-be-yeu-phat-trien-toan-dien', '<p>Sữa non là nguồn dinh dưỡng quý giá giúp tăng cường sức đề kháng và phát triển chiều cao cho trẻ nhỏ.</p>\n                <p>Khi chọn sữa non, hãy chú ý:</p>\n                <ul>\n                    <li>Xuất xứ rõ ràng, có chứng nhận an toàn.</li>\n                    <li>Thành phần giàu canxi, protein, và DHA.</li>\n                    <li>Phù hợp với độ tuổi của bé.</li>\n                </ul>\n                <p><strong>Papamilk Height & Gain</strong> là lựa chọn được nhiều mẹ tin dùng tại Siêu Thị Vina.</p><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 55, 'sua-non-cho-be.jpg', 'Hiển thị'),
(4, 2, 'Tinh dầu tràm thiên nhiên – Bí quyết chăm sóc sức khỏe gia đình', 'tinh-dau-tram-thien-nhien-bi-quyet-cham-soc-suc-khoe-gia-dinh', '<p>Tinh dầu tràm có công dụng kháng khuẩn, giảm ho, và giữ ấm cơ thể – đặc biệt hữu ích cho mùa lạnh.</p>\n                <p><strong>Siêu Thị Vina</strong> mang đến dòng tinh dầu tràm ECO 100% tự nhiên, an toàn cho trẻ nhỏ.</p>\n                <p>Sản phẩm hiện đang được giảm giá 15% trong tháng này!</p><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 95, 'tinh-dau-tram-eco.jpg', 'Hiển thị'),
(5, 2, 'Bí quyết làm đẹp da với collagen thủy phân – Cập nhật xu hướng 2025', 'bi-quyet-lam-dep-da-voi-collagen-thuy-phan-cap-nhat-xu-huong-2025', '<p>Collagen thủy phân giúp da sáng mịn, đàn hồi và trẻ hóa. Sản phẩm <strong>Acai Labs Marine Collagen</strong> nhập khẩu Australia hiện đang rất được ưa chuộng.</p>\n                <p>Uống mỗi ngày 1 gói, sau 2 tuần bạn sẽ cảm nhận làn da căng mướt tự nhiên.</p><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 40, 'collagen-thuy-phan.jpg', 'Hiển thị'),
(6, 2, 'Khuyến mãi đặc biệt – Miễn phí vận chuyển cho đơn hàng trên 500K', 'khuyen-mai-dac-biet-mien-phi-van-chuyen-cho-don-hang-tren-500k', '<p>Nhằm tri ân khách hàng thân thiết, Siêu Thị Vina triển khai chương trình <strong>FreeShip toàn quốc</strong> cho mọi đơn hàng từ 500,000đ trở lên.</p>\n                <p>Thời gian áp dụng: <strong>01/11 - 30/11/2025</strong></p>\n                <p>Áp dụng cho tất cả sản phẩm thuộc danh mục thực phẩm, mỹ phẩm và hàng tiêu dùng.</p><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 300, 'freeship-500k.jpg', 'Hiển thị'),
(7, 2, 'Top 5 sản phẩm chăm sóc sức khỏe bán chạy nhất tại Siêu Thị Vina', 'top-5-san-pham-cham-soc-suc-khoe-ban-chay-nhat-tai-sieu-thi-vina', '<ol>\n                    <li>Midu MenaQ7 180mcg – Hỗ trợ xương khớp chắc khỏe.</li>\n                    <li>Keo ong Tracybee – Tăng đề kháng, kháng khuẩn tự nhiên.</li>\n                    <li>Sâm Ngọc Linh Trường Sinh Đỏ – Bồi bổ sức khỏe toàn thân.</li>\n                    <li>Collagen Acai Labs – Làm đẹp da từ bên trong.</li>\n                    <li>Tinh dầu tràm ECO – Giữ ấm cơ thể và thư giãn tinh thần.</li>\n                </ol><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 200, 'top5-suc-khoe.jpg', 'Hiển thị'),
(8, 2, 'Sự kiện “Ngày hội sức khỏe 2025” – Cùng Siêu Thị Vina lan tỏa năng lượng tích cực', 'su-kien-ngay-hoi-suc-khoe-2025-cung-sieu-thi-vina-lan-toa-nang-luong-tich-cuc', '<p>Tham gia “Ngày hội sức khỏe 2025” do Siêu Thị Vina tổ chức tại TP. Hồ Chí Minh với nhiều hoạt động bổ ích:</p>\n                <ul>\n                    <li>Khám sức khỏe miễn phí</li>\n                    <li>Workshop hướng dẫn chăm sóc da và dinh dưỡng</li>\n                    <li>Giảm giá 30% cho tất cả sản phẩm trong ngày</li>\n                </ul>\n                <p>Sự kiện diễn ra ngày <strong>10/12/2025</strong> tại Vincom Quận 9. Đăng ký ngay để nhận quà hấp dẫn!</p><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 60, 'ngay-hoi-suc-khoe.jpg', 'Hiển thị'),
(9, 2, 'Tổng hợp quà Tết 2026 – Ý nghĩa và sang trọng cùng Siêu Thị Vina', 'tong-hop-qua-tet-2026-y-nghia-va-sang-trong-cung-sieu-thi-vina', '<p>Chuẩn bị Tết 2026, Siêu Thị Vina giới thiệu bộ sưu tập <strong>Giỏ quà Tết cao cấp</strong> với nhiều lựa chọn đa dạng:</p>\n                <ul>\n                    <li>Giỏ quà Sức Khỏe – Dành cho người thân yêu.</li>\n                    <li>Giỏ quà Doanh Nghiệp – Sang trọng, tinh tế.</li>\n                    <li>Giỏ quà Gia Đình – Ấm áp và tiết kiệm.</li>\n                </ul><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 150, 'qua-tet-2026.jpg', 'Hiển thị'),
(10, 2, 'Chăm sóc gia đình an toàn với sản phẩm tẩy rửa sinh học từ thiên nhiên', 'cham-soc-gia-dinh-an-toan-voi-san-pham-tay-rua-sinh-hoc-tu-thien-nhien', '<p>Các sản phẩm như <strong>Nước rửa chén sả chanh Come On</strong> và <strong>Nước rửa bát Bio Formula</strong> đang được ưa chuộng nhờ chiết xuất tự nhiên, an toàn cho da tay và môi trường.</p>\n                <p>Bạn hoàn toàn có thể yên tâm sử dụng mỗi ngày cho cả gia đình!</p><p>Siêu Thị Vina - Đối Tác Phân Phối Hàng Đầu Cho Mọi Nhà\n        Siêu Thị Vina tự hào là đối tác phân phối đáng tin cậy, cung cấp đa dạng các mặt hàng thiết yếu từ Sức khỏe, Chăm sóc cá nhân, Điện máy đến Thiết bị y tế, Bách hóa và nhiều hơn nữa. Chúng tôi cam kết mang đến những sản phẩm chất lượng với giá cả cạnh tranh nhất.\n\n        Tại Sao Nên Chọn Siêu Thị Vina?\n        Với phương châm \"Khách hàng là trọng tâm\", Siêu Thị Vina không ngừng nỗ lực hoàn thiện để trở thành người bạn đồng hành tin cậy của mọi gia đình Việt.\n\n        Chất lượng đảm bảo: Tất cả sản phẩm đều được tuyển chọn kỹ lưỡng, đảm bảo an toàn và có nguồn gốc xuất xứ rõ ràng.\n\n        Giá cả cạnh tranh: Chính sách giá hợp lý nhờ chuỗi cung ứng được tối ưu hóa.\n\n        Dịch vụ chuyên nghiệp: Đội ngũ nhân viên tận tâm, sẵn sàng tư vấn và hỗ trợ.\n\n        Khám Phá Các Danh Mục Sản Phẩm Tại Siêu Thị Vina\n        Siêu Thị Vina sở hữu một hệ sinh thái sản phẩm toàn diện, đáp ứng mọi nhu cầu từ cơ bản đến cao cấp của khách hàng.\n\n        🏥 Sức Khỏe & Thiết Bị Y Tế\n        Danh mục này cung cấp các sản phẩm chăm sóc sức khỏe chủ động và thiết yếu cho gia đình bạn. Từ thực phẩm chức năng, vitamin hỗ trợ nâng cao sức đề kháng, đến các thiết bị y tế như máy đo huyết áp, nhiệt kế điện tử, máy đo đường huyết, giúp bạn dễ dàng theo dõi tình trạng sức khỏe tại nhà. Chúng tôi hiểu rằng sức khỏe là vốn quý nhất, vì vậy mọi sản phẩm đều được lựa chọn kỹ càng.\n\n        💄 Làm Đẹp & Chăm Sóc Cá Nhân\n        Đây là thiên đường dành cho những ai yêu thích làm đẹp. Danh mục Làm đẹp và Chăm sóc cá nhân tại Siêu Thị Vina bao gồm đầy đủ các sản phẩm từ mỹ phẩm, dược phẩm làm đẹp đến dụng cụ chăm sóc da, body. Bên cạnh đó, bạn cũng có thể tìm thấy những vật dụng thiết yếu hàng ngày như bàn chải đánh răng, sữa tắm, dầu gội,... giúp bạn luôn tươi trẻ và tự tin trong cuộc sống.\n\n        🏠 Nhà Cửa & Đời Sống\n        Biến ngôi nhà thành tổ ấm thực sự với danh mục Nhà cửa - Đời sống. Chúng tôi cung cấp vô vàn các sản phẩm gia dụng, đồ dùng nhà bếp, vật dụng trang trí và dụng cụ cải tạo nhà cửa. Từ những chiếc bát đĩa xinh xắn đến các thiết bị vệ sinh, tất cả đều được thiết kế tiện nghi và hiện đại, mang đến sự tiện lợi và thoải mái cho không gian sống của bạn.\n\n        👨‍👩‍👧‍👦 Mẹ Và Bé\n        Đồng hành cùng các bậc cha mẹ trong hành trình chăm sóc thiên thần nhỏ, danh mục Mẹ và bé của Siêu Thị Vina là nơi bạn có thể tìm thấy mọi thứ từ sữa bột, tã lót, đồ dùng ăn dặm đến xe đẩy, đồ chơi an toàn. Các sản phẩm đều được kiểm định nghiêm ngặt về độ an toàn, đảm bảo cho sự phát triển toàn diện của bé yêu.\n\n        ⚡ Điện Máy & Bách Hóa\n        Đáp ứng nhu cầu thiết yếu và nâng cao chất lượng sống, danh mục Điện máy cung cấp các thiết bị như quạt, nồi cơm điện, bàn ủi... tiết kiệm điện năng. Trong khi đó, danh mục Bách hóa là nơi bạn có thể mua sắm mọi thứ từ thực phẩm khô, đồ gia vị đến văn phòng phẩm, đồ dùng học tập một cách nhanh chóng và tiện lợi.\n\n        👗 Thời Trang\n        Cập nhật những xu hướng thời trang mới nhất với danh mục Thời trang tại Siêu Thị Vina. Chúng tôi mang đến cho bạn những bộ trang phục đa dạng từ quần áo, giày dép đến phụ kiện thời trang phù hợp cho mọi lứa tuổi và dịp sử dụng, giúp bạn luôn nổi bật và cá tính.\n\n        Trải Nghiệm Mua Sắm Khác Biệt Tại Siêu Thị Vina\n        Khi đến với Siêu Thị Vina, bạn không chỉ đơn thuần là mua sắm mà còn là trải nghiệm một dịch vụ toàn diện. Chúng tôi sở hữu hệ thống siêu thị rộng khắp với không gian mua sắm thoáng đãng, sạch sẽ. Đội ngũ nhân viên tư vấn được đào tạo bài bản, luôn sẵn sàng lắng nghe và giải đáp mọi thắc mắc của bạn. Bên cạnh đó, chính sách hậu mãi, bảo hành và đổi trả rõ ràng, minh bạch sẽ mang đến cho bạn sự an tâm tuyệt đối.\n\n        Kết Luận\n        Siêu Thị Vina không ngừng phấn đấu để trở thành điểm đến mua sắm tin cậy, nơi mọi khách hàng đều có thể tìm thấy những sản phẩm chất lượng với mức giá hợp lý nhất. Hãy ghé thăm Siêu Thị Vina ngay hôm nay để khám phá trọn vẹn thế giới sản phẩm đa dạng và trải nghiệm dịch vụ khác biệt của chúng tôi!</p>', 110, 'tay-rua-sinh-hoc.jpg', 'Hiển thị');

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
(21, 8, 18, 69000, 76, 8, 76, 'Còn hàng', NULL),
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
  `trangthai` enum('Đã đặt','Đã hủy') NOT NULL DEFAULT 'Đã đặt',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `id_bienthe`, `id_donhang`, `soluong`, `dongia`, `trangthai`, `deleted_at`) VALUES
(1, 8, 41, 2, 406585, 'Đã đặt', NULL),
(2, 11, 42, 3, 321583, 'Đã đặt', NULL),
(3, 26, 43, 1, 234779, 'Đã đặt', NULL),
(4, 15, 44, 3, 134921, 'Đã đặt', NULL),
(5, 13, 45, 2, 139181, 'Đã đặt', NULL),
(6, 19, 46, 5, 498606, 'Đã đặt', NULL),
(7, 21, 47, 4, 408866, 'Đã đặt', NULL),
(8, 5, 48, 5, 450715, 'Đã đặt', NULL),
(9, 9, 49, 1, 229071, 'Đã đặt', NULL),
(10, 27, 50, 1, 390329, 'Đã đặt', NULL);

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
(1, 'Sinh Nhật 13/10', 'sinh-nhat-13-10', 'sinhnhat13102025.png', 'không có', 'Hiển thị'),
(12, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 2', 'chuong-trinh-khuyen-mai-dac-biet-thang-2', 'chuongtrinh_sukien_1.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 29/10/2025', 'Hiển thị'),
(13, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 3', 'chuong-trinh-khuyen-mai-dac-biet-thang-3', 'chuongtrinh_sukien_2.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 22/10/2025', 'Hiển thị'),
(14, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 4', 'chuong-trinh-khuyen-mai-dac-biet-thang-4', 'chuongtrinh_sukien_3.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 09/10/2025', 'Hiển thị'),
(15, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 5', 'chuong-trinh-khuyen-mai-dac-biet-thang-5', 'chuongtrinh_sukien_4.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 09/10/2025', 'Hiển thị'),
(16, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 6', 'chuong-trinh-khuyen-mai-dac-biet-thang-6', 'chuongtrinh_sukien_5.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 10/10/2025', 'Hiển thị'),
(17, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 7', 'chuong-trinh-khuyen-mai-dac-biet-thang-7', 'chuongtrinh_sukien_6.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 30/09/2025', 'Hiển thị'),
(18, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 8', 'chuong-trinh-khuyen-mai-dac-biet-thang-8', 'chuongtrinh_sukien_7.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 11/10/2025', 'Hiển thị'),
(19, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 9', 'chuong-trinh-khuyen-mai-dac-biet-thang-9', 'chuongtrinh_sukien_8.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 20/10/2025', 'Hiển thị'),
(20, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 10', 'chuong-trinh-khuyen-mai-dac-biet-thang-10', 'chuongtrinh_sukien_9.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 28/10/2025', 'Tạm ẩn'),
(21, 'Chương Trình Khuyến Mãi Đặc Biệt Tháng 11', 'chuong-trinh-khuyen-mai-dac-biet-thang-11', 'chuongtrinh_sukien_10.png', 'Đây là nội dung chi tiết cho bài viết mẫu. Nội dung này được tạo ra để mô phỏng một bài viết đầy đủ trong bảng \'chuongtrinh\' của hệ thống.\n\nNgày công bố: 16/10/2025', 'Tạm ẩn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `id_chitietdonhang` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `noidung` text DEFAULT NULL,
  `trangthai` enum('Hiển thị','Tạm ẩn') NOT NULL DEFAULT 'Hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`id`, `id_nguoidung`, `id_sanpham`, `id_chitietdonhang`, `diem`, `noidung`, `trangthai`) VALUES
(15, 2, 9, 1, 3, 'Sản phẩm rất tốt, mình rất hài lòng với chất lượng và dịch vụ.', 'Hiển thị'),
(16, 10, 23, 3, 3, 'Sản phẩm sử dụng rất tiện lợi và hiệu quả, mình rất thích.', 'Hiển thị'),
(17, 5, 13, 4, 5, 'Sản phẩm đúng như mô tả, không có gì để chê cả.', 'Hiển thị'),
(18, 6, 16, 6, 4, 'Sản phẩm rất tốt, mình rất hài lòng với chất lượng và dịch vụ.', 'Hiển thị'),
(19, 4, 18, 7, 5, 'Sản phẩm có thiết kế đẹp mắt, sử dụng rất thích.', 'Hiển thị'),
(20, 1, 5, 8, 3, 'Dịch vụ khách hàng rất tận tình và chu đáo, cảm ơn shop nhiều!', 'Hiển thị'),
(21, 6, 22, 10, 3, 'Sản phẩm rất tốt, mình rất hài lòng với chất lượng và dịch vụ.', 'Hiển thị');

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
  `id_phuongthuc` int(11) NOT NULL,
  `id_magiamgia` int(11) DEFAULT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `id_phivanchuyen` int(11) NOT NULL,
  `id_diachigiaohang` int(11) NOT NULL,
  `madon` varchar(10) NOT NULL,
  `tongsoluong` int(11) NOT NULL,
  `tamtinh` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `trangthaithanhtoan` enum('Chưa thanh toán','Đã thanh toán','Thanh toán thất bại','Đã hoàn tiền') NOT NULL DEFAULT 'Chưa thanh toán' COMMENT 'Trạng thái thanh toán của đơn hàng',
  `trangthai` enum('Chờ xử lý','Đã xác nhận','Đang chuẩn bị hàng','Đang giao hàng','Đã giao hàng','Đã hủy') NOT NULL DEFAULT 'Chờ xử lý' COMMENT 'Trạng thái xử lý và vận chuyển đơn hàng',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `id_phuongthuc`, `id_magiamgia`, `id_nguoidung`, `id_phivanchuyen`, `id_diachigiaohang`, `madon`, `tongsoluong`, `tamtinh`, `thanhtien`, `trangthaithanhtoan`, `trangthai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 1, 3, 2, 3, 2, 'DH00001', 2, 813170, 764426, 'Đã thanh toán', 'Đang chuẩn bị hàng', '2025-10-28 18:02:15', '2025-10-29 18:02:15', NULL),
(42, 2, 3, 10, 3, 10, 'DH00002', 3, 964749, 919856, 'Đã hoàn tiền', 'Đang giao hàng', '2025-10-21 18:02:15', '2025-10-29 18:02:15', NULL),
(43, 3, 6, 10, 2, 10, 'DH00003', 1, 234779, 205915, 'Đã hoàn tiền', 'Đã xác nhận', '2025-10-06 18:02:15', '2025-10-29 18:02:15', NULL),
(44, 2, 6, 5, 2, 5, 'DH00004', 3, 404763, 383780, 'Chưa thanh toán', 'Đã hủy', '2025-10-11 18:02:15', '2025-10-29 18:02:15', NULL),
(45, 3, 2, 7, 3, 7, 'DH00005', 2, 278362, 262593, 'Chưa thanh toán', 'Chờ xử lý', '2025-09-30 18:02:15', '2025-10-29 18:02:15', NULL),
(46, 3, 9, 6, 1, 6, 'DH00006', 5, 2493030, 2482184, 'Thanh toán thất bại', 'Chờ xử lý', '2025-10-15 18:02:15', '2025-10-29 18:02:15', NULL),
(47, 1, 3, 4, 2, 4, 'DH00007', 4, 1635464, 1624391, 'Chưa thanh toán', 'Đang giao hàng', '2025-10-14 18:02:15', '2025-10-29 18:02:15', NULL),
(48, 2, 2, 1, 3, 1, 'DH00008', 5, 2253575, 2218493, 'Đã thanh toán', 'Đã hủy', '2025-10-16 18:02:15', '2025-10-29 18:02:15', NULL),
(49, 1, 1, 1, 1, 1, 'DH00009', 1, 229071, 197020, 'Thanh toán thất bại', 'Chờ xử lý', '2025-10-17 18:02:15', '2025-10-29 18:02:15', NULL),
(50, 2, 6, 6, 2, 6, 'DH00010', 1, 390329, 373252, 'Thanh toán thất bại', 'Đã xác nhận', '2025-09-29 18:02:15', '2025-10-29 18:02:15', NULL);

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

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id`, `id_bienthe`, `id_nguoidung`, `soluong`, `thanhtien`, `trangthai`) VALUES
(1, 1, 2, 2, 540000, 'Hiển thị'),
(2, 1, 3, 2, 540000, 'Hiển thị'),
(3, 2, 4, 1, 385000, 'Hiển thị'),
(4, 3, 5, 3, 1399680, 'Hiển thị'),
(5, 4, 6, 1, 260000, 'Hiển thị'),
(6, 5, 7, 2, 1024000, 'Hiển thị'),
(7, 6, 8, 1, 270000, 'Hiển thị'),
(8, 7, 3, 5, 1800000, 'Hiển thị'),
(9, 8, 4, 2, 138000, 'Hiển thị'),
(10, 9, 5, 1, 260000, 'Hiển thị'),
(29, 21, 2, 2, 69000, 'Hiển thị');

--
-- Bẫy `giohang`
--
DELIMITER $$
CREATE TRIGGER `cap_nhat_thanhtien_giohang_TRICKY` BEFORE INSERT ON `giohang` FOR EACH ROW BEGIN
    DECLARE promotion_count INT DEFAULT 0;
    DECLARE discount_multiplier INT DEFAULT 0;
    DECLARE price_unit DECIMAL(10, 2);
    DECLARE num_to_pay INT DEFAULT 0;
    DECLARE num_free INT DEFAULT 0;
    DECLARE current_luottang INT DEFAULT 0;

    -- Lấy thông tin ưu đãi
    SELECT
        bt.giagoc,
        qs.dieukien,
        bt.luottang
    INTO
        price_unit,
        discount_multiplier,
        current_luottang
    FROM quatang_sukien AS qs
    JOIN bienthe AS bt ON NEW.id_bienthe = bt.id
    WHERE
        qs.id_bienthe = NEW.id_bienthe
        AND bt.luottang > 0
        AND NEW.soluong >= qs.dieukien
        AND NOW() BETWEEN qs.ngaybatdau AND qs.ngayketthuc
    LIMIT 1;

    -- Nếu có ưu đãi
    IF price_unit IS NOT NULL AND discount_multiplier > 0 THEN
        SET promotion_count = FLOOR(NEW.soluong / discount_multiplier);
        SET num_free = LEAST(promotion_count, current_luottang);
        SET num_to_pay = NEW.soluong - num_free;

        -- Tính thành tiền
        SET NEW.thanhtien = num_to_pay * price_unit;

        -- Giảm lượt tặng
        UPDATE bienthe
        SET luottang = luottang - num_free
        WHERE id = NEW.id_bienthe;
    ELSE
        -- Không có ưu đãi
        IF price_unit IS NULL THEN
            SELECT giagoc INTO price_unit FROM bienthe WHERE id = NEW.id_bienthe;
        END IF;
        SET NEW.thanhtien = NEW.soluong * price_unit;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang_quatang_queue`
--

CREATE TABLE `giohang_quatang_queue` (
  `id` int(11) NOT NULL,
  `id_nguoidung` int(11) DEFAULT NULL,
  `id_bienthe` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `thanhtien` decimal(10,2) DEFAULT NULL,
  `trangthai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `magiamgia`, `dieukien`, `mota`, `giatri`, `ngaybatdau`, `ngayketthuc`, `trangthai`, `deleted_at`) VALUES
(1, 10001, 'donhang_toi_thieu_500k', 'Giảm 99K cho đơn hàng trong ngày 9.9', 99000, '2025-09-09', '2025-09-09', 'Hoạt động', NULL),
(2, 10002, 'khachhang_moi', 'Voucher 100K cho khách hàng mới', 100000, '2025-09-01', '2025-12-31', 'Hoạt động', NULL),
(3, 10003, 'tatca', 'Giảm tối đa 50K phí ship', 50000, '2025-09-01', '2025-11-30', 'Hoạt động', NULL),
(4, 10004, 'khachhang_than_thiet', 'Giảm 200K cho khách hàng sinh nhật trong tháng', 200000, '2025-01-01', '2025-12-31', 'Tạm khóa', NULL),
(6, 10006, 'tatca', 'Giáng Sinh - Giảm 150K', 150000, '2025-12-20', '2025-12-25', 'Hoạt động', NULL),
(9, 10009, 'tatca', 'Halloween Sale - Giảm 66K', 66000, '2025-10-31', '2025-10-31', 'Hoạt động', NULL),
(10, 10010, 'tatca', 'Tết 2026 - Giảm 300K', 300000, '2026-01-15', '2026-02-05', 'Tạm khóa', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
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
(2, 'admindemo', '$2y$12$PDbfT41cUl6VFlLjV9WdAup59mNIWuIuBP1LV2Gc1mm0xbR3Hjfo2', '0900000003', 'Nguyễn Admindemo', 'Nữ', '1995-05-12', 'rzJ5m77PcacZyXc5laTJnkqccy3wL9t50YiqNVZ6.jpg', 'admin', 'Hoạt động', NULL),
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
-- Cấu trúc bảng cho bảng `phivanchuyen`
--

CREATE TABLE `phivanchuyen` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `phi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `trangthai` enum('hiển thị','ẩn') NOT NULL DEFAULT 'hiển thị'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phivanchuyen`
--

INSERT INTO `phivanchuyen` (`id`, `ten`, `phi`, `trangthai`) VALUES
(1, 'Nội thành', 25000, 'hiển thị'),
(2, 'Ngoại thành', 35000, 'hiển thị'),
(3, 'Miễn phí', 0, 'hiển thị');

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
(5, 17, 1, '3', 'Tặng 1 sản phẩm bách hóa khi mua 3 sản phẩm bất kỳ từ Trung Tâm Bán Hàng nhân ngày sinh nhật 13/10', 'Không có thông tin', 'nuoc-rua-bat-bio-formula-bo-va-lo-hoi-tui-500ml-1.webp', 1200, '2025-10-13', '2025-12-31', 'Hiển thị', NULL),
(6, 21, 1, '2', 'test cập nhật giỏ ', 'test cập nhật giỏ ', 'ss.png', 2, '2025-10-27', '2025-11-07', 'Hiển thị', NULL);

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
(1, 1, 'Keo ong xanh Tracybee Propolis Mint & Honey – Giảm đau rát họng, ho, viêm họng (Vị Bạc Hà)', 'keo-ong-xanh-tracybee-propolis-mint-honey-giam-dau-rat-hong-ho-viem-hong-vi-bac-ha', 'Bạn đang tìm kiếm giải pháp kháng khuẩn tự nhiên và giảm đau họng tức thì? Keo ong xanh Tracybee Propolis Mint & Honey là sự kết hợp hoàn hảo giữa dược liệu quý từ thiên nhiên và hương vị the mát, giúp bạn vượt qua những cơn đau rát họng, ho và viêm họng khó chịu một cách nhanh chóng.', 'Brazil', 'Nhập khẩu chính ngạch bởi Siêu Thị Vina', 'Công khai', 10, 3, NULL),
(2, 1, 'Mật ong Tây Bắc đông trùng hạ thảo X3 (Hũ 240g)', 'mat-ong-tay-bac-dong-trung-ha-thao-x3-hu-240g', 'Mật ong Tây Bắc Đông Trùng Hạ Thảo X3 là siêu phẩm bồi bổ sức khỏe, kết hợp giữa mật ong rừng Tây Bắc nguyên chất và hàm lượng Đông Trùng Hạ Thảo được tăng cường gấp 3 lần (X3). Sản phẩm mang đến giải pháp tiện lợi và hiệu quả tối ưu để nâng cao thể trạng, tăng cường đề kháng và phục hồi sức khỏe.', 'Việt Nam', 'Việt Nam', 'Công khai', 20, 1, NULL),
(3, 1, 'Sâm Ngọc Linh trường sinh đỏ (Thùng 24lon)', 'sam-ngoc-linh-truong-sinh-do-thung-24lon', 'Sâm Ngọc Linh Trường Sinh Đỏ là tinh hoa của dược liệu quý hiếm, mang đến giải pháp tiện lợi để bồi bổ sức khỏe và nâng cao thể trạng mỗi ngày. Được chiết xuất từ Sâm Ngọc Linh quý giá – \"Quốc bảo của Việt Nam\" – sản phẩm ở dạng lon uống liền giúp bạn hấp thu trọn vẹn dưỡng chất một cách nhanh chóng và hiệu quả.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 2, NULL),
(4, 1, 'Tinh dầu tràm tự nhiên ECO - Hỗ trợ giảm ho, cảm cúm, sổ mũi, cảm lạnh (Lọ 30ml)', 'tinh-dau-tram-tu-nhien-eco-ho-tro-giam-ho-cam-cum-so-mui-cam-lanh-lo-30ml', 'Tinh Dầu Tràm Tự Nhiên ECO là sản phẩm chiết xuất 100% từ lá tràm nguyên chất, mang trong mình những công dụng truyền thống tuyệt vời trong việc bảo vệ sức khỏe, đặc biệt là hệ hô hấp. Với khả năng kháng khuẩn, làm ấm và thư giãn, Tinh dầu Tràm ECO là người bạn đồng hành không thể thiếu trong tủ thuốc gia đình, giúp đối phó hiệu quả với các triệu chứng cảm thông thường.', 'Việt Nam', 'Việt Nam', 'Công khai', 85, 1, NULL),
(5, 1, 'Sữa non tổ yến Papamilk Height & Gain giúp tăng cân tăng chiều cao cho Trẻ từ 1-19 tuổi - Lon 830G', 'sua-non-to-yen-papamilk-height-gain-giup-tang-can-tang-chieu-cao-cho-tre-tu-1-19-tuoi-lon-830g', 'Sữa Non Tổ Yến Papamilk Height & Gain là công thức dinh dưỡng đột phá được thiết kế chuyên biệt để hỗ trợ tăng cân khỏe mạnh và tối ưu hóa chiều cao cho trẻ em và thanh thiếu niên từ 1 đến 19 tuổi. Sự kết hợp độc đáo giữa Sữa Non cao cấp, Tổ Yến quý giá cùng hệ dưỡng chất khoa học giúp con bạn xây dựng nền tảng vững chắc cho một tương lai phát triển vượt trội.', 'Việt Nam', 'Việt Nam', 'Công khai', 20, 1, NULL),
(6, 1, 'hahaha', 'hahahaha', 'ádasdasd', 'ss', 'ss', 'Công khai', 20, 9, NULL),
(9, 1, 'Thực phẩm bảo vệ sức khỏe: Midu MenaQ7 180mcg', 'thuc-pham-bao-ve-suc-khoe-midu-menaq7-180mcg', 'Midu MenaQ7 180mcg bổ sung canxi, Vitamin D3, Vitamin K2 dạng MenaQ7 và Arginine phù hợp với tất cả độ tuổi từ 1 đến 100 tuổi. Đặc biệt giúp phát triển chiều cao cho trẻ em 1-15 tuổi; mẹ bầu bổ sung canxi trong giai đoạn thai kì không gây tiểu đường, không gây táo bón và giúp con cao ngay từ trong bụng mẹ.', 'Việt Nam', 'Việt Nam', 'Công khai', 10, 26, NULL),
(10, 3, 'Collagen thủy phân hỗ trợ Da Móng Tóc Acai Labs Marine Collagen Beauty Australia 90v', 'collagen-thuy-phan-ho-tro-da-mong-toc-acai-labs-marine-collagen-beauty-australia-90v', 'Acacia Labs, với trụ sở chính tại Sydney, Australia, là thương hiệu hàng đầu trong lĩnh vực sản xuất thực phẩm chức năng, vitamin và khoáng chất. Chúng tôi tập trung vào việc nghiên cứu và phát triển các sản phẩm chăm sóc sức khỏe và sắc đẹp, mang đến cho khách hàng những giải pháp toàn diện cho một cuộc sống khỏe mạnh, tràn đầy năng lượng và hạnh phúc.\r\n\r\nKhởi nguồn từ vẻ đẹp thật sự đến từ bên trong, phòng thí nghiệm Acaci Labs với đội ngũ các chuyên gia hàng đầu thế giới đã không ngừng nghiên cứu tìm ra công thức và sản phẩm chất lượng tốt nhất để mang đến hạnh phúc lâu dài cho người sử dụng.', 'Australia', 'Australia', 'Công khai', 0, 68, NULL),
(11, 1, 'Viên uống Bishin Tripeptide Collagen Nhật Bản 60v', 'vien-uong-bishin-tripeptide-collagen-nhat-ban-60v', 'BISHIN chứa tinh chất Collagen tripeptide giúp tăng cường khả năng hấp thụ cho cơ thể, cấu trúc da, giúp da giữ được sự săn chắc, đàn hồi, tươi trẻ, hạn chế được các nếp nhăn (dấu hiệu của sự lão hóa) xuất hiện.', 'Nhật Bản', 'Phân phối tại Việt Nam', 'Công khai', 0, 3, NULL),
(12, 2, 'Dưỡng mi tế bào gốc C’Choi - Bio Placenta Lash Serum', 'duong-mi-te-bao-goc-cchoi-bio-placenta-lash-serum', 'DƯỠNG MI TẾ BÀO GỐC C’CHOI Bio-Placenta Lash Serum', 'Việt Nam', 'Việt Nam', 'Công khai', 30, 76, NULL),
(13, 1, 'Nước rửa bát Bio Formula - Bơ và Lô Hội (Túi 500ml)', 'nuoc-rua-bat-bio-formula-bo-va-lo-hoi-tui-500ml', 'Chiết xuất lô hội giúp làm dịu da tay khi tiếp xúc với chất tẩy rửa, đặc biệt dịu nhẹ với những người có da nhạy cảm. Dầu quả bơ dưỡng ẩm, bảo vệ da tay nhờ các acid béo thiết yếu trong dầu bơ. Chiết xuất rễ cây lá giang hỗ trợ làm sạch an toàn, giảm vi khuẩn bám trên bề mặt bát đĩa.', 'Ukraine', 'Ukraine', 'Công khai', 0, 1201, NULL),
(14, 1, 'Bánh Trung Thu 2025 - Thu An Nhiên (bánh chay hộp 2 bánh 1 trà)', 'banh-trung-thu-2025-thu-an-nhien-banh-chay-hop-2-banh-1-tra', 'Tết Trung Thu - Tết Đoàn Viên là dịp lý tưởng để gửi tặng những món quà ý nghĩa cho bạn bè, gia đình hay đối tác. Không chỉ đơn thuần là một nét đẹp văn hóa, quà tặng Trung Thu còn là biểu hiện của tấm chân tình và lời chúc mọi điều viên mãn. \r\n\r\nThấu hiểu và trân trọng giá trị truyền thống, Nonglamfood gửi đến quý khách hàng bộ quà tặng Trung Thu cao cấp “Thu An Nhiên”. Bánh được tinh tuyển từ dược liệu thượng hạng, làm hoàn toàn thủ công bởi các nghệ nhân có hơn 30 năm kinh nghiệm.\r\n\r\nNonglamfood ra mắt set “Thu An Nhiên” với hai loại bánh trung thu chay đặc biệt, được làm từ các nguyên liệu thượng hạng như blueberry, đông trùng hạ thảo kết hợp với các loại hạt dinh dưỡng như hạt macca, hạt sen,... hứa hẹn không chỉ mang đến những trải nghiệm tuyệt vời khi thưởng thức mà còn mang lại những lợi ích tuyệt vời về sức khỏe.\r\n\r\nTrung thu này, hãy để Nonglamfood đồng hành cùng bạn trên hành trình gửi trao “mỹ vị” mùa trăng đến những người yêu thương của mình nhé! ', 'Việt Nam', 'Việt Nam', 'Công khai', 70, 33, NULL),
(15, 1, 'Hạt điều rang muối loại 1 (còn vỏ lụa) Happy Nuts 500g', 'hat-dieu-rang-muoi-loai-1-con-vo-lua-happy-nuts-500g', 'Hạt điều rang muối Happy Nuts là một trong những loại hạt có hàm lượng carbohydrate, chất xơ thấp, nhưng chúng lại chứa nhiều vitamin, khoáng chất và chất chống oxy hóa. Chúng bao gồm vitamin E, K và B6, cùng với các khoáng chất như đồng, phốt pho, kẽm, magiê, sắt và selen.', 'Việt Nam', 'Việt Nam', 'Công khai', 10, 3, NULL),
(16, 1, 'Kẹo Quả Sâm không đường Free Suger Ginseng Berry S candy 200g', 'keo-qua-sam-khong-duong-free-suger-ginseng-berry-s-candy-200g', 'Giảm đau họng. (không nên ngậm quá 3 viên/ ngày)\r\n\r\nTăng sinh Collagen.\r\n\r\nCân bằng huyết áp, ổn định thần kinh (khi nhức đầu hay mệt mỏi hãy dùng 1 viên và nghỉ ngơi sau 30 phút sẽ thấy giảm các triệu chứng khó chịu).\r\n\r\nGiảm triệu chứng chóng mặt, buồn nôn do say tàu xe\r\n\r\nBổ sung năng lượng nhanh, giảm stress, lo lắng, nhức đầu, chóng mặt.\r\n\r\nHạn chế cơn thèm ngọt, cung cấp năng lượng cho người bị tiểu đường', 'Hàn Quốc', 'KORYO CONFECTIONERY CO., LTD', 'Công khai', 25, 12, NULL),
(17, 1, 'Bột Matcha Gạo Rang Nhật Bản ONELIFE (Gói 100g)', 'bot-matcha-gao-rang-nhat-ban-onelife-goi-100g', 'Bột Matcha Gạo Rang Nhật Bản Onelife Onlife (Gói 100g) là loại bột trà cao cấp, nhuyễn mịn, được kết hợp giữa bột trà xanh Matcha Nhật Bản và chiết xuất gạo Nhật Niigata Koshihikari rang chín theo tỉ lệ đặc biệt, tạo nên vị trà ngọt hậu tự nhiên, không thêm đường hay bất kỳ thành phần hương liệu nào khác.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 115, NULL),
(18, 1, 'Nước rửa chén sả chanh COME ON làm sạch bát đĩa, an toàn da tay 1 lít', 'nuoc-rua-chen-sa-chanh-come-on-lam-sach-bat-dia-an-toan-da-tay-1-lit', 'Tên sản phẩm: Nước rửa chén sả chanh COME ON làm sạch bát đĩa, an toàn da tay 1 lít\r\nDung tích: 1 lít\r\nThương hiệu: COME ON', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 67, NULL),
(19, 1, 'Găng lau Abena Wash Gloves (50 miếng/gói)', 'gang-lau-abena-wash-gloves-50-mienggoi', 'Abena là tập đoàn sản xuất sản phẩm chăm sóc sức khỏe hàng đầu đến từ Đan Mạch. Thành lập từ năm 1953, trải qua một giai đoạn hình thành và phát triển, Abena đã chinh phục được các thị trường khó tính Bắc Âu bằng chất lượng sản phẩm cũng như trách nhiệm xã hội của mình. Hầu hết các sản phẩm của công ty đều qua kiểm nghiệm lâm sàn của các chuyên gia da liễu và nhận được các chứng nhận y tế nghiêm ngặt của thị trường Bắc Âu như: Nordic Eco-Label, Asthma Allegry Nordic.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 51, NULL),
(20, 1, 'Tấm lót giường Abena Pad (giặt được) 85x90cm', 'tam-lot-giuong-abena-pad-giat-duoc-85x90cm', ' Abena là tập đoàn sản xuất sản phẩm chăm sóc sức khỏe hàng đầu đến từ Đan Mạch. Thành lập từ năm 1953, trải qua một giai đoạn hình thành và phát triển, Abena đã chinh phục được các thị trường khó tính Bắc Âu bằng chất lượng sản phẩm cũng như trách nhiệm xã hội của mình. Hầu hết các sản phẩm của công ty đều qua kiểm nghiệm lâm sàn của các chuyên gia da liễu và nhận được các chứng nhận y tế nghiêm ngặt của thị trường Bắc Âu như: Nordic Eco-Label, Asthma Allegry Nordic.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 76, NULL),
(21, 1, 'Máy Xông Khí Dung Cầm Tay Kachi YS35: Giải Pháp Hô Hấp Linh Hoạt Mọi Lúc, Mọi Nơi', 'may-xong-khi-dung-cam-tay-kachi-ys35-giai-phap-ho-hap-linh-hoat-moi-luc-moi-noi', 'Máy xông khí dung cầm tay Kachi YS35 giúp hỗ trợ điều trị và phòng ngừa các bệnh đường hô hấp như viêm phế quản, hen suyễn, viêm mũi xoang, cảm lạnh… Máy sử dụng công nghệ khí dung tạo hạt sương mịn, dễ thẩm thấu sâu vào hệ hô hấp, hiệu quả cao cho cả người lớn và trẻ em. Thiết kế nhỏ gọn, có thể dùng pin AA hoặc cáp Type-C tiện lợi.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 855, NULL),
(22, 1, 'Hũ Hít Thảo Dược Nhị Thiên Đường - Hũ 5g', 'hu-hit-thao-duoc-nhi-thien-duong-hu-5g', 'Hơn một Thế Kỷ gắn bó với bao Thế Hệ, thương hiệu Nhị Thiên Đường không chỉ là dầu gió lâu đời mà còn không ngừng đổi mới. Hũ Hít thảo dược Nhị Thiên Đường ra đời, kế thừa Tinh Hoa Trăm Năm, nay được NÂNG TẦM để phù hợp với nhịp sống hiện đại. Nhỏ gọn, tiện lợi, giúp thông mũi, sảng khoái tức thì – Một lựa chọn mới cho mọi độ tuổi, từ dân văn phòng, tài xế đến người lớn tuổi.', 'Việt Nam', 'Việt Nam', 'Công khai', 0, 40, NULL),
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

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`id`, `id_nguoidung`, `tieude`, `noidung`, `lienket`, `trangthai`) VALUES
(31, 1, 'Đơn hàng mới của bạn đang được xử lý', 'Cảm ơn bạn đã thanh toán đơn hàng. Đơn hàng của bạn hiện đang được chuẩn bị và sẽ sớm được giao đến địa chỉ bạn đã đăng ký.', '/taikhoan/donhang', 'Chưa đọc'),
(32, 1, 'Ưu đãi “Freeship toàn quốc” đã bắt đầu!', 'Từ ngày 1/11 đến 5/11, tất cả đơn hàng từ 200.000đ trở lên đều được miễn phí vận chuyển. Đặt hàng ngay để không bỏ lỡ!', '/sukien/freeship-toan-quoc', 'Chưa đọc'),
(33, 2, 'Sự kiện “Siêu Sale 11.11” sắp bắt đầu!', 'Sự kiện khuyến mãi lớn nhất tháng 11 sẽ bắt đầu vào ngày 10/11 và kết thúc 12/11. Giảm giá đến 70% toàn bộ ngành hàng điện tử, thời trang và gia dụng!', '/sukien/sieu-sale-11-11', 'Chưa đọc'),
(34, 2, 'Sự kiện “Giáng Sinh Rộn Ràng” sắp bắt đầu!', 'Từ ngày 20/12 đến 25/12, nhận ưu đãi đặc biệt cho các sản phẩm quà tặng, đồ trang trí và thời trang mùa đông. Mua sắm ngay hôm nay để nhận quà hấp dẫn!', '/sukien/giang-sinh-ron-rang', 'Đã đọc'),
(35, 3, 'Sự kiện “Siêu Sale 11.11” sắp bắt đầu!', 'Sự kiện khuyến mãi lớn nhất tháng 11 sẽ bắt đầu vào ngày 10/11 và kết thúc 12/11. Giảm giá đến 70% toàn bộ ngành hàng điện tử, thời trang và gia dụng!', '/sukien/sieu-sale-11-11', 'Chưa đọc'),
(36, 3, 'Ưu đãi “Freeship toàn quốc” đã bắt đầu!', 'Từ ngày 1/11 đến 5/11, tất cả đơn hàng từ 200.000đ trở lên đều được miễn phí vận chuyển. Đặt hàng ngay để không bỏ lỡ!', '/sukien/freeship-toan-quoc', 'Đã đọc'),
(37, 4, 'Sự kiện “Siêu Sale 11.11” sắp bắt đầu!', 'Sự kiện khuyến mãi lớn nhất tháng 11 sẽ bắt đầu vào ngày 10/11 và kết thúc 12/11. Giảm giá đến 70% toàn bộ ngành hàng điện tử, thời trang và gia dụng!', '/sukien/sieu-sale-11-11', 'Đã đọc'),
(38, 4, 'Sự kiện “Giáng Sinh Rộn Ràng” sắp bắt đầu!', 'Từ ngày 20/12 đến 25/12, nhận ưu đãi đặc biệt cho các sản phẩm quà tặng, đồ trang trí và thời trang mùa đông. Mua sắm ngay hôm nay để nhận quà hấp dẫn!', '/sukien/giang-sinh-ron-rang', 'Đã đọc'),
(39, 5, 'Tiêu đề mới', 'Nội dung cập nhật', '/taikhoan/donhang', 'Đã đọc'),
(40, 5, 'Sự kiện “Giáng Sinh Rộn Ràng” sắp bắt đầu!', 'Từ ngày 20/12 đến 25/12, nhận ưu đãi đặc biệt cho các sản phẩm quà tặng, đồ trang trí và thời trang mùa đông. Mua sắm ngay hôm nay để nhận quà hấp dẫn!', '/sukien/giang-sinh-ron-rang', 'Chưa đọc'),
(41, 6, 'Sự kiện “Siêu Sale 11.11” sắp bắt đầu!', 'Sự kiện khuyến mãi lớn nhất tháng 11 sẽ bắt đầu vào ngày 10/11 và kết thúc 12/11. Giảm giá đến 70% toàn bộ ngành hàng điện tử, thời trang và gia dụng!', '/sukien/sieu-sale-11-11', 'Đã đọc'),
(42, 6, 'Đơn hàng đang được giao!', 'Đơn hàng của bạn đã được giao cho đơn vị vận chuyển. Dự kiến sẽ đến tay bạn trong 2-3 ngày tới.', '/taikhoan/donhang/tracking', 'Đã đọc'),
(43, 7, 'Thông báo: Tích điểm khách hàng thân thiết', 'Bạn vừa nhận được thêm 120 điểm thưởng từ đơn hàng gần nhất. Đừng quên sử dụng điểm để giảm giá trong lần mua tiếp theo nhé!', '/taikhoan/diem-thuong', 'Chưa đọc'),
(44, 7, 'Ưu đãi “Freeship toàn quốc” đã bắt đầu!', 'Từ ngày 1/11 đến 5/11, tất cả đơn hàng từ 200.000đ trở lên đều được miễn phí vận chuyển. Đặt hàng ngay để không bỏ lỡ!', '/sukien/freeship-toan-quoc', 'Đã đọc'),
(45, 8, 'Sự kiện “Siêu Sale 11.11” sắp bắt đầu!', 'Sự kiện khuyến mãi lớn nhất tháng 11 sẽ bắt đầu vào ngày 10/11 và kết thúc 12/11. Giảm giá đến 70% toàn bộ ngành hàng điện tử, thời trang và gia dụng!', '/sukien/sieu-sale-11-11', 'Chưa đọc'),
(46, 8, 'Thông báo: Tích điểm khách hàng thân thiết', 'Bạn vừa nhận được thêm 120 điểm thưởng từ đơn hàng gần nhất. Đừng quên sử dụng điểm để giảm giá trong lần mua tiếp theo nhé!', '/taikhoan/diem-thuong', 'Đã đọc'),
(47, 9, 'Thông báo: Tích điểm khách hàng thân thiết', 'Bạn vừa nhận được thêm 120 điểm thưởng từ đơn hàng gần nhất. Đừng quên sử dụng điểm để giảm giá trong lần mua tiếp theo nhé!', '/taikhoan/diem-thuong', 'Chưa đọc'),
(48, 9, 'Ưu đãi “Freeship toàn quốc” đã bắt đầu!', 'Từ ngày 1/11 đến 5/11, tất cả đơn hàng từ 200.000đ trở lên đều được miễn phí vận chuyển. Đặt hàng ngay để không bỏ lỡ!', '/sukien/freeship-toan-quoc', 'Chưa đọc'),
(49, 10, 'Thông báo: Tích điểm khách hàng thân thiết', 'Bạn vừa nhận được thêm 120 điểm thưởng từ đơn hàng gần nhất. Đừng quên sử dụng điểm để giảm giá trong lần mua tiếp theo nhé!', '/taikhoan/diem-thuong', 'Đã đọc'),
(50, 10, 'Ưu đãi “Freeship toàn quốc” đã bắt đầu!', 'Từ ngày 1/11 đến 5/11, tất cả đơn hàng từ 200.000đ trở lên đều được miễn phí vận chuyển. Đặt hàng ngay để không bỏ lỡ!', '/sukien/freeship-toan-quoc', 'Đã đọc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `ten` text NOT NULL,
  `slug` text NOT NULL,
  `logo` varchar(255) NOT NULL DEFAULT 'logo_shop.jpg',
  `mota` text DEFAULT NULL,
  `trangthai` enum('Hoạt động','Tạm khóa','Dừng hoạt động') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `ten`, `slug`, `logo`, `mota`, `trangthai`) VALUES
(1, 'Trung Tâm Bán Hàng Siêu Thị Vina', 'trung-tam-ban-hang-sieu-thi-vina', 'trung-tam-ban-hang-sieu-thi-vina.png', 'Thương hiệu nội địa nổi tiếng cung cấp đa dạng mặt hàng tiêu dùng và điện tử.', 'Hoạt động'),
(2, 'C\'CHOI', 'cchoi', 'thuonghieu-logo.png', 'Thương hiệu thời trang năng động, hướng đến giới trẻ hiện đại.', 'Hoạt động'),
(3, 'ACACI LABS', 'acaci-labs', 'thuonghieu-logo.png', 'Chuyên về mỹ phẩm thiên nhiên và chăm sóc da an toàn, lành tính.', 'Hoạt động'),
(4, 'Trung Tâm Bán Hàng Siêu Thị Vina', 'trung-tam-ban-hang-sieu-thi-vina', 'trung-tam-ban-hang-sieu-thi-vina.png', 'Thương hiệu nội địa nổi tiếng cung cấp đa dạng mặt hàng tiêu dùng và điện tử.', 'Hoạt động'),
(5, 'C\'CHOI', 'cchoi', 'thuonghieu-logo.png', 'Thương hiệu thời trang năng động, hướng đến giới trẻ hiện đại.', 'Hoạt động'),
(6, 'ACACI LABS', 'acaci-labs', 'thuonghieu-logo.png', 'Chuyên về mỹ phẩm thiên nhiên và chăm sóc da an toàn, lành tính.', 'Hoạt động'),
(7, 'Samsung', 'samsung', 'samsung.png', 'Thương hiệu công nghệ hàng đầu thế giới đến từ Hàn Quốc.', 'Hoạt động'),
(8, 'Apple', 'apple', 'apple.png', 'Nhà sản xuất thiết bị công nghệ cao cấp nổi tiếng toàn cầu.', 'Hoạt động'),
(9, 'Nike', 'nike', 'nike.png', 'Thương hiệu thể thao hàng đầu với phong cách trẻ trung, năng động.', 'Hoạt động'),
(10, 'Adidas', 'adidas', 'adidas.png', 'Hãng thể thao nổi tiếng của Đức, được yêu thích trên toàn thế giới.', 'Hoạt động'),
(11, 'Xiaomi', 'xiaomi', 'xiaomi.png', 'Thương hiệu công nghệ giá rẻ chất lượng cao, chuyên về smartphone và thiết bị IoT.', 'Hoạt động'),
(12, 'LG', 'lg', 'lg.png', 'Tập đoàn điện tử hàng đầu Hàn Quốc, nổi bật với thiết bị gia dụng.', 'Hoạt động'),
(13, 'Omo', 'omo', 'omo.png', 'Thương hiệu bột giặt và sản phẩm giặt tẩy nổi tiếng thuộc tập đoàn Unilever.', 'Hoạt động'),
(14, 'Unilever', 'unilever', 'unilever.png', 'Tập đoàn đa quốc gia chuyên về sản phẩm tiêu dùng nhanh với hàng trăm nhãn hàng nổi tiếng.', 'Hoạt động'),
(15, 'Panasonic', 'panasonic', 'panasonic.png', 'Hãng điện tử Nhật Bản nổi tiếng với các sản phẩm gia dụng và công nghệ hiện đại.', 'Hoạt động'),
(16, 'Sony', 'sony', 'sony.png', 'Tập đoàn điện tử hàng đầu Nhật Bản chuyên về tivi, âm thanh và thiết bị giải trí.', 'Hoạt động'),
(17, 'Gucci', 'gucci', 'gucci.png', 'Thương hiệu thời trang xa xỉ đến từ Ý, nổi tiếng với phong cách đẳng cấp và tinh tế.', 'Hoạt động'),
(18, 'Zara', 'zara', 'zara.png', 'Thương hiệu thời trang nhanh nổi tiếng của Tây Ban Nha, hướng đến phong cách trẻ trung.', 'Hoạt động'),
(19, 'Oppo', 'oppo', 'oppo.png', 'Hãng điện thoại thông minh đến từ Trung Quốc, nổi bật với camera selfie và thiết kế đẹp.', 'Hoạt động'),
(20, 'Puma', 'puma', 'puma.png', 'Thương hiệu thể thao toàn cầu, cung cấp giày, quần áo và phụ kiện năng động.', 'Hoạt động'),
(21, 'Maybelline', 'maybelline', 'maybelline.png', 'Thương hiệu mỹ phẩm nổi tiếng của Mỹ, chuyên về trang điểm và làm đẹp.', 'Hoạt động'),
(22, 'Vinamilk', 'vinamilk', 'vinamilk.png', 'Thương hiệu sữa hàng đầu Việt Nam với mạng lưới phân phối trên toàn quốc.', 'Hoạt động'),
(23, 'Highlands Coffee', 'highlands-coffee', 'highlands.png', 'Thương hiệu cà phê nổi tiếng của Việt Nam, mang phong cách hiện đại và đậm đà hương vị Việt.', 'Hoạt động');

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
-- Đang đổ dữ liệu cho bảng `yeuthich`
--

INSERT INTO `yeuthich` (`id`, `id_nguoidung`, `id_sanpham`, `trangthai`) VALUES
(1, 10, 19, 'Hiển thị'),
(2, 5, 11, 'Hiển thị'),
(3, 5, 27, 'Hiển thị'),
(4, 3, 26, 'Hiển thị'),
(5, 4, 18, 'Hiển thị'),
(6, 6, 13, 'Hiển thị'),
(7, 4, 13, 'Hiển thị'),
(8, 3, 10, 'Hiển thị'),
(9, 9, 26, 'Hiển thị'),
(10, 3, 4, 'Hiển thị');

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
  ADD KEY `chitiet_donhang_id_bienthe_foreign` (`id_bienthe`),
  ADD KEY `chitiet_donhang_id_donhang_foreign` (`id_donhang`);

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
  ADD KEY `danhgia_id_nguoidung_foreign` (`id_nguoidung`),
  ADD KEY `danhgia_id_sanpham_foreign` (`id_sanpham`),
  ADD KEY `danhgia_id_chitietdonhang_foreign` (`id_chitietdonhang`);

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
  ADD UNIQUE KEY `donhang_madon_unique` (`madon`),
  ADD KEY `donhang_id_phuongthuc_foreign` (`id_phuongthuc`),
  ADD KEY `donhang_id_magiamgia_foreign` (`id_magiamgia`),
  ADD KEY `donhang_id_nguoidung_foreign` (`id_nguoidung`),
  ADD KEY `donhang_id_phivanchuyen_foreign` (`id_phivanchuyen`),
  ADD KEY `donhang_id_diachigiaohang_foreign` (`id_diachigiaohang`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bienthe` (`id_bienthe`),
  ADD KEY `id_nguoidung` (`id_nguoidung`);

--
-- Chỉ mục cho bảng `giohang_quatang_queue`
--
ALTER TABLE `giohang_quatang_queue`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `phivanchuyen`
--
ALTER TABLE `phivanchuyen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phivanchuyen_ten_unique` (`ten`);

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
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `bienthe`
--
ALTER TABLE `bienthe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chuongtrinh`
--
ALTER TABLE `chuongtrinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `giohang_quatang_queue`
--
ALTER TABLE `giohang_quatang_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `phivanchuyen`
--
ALTER TABLE `phivanchuyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phuongthuc`
--
ALTER TABLE `phuongthuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `quatang_sukien`
--
ALTER TABLE `quatang_sukien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tukhoa`
--
ALTER TABLE `tukhoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `yeuthich`
--
ALTER TABLE `yeuthich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `chitiet_donhang_id_bienthe_foreign` FOREIGN KEY (`id_bienthe`) REFERENCES `bienthe` (`id`),
  ADD CONSTRAINT `chitiet_donhang_id_donhang_foreign` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_id_chitietdonhang_foreign` FOREIGN KEY (`id_chitietdonhang`) REFERENCES `chitiet_donhang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `danhgia_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `danhgia_id_sanpham_foreign` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE;

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
  ADD CONSTRAINT `donhang_id_diachigiaohang_foreign` FOREIGN KEY (`id_diachigiaohang`) REFERENCES `diachi_giaohang` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `donhang_id_magiamgia_foreign` FOREIGN KEY (`id_magiamgia`) REFERENCES `magiamgia` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `donhang_id_nguoidung_foreign` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `donhang_id_phivanchuyen_foreign` FOREIGN KEY (`id_phivanchuyen`) REFERENCES `phivanchuyen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `donhang_id_phuongthuc_foreign` FOREIGN KEY (`id_phuongthuc`) REFERENCES `phuongthuc` (`id`);

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
  ADD CONSTRAINT `yeuthich_ibfk_1` FOREIGN KEY (`id_nguoidung`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `yeuthich_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
