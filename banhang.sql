-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 04:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhdaidien` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `motabaiviet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidungbaiviet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `danhmucbaiviet_id` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `headings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_page` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`id`, `name`, `code`, `anhdaidien`, `motabaiviet`, `noidungbaiviet`, `status`, `danhmucbaiviet_id`, `title`, `description`, `headings`, `count_page`, `created_at`, `updated_at`) VALUES
(71, 'Bể cá cảnh Hải Phòng giá rẻ', 'be-ca-canh-hai-phong-gia-re', 'crEh_be-ca-canh-gia-bao-nhieu-hai-phong-uy-tin.jpg', 'Bể cá cảnh Hải Phòng giá rẻ. Chúng tôi là cơ sở chuyên sản xuất và cung cấp các loại bể cá cảnh, phụ kiện bể cá tại Hải Phòng. Nhận ship hàng toàn quốc. Giá thành hợp lý, chất lượng tốt. Hotline: 0912 362 350', '<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Chuy&ecirc;n sản xuất, tư vấn thiết kế v&agrave; cung cấp, lắp đặt&nbsp;&nbsp;c&aacute;c loại bể c&aacute; cảnh, phụ kiện bể c&aacute; tại Hải Ph&ograve;ng. Nhận ship h&agrave;ng to&agrave;n quốc. Gi&aacute; th&agrave;nh hợp l&yacute;, chất lượng tốt. Hotline: 0912 362 350</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Bạn đang muốn mua bể c&aacute; cảnh tại Hải Ph&ograve;ng?</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Nhưng chưa biết địa chỉ mua b&aacute;n, lắp đặt,&nbsp;thiết kế bể c&aacute; cảnh đẹp ở đ&acirc;u Hải Ph&ograve;ng?</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Bạn chưa biết loại bể c&aacute; cảnh n&agrave;o đẹp, chất lượng m&agrave; gi&aacute; bể lại rẻ?</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#000000\">Vậy bạn đ&atilde; t&igrave;m đ&uacute;ng địa chỉ rồi đấy - <strong>Bể C&aacute; Hải Ph&ograve;ng </strong>l&agrave;<strong>&nbsp;</strong>cửa h&agrave;ng <strong>chuy&ecirc;n thiết kế, mua b&aacute;n, lắp đặt, ph&acirc;n phối</strong> sỉ lể tất cả c&aacute;c loại </span><a href=\"https://becahaiphong.com/be-ca-canh-hai-phong-gia-re\"><span style=\"color:#000000\">bể c&aacute; cảnh</span></a><span style=\"color:#000000\"> từ cao cấp đến b&igrave;nh d&acirc;n gi&aacute; rẻ nhất tại Hải Ph&ograve;ng, với đa dạng mẫu m&atilde;, chất liệu, chủng loại, gi&aacute; cả ..........</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-gia-re-hai-phong_1639471950.jpg\" style=\"height:800px; width:600px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>V&igrave; sao n&ecirc;n chọn mua bể c&aacute; cảnh&nbsp;của Bể C&aacute; Hải Ph&ograve;ng?</strong></span></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Gi&aacute; cả cạnh tranh, chất lượng cực tốt, đảm bảo an to&agrave;n.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Đội ngũ nh&acirc;n vi&ecirc;n nhiệt t&igrave;nh, c&oacute; t&acirc;m với nghề</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Thiết kế đa dạng với nhiều bối cảnh kh&aacute;ch nhau v&agrave; theo y&ecirc;u cầu</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Miễn ph&iacute; vận chuyển v&agrave; lắp đặt nội th&agrave;nh, dịch vụ hậu m&atilde;i tốt</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Mẫu m&atilde; &amp; m&agrave;u sắc đa dạng</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Mua b&aacute;n online 24/7, kể cả ng&agrave;y lễ, ng&agrave;y nghỉ v&agrave; chủ nhật.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Hiện nay c&oacute; rất nhiều loại bể c&aacute;&nbsp;để bạn thỏa sức lựa chọn nhưng khi đến với <strong>Bể C&aacute; Hải Ph&ograve;ng</strong>, bạn sẽ được tận mắt chi&ecirc;m ngưỡng h&agrave;ng chục thậm ch&iacute; h&agrave;ng trăm loại c&aacute; lớn nhỏ v&ocirc; c&ugrave;ng bắt mắt, ngo&agrave;i ra l&agrave; rất nhiều chủng loại thuỷ sinh đa dạng được nu&ocirc;i trồng ngay ch&iacute;nh trang trại ri&ecirc;ng của cửa h&agrave;ng. Tại đ&acirc;y bạn c&ograve;n được hổ trợ tư vấn đầy đủ về c&aacute;ch thức để&nbsp;thiết kế&nbsp;cũng như duy tr&igrave; một hồ c&aacute; đa dạng, h&agrave;i ho&agrave; m&agrave; lại c&ograve;n ph&ugrave; hợp với kh&ocirc;ng gian nơi bạn đang sống.&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/cua-hang-be-ca-hai-phong_1639473076.jpg\" style=\"height:600px; width:800px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Cửa h&agrave;ng b&aacute;n bể c&aacute; cảnh tại Hải Ph&ograve;ng</strong></span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Ngo&agrave;i b&aacute;n c&aacute;c sản phẩm về bể&nbsp;c&aacute; cảnh thuỷ sinh, cửa h&agrave;ng&nbsp;<strong><em>Bể C&aacute; Hải Ph&ograve;ng</em></strong>&nbsp;c&ograve;n cung cấp c&aacute;c dịch vụ về thiết kế hồ thuỷ sinh, thiết kế hồ c&aacute; Koi. Cửa h&agrave;ng&nbsp;đ&atilde; thiết kế cho rất nhiều c&ocirc;ng tr&igrave;nh lớn nhỏ tại khắp c&aacute;c quận huyện tại Hải Ph&ograve;ng.</span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Vĩnh Bảo&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Ti&ecirc;n L&atilde;ng&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại An L&atilde;o&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Hải An Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Hồng B&agrave;ng&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Ng&ocirc; Quyền&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại L&ecirc; Ch&acirc;n&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Kiến An&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Dương Kinh&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Đồ Sơn&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; cảnh tại Kiến Thụy&nbsp;Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#000000\"><strong>Bể C&aacute; Hải Ph&ograve;ng</strong> lu&ocirc;n đặt lợi &iacute;ch kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu, ch&iacute;nh v&igrave; vậy ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết mang đến qu&yacute; kh&aacute;ch những </span><a href=\"https://becahaiphong.com/be-ca-trang-tri\"><span style=\"color:#000000\">sản phẩm</span></a><span style=\"color:#000000\"> với chất lượng tốt nhất v&agrave; gi&aacute; th&agrave;nh cạnh tranh nhất hiện nay.</span></span></p>\r\n\r\n<h3><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Địa chỉ b&aacute;n bể c&aacute; cảnh tại Hải Ph&ograve;ng&nbsp;</span></strong></span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em>H&atilde;y đến với Bể C&aacute; Hải Ph&ograve;ng&nbsp;- để&nbsp;chi&ecirc;m ngưỡng những bể c&aacute; nhiều m&agrave;u sắc v&agrave; sang trọng nhất hiện nay nh&eacute;!</em></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Website: www.becahaiphong.com</strong></span></span></p>', 1, 39, 'Bể cá cảnh Hải Phòng giá rẻ', 'Bể cá cảnh Hải Phòng giá rẻ. Chuyên sản xuất, tư vấn thiết kế và cung cấp, lắp đặt  các loại bể cá cảnh, phụ kiện bể cá tại Hải Phòng. Nhận ship hàng toàn quốc. Giá thành hợp lý, chất lượng tốt. Hotline: 0912 362 350', NULL, 221, '2021-12-14 08:34:14', '2022-07-24 03:21:01'),
(72, 'Mua bán bể cá tại Vĩnh Bảo Hải Phòng', 'mua-ban-be-ca-tai-vinh-bao-hai-phong', 'OZp6_be-ca-phong-thuy-dep-hai-phong.jpg', 'Hiện nay, cá cảnh vẫn và đang là một trong những thú vui của nhiều lứa tuổi khác nhau. Do đó câu hỏi bán bể cá cảnh đẹp ở đâu Vĩnh Bảo vẫn luôn là một trong những câu hỏi được rất nhiều người quan tâm', '<h2 style=\"text-align:center\"><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Chuy&ecirc;n cung cấp v&agrave; thi c&ocirc;ng bể c&aacute; cảnh đẹp tại Vĩnh Bảo&nbsp;</span></strong></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Hiện nay, c&aacute; cảnh vẫn v&agrave; đang l&agrave; một trong những th&uacute; vui của nhiều lứa tuổi kh&aacute;c nhau. Do đ&oacute; c&acirc;u hỏi b&aacute;n bể c&aacute; cảnh đẹp ở đ&acirc;u Vĩnh Bảo&nbsp;vẫn lu&ocirc;n l&agrave; một trong những c&acirc;u hỏi được rất nhiều người quan t&acirc;m. Bạn h&atilde;y đến với địa chỉ:&nbsp;<strong>Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng - </strong>ch&uacute;ng t&ocirc;i c&oacute; đầy đủ c&aacute;c loại bể c&aacute; như: bể c&aacute; cảnh, bể c&aacute; mini, bể c&aacute; koi, bể c&aacute; thủy sinh, bể c&aacute; phong thủy....bạn&nbsp;c&oacute; thể thoải m&aacute;i lựa chọn theo sở th&iacute;ch của m&igrave;nh.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/ban-be-ca-canh-dep-hai-phong_1639625642.jpg\" style=\"height:600px; width:800px\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Kh&ocirc;ng c&oacute; bất k&igrave; y&ecirc;u cầu cố định n&agrave;o với k&iacute;ch thước bể c&aacute; m&agrave; sẽ t&ugrave;y thuộc v&agrave;o loại c&aacute; m&agrave; bạn nu&ocirc;i l&agrave; g&igrave;. Nếu như đ&oacute; l&agrave; loại c&aacute; lớn th&igrave; bạn phải mua bể c&aacute; k&iacute;ch thước lớn để ch&uacute;ng c&oacute; kh&ocirc;ng gian hoạt động v&agrave; ngược lại.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">V&iacute; dụ bạn nu&ocirc;i c&aacute; rồng. Đ&acirc;y l&agrave; loại c&aacute; c&oacute; k&iacute;ch thước kh&aacute; lớn khoảng 60-80cm th&igrave; bạn c&oacute; thể chuẩn bị bể c&aacute; c&oacute; chiều d&agrave;i hơn 1m th&igrave; mới đủ kh&ocirc;ng gian cho ch&uacute;ng bơi l&ocirc;i. Hoặc nếu bạn nu&ocirc;i những loại c&aacute; c&oacute; k&iacute;ch thước trung b&igrave;nh như c&aacute; la h&aacute;n, c&aacute; hồng k&eacute;t th&igrave; kh&ocirc;ng cần k&iacute;ch thước lớn như vậy. Bạn c&oacute; thể mua với k&iacute;ch thước trung b&igrave;nh. V&agrave; nếu như bạn chỉ đơn giản nu&ocirc;i những ch&uacute; c&aacute; nhỏ như c&aacute; bảy m&agrave;u, c&aacute; v&agrave;ng th&igrave; đ&ocirc;i khi chỉ cần 1 lọ thủy tinh đ&atilde; l&agrave; kh&ocirc;ng gian vừa đủ đối với ch&uacute;ng.</span></span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Chất liệu bể c&aacute;</strong></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\">Hầu hết tất cả c&aacute;c loại&nbsp;</span><a href=\"https://becahaiphong.com/be-ca-trang-tri\"><span style=\"color:#000000\"><strong>bể c&aacute; cảnh</strong></span></a><span style=\"color:#000000\">&nbsp;th&igrave; đều sử dụng k&iacute;nh l&agrave; chất liệu ch&iacute;nh. Bao quanh đ&oacute;, bể c&oacute; thể sử dụng th&ecirc;m những chất liệu kh&aacute;c bao xung quanh mặt viền của k&iacute;nh. Th&ocirc;ng thường bạn c&oacute; thể d&ugrave;ng loại ốp l&agrave;m bằng chất liệu gỗ xoan đ&agrave;o hoặc th&ocirc;ng L&agrave;o, cao cấp hơn c&oacute; thể l&agrave;m bằng gụ hoặc sồi. Do ch&uacute;ng c&oacute; mức gi&aacute; ch&ecirc;nh nhau kh&ocirc;ng nhiều, vậy n&ecirc;n bạn chọn loại n&agrave;o chất lượng hơn sẽ c&oacute; thời gian sử dụng l&acirc;u hơn.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-thuy-sinh-dep-hai-phong_1639625710.jpg\" style=\"height:800px; width:600px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Địa chỉ b&aacute;n bể c&aacute; đẹp rẻ tại Vĩnh Bảo&nbsp;</span></span></h2>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Phụ kiện k&egrave;m bể c&aacute;</strong></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Một yếu tố quan trọng kh&ocirc;ng k&eacute;m đ&oacute; l&agrave; c&aacute;ch sắp xếp những phụ kiện trang tr&iacute; ph&iacute;a b&ecirc;n trong bể c&aacute;. Nếu l&agrave; một người chơi nghiệp dư, bạn c&oacute; thể mua loại trang tr&iacute; b&ecirc;n trong với rất nhiều phụ kiện c&oacute; sẵn như đ&egrave;n, đ&aacute;, c&acirc;y thủy sinh&hellip;C&ograve;n nếu l&agrave; một người s&aacute;ng tạo, hoặc chỉ đơn giản l&agrave; muốn tự m&igrave;nh trang tr&iacute; bể c&aacute; th&igrave; những phụ kiện tr&ecirc;n cũng kh&ocirc;ng hề kh&oacute; mua. Một bể c&aacute; được coi l&agrave; đẹp khi vừa đ&aacute;p ứng y&ecirc;u cầu thẩm mỹ m&agrave; c&aacute; cũng ph&aacute;t triển v&agrave; sinh trưởng tốt.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/ban-be-ca-canh-dep-hai-phong_1639625897.jpg\" style=\"height:600px; width:800px\" /></span></span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Bể c&aacute; cảnh mini</strong></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bể c&aacute; cảnh mini l&agrave; loại bể lu&ocirc;n được c&aacute;c bạn trẻ, đặc biệt l&agrave; c&aacute;c bạn học sinh, sinh vi&ecirc;n, nh&acirc;n vi&ecirc;n văn ph&ograve;ng ưa chuộng v&igrave; những ưu điểm sau:</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bể c&aacute; cảnh mini dễ vận chuyển, thuận tiện cho c&aacute;c bạn sinh vi&ecirc;n hay chuyển địa điểm sinh hoạt.</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Gi&aacute; th&agrave;nh hợp l&yacute;, th&ocirc;ng thường chỉ từ 100k-300k</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Dễ vệ sinh v&agrave; lau ch&ugrave;i</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Tốn &iacute;t diện t&iacute;ch, ph&ugrave; hợp để ở b&agrave;n l&agrave;m việc, cửa sổ gi&uacute;p thư gi&atilde;n</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-canh-mini-hai-phong_1639625912.jpg\" style=\"height:640px; width:640px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><strong><span style=\"font-size:14px\">Bể c&aacute; mini gi&aacute; rẻ Hải Ph&ograve;ng</span></strong></span></h2>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Bể c&aacute; treo tường</strong></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bể c&aacute; treo tường l&agrave; loại bể thường được sử dụng trong rất nhiều gia đ&igrave;nh.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Ch&uacute;ng c&oacute; những ưu điểm như tốn &iacute;t diện t&iacute;ch do được gắn l&ecirc;n tường, giống như bức tranh nhẹ nh&agrave;ng giữa căn ph&ograve;ng của bạn. Ch&uacute;ng gi&uacute;p cho cả gia đ&igrave;nh được thư gi&atilde;n, c&ugrave;ng nhau ngắm nh&igrave;n, tạo cảm gi&aacute;c m&aacute;t mẻ, thoải m&aacute;i trong căn ph&ograve;ng.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-canh-treo-tuong-hai-phong_1639625972.jpg\" style=\"height:360px; width:640px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bể c&aacute; treo tường Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>B&igrave;nh thủy tinh nu&ocirc;i c&aacute;</strong></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">B&igrave;nh thủy tinh kh&aacute; nhỏ v&agrave; được trang tr&iacute; đơn giản. Ch&uacute;ng thường được mua để l&agrave;m qu&agrave; tặng cho người y&ecirc;u hoặc bạn b&egrave; m&agrave; bạn y&ecirc;u thương.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/binh-thuy-tinh-nuoi-ca-hai-phong_1639626024.jpg\" style=\"height:640px; width:640px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">B&igrave;nh thủy tinh nu&ocirc;i c&aacute; tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Tại sao cần chọn địa chỉ uy t&iacute;n để mua bể c&aacute; cảnh tại Hải Ph&ograve;ng</strong></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\">Hiện nay c&oacute; rất nhiều cơ sở </span><a href=\"https://becahaiphong.com/mua-ban-be-ca-tai-vinh-bao-hai-phong\"><span style=\"color:#000000\">cung cấp bể c&aacute; cảnh</span></a><span style=\"color:#000000\">&nbsp;tại Hải Ph&ograve;ng. Tuy nhi&ecirc;n, ch&uacute;ng ta cần c&acirc;n nhắc để lựa chọn những địa chỉ uy t&iacute;n. Th&ocirc;ng thường, bể c&aacute; ở cơ sở uy t&iacute;n sẽ được l&agrave;m theo đ&uacute;ng kết cấu v&agrave; khu&ocirc;n mẫu gi&uacute;p cho c&aacute; được sinh trưởng tốt hơn, dễ d&agrave;ng vệ sinh. Phần phụ kiện v&agrave; bọc viền chất lượng cũng được đảm bảo. V&agrave; quan trọng l&agrave; gi&aacute; tiền cũng đ&uacute;ng với chất lượng. Rất nhiều cơ sở k&eacute;m chất lượng mặc d&ugrave; bể c&aacute; chất lượng kh&ocirc;ng phải tốt nhất nhưng lại c&oacute; mức gi&aacute; kh&aacute; cao.</span></span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Chuy&ecirc;n mua b&aacute;n bể c&aacute; cảnh đẹp gi&aacute; rẻ tại Vĩnh Bảo Hải Ph&ograve;ng</strong></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Một sự lựa chọn kh&aacute;c l&agrave; bạn c&oacute; thể tới với Bể C&aacute; Hải Ph&ograve;ng. Ch&uacute;ng t&ocirc;i lu&ocirc;n c&oacute; rất nhiều những mẫu m&atilde; bể c&aacute; mới c&ugrave;ng nhiều loại c&aacute; kh&aacute;c nhau cho kh&aacute;ch h&agrave;ng lựa chọn.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bể C&aacute; Hải Ph&ograve;ng&nbsp;l&agrave; một trong những c&aacute;i t&ecirc;n nổi bật về địa chỉ b&aacute;n c&aacute; cảnh v&agrave; bể c&aacute; cảnh. Ch&uacute;ng t&ocirc;i lu&ocirc;n đa dạng về những mẫu bể từ h&agrave;ng nội địa cho tới nhập khẩu, t&ugrave;y thuộc v&agrave;o điều kiện v&agrave; sở th&iacute;ch của người mua. Ngo&agrave;i ra, ch&uacute;ng t&ocirc;i&nbsp;c&ograve;n nhận l&agrave;m bể c&aacute; v&agrave; lắp đặt tại gia đ&igrave;nh của kh&aacute;ch h&agrave;ng cho ph&ugrave; hơp với kh&ocirc;ng gian v&agrave; k&iacute;ch thước sao cho ph&ugrave; hợp cũng như đ&aacute;p ứng cả về yếu tố phong thủy.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Chắc chắn khi c&aacute;c bạn đến với Bể C&aacute; Hải Ph&ograve;ng, c&aacute;c bạn sẽ cảm thấy v&ocirc; c&ugrave;ng th&iacute;ch th&uacute; bởi hệ thống bể c&aacute; v&agrave; c&aacute; cảnh v&ocirc; c&ugrave;ng phong ph&uacute;, chất lượng cao, thỏa m&atilde;n được tất cả kh&aacute;ch h&agrave;ng khi tới đ&acirc;y cho d&ugrave; l&agrave; những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Website: www.becahaiphong.com</strong></span></span></p>', 1, 39, 'Mua bán bể cá tại Vĩnh Bảo Hải Phòng', 'Mua bán bể cá tại Vĩnh Bảo Hải Phòng. Bạn hãy đến với địa chỉ: Khu chợ mới Áng Ngoại, Trung Lập, Vĩnh Bảo, Hải phòng - chúng tôi có đầy đủ các loại bể cá như: bể cá cảnh, bể cá mini, bể cá koi, bể cá thủy sinh, bể cá phong thủy....bạn có thể thoải mái lựa chọn theo sở thích của mình.', NULL, 260, '2021-12-16 03:24:53', '2022-07-23 02:27:51'),
(73, 'Làm bể cá theo yêu cầu tại Hải Phòng', 'lam-be-ca-theo-yeu-cau-tai-hai-phong', 'PNcb_mua-ban-be-ca-hai-phong.jpg', 'Làm bể cá theo yêu cầu tại Hải Phòng. Bể Cá Hải Phòng chuyên cung cấp và thi công bể cá cảnh đẹp tại Hải Phòng và các tỉnh Miền Bắc. Liên hệ ngay với chúng tôi để được tư vấn và báo giá 0912 362 350 - 0979 718 362', '<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Bạn đang muốn l&agrave;m bể c&aacute; theo y&ecirc;u cầu nhưng lại kh&ocirc;ng biết địa chỉ nơi l&agrave;m bể c&aacute;, bạn l&ecirc;n mạng t&igrave;m kiếm nhưng c&oacute; qu&aacute; nhiều nơi, bạn băn khoăn kh&ocirc;ng biết n&ecirc;n chọn cửa h&agrave;ng n&agrave;o?</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Vậy bạn h&atilde;y đến với ch&uacute;ng t&ocirc;i - Bể C&aacute; Hải Ph&ograve;ng l&agrave; địa chỉ chuy&ecirc;n cung cấp v&agrave; thi c&ocirc;ng bể c&aacute; cảnh đẹp, gi&aacute; rẻ, uy t&iacute;n tại Hải Ph&ograve;ng.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-canh-hai-phong-gia-re_1640083244.jpg\" style=\"height:600px; width:800px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">L&agrave;m bể c&aacute; theo y&ecirc;u cầu gi&aacute; rẻ tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\"><strong>Bể c&aacute; Hải Ph&ograve;ng</strong> tự h&agrave;o l&agrave; đơn vị ti&ecirc;n phong trong lĩnh vực bể c&aacute; ch&uacute;ng t&ocirc;i chuy&ecirc;n l&agrave;m </span><a href=\"https://becahaiphong.com/be-ca-trang-tri\"><span style=\"color:#000000\">bể c&aacute; cảnh</span></a><span style=\"color:#000000\"> theo y&ecirc;u cầu với chất lượng v&agrave; đẳng cấp cao. Ch&uacute;ng t&ocirc;i c&oacute; hệ thống nh&agrave; xưởng quy m&ocirc;, ch&uacute;ng t&ocirc;i c&oacute; đội ngũ nh&acirc;n vi&ecirc;n l&agrave;nh nghề v&agrave; nhiệt huyết, ch&uacute;ng t&ocirc;i lu&ocirc;n đặt lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n tr&ecirc;n lợi nhuận, ch&uacute;ng t&ocirc;i tự tin l&agrave;m h&agrave;i l&ograve;ng ngay cả những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Chuy&ecirc;n thiết kế, thi c&ocirc;ng bể c&aacute;</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Chuy&ecirc;n cung cấp thiết bị, phụ kiện đi k&egrave;m bể c&aacute;, l&agrave; đơn vị ph&acirc;n phối uy t&iacute;n</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Dịch vụ cải tạo v&agrave; lắp đặt mới c&aacute;c loại bể c&aacute; theo y&ecirc;u cầu</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">N&acirc;ng cấp tu sửa bể c&aacute; cũ th&agrave;nh bể c&aacute; mới</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Vệ sinh, bảo dưỡng bể c&aacute; theo định kỳ.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-canh-dep-hai-phong-gia-re_1640083530.jpg\" style=\"height:600px; width:800px\" /></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Thi c&ocirc;ng thiết kế bể c&aacute; theo y&ecirc;u cầu tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/mua-ban-be-ca-hai-phong_1640083629.jpg\" style=\"height:800px; width:500px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/mua-ban-be-ca-dep-hai-phong_1640083667.jpg\" style=\"height:800px; width:600px\" /></span></span></p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Đặt l&agrave;m bể c&aacute; theo y&ecirc;u cầu tại Hải Ph&ograve;ng</span></span></h3>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#000000\">Bất cứ khi n&agrave;o bạn muốn </span><a href=\"https://becahaiphong.com/lam-be-ca-theo-yeu-cau-tai-hai-phong\"><span style=\"color:#000000\">l&agrave;m bể c&aacute; cảnh theo y&ecirc;u cầu</span></a><span style=\"color:#000000\"> với chất lượng v&agrave; sự đẳng cấp h&atilde;y li&ecirc;n hệ ngay với bể c&aacute; Hải Ph&ograve;ng&nbsp;để nhận được tư vấn miễn ph&iacute; đồng thời đem về nh&agrave; chiếc bể c&aacute; ưng &yacute; nhất.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Website: <a href=\"https://becahaiphong.com/\">www.becahaiphong.com</a></strong></span></span></p>', 1, 39, 'Làm bể cá theo yêu cầu tại Hải Phòng', 'Làm bể cá theo yêu cầu tại Hải Phòng. Bể Cá Hải Phòng chuyên cung cấp và thi công bể cá cảnh đẹp tại Hải Phòng và các tỉnh Miền Bắc. Liên hệ ngay với chúng tôi để được tư vấn và báo giá 0912 362 350 - 0979 718 362', NULL, 239, '2021-12-21 09:11:16', '2022-07-24 06:05:24'),
(74, 'Cách làm lọc bể cá tự chế đơn giản tại nhà', 'cach-lam-loc-be-ca-tu-che-don-gian-tai-nha', 'mD7R_cac-thanh-phan-trong-he-thong-loc.jpg', 'Đối với những người chơi cá cảnh, thủy sinh, họ đều hiểu hệ thống lọc quan trọng như thế nào. Một hệ thống lọc hiệu quả thì chất lượng nước sẽ được nâng cao, các loại cá, cây cảnh trong bể theo đó phát triển khỏe mạnh cả ngoại hình lẫn chất lượng', '<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Đối với những người chơi c&aacute; cảnh, thủy sinh, họ đều hiểu hệ thống lọc quan trọng như thế n&agrave;o. Một hệ thống lọc hiệu quả th&igrave; chất lượng nước sẽ được n&acirc;ng cao, c&aacute;c loại c&aacute;, c&acirc;y cảnh trong bể theo đ&oacute; ph&aacute;t triển khỏe mạnh cả ngoại h&igrave;nh lẫn chất lượng. Tuy nhi&ecirc;n kh&ocirc;ng phải ai cũng hiểu r&otilde; về hệ thống lọc n&agrave;y c&oacute; kết cấu như thế n&agrave;o. Hoặc cũng c&oacute; những người đam m&ecirc; muốn tự tay chế tạo ri&ecirc;ng cho m&igrave;nh một bộ lọc ưng &yacute; nhưng lại chưa biết bắt đầu từ đ&acirc;u? Do vậy h&ocirc;m nay bể c&aacute; hải ph&ograve;ng&nbsp;ch&uacute;ng t&ocirc;i xin tr&igrave;nh b&agrave;y tới bạn đọc b&agrave;i viết: C&aacute;ch l&agrave;m lọc bể c&aacute; tự chế đơn giản tại nh&agrave;. Mong răng b&agrave;i viết n&agrave;y sẽ mang lại nhiều kiến thức bổ &iacute;ch tới bạn đọc v&agrave; cũng l&agrave; th&ocirc;ng tin gi&uacute;p c&aacute;c bạn tham khảo trước khi bắt tay tự l&agrave;m cho m&igrave;nh bộ lọc tự chế nh&eacute;.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/cac-thanh-phan-trong-he-thong-loc_1640078464.jpg\" style=\"height:662px; width:537px\" /></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em><strong>Dưới đ&acirc;y l&agrave; những kiến thức cơ bản nhất về hệ thống lọc:</strong></em></span></span></p>\r\n\r\n<h3><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hệ thống lọc l&agrave; g&igrave;?</strong></span></span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Đ&acirc;y l&agrave; thiết bị c&oacute; chức năng lọc l&agrave;m sạch nước trong hồ c&aacute; hay bể thủy sinh nhờ v&agrave;o c&aacute;c lớp lọc được trang bị trong bộ lọc. Nước được xử l&yacute; sạch c&aacute;c chất thải, chất độc v&agrave; kh&iacute; độc tr&ocirc;i lơ lửng trong nước l&agrave;m cho hồ c&aacute; được trong sạch, gi&agrave;u oxy gi&uacute;p c&aacute;c sinh vật trong hồ sống khỏe mạnh hơn.</span></span></p>\r\n\r\n<h3><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hệ thống lọc vận h&agrave;nh ra sao?</strong></span></span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Đối với mỗi loại lọc kh&aacute;c nhau đều c&oacute; c&aacute;ch vận h&agrave;nh kh&ocirc;ng giống nhau. Tuy nhi&ecirc;n tất cả đều tu&acirc;n thủ theo một nguy&ecirc;n tắc: Nước sẽ được h&uacute;t từ trong bể c&aacute;, sau đ&oacute; sẽ được thẩm thấu qua những lớp lọc kh&aacute;c nhau rồi chảy lại v&agrave;o bể tạo th&agrave;nh một v&ograve;ng tuần ho&agrave;n.</span></span></p>\r\n\r\n<h3><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Vậy một hệ thống lọc hiệu quả c&oacute; những ti&ecirc;u ch&iacute; g&igrave;?</strong></span></span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em><strong>Để một hệ thống lọc tỏ ra hiệu quả th&igrave; bắt buộc phải đ&aacute;p ứng đủ 3 ti&ecirc;u ch&iacute; dưới đ&acirc;y:</strong></em></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Lọc th&ocirc;</strong><strong>:&nbsp;</strong>Tức l&agrave; lọc sạch c&aacute;c tạp chất trong bể c&aacute; như cặn bẩn, thức ăn thừa, chất thải của sinh vật trong bể&hellip;c&aacute;c vật liệu được sử dụng: t&uacute;i lọc, b&ocirc;ng lọc&hellip;</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Lọc tinh</strong><strong>:&nbsp;</strong>Chức năng lọc tinh tức l&agrave; sau khi lọc th&ocirc; nước sẽ được qua ngăn lọc tiếp theo c&oacute; chứa c&aacute;c vi sinh vật để ph&acirc;n hủy chất thải của c&aacute; m&agrave; lọc th&ocirc; kh&ocirc;ng lọc được. v&iacute; dụ như chất nhờn của c&aacute;. Ph&acirc;n c&aacute; h&ograve;a tan trong nước&hellip;vv</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Lọc h&oacute;a học</strong><strong>:&nbsp;</strong>L&agrave; phần rất quan trọng m&agrave; hệ thống lọc n&agrave;o cũng cần phải giải quyết được.Lọc h&oacute;a học ch&iacute;nh l&agrave; lọc c&aacute;c chất độc hại trong nước gi&uacute;p c&aacute; kh&ocirc;ng bị ngộ độc.</span></span></li>\r\n</ul>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hướng dẫn l&agrave;m lọc bể c&aacute; tự chế</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Như tr&ecirc;n t&ocirc;i đ&atilde; giới thiệu tổng quan về hệ thống lọc. Bạn đọc chắc cũng hiểu được phần n&agrave;o nguy&ecirc;n l&yacute; hoạt đ&ocirc;ng rồi phải kh&ocirc;ng. Bước tiếp theo ch&uacute;ng ta c&ugrave;ng t&igrave;m hiểu c&aacute;ch ho&agrave;n thiện lọc bể c&aacute; tự chế nh&eacute;:</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/so-do-loc-thung-tu-che5-600x540_1640078613.jpg\" style=\"height:540px; width:600px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/1_1640078625.jpg\" style=\"height:300px; width:400px\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/15_1640078664.jpg\" style=\"height:400px; width:300px\" /></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Tr&ecirc;n đ&acirc;y bể c&aacute; hải ph&ograve;ng đ&atilde; hướng dẫn tới bạn đọc c&aacute;ch l&agrave;m lọc bể c&aacute; bằng h&igrave;nh ảnh chi tiết, dễ hiểu. Để c&oacute; một hệ thống lọc tự chế ưng &yacute; l&agrave; một qu&aacute; tr&igrave;nh thử nghiệm v&agrave; tốn c&ocirc;ng sức. Tuy nhi&ecirc;n th&agrave;nh quả đạt được sẽ l&agrave;m h&agrave;i l&ograve;ng bất cứ ai y&ecirc;u c&aacute; cảnh phải kh&ocirc;ng n&agrave;o. Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Website: www.becahaiphong.com</strong></span></span></p>', 1, 37, 'Cách làm lọc bể cá tự chế đơn giản tại nhà', 'Cách làm lọc bể cá tự chế đơn giản tại nhà. Đối với những người chơi cá cảnh, thủy sinh, họ đều hiểu hệ thống lọc quan trọng như thế nào. Một hệ thống lọc hiệu quả thì chất lượng nước sẽ được nâng cao, các loại cá, cây cảnh trong bể theo đó phát triển khỏe mạnh cả ngoại hình lẫn chất lượng', NULL, 230, '2021-12-21 09:24:54', '2022-07-25 00:34:45');
INSERT INTO `baiviet` (`id`, `name`, `code`, `anhdaidien`, `motabaiviet`, `noidungbaiviet`, `status`, `danhmucbaiviet_id`, `title`, `description`, `headings`, `count_page`, `created_at`, `updated_at`) VALUES
(75, 'Hướng dẫn cách chăm sóc và nuôi dưỡng cá Koi chi tiết', 'huong-dan-cach-cham-soc-va-nuoi-duong-ca-koi-chi-tiet', 'Npei_ca-koi.jpg', 'Sẽ thế nào, nếu Bể Cá Hải Phòng nói rằng, cách nuôi cá Koi mau lớn không hề khó. Khi nắm được một vài bí quyết mà chúng tôi chia sẻ dưới đây, thì việc nuôi chúng sao cho khỏe mạnh, lên màu đẹp,.. Nào, cùng xem nhé.', '<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Sẽ thế n&agrave;o, nếu Bể C&aacute; Hải Ph&ograve;ng&nbsp;n&oacute;i rằng, c&aacute;ch nu&ocirc;i c&aacute; Koi mau lớn kh&ocirc;ng hề kh&oacute;. Khi nắm được một v&agrave;i b&iacute; quyết m&agrave; ch&uacute;ng t&ocirc;i chia sẻ dưới đ&acirc;y, th&igrave; việc nu&ocirc;i ch&uacute;ng sao cho khỏe mạnh, l&ecirc;n m&agrave;u đẹp,.. N&agrave;o, c&ugrave;ng xem nh&eacute;.</span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>C&aacute;ch nu&ocirc;i c&aacute; Koi mau lớn</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Nu&ocirc;i c&aacute; Koi đ&uacute;ng c&aacute;ch, nghe c&oacute; vẻ hơi &ldquo;đ&aacute;ng sợ&rdquo;, pha lẫn một ch&uacute;t &ldquo;lo lắng&rdquo;. Đ&atilde; bao lần bạn l&ecirc;n mạng, v&agrave; t&igrave;m hiểu về c&aacute;ch nu&ocirc;i c&aacute; Koi mau lớn? V&agrave; rồi lại bị nhụt &yacute; ch&iacute;, bởi anh bạn n&agrave;y kh&aacute; đa dạng về chủng loại. T&iacute;nh sơ sơ th&ocirc;i đ&atilde; khoảng 200 lo&agrave;i, trong b&agrave;i viết&nbsp;<strong>c&aacute;c loại c&aacute; Koi</strong>. Ch&uacute;ng t&ocirc;i đ&atilde; đề cập đến một &iacute;t, bạn c&oacute; thể tham khảo qua.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/ca-koi_1640080343.jpg\" style=\"height:292px; width:500px\" /></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Đ&acirc;y l&agrave; một loại c&aacute; đến từ Nhật Bản, v&agrave; đ&acirc;y l&agrave; một lo&agrave;i c&aacute; c&oacute; phong thủy cực tốt. Ch&uacute;ng mang lại sự gi&agrave;u sang, ph&uacute; qu&yacute;, may mắn v&agrave; b&igrave;nh an cho gia chủ. Trong điều kiện nu&ocirc;i dưỡng tốt, c&oacute; thể sống tới 100 năm cơ đấy.</span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Thiết kế hồ c&aacute;</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Trong c&aacute;ch nu&ocirc;i c&aacute; Koi mau lớn, th&igrave; việc x&acirc;y dựng một hồ nu&ocirc;i c&aacute; cần nhiều yếu tố. Nhưng quan trọng nhất vẫn l&agrave; k&iacute;ch thước hồ ph&ugrave; hợp. Chiều d&agrave;i của một ch&uacute; c&aacute; Koi (t&ugrave;y loại) c&oacute; thể trong mức 10cm &ndash; đến 2m.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/ho-ca-koi_1640080377.jpg\" style=\"height:375px; width:500px\" /></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">V&igrave; thế, hồ c&aacute; cần dựa tr&ecirc;n k&iacute;ch thước của giống c&aacute; Koi m&agrave; bạn chuẩn bị nu&ocirc;i. H&atilde;y thiết kế sao cho hồ rộng một ch&uacute;t, c&ograve;n hơn l&agrave; chật nha.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Độ s&acirc;u của hồ lớn n&ecirc;n ở mức 0,8 &ndash; 1m. C&ograve;n hồ c&aacute; mini thường 0,4 &ndash; 0,6m. Kh&ocirc;ng n&ecirc;n thiết kể bể s&acirc;u qu&aacute;.</span></span></p>\r\n\r\n<h3><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Nước trong hồ cũng l&agrave; yếu tố cần quan t&acirc;m:</strong></span></span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Anh bạn c&aacute; Koi n&agrave;y rất nhạy cảm với m&ocirc;i trường nước. V&agrave; bạn nhớ n&ecirc;n bảo đảm m&ocirc;i trường nước lu&ocirc;n sạch. V&igrave; sao ư? H&atilde;y để ch&uacute;ng t&ocirc;i giải th&iacute;ch cho bạn nh&eacute;,..</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/nguon-nuoc_1640080413.jpg\" style=\"height:333px; width:500px\" /></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Độ pH: 7 &ndash; 7.5</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Ngưỡng pH: 4-9</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Nhiệt độ th&iacute;ch hợp: 20-27C</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">H&agrave;m lượng O2&nbsp;tối thiểu 2,5mg/l. Sau một thời gian nu&ocirc;i c&aacute;, th&igrave; những chất thải, chất nhờn, &aacute;nh nắng mặt trời,&hellip; Những yếu tố n&agrave;y sẽ l&agrave;m cho tảo, rong r&ecirc;u ph&aacute;t triển. Điều n&agrave;y sẽ khiến lượng O2&nbsp;bị giảm, n&ecirc;n h&atilde;y bổ sung th&ecirc;m một v&agrave;i loại&nbsp;<strong>c&acirc;y thủy sinh</strong>&nbsp;để duy tr&igrave; lượng Oxi.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Nhiệt độ nước, ngưỡng pH, độ pH lu&ocirc;n cần duy tr&igrave; ổn định. Tr&aacute;nh sự thay đổi đột ngột dẫn đến c&aacute; chết.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Khi thay nước, cần thay từ từ. Chứ kh&ocirc;ng n&ecirc;n thay đổi một lượng lớn, dễ g&acirc;y shock cho c&aacute;.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Nước trước khi bơm v&agrave;o hồ phải qua bước xử l&yacute; Clo (phơi nắng, d&ugrave;ng than hoạt t&iacute;nh&hellip;)</span></span></li>\r\n</ul>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Chọn giống c&aacute; để nu&ocirc;i.</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Việc lựa chọn giống c&aacute; khỏe, đẹp, kh&ocirc;ng bị dị tật,.. Sẽ gi&uacute;p &iacute;ch rất nhiều trong c&aacute;ch nu&ocirc;i c&aacute; Koi mau lớn.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Chọn con c&oacute; d&aacute;ng h&igrave;nh c&acirc;n đối, kh&ocirc;ng dị h&igrave;nh, kh&ocirc;ng x&acirc;y x&aacute;t,.. M&agrave;u sắc tươi s&aacute;ng, khỏe mạnh, bơi lội, phản ứng nhanh nhẹn.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">M&agrave;u sắc r&otilde; n&eacute;t, kh&ocirc;ng bị mờ. Điểm ph&acirc;n c&aacute;ch giữa c&aacute;c m&agrave;u r&otilde; r&agrave;ng. D&aacute;ng bơi thẳng.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/giong-ca_1640080438.jpg\" style=\"height:332px; width:500px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>C&aacute; Koi ăn g&igrave;?</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Nếu đ&atilde; từng t&igrave;m hiểu về c&aacute;ch nu&ocirc;i c&aacute; Koi mau lớn. Th&igrave; bạn cũng biết được, đ&acirc;y l&agrave; một loại ăn tạp. V&agrave; ch&uacute;ng c&oacute; thể ăn kh&aacute; nhiều loại thức ăn, từ tươi sống đến chế biến sẵn,.. Tuy nhi&ecirc;n, n&ecirc;n ăn g&igrave;? V&agrave; cho ăn thế n&agrave;o? H&atilde;y tham khảo nh&eacute;.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/thuc-an-2_1640080467.jpg\" style=\"height:265px; width:500px\" /></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Từ 3 ng&agrave;y tuổi, sau khi đ&atilde; ti&ecirc;u hết no&atilde;n ho&agrave;ng. Ch&uacute;ng c&oacute; thể ăn c&aacute;c thức ăn bổ sung như bo bo, c&aacute;c sinh vật ph&ugrave; du, l&ograve;ng đỏ trứng ch&iacute;n,..</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Sau khoảng 2 tuần tuổi, c&aacute; chuyển qua ăn c&aacute;c động vật tầng đ&aacute;y như giun, loăng quăng,.. Sự thay đổi t&iacute;nh ăn của Koi trong giai đoạn n&agrave;y l&agrave;m tỉ lệ con sống bị ảnh hưởng lớn. Bạn n&ecirc;n chuẩn bị đầy đủ c&aacute;c sinh vật tầng đ&aacute;y, nhằm cung ứng đủ dinh dưỡng cho Koi.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Khoảng từ 1 th&aacute;ng trở đi, Koi đ&atilde; c&oacute; thể chuyển sang ăn c&aacute;c động vật nhỏ. Giun, ốc, ấu tr&ugrave;ng,.. Y như một con c&aacute; trưởng th&agrave;nh.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Bạn cũng c&oacute; thể thay đổi khẩu vị, bằng c&aacute;ch cho ăn c&aacute;m, b&atilde; đậu, ph&acirc;n xanh, th&oacute;c l&eacute;p,.. C&aacute;c thức ăn chế biến sẵn (chủ yếu chế biến từ gạo, bột m&igrave;, bột bắp pha th&ecirc;m c&aacute;c vitamin v&agrave; bột c&aacute;.)</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Khẩu phần ăn v&agrave;o khoảng 5% trọng lượng cơ thể c&aacute;. cho ăn 2 lần/ng&agrave;y, để tr&aacute;nh t&igrave;nh trạng b&eacute;o ph&igrave; =)) V&agrave; gi&aacute;n tiếp khiến &ocirc; nhiễm nguồn nước.</span></span></li>\r\n</ul>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Một v&agrave;i bệnh phổ biến của Koi</strong></span></span></h2>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Kh&ocirc;ng thường xuy&ecirc;n vệ sinh, cải tạo hồ c&aacute; koi. Dẫn đến nguồn nước bị &ocirc; nhiễm.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Hệ thống lọc nước kh&ocirc;ng đạt chuẩn, hoặc bộ lọc kh&ocirc;ng đủ c&ocirc;ng suất so với thể t&iacute;ch hồ.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Kh&ocirc;ng xử l&yacute; vi sinh v&agrave; những sinh vật ngay l&uacute;c đầu.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Kh&ocirc;ng c&aacute;ch ly c&aacute; khi mới mua về, v&agrave; theo d&otilde;i. Dẫn đến l&acirc;y bệnh cho số lượng c&aacute; cũ.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Mua thức ăn cho c&aacute; Koi kh&ocirc;ng r&otilde; nguồn gốc.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Hồ c&aacute; kh&ocirc;ng c&acirc;n xứng với số lượng bể. Dẫn đến c&aacute; kh&ocirc;ng c&oacute; kh&ocirc;ng gian, thiếu oxy,.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Shock nước khi thay c&aacute;,&hellip;</span></span></li>\r\n</ul>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/ca-koi-mini_1640080548.jpg\" style=\"height:332px; width:500px\" /></span></span></h3>\r\n\r\n<h3><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Vậy khắc phục thế n&agrave;o?</strong></span></span></h3>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Trong c&aacute;ch nu&ocirc;i c&aacute; Koi mau lớn, bạn cần thường xuy&ecirc;n vệ sinh hồ. Kiểm tra độ ph&aacute;t triển của tảo, rong r&ecirc;u để c&oacute; biện ph&aacute;p xử l&yacute; tạm thời.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Lựa chọn mua c&aacute; từ những địa điểm uy t&iacute;n, để đảm bảo sức khỏe cho c&aacute;</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">C&aacute;ch ly c&aacute; mới mua về (th&ocirc;ng thường khoảng 3 tuần. Nếu thấy c&aacute; khỏe mạnh th&igrave; bạn c&oacute; thể thả v&agrave;o hồ);</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Thường xuy&ecirc;n theo d&otilde;i chế độ sinh hoạt của c&aacute;, nếu c&oacute; những dấu hiệu bơi chậm, biếng ăn, hay cơ thể c&oacute; vết bất thường. Th&igrave; cần c&aacute;ch ly v&agrave; t&igrave;m hiểu r&otilde; nguy&ecirc;n nh&acirc;n. Để c&oacute; những biện ph&aacute;p khắc phục sớm nhất.</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Đ&acirc;y l&agrave; tổng hợp c&aacute;ch nu&ocirc;i c&aacute; Koi mau lớn, nhằm gi&uacute;p bạn c&oacute; được một hồ c&aacute; đẹp. Cũng như những ch&uacute; c&aacute; khỏe mạnh nhất. Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Website: <a href=\"https://becahaiphong.com/\">www.becahaiphong.com</a></strong></span></span></p>', 1, 37, 'Hướng dẫn cách chăm sóc và nuôi dưỡng cá Koi chi tiết', 'Hướng dẫn cách chăm sóc và nuôi dưỡng cá Koi chi tiết. Nuôi cá Koi đúng cách, nghe có vẻ hơi “đáng sợ”, pha lẫn một chút “lo lắng”. Đã bao lần bạn lên mạng, và tìm hiểu về cách nuôi cá Koi mau lớn? Và rồi lại bị nhụt ý chí, bởi anh bạn này khá đa dạng về chủng loại', NULL, 235, '2021-12-21 09:56:32', '2022-07-24 12:27:47'),
(76, 'Địa chỉ bán bể cá cảnh rẻ đẹp tại Hải Phòng', 'dia-chi-ban-be-ca-canh-re-dep-tai-hai-phong', 'TzGH_be-ca-canh-gia-bao-nhieu-hai-phong-uy-tin.jpg', 'Bể Cá Hải Phòng là cửa hàng chuyên cung cấp, lắp đặt bể cá tại Hải Phòng. Luôn hiểu được tâm lý của khách hàng, khi đến với Bể Cá Hải Phòng đảm bảo đem tới sự uy tín chất lượng phục vụ khách hàng. Chính vì thế toàn bộ sản phẩm bể cá do chúng tôi cung cấp nhiều mẫu mã đa dạng, Sử dụng các phụ kiện có nguồn gốc rõ ràng và bảo hành dài hạn.', '<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bể C&aacute; Hải Ph&ograve;ng l&agrave; cửa h&agrave;ng chuy&ecirc;n cung cấp, lắp đặt bể c&aacute;&nbsp;tại Hải Ph&ograve;ng. Lu&ocirc;n hiểu được t&acirc;m l&yacute; của kh&aacute;ch h&agrave;ng, khi đến với Bể C&aacute; Hải Ph&ograve;ng đảm bảo đem tới sự uy t&iacute;n chất lượng phục vụ kh&aacute;ch h&agrave;ng. Ch&iacute;nh v&igrave; thế to&agrave;n bộ sản phẩm bể c&aacute; do ch&uacute;ng t&ocirc;i cung cấp nhiều mẫu m&atilde; đa dạng, Sử dụng c&aacute;c phụ kiện&nbsp;c&oacute;&nbsp;nguồn gốc r&otilde; r&agrave;ng v&agrave; bảo h&agrave;nh d&agrave;i hạn.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\">Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&oacute; hẳn một đội ngũ thợ kỹ thuật gi&agrave;u kinh nghiệm trong việc thiết kế, </span><a href=\"https://becahaiphong.com/dia-chi-ban-be-ca-canh-re-dep-tai-hai-phong\"><span style=\"color:#000000\">thi c&ocirc;ng lắp đặt bể c&aacute; theo y&ecirc;u cầu</span></a><span style=\"color:#000000\">, chuy&ecirc;n nghiệp tại Hải Ph&ograve;ng. Bất cứ khi n&agrave;o c&oacute; nhu cầu về lắp đặt bể c&aacute;&nbsp;ch&uacute;ng t&ocirc;i đều sẵn s&agrave;ng cử&nbsp;thợ tốt nhất đến tận nơi phục vụ qu&yacute; kh&aacute;ch. Bất kể khoảng c&aacute;ch xa gần điều kiện&nbsp;kh&ocirc;ng gian thời gian như thế n&agrave;o, ch&uacute;ng t&ocirc;i vẫn sẵn l&ograve;ng đ&aacute;p ứng lắp đặt bể c&aacute;&nbsp;ho&agrave;n hảo nhất cho kh&aacute;ch h&agrave;ng.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-gia-re-hai-phong_1640419286.jpg\" style=\"height:800px; width:600px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Cửa h&agrave;ng b&aacute;n bể c&aacute; cảnh tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Hiện nay tại Hải Ph&ograve;ng c&oacute; rất rất nhiều c&aacute;c cửa h&agrave;ng b&aacute;n bể c&aacute; tại Hải Ph&ograve;ng. Điều n&agrave;y ngẫu nhi&ecirc;n trở th&agrave;nh một ưu điểm cho người ti&ecirc;u d&ugrave;ng. Rằng kh&aacute;ch h&agrave;ng c&oacute; thể thỏa m&atilde;n chọn lựa đến với cửa h&agrave;ng&nbsp;n&agrave;o cũng được t&ugrave;y theo sở th&iacute;ch. Nhưng cũng ch&iacute;nh bởi sự phổ biến m&agrave; hiện nay xuất hiện kh&ocirc;ng &iacute;t những sản phẩm h&agrave;ng k&eacute;m chất lượng, kh&ocirc;ng đảm bảo chất lượng. Vậy n&ecirc;n để chọn được cửa h&agrave;ng chuy&ecirc;n cung cấp, lắp đặt bể c&aacute; Hải Ph&ograve;ng&nbsp;th&igrave; kh&aacute;ch h&agrave;ng chỉ n&ecirc;n chọn lấy cửa h&agrave;ng uy t&iacute;n như việc chọn lấy cửa h&agrave;ng của ch&uacute;ng t&ocirc;i Bể C&aacute; Hải Ph&ograve;ng.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Hiện nay ch&uacute;ng t&ocirc;i đang cho cung cấp rất đa dạng c&aacute;c loại bể c&aacute; như: bể c&aacute; mini, bể c&aacute; cảnh, bể c&aacute; thủy sinh, bể c&aacute; trang tr&iacute;, bể c&aacute; koi, phụ kiện bể c&aacute; v&agrave; thức ăn cho bể c&aacute;....... Cung cấp nhiều mẫu m&atilde;, k&iacute;ch thước của bể c&aacute;&nbsp;để kh&aacute;ch h&agrave;ng thoải m&aacute;i lựa chọn. Kh&aacute;ch h&agrave;ng chỉ cần đưa cho ch&uacute;ng t&ocirc;i những y&ecirc;u cầu về sản phẩm, đặc điểm tại nơi được lắp đặt bể c&aacute;. Tư vấn vi&ecirc;n của ch&uacute;ng t&ocirc;i sẽ hỗ trợ tư vấn tận t&igrave;nh, chu đ&aacute;o. Gi&uacute;p kh&aacute;ch h&agrave;ng chọn được đ&uacute;ng mẫu bể c&aacute;&nbsp;ph&ugrave; hợp với ng&ocirc;i nh&agrave;&nbsp;của qu&yacute; kh&aacute;ch.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-gia-bao-nhieu-hai-phong_1640419670.jpg\" style=\"height:600px; width:800px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Cung cấp bể c&aacute; gi&aacute; rẻ tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Để kh&aacute;ch h&agrave;ng biết r&otilde; hơn về bể c&aacute;&nbsp;m&agrave; ch&uacute;ng t&ocirc;i đang cung cấp ra thị trường. Sau đ&acirc;y l&agrave; một số loại bể c&aacute;&nbsp;m&agrave; ch&uacute;ng t&ocirc;i đang cung cấp lắp đặt tại Hải Ph&ograve;ng.</span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\">B&aacute;n bể c&aacute; cảnh tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\">B&aacute;n bể c&aacute; mini tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\">B&aacute;n bể c&aacute; koi tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\">B&aacute;n bể c&aacute; thủy sinh tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\">B&aacute;n phụ kiện bể c&aacute; tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\">B&aacute;n thức ăn cho c&aacute; tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bạn đang ph&acirc;n v&acirc;n, thắc mắc về việc lắp đặt bể c&aacute;&nbsp;trong gia đ&igrave;nh? L&agrave;m sao c&oacute; thể&nbsp;thiết kế bể c&aacute;&nbsp;vừa h&agrave;i h&ograve;a với kiến tr&uacute;c nh&agrave; vừa tạo n&ecirc;n t&iacute;nh thẩm mỹ cao?&nbsp;H&atilde;y nhấc m&aacute;y l&ecirc;n v&agrave; gọi ngay cho ch&uacute;ng t&ocirc;i để nhận được tư vấn v&agrave; b&aacute;o gi&aacute; về bể c&aacute;&nbsp;cũng như c&aacute;c dịch vụ ưu đ&atilde;i tốt nhất. Li&ecirc;n hệ theo số&nbsp;hotline&nbsp;<strong>0912 362 350 - 0979 718 362&nbsp;</strong>để được b&aacute;o gi&aacute; tốt nhất!</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Website: <a href=\"https://becahaiphong.com/\">www.becahaiphong.com</a></strong></span></span></p>', 1, 39, 'Địa chỉ bán bể cá cảnh rẻ đẹp tại Hải Phòng', 'Địa chỉ bán bể cá cảnh rẻ đẹp tại Hải Phòng. Bể Cá Hải Phòng là cửa hàng chuyên cung cấp, lắp đặt bể cá tại Hải Phòng. Luôn hiểu được tâm lý của khách hàng, khi đến với Bể Cá Hải Phòng đảm bảo đem tới sự uy tín chất lượng phục vụ khách hàng.', '<h3>Nơi b&aacute;n bể c&aacute; cảnh tại Hải Ph&ograve;ng</h3>', 255, '2021-12-25 07:37:46', '2022-07-24 06:04:22'),
(77, 'Cách đánh đèn cho cá rồng khỏe mạnh, lên màu', 'cach-danh-den-cho-ca-rong-khoe-manh-len-mau', 'MJuY_den-led-e1552364306278.jpg', 'Cá rồng luôn là mơ ước của rất nhiều người nuôi cá cảnh. Người thì không đủ kinh tế để chơi, người lại sợ rằng không thể đủ kinh nghiệm để nuôi… Rất nhiều lý do cản trở việc người chơi cá nuôi cá rồng', '<p><span style=\"color:#000000\"><span style=\"font-size:14px\">C&aacute; rồng lu&ocirc;n l&agrave; mơ ước của rất nhiều người nu&ocirc;i c&aacute; cảnh. Người th&igrave; kh&ocirc;ng đủ kinh tế để chơi, người lại sợ rằng kh&ocirc;ng thể đủ kinh nghiệm để nu&ocirc;i&hellip; Rất nhiều l&yacute; do cản trở việc người chơi c&aacute; nu&ocirc;i c&aacute; rồng. Nhưng với b&agrave;i chia sẻ kinh nghiệm&nbsp;đ&aacute;nh đ&egrave;n cho c&aacute; rồng. Chắc chắn c&aacute; của bạn sẽ leo m&agrave;u v&agrave; leo h&agrave;ng vảy chuẩn &ndash; đẹp nhất.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Trong b&agrave;i chia sẻ n&agrave;y bạn cần biết được 2 điều trước khi t&igrave;m hiểu về c&aacute;ch l&ecirc;n vảy, l&ecirc;n m&agrave;u cho c&aacute; đ&oacute; l&agrave;:</strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Đ&aacute;nh đ&egrave;n chỉ &aacute;p dụng cho c&aacute;c loại c&aacute; rồng kim m&agrave; th&ocirc;i (kim long hải bối, kim long hồng vĩ&hellip;)</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">C&aacute;ch &ldquo;POM&rdquo; c&aacute; rồng l&agrave; g&igrave;?</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Do vậy, bạn cần biết m&igrave;nh đang nu&ocirc;i c&aacute; rồng giống g&igrave; v&agrave; c&oacute; &aacute;p dụng dc kỹ thuật pom c&aacute; như ch&uacute;ng t&ocirc;i hướng dẫn ở dưới đ&acirc;y hay kh&ocirc;ng trước đ&atilde; nh&eacute;.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/den-led-e1552364306278_1640678271.jpg\" style=\"height:375px; width:500px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Pom c&aacute; rồng l&agrave; g&igrave;?</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Pom c&aacute; l&agrave; một thuật ngữ chỉ kỹ thuật nu&ocirc;i c&aacute; rồng tối ho&agrave;n to&agrave;n hoặc s&aacute;ng ho&agrave;n to&agrave;n. Nhằm th&uacute;c đẩy qu&aacute; tr&igrave;nh ph&aacute;t triển của c&aacute; nhanh hơn. Đẩy cho c&aacute; rồng từ chiều d&agrave;i c&aacute;, h&agrave;ng vảy v&agrave; m&agrave;u sắc theo &yacute; muốn.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">C&aacute; rồng muốn pom tốt th&igrave; cần phải l&agrave; c&aacute; size nhỏ chỉ từ 12cm đến cao nhất l&agrave; 20cm. Cũng tuỳ thuộc v&agrave;o giống c&aacute; một phần nữa để lựa chọn. Nhưng nhất thiết phải l&agrave; c&aacute; nhỏ. C&aacute; lớn n&oacute; đ&atilde; h&igrave;nh th&agrave;nh ho&agrave;n thiện rồi th&igrave; ko thay đổi &ndash; kh&ocirc;ng k&iacute;ch th&iacute;ch th&ecirc;m được nữa.</span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>C&aacute;ch l&ecirc;n m&agrave;u cho c&aacute; rồng bằng kỹ thuật POM</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em><strong>Chuẩn bị:</strong></em></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">1 th&ugrave;ng m&agrave;u trắng k&iacute;m 5 mặt bọc xốp. C&oacute; thể mua lu&ocirc;n th&ugrave;ng composite chuy&ecirc;n cho việc n&agrave;y. Tuy nhi&ecirc;n gi&aacute; th&agrave;nh của n&oacute; kh&aacute; cao. V&igrave; vậy ch&uacute;ng ta c&oacute; thể tự tạo ra loại th&ugrave;ng pom đơn giản v&agrave; rẻ hơn.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Bạn mua 1 chiếc th&ugrave;ng nhựa trong k&iacute;ch thước khoảng 80cm*60cm*60cm. Về sơn 3 &ndash; 4 lớp bằng sơn m&agrave;u trắng đục. Lựa chọn một th&ugrave;ng xốp c&oacute; k&iacute;ch thước đủ để đặt cả th&ugrave;ng nhựa vừa cải tiến tr&ecirc;n v&agrave;o b&ecirc;n trong. Tạo ra m&ocirc;i trường k&iacute;n, kh&ocirc;ng lọt &aacute;nh s&aacute;ng b&ecirc;n ngo&agrave;i v&agrave;o.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Bộ đ&egrave;n chiếu ph&ugrave; hợp c&oacute; độ s&aacute;ng khoảng từ 6500k &ndash; 10000k (kevin). Lựa chọn &aacute;nh s&aacute;ng trắng cho c&aacute;c lo&agrave;i c&aacute; rồng kim. C&ograve;n muốn c&aacute; rồng l&ecirc;n &aacute;nh v&agrave;ng nhiều c&oacute; thể d&ugrave;ng &aacute;nh s&aacute;ng dạng mặt trời tự nhi&ecirc;n.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/thung-pom-tu-che-e1552364521547_1640678349.jpg\" style=\"height:281px; width:500px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Chi tiết c&aacute;ch POM c&aacute; rồng l&ecirc;n m&agrave;u cực đẹp</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Khi c&aacute; đưa v&agrave;o th&ugrave;ng k&iacute;n để thực hiện qu&aacute; tr&igrave;nh k&iacute;ch th&iacute;ch (pom) m&agrave;u v&agrave; h&agrave;ng vảy cho c&aacute;. Bạn cần hết sức lưu &yacute; về kỹ thuật. Bởi đ&acirc;y l&agrave; thời gian quan trọng nhất để c&aacute; c&oacute; l&ecirc;n chất lượng hay kh&ocirc;ng từ m&agrave;u đến số h&agrave;ng vảy, m&agrave;u viền vảy, m&agrave;u tr&ecirc;n lưng của c&aacute; rồng&hellip;</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Đổ nước sạch v&agrave;o th&ugrave;ng. Mực nước khoảng từ 25cm đến 30cm. Lắp đặt từ 2 đến 3 b&oacute;ng chiếu s&aacute;ng c&oacute; độ s&aacute;ng kevin từ 6500k đến 10000k.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Trong tuần đầu ti&ecirc;n, bạn chỉ n&ecirc;n bật 1 b&oacute;ng. Chiếu s&aacute;ng với thời gian d&agrave;i tăng dần. Ng&agrave;y đầu chỉ n&ecirc;n bật li&ecirc;n tục khoảng 4 tiếng đến 5 tiếng. Rồi tắt đi để cho &aacute;nh s&aacute;ng thường v&agrave;o. Những ng&agrave;y tiếp theo cứ tăng dần l&ecirc;n mỗi ng&agrave;y 1 giờ đồng hồ chiếu s&aacute;ng.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Sang tuần tiếp theo ch&uacute;ng ta tăng độ s&aacute;ng bằng c&aacute;ch bất 2 đ&egrave;n c&ugrave;ng tăng số giờ l&ecirc;n dần. Khi c&aacute; đ&atilde; quen với việc chiếu &aacute;nh s&aacute;ng 24/24 rồi th&igrave; ch&uacute;ng ta để cố định đ&oacute;.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/den-pom_1640678401.jpg\" style=\"height:281px; width:500px\" /></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Thời gian hồ c&aacute; l&ecirc;n m&agrave;u v&agrave; tăng h&agrave;ng vảy l&ecirc;n 5 hoặc 6 h&agrave;ng diễn ra suốt khoảng 5 th&aacute;ng. Khi ch&uacute;ng ta thấy c&aacute; đạt chiều d&agrave;i từ 35cm đến 40cm th&igrave; dừng lại. Đ&oacute; l&agrave; k&iacute;ch thước gần như max của c&aacute; rồng. Sau đ&oacute; bạn n&ecirc;n đưa c&aacute; trở lại bể thuỷ sinh nhưng vẫn d&aacute;n k&iacute;n 5 mặt bằng m&agrave;u trắng mờ.&nbsp;Kết th&uacute;c thời gian pom c&aacute;. Chuyển sang đ&aacute;nh đ&egrave;n cho c&aacute; rồng tr&ecirc;n bể thường xuy&ecirc;n.</span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Lưu &yacute;: Pom c&aacute; rồng n&ecirc;n d&ugrave;ng đ&egrave;n m&agrave;u g&igrave;?</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Đ&acirc;y l&agrave; một băn khoăn m&agrave; gần như ai cũng muốn c&oacute; c&acirc;u trả lời ch&iacute;nh x&aacute;c nhất.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Trước ti&ecirc;n bạn n&ecirc;n xem ảnh v&agrave; khoảng giải m&agrave;u kevin:</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Từ 2000K đến 3000K, &aacute;nh s&aacute;ng ph&aacute;t ra được gọi l&agrave; &ldquo;trắng ấm&rdquo; v&agrave; c&oacute; m&agrave;u cam đến m&agrave;u v&agrave;ng trắng.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Từ&nbsp;3100K đến 4500K được gọi l&agrave; &ldquo;trắng nguội&rdquo; hoặc &ldquo;trắng s&aacute;ng&rdquo; hay &ldquo;trắng trung t&iacute;nh&rdquo;. B&oacute;ng đ&egrave;n led trong phạm vi n&agrave;y sẽ ph&aacute;t ra &aacute;nh s&aacute;ng trắng trung t&iacute;nh&nbsp;gần giống &ldquo;&aacute;nh s&aacute;ng ban ng&agrave;y&rdquo; v&agrave; c&oacute; thể c&oacute; m&agrave;u hơi xanh.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">Tr&ecirc;n 4500K ph&aacute;t &aacute;nh s&aacute;ng &ldquo;trắng m&aacute;t&rdquo; hoặc &ldquo;trắng xanh&rdquo;, chỉ số c&agrave;ng cao &aacute;nh s&aacute;ng c&agrave;ng xanh hơn.</span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:14px\">C&ograve;n khoảng 6500k trở l&ecirc;n l&agrave; m&agrave;u xanh lơ.</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Thường mọi người sẽ d&ugrave;ng m&agrave;u c&oacute; d&agrave;i từ 6500k đến 10000k. Vậy l&agrave; m&agrave;u trắng xanh của đ&egrave;n led. N&oacute; sẽ cho c&aacute; l&ecirc;n m&agrave;u đẹp, độ &aacute;nh kim s&aacute;ng hơn. Đ&acirc;y cũng l&agrave; khoảng m&agrave;u c&oacute; khả năng &ldquo;th&uacute;c đẩy&rdquo; thời gian tr&ocirc;i nhanh hơn cho c&aacute; rồng.</span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/bang-kevin_1640678489.jpg\" style=\"height:206px; width:500px\" /></span></span></h2>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>C&aacute;ch đ&aacute;nh đ&egrave;n cho c&aacute; rồng tr&ecirc;n bể</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Sau hết thời gian k&iacute;ch th&iacute;ch sự ph&aacute;t triển về m&agrave;u, k&iacute;ch thước v&agrave; số lượng h&agrave;ng vảy cho c&aacute; rồng rồi. Ch&uacute;ng ta đưa c&aacute; rồng quay trở lại&nbsp;<strong>bể c&aacute; rồng</strong>&nbsp;trong nh&agrave;. L&uacute;c n&agrave;y, vẫn cần đ&aacute;p ứng điều kiện ph&aacute;t triển tốt nhất cho c&aacute; rồng. Vừa gi&uacute;p n&oacute; khoẻ mạnh, vừa gi&uacute;p n&oacute; ph&aacute;t triển ho&agrave;n thiện nhất.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Lượng quang ph&ocirc;̉ của những tu&yacute;p đ&egrave;n v&agrave; c&ocirc;ng su&acirc;́t quy&ecirc;́t định m&ocirc;̣t ph&acirc;̀n n&agrave;o sự ph&aacute;t tri&ecirc;̉n v&ecirc;̀ m&agrave;u sắc của c&aacute; r&ocirc;̀ng .</span></span></p>\r\n\r\n<h3><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Với c&aacute; rồng kim long qu&aacute; bối</strong></span></span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Kim long qu&aacute; bối lu&ocirc;n đẹp khi n&oacute; thể hiện được h&agrave;ng vảy thứ 6 tr&ecirc;n th&acirc;n. Để n&oacute; đạt đến tầm cỡ ấy, người chơi n&ecirc;n đ&aacute;n đ&egrave;n cho c&aacute; rồng&nbsp; &ndash; Kim long qu&aacute; bối thường xuy&ecirc;n bằng đ&egrave;n c&oacute; toả nhiệt nhưng m&agrave;u l&agrave; trắng xanh.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Nếu kh&ocirc;ng c&oacute; thời gian quan s&aacute;t v&agrave; kiểm so&aacute;t. Bạn n&ecirc;n bật đ&egrave;n khi cho c&aacute; ăn, khi ngắm c&aacute;. V&igrave; cả 2 h&agrave;nh động tr&ecirc;n đều khiến c&aacute; bơi cao l&ecirc;n mặt nước. Nhiệt của đ&egrave;n chiếu sẽ đốt phần vảy tr&ecirc;n lưng. Tạo ra khoảng ph&acirc;n m&agrave;u r&otilde; rệt nhất giữa lưng v&agrave; th&acirc;n. Đẹp phản chiếu!</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Kim long qu&aacute; bối n&ecirc;n được nu&ocirc;i ở bể c&oacute; chiều d&agrave;i từ 1m trở l&ecirc;n khi đ&atilde; lớn (tốt nhất với c&aacute; rồng bể lu&ocirc;n c&oacute; chiều d&agrave;i bằng 3 lần chiều d&agrave;i của c&aacute;). Đặt từ 2 đến 3 đ&egrave;n c&oacute; độ kevin khoảng 8000k đến 10000k. Chiếu bất kỳ l&uacute;c n&agrave;o bạn c&oacute; mặt. Kh&ocirc;ng n&ecirc;n bỏ n&oacute; trong thời gian d&agrave;i m&agrave; kh&ocirc;ng quan s&aacute;t.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/ca-rong_1640678586.jpg\" style=\"height:375px; width:500px\" /></span></span></p>\r\n\r\n<h2><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Đặt đ&egrave;n trong bể thuỷ sinh nu&ocirc;i c&aacute; rồng</strong></span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Hiện nay tr&ecirc;n thị trường c&oacute; rất nhiều loại đ&egrave;n đang b&aacute;n để k&iacute;ch th&iacute;ch sự ph&aacute;t triển cho c&aacute; rồng. Trong đ&oacute; mọi người thường hay nghe đến c&aacute;i t&ecirc;n như T5HHO &ndash; T8 Jebo&hellip;. Mỗi loại đ&egrave;n đều toả nhiệt kh&aacute;c nhau. Bạn n&ecirc;n c&acirc;n đối giữa nhiệt độ toả ra với chiều cao đặt đ&egrave;n so với mặt nước. Tr&aacute;nh t&igrave;nh trạng l&agrave;m mắt c&aacute; bị xệ hoặc lệch.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">C&agrave;ng đ&aacute;nh đ&egrave;n cho c&aacute; rồng l&acirc;u, mắt c&aacute; c&agrave;ng hoạt động nhiều. Do vậy bạn cần đảm bảo nguồn nước trong bể phải sạch. N&ecirc;n nu&ocirc;i một v&agrave;i con c&aacute; loại ăn ph&ugrave; dung, thức ăn thừa, ph&acirc;n ở dưới đ&aacute;y bể. Hoặc đặt ph&ecirc;n nhựa c&oacute; lỗ dưới đ&aacute;y bể nu&ocirc;i c&aacute; rồng&hellip;</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Đặt đ&egrave;n với khoảng c&aacute;ch th&ocirc;ng dụng nhất l&agrave; từ 30cm đến 40cm so với mặt nước trong bể. N&ecirc;n chiếu s&aacute;ng được khoảng 4 tiếng/ ng&agrave;y.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/ca-rong-kim-long_1640678642.jpg\" style=\"height:283px; width:500px\" /></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Vẫn lu&ocirc;n cần lưu &yacute; về việc mắt c&aacute; sẽ bị hại do nhiệt độ của đ&egrave;n c&ugrave;ng thời gian chiếu đ&egrave;n qu&aacute; d&agrave;i. Bạn c&acirc;n nhắc khi c&aacute; đ&atilde; gần đạt đến m&agrave;u đẹp rồi. H&atilde;y n&ecirc;n để n&oacute; ph&aacute;t triển tự nhi&ecirc;n. V&igrave; đ&aacute;nh đ&egrave;n cho c&aacute; rồng&nbsp; l&acirc;u thời gian, tuổi thọ của c&aacute; cũng suy giảm.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Nếu bạn c&ograve;n băn khoăn về bất kỳ vấn đề g&igrave; trong qu&aacute; tr&igrave;nh Pom v&agrave; đặt đ&egrave;n cho bể nu&ocirc;i c&aacute; rồng. H&atilde;y li&ecirc;n hệ với bể c&aacute; Hải Ph&ograve;ng&nbsp;để được tư vấn trực tiếp.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Website: www.becahaiphong.com</strong></span></span></p>', 1, 37, 'Cách đánh đèn cho cá rồng khỏe mạnh, lên màu', 'Cách đánh đèn cho cá rồng khỏe mạnh, lên màu. Cá rồng luôn là mơ ước của rất nhiều người nuôi cá cảnh. Người thì không đủ kinh tế để chơi, người lại sợ rằng không thể đủ kinh nghiệm để nuôi… Rất nhiều lý do cản trở việc người chơi cá nuôi cá rồng', NULL, 277, '2021-12-28 08:05:30', '2022-07-25 21:04:12'),
(78, 'Cung cấp phụ kiện bể cá tại Hải Phòng', 'cung-cap-phu-kien-be-ca-tai-hai-phong', 'k09R_loc-thung-3338s.jpg', 'Cung cấp phụ kiện bể cá tại Hải Phòng. Bể cá Hải Phòng chuyên cung cấp phụ kiện bể cá giá rẻ nhất tại Hải Phòng, bạn cần mua phụ kiện bể cá hãy liên hệ ngay với chúng tôi 0912 362 350 - 0979 718 362', '<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Cung cấp phụ kiện bể c&aacute; tại Hải Ph&ograve;ng. Bể c&aacute; Hải Ph&ograve;ng chuy&ecirc;n cung cấp phụ kiện bể c&aacute; gi&aacute; rẻ nhất tại Hải Ph&ograve;ng, bạn cần mua phụ kiện bể c&aacute; h&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i 0912 362 350 - 0979 718 362</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bạn đang t&igrave;m kiếm cửa h&agrave;ng&nbsp;<strong>b&aacute;n&nbsp;phụ&nbsp;kiện bể c&aacute;&nbsp;tại Hải Ph&ograve;ng</strong>? Nhưng bạn lại kh&ocirc;ng biết cửa h&agrave;ng n&agrave;o b&aacute;n h&agrave;ng uy t&iacute;n v&agrave; chất lượng? Vậy&nbsp;bạn h&atilde;y đến với cửa h&agrave;ng của&nbsp;ch&uacute;ng t&ocirc;i - Bể C&aacute; Hải Ph&ograve;ng, ch&uacute;ng t&ocirc;i chuy&ecirc;n&nbsp;cung cấp, lắp đặt, sửa chữa c&aacute;c bể c&aacute;&nbsp;v&agrave; b&aacute;n bu&ocirc;n, b&aacute;n lẻ c&aacute;c loại phụ&nbsp;kiện bể c&aacute; với&nbsp;gi&aacute; cả cạnh tranh nhất tại Hải Ph&ograve;ng.</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/Atman-AT306-caacute_1640685635.jpg\" style=\"height:422px; width:457px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Phụ kiện bể c&aacute; gi&aacute; rẻ tại Hải Ph&ograve;ng</span></span></h2>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Bể C&aacute; Hải Ph&ograve;ng</strong>&nbsp;với kinh nghiệm l&acirc;u năm trong việc cung cấp v&agrave; lắp đặt bể c&aacute;,&nbsp;ch&uacute;ng t&ocirc;i&nbsp;sẽ tư vấn, lựa chọn bể c&aacute; hợp với sở th&iacute;ch, nhu cầu, v&agrave; t&agrave;i ch&iacute;nh của&nbsp;qu&yacute; kh&aacute;ch h&agrave;ng.&nbsp;H&atilde;y chọn Bể C&aacute; Hải Ph&ograve;ng của&nbsp;ch&uacute;ng t&ocirc;i, với sản phẩm v&agrave; dịch vụ tốt nhất về cả chất lượng sản phẩm cũng như c&aacute;c dịch vụ chăm s&oacute;c hậu m&atilde;i đến kh&aacute;ch h&agrave;ng</span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em>&nbsp;Lu&ocirc;n sẵn s&agrave;ng hỗ trợ, tư vấn kh&aacute;ch h&agrave;ng 24/7 tất cả c&aacute;c ng&agrave;y trong tuần</em></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em>Đội ngũ nh&acirc;n vi&ecirc;n tư vấn tận t&igrave;nh&nbsp;v&agrave; kinh nghiệm l&acirc;u năm trong nghề.&nbsp;</em></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em>Thiết bị phụ&nbsp;kiện bể c&aacute; đều được nhập ch&iacute;nh h&atilde;ng, c&oacute; tem d&aacute;n v&agrave; nguồn gốc xuất xứ r&otilde; r&agrave;ng. Ch&iacute;nh v&igrave; vậy, kh&aacute;ch h&agrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m chất lượng của thiết bị sau khi phải thay thế linh kiện.&nbsp;</em></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em>Bảo h&agrave;nh v&agrave; sửa chữa tại nh&agrave; nhằm mang lại sự thuận tiện cho kh&aacute;ch h&agrave;ng</em></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em>Đảm bảo chi ph&iacute; sửa chữa hợp l&yacute; nhất với thị trường</em></span></span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><em>Đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng</em></span></span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/loc-thung-atman3338s_1640685971.jpg\" style=\"height:800px; width:572px\" /></p>\r\n\r\n<h3><span style=\"color:#000000\"><span style=\"font-size:14px\">Địa chỉ b&aacute;n phụ&nbsp;kiện bể c&aacute;&nbsp;tại Hải Ph&ograve;ng</span></span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Ở Hải Ph&ograve;ng hiện c&oacute; rất nhiều đơn vị, cửa h&agrave;ng&nbsp;b&aacute;n phụ&nbsp;kiện bể c&aacute;. Tuy nhi&ecirc;n để t&igrave;m được đơn vị, cửa h&agrave;ng&nbsp;b&aacute;n phụ&nbsp;kiện ch&iacute;nh h&atilde;ng , bảo h&agrave;nh d&agrave;i hạn, l&agrave;m việc tận t&acirc;m, tỉ mỉ, tận t&igrave;nh, l&agrave;m đến đ&acirc;u chắc đến đ&oacute;, v&agrave; tuyệt đối kh&ocirc;ng chặt ch&eacute;m kh&aacute;ch h&agrave;ng, th&igrave; c&aacute;c bạn h&atilde;y đến với ch&uacute;ng t&ocirc;i, ch&uacute;ng t&ocirc;i chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn thất vọng.</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>&nbsp;Website: <a href=\"https://becahaiphong.com/\">www.becahaiphong.com</a></strong></span></span></p>', 1, 39, 'Cung cấp phụ kiện bể cá tại Hải Phòng', 'Cung cấp phụ kiện bể cá tại Hải Phòng. Bể cá Hải Phòng chuyên cung cấp phụ kiện bể cá giá rẻ nhất tại Hải Phòng, bạn cần mua phụ kiện bể cá hãy liên hệ ngay với chúng tôi 0912 362 350 - 0979 718 362', NULL, 261, '2021-12-28 08:52:53', '2022-07-24 16:18:21');
INSERT INTO `baiviet` (`id`, `name`, `code`, `anhdaidien`, `motabaiviet`, `noidungbaiviet`, `status`, `danhmucbaiviet_id`, `title`, `description`, `headings`, `count_page`, `created_at`, `updated_at`) VALUES
(79, 'Bể cá cảnh giá rẻ tại Vĩnh Bảo Hải Phòng', 'be-ca-canh-gia-re-tai-vinh-bao-hai-phong', 'IWJP_ban-be-ca-canh-dep-hai-phong.jpg', 'Bể cá cảnh giá rẻ tại Vĩnh Bảo Hải Phòng. Bể Cá Hải Phòng chuyên cung cấp và lắp đặt bể cá theo yêu cầu tại Vĩnh Bảo Hải Phòng, chúng tôi có đầy đủ các loại bể cá cảnh để quý khách lựa chọn.', '<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Tại Vĩnh Bảo, bạn cần mua bể c&aacute; cảnh th&igrave; kh&ocirc;ng thể kh&ocirc;ng đến với ch&uacute;ng t&ocirc;i, ch&uacute;ng t&ocirc;i c&oacute; địa chỉ tại&nbsp;<strong>Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng. </strong>Ch&uacute;ng t&ocirc;i c&oacute; đầy đủ c&aacute;c loại bể c&aacute; cảnh, phụ kiện bể c&aacute;, bạn c&oacute; thể thoải m&aacute;i lựa chọn theo sở th&iacute;ch của m&igrave;nh.&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/cua-hang-be-ca-canh-hai-phong_1641433135.jpg\" style=\"height:600px; width:800px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Phụ kiện bể c&aacute; cảnh&nbsp;tại Vĩnh Bảo</span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Tại cửa h&agrave;ng ch&uacute;ng t&ocirc;i&nbsp;c&oacute; rất nhiều loại bể c&aacute;&nbsp;để bạn thỏa sức lựa chọn, bạn sẽ được tận mắt chi&ecirc;m ngưỡng h&agrave;ng chục thậm ch&iacute; h&agrave;ng trăm loại c&aacute; lớn nhỏ v&ocirc; c&ugrave;ng bắt mắt, ngo&agrave;i ra l&agrave; rất nhiều chủng loại thuỷ sinh đa dạng được nu&ocirc;i trồng ngay ch&iacute;nh trang trại ri&ecirc;ng của cửa h&agrave;ng. Tại đ&acirc;y bạn c&ograve;n được hổ trợ tư vấn đầy đủ về c&aacute;ch thức để&nbsp;thiết kế&nbsp;cũng như duy tr&igrave; một hồ c&aacute; đa dạng, h&agrave;i ho&agrave; m&agrave; lại c&ograve;n ph&ugrave; hợp với kh&ocirc;ng gian nơi bạn đang sống.&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><em><strong><span style=\"color:#000000\"><span style=\"font-size:14px\">&gt;&gt;&gt;Xem th&ecirc;m về:&nbsp;</span></span><a href=\"https://becahaiphong.com/cung-cap-phu-kien-be-ca-tai-hai-phong\">Cung cấp phụ kiện bể c&aacute; tại Hải Ph&ograve;ng</a></strong></em></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-gia-re-hai-phong_1641433407.jpg\" style=\"height:800px; width:600px\" /></span></span></p>\r\n\r\n<h2 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Bể c&aacute;&nbsp;k&iacute;nh cường lực tại Vĩnh Bảo Hải Ph&ograve;ng&nbsp;</span></span></h2>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#000000\">Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n </span><a href=\"https://becahaiphong.com/be-ca-canh-gia-re-tai-vinh-bao-hai-phong\"><span style=\"color:#000000\">l&agrave;m bể c&aacute; theo y&ecirc;u cầu</span></a><span style=\"color:#000000\"> bằng k&iacute;nh cường lực, Việc <em><strong>l</strong></em><strong><em>&agrave;m bể k&iacute;nh</em></strong>&nbsp;gi&uacute;p kh&ocirc;ng gian được sử dụng trở n&ecirc;n đẹp hơn, khắc phục được điểm yếu về &aacute;nh s&aacute;ng, tạo điểm nhấn h&agrave;i h&ograve;a về kiến tr&uacute;c, được ngắm nh&igrave;n d&ograve;ng nước trong xanh c&ugrave;ng đ&agrave;n c&aacute; thủy sinh sống động gi&uacute;p bạn thư gi&atilde;n,&nbsp;giảm stress sau những giờ l&agrave;m việc căng thẳng bể c&aacute; thuỷ tinh l&agrave; sự lựa chọn ho&agrave;n hảo cho bạn.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Đến với&nbsp;Bể C&aacute; Hải Ph&ograve;ng bạn sẽ nhận được sản phẩm chất lượng, dịch vụ ưu đ&atilde;i, gi&aacute; th&agrave;nh phải chăng, chất lượng, chuy&ecirc;n nghiệp, nhanh ch&oacute;ng v&agrave; uy t&iacute;n nhất tại Hải Ph&ograve;ng. Đừng ngần ngại gọi cho ch&uacute;ng t&ocirc;i, bạn sẽ c&oacute; b&aacute;o gi&aacute; tốt nhất đi k&egrave;m chất lượng dịch vụ</span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><img alt=\"\" src=\"https://becahaiphong.com/public/uploads/be-ca-phong-thuy-dep-hai-phong_1641434875.jpg\" style=\"height:600px; width:800px\" /></span></p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:14px\">Cắt k&iacute;nh cường lực bể c&aacute; tại Hải Ph&ograve;ng</span></span></h3>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\">Mọi th&ocirc;ng tin li&ecirc;n hệ:</span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>BỂ C&Aacute; HẢI PH&Ograve;NG</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Địa chỉ: Khu chợ mới &Aacute;ng Ngoại, Trung Lập, Vĩnh Bảo, Hải ph&ograve;ng</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Email: ngonluaxanh368@gmail.com</strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:14px\"><strong>Hotline: 0912 362 350 - 0979 718 362</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><strong><span style=\"color:#000000\">Website: </span><a href=\"https://becahaiphong.com/\"><span style=\"color:#000000\">www.becahaiphong.com</span></a></strong></span></p>', 1, 39, 'Bể cá cảnh giá rẻ tại Vĩnh Bảo Hải Phòng', 'Bể cá cảnh giá rẻ tại Vĩnh Bảo Hải Phòng. Bể Cá Hải Phòng chuyên cung cấp và lắp đặt bể cá theo yêu cầu tại Vĩnh Bảo Hải Phòng, chúng tôi có đầy đủ các loại bể cá cảnh để quý khách lựa chọn.', NULL, 282, '2022-01-05 09:03:44', '2022-07-24 07:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `cauhinh`
--

CREATE TABLE `cauhinh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tendoanhnghiep` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotline1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotline2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `logofoot` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fanpage` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `map` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `zalo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mess` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ytb` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `twiter` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cauhinh`
--

INSERT INTO `cauhinh` (`id`, `tendoanhnghiep`, `diachi`, `diachi2`, `hotline1`, `hotline2`, `email`, `logo`, `logofoot`, `fanpage`, `map`, `zalo`, `mess`, `ytb`, `google`, `twiter`, `created_at`, `updated_at`) VALUES
(1, 'BỂ CÁ HẢI PHÒNG', 'Khu chợ mới Áng Ngoại, Trung Lập, Vĩnh Bảo, Hải phòng', NULL, '0912 362 350', '0979 718 362', 'ngonluaxanh368@gmail.com', 'ujLj_logo.png', '8EuB_log-site-foot.png', NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29855.977047049684!2d106.44335037518262!3d20.71034111497581!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31358b739c734ea9%3A0x17c8b14d6ab20a99!2zVHJ1bmcgTOG6rXAsIFbEqW5oIELhuqNvLCBI4bqjaSBQaMOybmcsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1639369069853!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', '0912362350', NULL, NULL, NULL, NULL, '2019-08-14 10:30:30', '2022-07-25 23:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `cauhinhseo`
--

CREATE TABLE `cauhinhseo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `headings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `analytics` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `webmastertool` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `script` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cauhinhseo`
--

INSERT INTO `cauhinhseo` (`id`, `title`, `description`, `headings`, `analytics`, `webmastertool`, `script`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-14 11:02:34', '2022-07-26 00:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `giatien` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `hoadon_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id`, `soluong`, `giatien`, `sanpham_id`, `hoadon_id`, `created_at`, `updated_at`) VALUES
(147, 1, '5000000', 158, 88, '2020-05-11 09:33:17', '2020-05-11 09:33:17'),
(148, 1, '5000000', 154, 88, '2020-05-11 09:33:17', '2020-05-11 09:33:17'),
(149, 1, '5000000', 156, 88, '2020-05-11 09:33:17', '2020-05-11 09:33:17'),
(150, 1, '5000000', 155, 88, '2020-05-11 09:33:17', '2020-05-11 09:33:17'),
(151, 4, '4500000', 159, 89, '2020-05-11 10:37:15', '2020-05-11 10:37:15'),
(152, 1, '0', 149, 89, '2020-05-11 10:37:15', '2020-05-11 10:37:15'),
(153, 1, '0', 152, 89, '2020-05-11 10:37:15', '2020-05-11 10:37:15'),
(154, 2, '4100000', 156, 89, '2020-05-11 10:37:15', '2020-05-11 10:37:15'),
(155, 1, '4100000', 156, 90, '2020-05-11 10:38:13', '2020-05-11 10:38:13'),
(156, 1, '4300000', 158, 91, '2020-05-11 10:38:51', '2020-05-11 10:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `danhmucbaiviet`
--

CREATE TABLE `danhmucbaiviet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `status2` int(11) DEFAULT NULL,
  `danhmuccha_id` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `headings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmucbaiviet`
--

INSERT INTO `danhmucbaiviet` (`id`, `name`, `code`, `status`, `status2`, `danhmuccha_id`, `title`, `description`, `headings`, `created_at`, `updated_at`) VALUES
(37, 'Tư vấn', 'tu-van', 1, NULL, NULL, NULL, NULL, NULL, '2020-07-30 04:05:25', '2022-07-26 00:24:59'),
(39, 'Tin tức', 'tin-tuc', 1, NULL, NULL, NULL, NULL, NULL, '2021-08-10 08:55:53', '2022-07-26 00:24:53');

-- --------------------------------------------------------

--
-- Table structure for table `danhmucsanpham`
--

CREATE TABLE `danhmucsanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `danhmuccha_id` int(11) DEFAULT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vitri` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `status_page` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `headings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmucsanpham`
--

INSERT INTO `danhmucsanpham` (`id`, `name`, `danhmuccha_id`, `code`, `mota`, `noidung`, `vitri`, `status`, `status_page`, `title`, `description`, `headings`, `created_at`, `updated_at`) VALUES
(216, 'Bể cá mini', 0, 'be-ca-mini', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, '2021-12-13 03:54:43', '2022-07-26 00:25:10'),
(217, 'Bể cá trang trí', 0, 'be-ca-trang-tri', NULL, NULL, 2, 1, 1, NULL, NULL, NULL, '2021-12-13 03:55:16', '2022-07-26 00:25:15'),
(218, 'Bể cá thủy sinh', 0, 'be-ca-thuy-sinh', NULL, NULL, 3, 1, 0, NULL, NULL, NULL, '2021-12-13 03:55:34', '2022-07-26 00:25:21'),
(219, 'Bể cá tiểu cảnh', 0, 'be-ca-tieu-canh', NULL, NULL, 4, 1, 0, NULL, NULL, NULL, '2021-12-13 03:56:23', '2022-07-26 00:25:31'),
(220, 'Bể cá koi', 0, 'be-ca-koi', NULL, NULL, 5, 1, 0, NULL, NULL, NULL, '2021-12-13 03:56:44', '2022-07-26 00:25:39'),
(221, 'Phụ kiện bể cá', 0, 'phu-kien-be-ca', NULL, NULL, 6, 1, 0, NULL, NULL, NULL, '2021-12-13 03:57:03', '2022-07-26 00:25:48'),
(222, 'Thức ăn cho cá', 0, 'thuc-an-cho-ca', NULL, NULL, 7, 1, 0, NULL, NULL, NULL, '2021-12-13 03:57:13', '2022-07-26 00:25:54'),
(223, 'Sản phẩm khác', 0, 'san-pham-khac', NULL, NULL, 8, 1, 2, NULL, NULL, NULL, '2021-12-13 03:58:07', '2021-12-13 03:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chinhsach` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dichvu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cothequantam` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `chinhsach`, `dichvu`, `cothequantam`, `created_at`, `updated_at`) VALUES
(1, '<p>1. Bảo mật th&ocirc;ng tin</p>\r\n\r\n<p>2. Vận chuyển, giao nhận</p>\r\n\r\n<p>3. H&igrave;nh thức thanh to&aacute;n</p>\r\n\r\n<p>4. Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</p>\r\n\r\n<p>5. Ch&iacute;nh s&aacute;ch đổi trả</p>', '<p>Dữ liệu đang được cập nhật ...</p>', '<p>Dữ liệu đang được cập nhật ...</p>', '2019-11-05 06:44:12', '2019-12-14 01:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noidunggioithieu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `headings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_page` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `noidunggioithieu`, `title`, `description`, `headings`, `count_page`, `created_at`, `updated_at`) VALUES
(1, '<p>Trang giới thiệu gi&uacute;p kh&aacute;ch h&agrave;ng hiểu r&otilde; hơn về cửa h&agrave;ng của bạn. H&atilde;y cung cấp th&ocirc;ng tin cụ thể về việc kinh doanh, về cửa h&agrave;ng, th&ocirc;ng tin li&ecirc;n hệ. Điều n&agrave;y sẽ gi&uacute;p kh&aacute;ch h&agrave;ng cảm thấy tin tưởng khi mua h&agrave;ng tr&ecirc;n website của bạn.</p>\r\n\r\n<p>Một v&agrave;i gợi &yacute; cho nội dung trang Giới thiệu:</p>\r\n\r\n<ul>\r\n	<li>Bạn l&agrave; ai</li>\r\n	<li>Gi&aacute; trị kinh doanh của bạn l&agrave; g&igrave;</li>\r\n	<li>Địa chỉ cửa h&agrave;ng</li>\r\n	<li>Bạn đ&atilde; kinh doanh trong ng&agrave;nh h&agrave;ng n&agrave;y bao l&acirc;u rồi</li>\r\n	<li>Bạn kinh doanh ng&agrave;nh h&agrave;ng online được bao l&acirc;u</li>\r\n	<li>Đội ngũ của bạn gồm những ai</li>\r\n	<li>Th&ocirc;ng tin li&ecirc;n hệ</li>\r\n	<li>Li&ecirc;n kết đến c&aacute;c trang mạng x&atilde; hội (Twitter, Facebook)</li>\r\n</ul>', NULL, NULL, NULL, 1438, '2019-08-14 09:43:21', '2022-07-26 00:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanhsanpham`
--

CREATE TABLE `hinhanhsanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hinhanhsanpham` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hoten` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dienthoai` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tongtien` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghichu` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotrokhachhang`
--

CREATE TABLE `hotrokhachhang` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `code` text DEFAULT NULL,
  `noidungbaiviet` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `headings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotrokhachhang`
--

INSERT INTO `hotrokhachhang` (`id`, `name`, `code`, `noidungbaiviet`, `title`, `description`, `headings`, `created_at`, `updated_at`) VALUES
(1, 'Chương trình khuyến mãi', 'chuong-trinh-khuyen-mai', '<p>Dữ liệu đang được cập nhật ...</p>', NULL, NULL, NULL, '2020-05-08 09:00:11', '2020-05-08 09:00:43'),
(2, 'Chính sách vận chuyển, giao nhận', 'chinh-sach-van-chuyen-giao-nhan', '<p>Dữ liệu đang được cập nhật ...</p>', NULL, NULL, NULL, '2020-05-08 09:00:54', '2020-05-08 09:00:54'),
(3, 'Hướng dẫn order hàng', 'huong-dan-order-hang', '<p>Dữ liệu đang được cập nhật ...</p>', NULL, NULL, NULL, '2020-05-08 09:01:13', '2020-07-22 01:55:07'),
(4, 'Thanh toán tiền mặt', 'thanh-toan-tien-mat', '<p>Dữ liệu đang được cập nhật ...</p>', NULL, NULL, NULL, '2020-05-08 09:01:44', '2020-07-22 02:34:57'),
(5, 'Thanh toán chuyển khoản', 'thanh-toan-chuyen-khoan', '<p>Thanh to&aacute;n trực tuyến l&agrave; g&igrave;? Thanh to&aacute;n online l&agrave; g&igrave;? Tuấn Hưng&nbsp;xin được c&ugrave;ng với bạn đọc đi t&igrave;m hiểu về thanh to&aacute;n trực tuyến, thanh to&aacute;n online. Mời bạn đọc c&ugrave;ng tham khảo chi tiết b&agrave;i viết dưới đ&acirc;y để c&oacute; thể hiểu r&otilde; hơn về vấn đề n&agrave;y.</p>\r\n\r\n<h3><span style=\"font-size:20px\"><strong>Thanh to&aacute;n trực tuyến, thanh to&aacute;n online l&agrave; g&igrave;?</strong></span></h3>\r\n\r\n<p>Hiểu đơn giản, thanh to&aacute;n trực tuyến l&agrave; dịch vụ trung gian gi&uacute;p bạn chuyển tiền thật từ t&agrave;i khoản ng&acirc;n h&agrave;ng th&agrave;nh 1 loại tiền ảo tr&ecirc;n mạng nhưng vẫn c&oacute; khả năng sử dụng như tiền thật để mua sắm v&agrave; thanh to&aacute;n c&aacute;c dịch vụ, sản phẩm được b&aacute;n online. C&aacute;c c&aacute; nh&acirc;n, tổ chức d&ugrave;ng tiền ảo n&agrave;y để giao dịch tr&ecirc;n mạng với nhau rồi sau đ&oacute; lại chuyển ngược tiền ảo n&agrave;y th&agrave;nh tiền thật trong t&agrave;i khoản ng&acirc;n h&agrave;ng để sử dụng với nhiều mục đ&iacute;ch kh&aacute;c nhau. Đ&oacute; gọi l&agrave; thanh to&aacute;n trực tuyến, tuy nhi&ecirc;n việc thanh to&aacute;n trực tuyến kh&ocirc;ng chỉ đơn giản l&agrave; chuyển tiền thật th&agrave;nh tiền ảo, m&agrave; ch&iacute;nh x&aacute;c hơn, đ&oacute; l&agrave; d&ugrave;ng tiền ảo để mua sắm Online, mua sắm trực tuyến hay thanh to&aacute;n trực tuyến thẻ điện thoại l&agrave; v&iacute; dụ đơn giản điển h&igrave;nh.</p>', NULL, NULL, NULL, '2020-05-08 09:06:17', '2020-10-07 02:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_13_171846_create_danhmucbaiviet_table', 2),
(5, '2019_08_13_171943_create_baiviet_table', 2),
(6, '2019_08_13_172025_create_cauhinh_table', 2),
(7, '2019_08_13_172042_create_cauhinhseo_table', 2),
(8, '2019_08_13_172106_create_gioithieu_table', 2),
(9, '2019_08_13_172737_create_slider_table', 2),
(11, '2019_08_17_092557_create_thongtinlienhe_table', 4),
(14, '2019_08_19_105949_create_sanpham_table', 5),
(17, '2019_10_15_094610_create_banner_table', 7),
(22, '2019_11_04_163021_create_danhmucsanpham_table', 9),
(23, '2019_11_05_133553_create_footer_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anhdaidien` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `giasanpham` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `motasanpham` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidungsanpham` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmucsanpham_id` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `headings` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_page` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `code`, `anhdaidien`, `giasanpham`, `status`, `motasanpham`, `noidungsanpham`, `danhmucsanpham_id`, `title`, `description`, `headings`, `count_page`, `created_at`, `updated_at`) VALUES
(332, 'Bể cá cảnh mẫu số 1', 'be-ca-canh-mau-so-1', 'vH4r_be-ca-canh-1.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:40:04', '2021-12-13 07:45:52'),
(333, 'Bể cá cảnh mẫu số 2', 'be-ca-canh-mau-so-2', 'LYJg_be-ca-canh-2.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:40:16', '2021-12-13 07:45:48'),
(334, 'Bể cá cảnh mẫu số 3', 'be-ca-canh-mau-so-3', 'FNQq_be-ca-canh-3.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:40:25', '2021-12-13 07:45:45'),
(335, 'Bể cá cảnh mẫu số 4', 'be-ca-canh-mau-so-4', 'o1eC_be-ca-canh-4.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:40:33', '2021-12-13 07:45:42'),
(336, 'Bể cá cảnh mẫu số 5', 'be-ca-canh-mau-so-5', '8wWf_be-ca-canh-5.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:40:44', '2021-12-13 07:45:39'),
(337, 'Bể cá cảnh mẫu số 6', 'be-ca-canh-mau-so-6', 'iKNI_be-ca-canh-6.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:40:53', '2021-12-13 07:45:35'),
(338, 'Bể cá cảnh mẫu số 7', 'be-ca-canh-mau-so-7', 'Fp7L_be-ca-canh-7.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:41:02', '2021-12-13 07:45:31'),
(339, 'Bể cá cảnh mẫu số 8', 'be-ca-canh-mau-so-8', 'Y3R7_be-ca-canh-8.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:41:10', '2021-12-13 07:45:29'),
(340, 'Bể cá cảnh mẫu số 9', 'be-ca-canh-mau-so-9', '3AVY_be-ca-canh-9.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:41:17', '2021-12-13 07:45:25'),
(341, 'Bể cá cảnh mẫu số 10', 'be-ca-canh-mau-so-10', 'WfX4_be-ca-canh-10.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:41:27', '2021-12-13 07:45:22'),
(342, 'Bể cá cảnh mẫu số 11', 'be-ca-canh-mau-so-11', 'Ojog_be-ca-canh-11.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:41:35', '2021-12-13 07:45:19'),
(343, 'Bể cá cảnh mẫu số 12', 'be-ca-canh-mau-so-12', 'rOMw_be-ca-canh-12.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:41:42', '2021-12-13 09:51:27'),
(344, 'Bể cá cảnh mẫu số 13', 'be-ca-canh-mau-so-13', '6Jpy_be-ca-canh-13.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:41:52', '2021-12-13 07:45:12'),
(345, 'Bể cá cảnh mẫu số 14', 'be-ca-canh-mau-so-14', '0w6t_be-ca-canh-14.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:42:08', '2021-12-13 07:42:08'),
(346, 'Bể cá cảnh mẫu số 15', 'be-ca-canh-mau-so-15', 'fmmv_be-ca-canh-15.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:42:21', '2021-12-13 07:42:21'),
(347, 'Bể cá cảnh mẫu số 16', 'be-ca-canh-mau-so-16', 'mkrl_be-ca-canh-16.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:42:33', '2021-12-13 07:42:33'),
(348, 'Bể cá cảnh mẫu số 17', 'be-ca-canh-mau-so-17', 'z6PX_be-ca-canh-17.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:42:44', '2021-12-13 07:42:44'),
(349, 'Bể cá cảnh mẫu số 18', 'be-ca-canh-mau-so-18', 'Sju4_be-ca-canh-18.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:42:54', '2021-12-13 07:42:54'),
(350, 'Bể cá cảnh mẫu số 19', 'be-ca-canh-mau-so-19', 'YXOp_be-ca-canh-19.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:43:03', '2021-12-13 07:43:03'),
(351, 'Bể cá cảnh mẫu số 20', 'be-ca-canh-mau-so-20', 'Q07Z_be-ca-canh-20.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:43:14', '2021-12-13 07:43:14'),
(352, 'Bể cá cảnh mẫu số 21', 'be-ca-canh-mau-so-21', 'eAPZ_be-ca-canh-21.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:43:26', '2021-12-13 07:43:26'),
(353, 'Bể cá cảnh mẫu số 22', 'be-ca-canh-mau-so-22', 'DZOs_be-ca-canh-22.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:43:37', '2021-12-13 07:43:37'),
(354, 'Bể cá cảnh mẫu số 23', 'be-ca-canh-mau-so-23', 'YPSt_be-ca-canh-23.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:43:46', '2021-12-13 07:43:46'),
(355, 'Bể cá cảnh mẫu số 24', 'be-ca-canh-mau-so-24', '8K3r_be-ca-canh-24.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:43:55', '2021-12-13 07:43:55'),
(356, 'Bể cá cảnh mẫu số 25', 'be-ca-canh-mau-so-25', 'pdGw_be-ca-canh-25.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:44:03', '2021-12-13 07:44:03'),
(357, 'Bể cá cảnh mẫu số 26', 'be-ca-canh-mau-so-26', 'NfaU_be-ca-canh-26.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:44:12', '2021-12-13 07:44:12'),
(358, 'Bể cá cảnh mẫu số 27', 'be-ca-canh-mau-so-27', 'JXgJ_be-ca-canh-27.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:44:21', '2021-12-13 07:44:21'),
(359, 'Bể cá cảnh mẫu số 28', 'be-ca-canh-mau-so-28', '8ZXu_be-ca-canh-28.jpg', NULL, 1, NULL, NULL, 217, NULL, NULL, NULL, 0, '2021-12-13 07:44:33', '2021-12-13 07:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anhdaidien` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkbaiviet` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `anhdaidien`, `linkbaiviet`, `created_at`, `updated_at`) VALUES
(54, 'IrXz_banner-1.jpg', NULL, '2022-07-26 00:03:13', '2022-07-26 00:03:13'),
(55, 'S6OS_banner-2.jpg', NULL, '2022-07-26 00:03:17', '2022-07-26 00:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(38, NULL, 'info@gmail.com', 1, NULL, '$2y$10$7Ge.je2eDW7EZJQCqdNW7O./U0/t3N9JaukJ4JZ1jGuBhFZDTnCr6', NULL, NULL, '2020-05-05 10:08:16'),
(45, NULL, 'quantri@gmail.com', 1, NULL, '$2y$10$IqPuYSax/yCbEO8cctNZ5e9fFdpWkFIWxTUSBfVeVS/T5V91HLJQi', NULL, '2021-07-08 04:03:29', '2021-12-13 09:39:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cauhinh`
--
ALTER TABLE `cauhinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cauhinhseo`
--
ALTER TABLE `cauhinhseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinhanhsanpham`
--
ALTER TABLE `hinhanhsanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotrokhachhang`
--
ALTER TABLE `hotrokhachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `cauhinh`
--
ALTER TABLE `cauhinh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cauhinhseo`
--
ALTER TABLE `cauhinhseo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `danhmucbaiviet`
--
ALTER TABLE `danhmucbaiviet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `danhmucsanpham`
--
ALTER TABLE `danhmucsanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hinhanhsanpham`
--
ALTER TABLE `hinhanhsanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `hotrokhachhang`
--
ALTER TABLE `hotrokhachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
