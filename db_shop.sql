-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 04:09 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'VÒNG TAY BẠC', 'vong-tay-bac', 2, 10, '0', '2019-05-22 16:15:39', '4', '2023-05-22 12:42:41', '9', 1, 1),
(2, 'HOA TAI BẠC', 'hoa-tai-bac', 2, 10, '0', '2019-05-22 16:13:24', '4', '2023-05-22 13:16:46', '9', 1, 1),
(3, 'VÒNG CỔ VÀNG', 'vong-co-vang', 2, 11, '0', '2019-05-22 16:09:41', '4', '2023-05-22 12:43:07', '9', 1, 1),
(4, 'LẮC TAY VÀNG', 'lac-tay-vang', 2, 11, '1', '2019-05-23 21:33:25', '1', '2023-05-22 12:42:29', '9', 1, 1),
(5, 'LẮC CHÂN VÀNG', 'lac-chan-vang', 2, 11, '0', '2019-05-23 21:33:41', '1', '2023-05-22 12:42:12', '9', 1, 1),
(6, 'DÂY CHUYỀN BẠC', 'day-chuyen-bac', 2, 10, '1', '2019-06-03 21:38:28', '1', '2023-05-22 12:41:43', '9', 1, 1),
(7, 'NHẪN VÀNG', 'nhan-vang', 2, 11, '1', '2019-06-03 21:39:01', '1', '2023-05-22 12:46:41', '9', 1, 1),
(8, 'KIỀNG', 'kieng', 2, 11, '2', '2019-06-03 21:39:48', '1', '2023-05-22 12:40:54', '9', 1, 1),
(9, 'KIM CƯƠNG', 'kim-cuong', 1, 0, '0', '2019-06-03 21:40:38', '1', '2023-05-22 12:40:24', '9', 1, 1),
(10, 'BẠC', 'bac', 1, 0, '2', '2019-06-03 22:19:53', '1', '2023-05-22 12:40:44', '9', 1, 1),
(11, 'VÀNG', 'vang', 1, 0, '1', '2019-06-03 22:37:59', '1', '2023-05-22 12:40:35', '9', 1, 1),
(12, 'Test', 'test', 3, 5, '', '2019-06-11 23:02:48', '4', '2019-06-11 23:02:48', '4', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'kim.cuong.2023@gmail.com', '123456', 'duythai11082000@gmail.com', '30000', 'Web site bán hàng Demo', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `trash` int(11) NOT NULL DEFAULT '1',
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(11, 'Nhận xét về hàng', '0966234475', 'duythai11082000@gmail.com', 'hàng mẫu mã đẹp, chuẩn giá', '2023/5/16', 1, 1, 'Phạm Phan Hồng Thái'),
(12, 'Chất lượng sản phẩm', '0362000000', 'quaduong@gmail.com', 'Chất lượng sản phẩm rất tốt', '2023/5/16', 0, 1, 'Người qua đường'),
(13, 'phản hồi sản phẩm', '0101010101', 'nguoidungduong@gmail.com', 'Mẫu mã đẹp, chất lượng tiêu chuẩn', '2023/5/16', 0, 1, 'Người đứng đường'),
(14, 'fgghhggh', '0966234475', 'duythai11082000@gmail.com', 'cgfchjjj', '2023/5/22', 1, 1, 'Phạm Phan Hồng Thái'),
(15, 'Lắc chân vàng', '0966234475', 'duythai11082000@gmail.com', 'dsgg', '2023/5/22', 1, 1, 'Phạm Phan Hồng Thái'),
(16, 'gfashhhddd', '0966234475', 'duythai11082000@gmail.com', 'yaysdasidasdsadsa', '2023/5/22', 1, 1, 'Phạm Phan Hồng Thái');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(4, 'Bạch kim là gì? bạch kim và vàng trắng có giống và khác nhau?', 'bach-kim-la-gi-bach-kim-va-vang-trang-co-giong-va-khac-nhau', 'Bạch kim là gì? Từ xa xưa kim loại này được xem là thứ vô cùng quý hiếm và chỉ những quý tộc mới được đeo trang sức làm từ kim loại này. Nhưng ngày nay, bạch kim đã dần phổ biến và được đông đảo người quan tâm nhiều hơn. Hãy cùng nhau tìm hiểu xem bạch kim là gì và tại sao nó lại “HOT” đến vậy ngay trong bài viết nhé!', '<p><img src="https://tintrangsuc.com/wp-content/uploads/2023/01/trang-suc-bach-kim-bi-xin-mau-sau-mot-thoi-gian.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạch kim hay c&ograve;n được gọi l&agrave;&nbsp;<strong>Platin</strong>,<strong>&nbsp;Platinum</strong>&nbsp;l&agrave; một nguy&ecirc;n tố h&oacute;a học c&oacute; trong bảng tuần ho&agrave;n c&oacute; k&yacute; hiệu l&agrave; Pt. Đ&acirc;y l&agrave; một trong những nguy&ecirc;n tố hiếm nhất trong lớp vỏ Tr&aacute;i Đất với mật độ ph&acirc;n bố trung b&igrave;nh khoảng&nbsp;<strong>0,005mg/ kg</strong>,<strong>&nbsp;60%</strong>&nbsp;sản lượng<strong>&nbsp;bạch kim</strong>&nbsp;đến từ&nbsp;<strong>Nam Phi</strong>.</p>\r\n\r\n<p>T&ecirc;n gọi Platin xuất ph&aacute;t từ c&acirc;u thuật ngữ &ldquo;<strong>Platina Del Pinto</strong>&rdquo; của&nbsp;<strong>T&acirc;y Ban Nha</strong>, thuật ngữ n&agrave;y mang &yacute; nghĩa ca ngợi vẻ đẹp &oacute;ng ả, lung linh hơi sắc bạc của d&ograve;ng s&ocirc;ng Pino. Một t&ecirc;n gọi ho&agrave;n hảo cho cả về mặt qu&yacute; hiếm lẫn m&agrave;u sắc.</p>\r\n\r\n<p>Thời xưa,&nbsp;<a href="https://vi.wikipedia.org/wiki/Platin">Platin</a>&nbsp;thường được t&igrave;m thấy tại c&aacute;c bồi t&iacute;ch tự nhi&ecirc;n của một số con s&ocirc;ng. Được ch&iacute;nh người Nam Mỹ thời kỳ tiền Colombus ph&aacute;t hiện v&agrave; đưa v&agrave;o sản xuất.</p>\r\n\r\n<p>Mặc d&ugrave; kim loại bạch kim đ&atilde; được v&agrave;o c&aacute;c bản thảo nghi&ecirc;n cứu tại Ch&acirc;u &Acirc;u từ thế kỷ XVI. Nhưng m&atilde;i đến năm 1748 mới được &ocirc;ng Antonio De Ulloa c&ocirc;ng bố v&agrave; trở th&agrave;nh t&acirc;m điểm của c&aacute;c cuộc nghi&ecirc;n cứu s&acirc;u hơn. Nhờ vậy dần dần con người mới biết đến&nbsp;<strong>Platinum</strong>&nbsp;l&agrave; g&igrave;,<strong>&nbsp;pt</strong>&nbsp;l&agrave; kim loại g&igrave;.</p>\r\n\r\n<h3>Đặc t&iacute;nh của bạch kim?</h3>\r\n\r\n<p>Kim loại bạch kim (k&yacute; hiệu Pt, số hiệu nguy&ecirc;n tử 78) kh&ocirc;ng chỉ được biết đến l&agrave; một trong những kim loại qu&yacute; hiếm nhất thế giới m&agrave; n&oacute; c&ograve;n được biết đến với c&aacute;c danh xưng mỹ miều như &ldquo;Nữ ho&agrave;ng kim loại&rdquo;, &ldquo;&Ocirc;ng vua kim loại&rdquo;,..</p>\r\n\r\n<p>Sở dĩ c&oacute; những t&ecirc;n gọi đấy l&agrave; do bạch kim c&oacute; t&iacute;nh ứng dụng cực kỳ cao trong đời sống h&agrave;ng ng&agrave;y bởi c&aacute;c đặc t&iacute;nh ưu việt như:</p>\r\n\r\n<ul>\r\n	<li><strong>Độ cứng</strong>&nbsp;&ndash; Nằm trong khoảng từ&nbsp;<strong>4</strong>&nbsp;đến&nbsp;<strong>4,5</strong>&nbsp;tr&ecirc;n thang điểm&nbsp;<strong>Mohs</strong>. Mặc d&ugrave; kh&ocirc;ng phải qu&aacute; cao nhưng vẫn cứng hơn so với v&agrave;ng v&agrave; bạc.</li>\r\n	<li><strong>Độ dẻo</strong>&nbsp;&ndash; Khi ở dạng tinh khiết, bạch kim v&ocirc; c&ugrave;ng dẻo v&agrave; dễ uốn cong m&agrave; kh&ocirc;ng bị g&atilde;y.</li>\r\n	<li><strong>Độ b&oacute;ng</strong>&nbsp;&ndash; Bản th&acirc;n bạch kim c&oacute; vẻ ngo&agrave;i s&aacute;ng, lấp l&aacute;nh v&agrave; b&oacute;ng tự nhi&ecirc;n l&agrave; nhờ độ phản xạ &aacute;nh s&aacute;ng rất tốt.</li>\r\n	<li><strong>T&iacute;nh chất h&oacute;a học</strong>&nbsp;&ndash; Với c&aacute;c chất Axit như<strong>&nbsp;Axit Clohidric</strong>&nbsp;hay<strong>&nbsp;Axit Nitric</strong>&nbsp;th&igrave; kim loại pt kh&ocirc;ng bị h&ograve;a toan m&agrave; c&ograve;n c&oacute; khả năng chống ăn m&ograve;n cao.</li>\r\n</ul>\r\n\r\n<h3>Trang sức bạch kim c&oacute; g&acirc;y dị ứng hay kh&ocirc;ng?</h3>\r\n\r\n<p>Theo nhiều b&agrave;i b&aacute;o v&agrave; thống k&ecirc;, đa phần c&aacute;c kim loại dễ g&acirc;y ra dị ứng thường l&agrave;&nbsp;<strong>Niken</strong>,&nbsp;<strong>Coban</strong>,&nbsp;<strong>Crom</strong>,<strong>&nbsp;Đồng</strong>,<strong>&nbsp;Ch&igrave;</strong>&nbsp;v&agrave;&nbsp;<strong>Sắt</strong>. Trong đ&oacute; Niken chiếm tỷ lệ cao nhất, khoảng 15 &ndash; 17% ở nữ giới v&agrave; 3% ở nam giới. Ngược lại c&aacute;c kim loại như bạch kim, v&agrave;ng, bạc nguy&ecirc;n chất, Paladi &iacute;t g&acirc;y ra dị ứng hơn rất nhiều.</p>\r\n\r\n<p>B&ecirc;n trong c&aacute;c trang sức bạch kim thường chứa đến 95% Platin nguy&ecirc;n chất v&agrave; c&aacute;c kim loại thường được sử dụng c&ugrave;ng cũng kh&ocirc;ng thuộc c&aacute;c kim loại dễ g&acirc;y dị ứng b&ecirc;n tr&ecirc;n. C&ugrave;ng với đặc t&iacute;nh &iacute;t bị hao m&ograve;n th&igrave; c&aacute;c trang sức bằng bạch kim lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu để đeo h&agrave;ng ng&agrave;y.</p>\r\n\r\n<h3>Trang sức bạch kim c&oacute; bị xỉn m&agrave;u hay kh&ocirc;ng?</h3>\r\n\r\n<p><strong>C&acirc;u trả lời l&agrave; c&oacute;</strong>, bất kỳ trang sức n&agrave;o d&ugrave; tốt đến mấy th&igrave; sau một thời gian sử dụng đều c&oacute; hiện tượng xỉn m&agrave;u đen. Bạn n&ecirc;n nhớ rằng, trang sức l&agrave;m từ bạch kim kh&ocirc;ng đồng nghĩa l&agrave; trang sức đấy sẽ 100% bạch kim m&agrave; l&agrave; hỗn hợp bạch kim với một kim loại kh&aacute;c như v&agrave;ng chẳng hạn.</p>\r\n\r\n<p>Nhưng về cơ bản, hầu hết c&aacute;c chất kết hợp với bạch kim v&agrave; cả bản th&acirc;n&nbsp;<strong>Platin</strong>&nbsp;đều c&oacute; đặc t&iacute;nh v&ocirc; c&ugrave;ng tốt. Gần như trơ về mặt h&oacute;a học v&agrave; độ bền v&ocirc; c&ugrave;ng cao. N&ecirc;n d&ugrave; c&oacute; xỉn m&agrave;u một ch&uacute;t đi chăng nữa th&igrave; cũng rất dễ đ&aacute;nh b&oacute;ng lại như mới. Đ&oacute; l&agrave; l&yacute; do m&agrave; c&aacute;c sản phẩm trang sức từ bạch kim rất được ưa chuộng tr&ecirc;n thị trường.</p>\r\n\r\n<h3>C&aacute;c hợp kim Platinum?</h3>\r\n\r\n<p>Như đ&atilde; n&oacute;i ở tr&ecirc;n,&nbsp;<strong>Platin</strong>&nbsp;bản chất l&agrave; một kim loại mềm chỉ với độ cứng ở mức<strong>&nbsp;4 &ndash; 4.5</strong>&nbsp;tr&ecirc;n thang điểm&nbsp;<strong>Mohs</strong>. N&ecirc;n khi ứng dụng v&agrave;o đời sống, hợp kim Platin phổ biến hơn l&agrave; Platin nguy&ecirc;n chất. Điều n&agrave;y gi&uacute;p củng cố được độ cứng c&aacute;c tạo vật được l&agrave;m ra.</p>\r\n\r\n<p>Một số hỗn hợp kim loại Platin c&oacute; thể kể đến như:</p>\r\n\r\n<ul>\r\n	<li><strong>90% Platin + 10% Iridi</strong>.</li>\r\n	<li><strong>80% Platin + 20% Paladi.</strong></li>\r\n	<li><strong>75% Platin + 25% Coban.</strong></li>\r\n</ul>\r\n\r\n<p>Hầu hết c&aacute;c hỗn hợp kim loại Platin đều chứa&nbsp;<strong>Platinum</strong>&nbsp;v&agrave;&nbsp;<strong>Iridium</strong>. Hai kim loại n&agrave;y c&oacute; độ cứng cao hơn&nbsp;<strong>Platinum</strong>&nbsp;khoảng 6.5, thường được sử dụng giống như một ch&uacute;t phụ gia gi&uacute;p tăng độ cứng cho c&aacute;c hỗn hợp kim loại Platin.</p>\r\n\r\n<p>C&aacute;c kim loại như Paladi, Rutheni, Iridi đều thuộc nh&oacute;m Platin n&ecirc;n ch&uacute;ng đều c&oacute; khả năng kh&ocirc;ng phản ứng với hầu hết c&aacute;c h&oacute;a chất cũng như ch&ocirc;ng ăn m&ograve;n cao.</p>\r\n', 'banner2.png', '2023-03-26 23:18:02', '1', '2023-05-22 12:24:22', '9', 1, 1),
(6, 'Các loại kim cương hiện nay dưới góc nhìn của chuyên gia', 'cac-loai-kim-cuong-hien-nay-duoi-goc-nhin-cua-chuyen-gia', 'Ngày nay, nhờ sở hữu vẻ đẹp lộng lẫy và giá trị kinh tế cao nên kim cương trở thành món đồ mà ai ai cũng muốn có. Vậy kim cương là gì? Cách phân biệt các loại kim cương trên thị trường hiện nay là gì? Hãy cùng theo dõi bài viết dưới đây để có được câu trả lời bạn nhé!', '<p>&nbsp;</p>\r\n\r\n<p><img src="https://tintrangsuc.com/wp-content/uploads/2023/02/kim-cuong-la-gi.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mặc d&ugrave;, kh&ocirc;ng c&ograve;n xa lạ nhưng chắc hẳn nhiều người chưa biết&nbsp;<a href="https://en.wiktionary.org/wiki/diamond">kim cương</a>&nbsp;v&agrave; cấu tạo của n&oacute; l&agrave; g&igrave;. Thực chất, kim cương l&agrave; một loại kho&aacute;ng sản với những t&iacute;nh chất vật l&yacute; v&ocirc; c&ugrave;ng ho&agrave;n hảo. Ngo&agrave;i ra, n&oacute; tồn tại dưới dạng biến thể của Cacbon v&agrave; dạng than ch&igrave;.</p>\r\n\r\n<p>Ngo&agrave;i ra, t&ecirc;n &ldquo;kim cương&rdquo; c&oacute; nguồn gốc từ tiếng H&aacute;n. V&agrave; n&oacute; c&oacute; nghĩa l&agrave; kim loại cứng. Mặt kh&aacute;c, ở v&ugrave;ng Hy Lạp th&igrave; kim cương được gọi với c&aacute;i t&ecirc;n l&agrave; Admas. N&oacute; c&oacute; nghĩa l&agrave; kh&ocirc;ng thể ph&aacute; hủy.</p>\r\n\r\n<p>Nhờ v&agrave;o đặc t&iacute;nh cứng c&aacute;p n&agrave;y, m&agrave; kim cương được người cổ đại sưu tầm kh&aacute; phổ biến. Ngo&agrave;i ra, n&oacute; được sử dụng để chế tạo mũi khoan. Kh&ocirc;ng chỉ thế, đ&acirc;y cũng được xem l&agrave; kim loại cứng nhất thế giới. Đặc biệt, kh&ocirc;ng một thứ g&igrave; cắt được kim cương, ngoại trừ ch&iacute;nh n&oacute;.</p>\r\n\r\n<p>Hiện nay, trọng lượng của kim cương được t&iacute;nh theo đơn vị carat. Hầu như, cứ&nbsp;<strong>1 carat</strong>&nbsp;th&igrave; bằng&nbsp;<strong>200 miligram</strong>. Do đ&oacute;, vi&ecirc;n kim cương c&agrave;ng to v&agrave; c&agrave;ng nặng th&igrave; gi&aacute; trị c&agrave;ng lớn. Ch&iacute;nh v&igrave; thế, để sở hữu 1 carat kim cương th&igrave; bạn phải bỏ ra khoảng<strong>&nbsp;6.500 USD</strong>.</p>\r\n\r\n<p>Hầu như, kim cương l&agrave; kim loại c&oacute; khả năng t&aacute;n sắc kh&aacute; tốt. Việc n&agrave;y, khiến cho những tia s&aacute;ng trắng chiếu v&agrave;o trở th&agrave;nh những tia s&aacute;ng c&oacute; m&agrave;u sắc kh&aacute;c nhau. Gi&uacute;p tạo n&ecirc;n vẻ đẹp lấp l&aacute;nh vốn c&oacute; của ch&uacute;ng.</p>\r\n\r\n<p>Ngo&agrave;i ra, kim cương c&oacute; khả năng t&aacute;n sắc tốt do c&oacute; chiết suất biến đổi nhanh với bước s&oacute;ng &aacute;nh s&aacute;ng. Ch&iacute;nh v&igrave; vậy, điều n&agrave;y gi&uacute;p kim cương biến những tia s&aacute;ng trắng th&agrave;nh những m&agrave;u sắc đ&atilde; tạo n&ecirc;n sức hấp dẫn ri&ecirc;ng của kim cương khi l&agrave; một m&oacute;n trang sức.</p>\r\n\r\n<p>Mặt kh&aacute;c, chiết suất cao của kim cương (khoảng 2,417), lớn hơn so 1,5 của c&aacute;c thủy tinh th&ocirc;ng thường. N&oacute; dễ l&agrave;m xuất hiện sự phản xạ to&agrave;n phần tr&ecirc;n mặt trong của kim cương.</p>\r\n\r\n<p>Đặc biệt, nổi bật ở độ lấp l&aacute;nh của vi&ecirc;n kim cương. N&oacute; đặc trưng cho c&aacute;ch &aacute;nh s&aacute;ng t&aacute;c động l&ecirc;n một vi&ecirc;n kim cương v&agrave; thường được mi&ecirc;u tả l&agrave; Adamantine.</p>\r\n\r\n<p>Hầu hết, c&aacute;c vi&ecirc;n kim cương ph&aacute;t xạ &aacute;nh s&aacute;ng v&agrave;ng, xanh trắng hay xanh l&aacute; c&acirc;y dưới t&aacute;c dụng của tia X &aacute;nh s&aacute;ng. N&oacute; được d&ugrave;ng trong khai mỏ để t&aacute;ch ri&ecirc;ng kim cương c&oacute; khả năng ph&aacute;t s&aacute;ng, những vi&ecirc;n đ&aacute; b&igrave;nh thường kh&aacute;c kh&ocirc;ng c&oacute; khả năng n&agrave;y.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Artboard_45_copy.png', '2023-04-26 17:22:04', '1', '2023-05-22 12:23:45', '9', 1, 1),
(7, 'Kiến thức về kim cương', 'kien-thuc-ve-kim-cuong', 'Hãy cùng nhau tìm hiểu kiến thức về kim cương nào', '<h1>Kiến Thức Về Kim Cương</h1>\r\n\r\n<p>Để c&oacute; thể lựa chọn được một vi&ecirc;n kim cương &ldquo; sang chảnh&rdquo; theo đ&uacute;ng nghĩa b&oacute;ng của n&oacute; th&igrave; người ti&ecirc;u d&ugrave;ng, đặc biệt l&agrave; c&aacute;c &ldquo;đại gia&rdquo; chơi kim cương nổi tiếng cũng đ&atilde; phải trải qua qu&aacute; tr&igrave;nh t&igrave;m hiểu một c&aacute;ch kỹ lưỡng để c&oacute; thể &ldquo;đầu tư&rdquo; v&agrave;o kim cương. Do đ&oacute;, để định gi&aacute; được gi&aacute; trị của một vi&ecirc;n kim cương, trước hết ch&uacute;ng ta n&ecirc;n hiểu về ti&ecirc;u chuẩn 4C, kế đến l&agrave; Rapaport Diamond Price List (Bảng gi&aacute; kim cương Rapaport). B&agrave;i viết sau đ&acirc;y sẽ mang lại cho người đọc kiến thức về c&aacute;ch định gi&aacute; kim cương tr&ecirc;n thị trường, nơi m&agrave; những c&aacute;i bẫy về&rdquo; kim cương thật giả&rdquo; cũng như t&igrave;nh trạng&rdquo; gi&aacute; tr&ecirc;n trời&rdquo; đang ng&agrave;y một gia tăng.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>NH&Acirc;N TỐ ĐỊNH GI&Aacute; KIM CƯƠNG</h2>\r\n\r\n<p>Kim cương được định gi&aacute; một c&aacute;ch cơ bản dựa tr&ecirc;n ti&ecirc;u chuẩn 4C bao gồm:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Carat - Trọng lượng hoặc k&iacute;ch thước của vi&ecirc;n kim cương.</p>\r\n	</li>\r\n	<li>\r\n	<p>Color - M&agrave;u sắc của vi&ecirc;n kim cương</p>\r\n	</li>\r\n	<li>\r\n	<p>Clarity - Độ tinh khiết hay độ sạch của vi&ecirc;n kim cương hay c&ograve;n gọi l&agrave; sự vắng mặt của những tạp chất b&ecirc;n trong v&agrave; c&aacute;c khiếm khuyết b&ecirc;n ngo&agrave;i</p>\r\n	</li>\r\n	<li>\r\n	<p>Cut - Dạng cắt hay c&ograve;n gọi l&agrave; tỷ lệ v&agrave; g&oacute;c độ tương đối của c&aacute;c mặt gi&aacute;c tr&ecirc;n vi&ecirc;n kim cương</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ngo&agrave;i ra, đ&ocirc;i khi người ta c&ograve;n đ&aacute;nh gi&aacute; dựa tr&ecirc;n ti&ecirc;u chuẩn 5C: b&ecirc;n cạnh 4C kể tr&ecirc;n c&ograve;n c&oacute; &ldquo;Cost&rdquo; (gi&aacute; cả) hay 6C với &ldquo;Certification&rdquo; (Giấy kiểm định) hay thậm ch&iacute; l&agrave; &ldquo;Shape&rdquo; - H&igrave;nh dạng của vi&ecirc;n kim cương: tr&ograve;n, h&igrave;nh vu&ocirc;ng, h&igrave;nh chữ nhật, h&igrave;nh quả trứng, ...</p>\r\n\r\n<p>Để c&oacute; thể định gi&aacute; được một vi&ecirc;n kim cương, ti&ecirc;u ch&iacute; đầu ti&ecirc;n m&agrave; c&aacute;c nh&agrave; nhận định về kim cương cũng như những &ldquo;đại gia &ldquo; c&oacute; hiểu biết về kim cương đưa ra đ&oacute; l&agrave; 4 chữ C. Như đ&atilde; giới thiệu ở chuỗi b&agrave;i viết về &ldquo;Ph&acirc;n loại kim cương v&agrave; hướng dẫn c&aacute;ch bảo quản đ&uacute;ng c&aacute;ch&rdquo; ( xem th&ecirc;m tại dẫn link) th&igrave; 4 chữ C đại diện cho Trọng lượng (Carat), M&agrave;u sắc (Color), Độ tinh khiết (Clarity) v&agrave; Dạng cắt (Cut). V&igrave; l&yacute; do đ&oacute;, trước khi ch&uacute;ng ta đi v&agrave;o t&iacute;nh to&aacute;n, điều quan trọng nhất l&agrave; việc bạn phải nghi&ecirc;n cứu 4 chữ C của n&oacute;. Mỗi chữ &quot;C&quot; c&oacute; một vai tr&ograve; thiết yếu trong một vi&ecirc;n kim cương đẹp, sang v&agrave; qu&yacute; hiếm.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>TRỌNG LƯỢNG (CARAT) - NH&Acirc;N TỐ ĐỊNH GI&Aacute; ĐẦU TI&Ecirc;N</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="https://static.wixstatic.com/media/452282_8564f860e9fe496aade2c34fb0b82a92~mv2.png/v1/fill/w_925,h_254,al_c,lg_1,q_85,enc_auto/452282_8564f860e9fe496aade2c34fb0b82a92~mv2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Chữ C đầu ti&ecirc;n l&agrave; carat, một đơn vị trọng lượng. Người ta sử dụng carat để tham khảo k&iacute;ch thước của một vi&ecirc;n kim cương tuy nhi&ecirc;n điều n&agrave;y l&agrave; kh&ocirc;ng ch&iacute;nh x&aacute;c. Mặc d&ugrave; 2 carat th&igrave; lớn hơn 1 carat, nhưng vi&ecirc;n kim cương 2 carat kh&ocirc;ng c&oacute; trọng lượng gấp đ&ocirc;i vi&ecirc;n 1 carat v&agrave; vi&ecirc;n 3 carat kh&ocirc;ng phải trọng lượng gấp 3. V&igrave; vậy, bạn c&oacute; thể sử dụng n&oacute; như l&agrave; một dấu hiệu, nhưng k&iacute;ch thước thực tế chủ yếu dựa v&agrave;o qu&aacute; tr&igrave;nh vi&ecirc;n kim cương th&ocirc; được cắt bằng m&aacute;y cắt kim cương chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Carat l&agrave; một phần rất quan trọng khi định gi&aacute; kim cương v&igrave; n&oacute; biểu hiện cho sự hiếm c&oacute; của một vi&ecirc;n kim cương. Đa số c&aacute;c vi&ecirc;n kim cương t&igrave;m thấy hiện nay l&agrave; khoảng 1 carat, hầu hết kim cương được b&aacute;n như một m&oacute;n đồ trang sức th&igrave; dao động giữa 1 v&agrave; 2 carat. Những vi&ecirc;n kim cương c&oacute; k&iacute;ch thước c&agrave;ng lớn th&igrave; c&agrave;ng hiếm v&agrave; do đ&oacute; gi&aacute; của n&oacute; tăng. Điều n&agrave;y đặc biệt ch&iacute;nh x&aacute;c đối với những vi&ecirc;n kim cương m&agrave;u khi m&agrave; kim cương m&agrave;u 2 carat c&oacute; thể ngang bằng với một vi&ecirc;n kim cương kh&ocirc;ng m&agrave;u 10+ carat - do đ&oacute; tất cả phụ thuộc v&agrave;o ba chữ C c&ograve;n lại. Ngo&agrave;i ra, gi&aacute; trị kim cương kh&ocirc;ng tăng theo tỷ lệ với k&iacute;ch thước carat - một vi&ecirc;n kim cương 3 carat kh&ocirc;ng phải l&agrave; gấp ba lần gi&aacute; của một vi&ecirc;n kim cương 1 carat.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>M&Agrave;U SẮC (COLOR) - NH&Acirc;N TỐ ĐỊNH GI&Aacute; THỨ 2</h2>\r\n\r\n<p>Hầu hết c&aacute;c vi&ecirc;n kim cương được t&igrave;m thấy v&agrave; mua được ph&acirc;n loại như những vi&ecirc;n kim cương kh&ocirc;ng m&agrave;u. Khi ph&acirc;n loại chất lượng m&agrave;u sắc trong những vi&ecirc;n kim cương kh&ocirc;ng m&agrave;u, ch&uacute;ng ta thấy sự vắng mặt của m&agrave;u sắc. Kim cương c&agrave;ng trong suốt th&igrave; c&agrave;ng hiếm v&agrave; c&oacute; gi&aacute; trị v&agrave; gi&aacute; của n&oacute; c&agrave;ng cao. C&aacute;c nh&oacute;m trong ph&acirc;n loại m&agrave;u kh&ocirc;ng phản &aacute;nh c&aacute;ch tăng gi&aacute; kim cương. Nh&igrave;n chung, hầu hết mọi người sẽ mua những vi&ecirc;n kim cương trong nh&oacute;m G-H-I, nếu họ kh&ocirc;ng quan t&acirc;m nhiều đến với chất lượng b&ecirc;n trong của kim cương. Điều n&agrave;y chủ yếu li&ecirc;n quan đến gi&aacute; kim cương trong loại n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="https://static.wixstatic.com/media/452282_a80430abc51a4985af8caedefc07998e~mv2.png/v1/fill/w_724,h_396,al_c,lg_1,q_85,enc_auto/452282_a80430abc51a4985af8caedefc07998e~mv2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ảnh: <em>Bảng ph&acirc;n cấp m&agrave;u theo ti&ecirc;u chuẩn GIA</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đối với hầu hết c&aacute;c phần, bạn sẽ ho&agrave;n to&agrave;n kh&ocirc;ng nh&igrave;n thấy m&agrave;u v&agrave;ng trong nh&oacute;m G-H-I. Nhưng nếu bạn đang quan t&acirc;m đến việc c&oacute; một vi&ecirc;n kim cương ho&agrave;n to&agrave;n ho&agrave;n hảo, th&igrave; Saga khuy&ecirc;n bạn n&ecirc;n lựa chọn kim cương trong nh&oacute;m D-E-F. Nếu bạn đang dự t&iacute;nh mua kim cương như một khoản đầu tư, Saga khuy&ecirc;n bạn n&ecirc;n lựa chọn kim cương m&agrave;u D. Ch&iacute;nh điều n&agrave;y l&agrave; t&aacute;c nh&acirc;n khiến cho gi&aacute; kim cương tăng l&ecirc;n, thế nhưng h&atilde;y xem x&eacute;t th&ecirc;m những nh&acirc;n tố sau nữa.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>ĐỘ TINH KHIẾT (CLARITY) - NH&Acirc;N TỐ ĐỊNH GI&Aacute; THỨ 3</h2>\r\n\r\n<p>Nh&acirc;n tố cuối c&ugrave;ng trong 3 nh&acirc;n tố ch&iacute;nh m&agrave; quyết định n&ecirc;n gi&aacute; kim cương đ&oacute; l&agrave; độ sạch hay độ tinh khiết của kim cương. N&oacute; bao gồm cả những tạp chất b&ecirc;n trong v&agrave; khiếm khuyết b&ecirc;n ngo&agrave;i vi&ecirc;n kim cương từ c&aacute;c tinh thể, m&acirc;y, đốm trắng đục, hoặc bụi li ti nhỏ c&oacute; trong vi&ecirc;n kim cương.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="https://static.wixstatic.com/media/452282_a1b8685d129d460c89528a0f37d10e0c~mv2.png/v1/fill/w_599,h_506,al_c,lg_1,q_85,enc_auto/452282_a1b8685d129d460c89528a0f37d10e0c~mv2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ảnh: <em>Bảng ph&acirc;n cấp độ tinh khiết của kim cương</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Độ sạch (Clarity) đ&oacute;ng một vai tr&ograve; quan trọng trong việc định gi&aacute; kim cương. Người s&agrave;nh kim cương hay những người c&oacute; &yacute; định mua kim cương th&igrave; đều kh&ocirc;ng mong muốn c&oacute; bất kỳ tạp chất g&igrave; trong đ&oacute;. Đ&oacute; l&agrave; l&yacute; do tại sao m&agrave; hầu hết mọi người kh&ocirc;ng lựa chọn những vi&ecirc;n kim cương với độ sạch thấp hơn VS2. Những vi&ecirc;n kim cương với độ sạch từ I1 đến I3 kh&ocirc;ng c&ograve;n được sử dụng để l&agrave;m đồ nữ trang nữa v&igrave; thế m&agrave; n&oacute; kh&ocirc;ng c&ograve;n l&agrave; sự lựa chọn tốt cho những ai &ldquo;s&agrave;nh&rdquo; kim cương. Tuy nhi&ecirc;n, nếu bạn quan t&acirc;m đến việc mua kim cương như một khoản đầu tư, th&igrave; Saga khuy&ecirc;n bạn n&ecirc;n mua một vi&ecirc;n Flawless (ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; t&igrave; vết b&ecirc;n trong hay b&ecirc;n ngo&agrave;i). Lại một lần nữa, h&atilde;y xem x&eacute;t th&ecirc;m nh&acirc;n tố tiếp theo.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>DẠNG CẮT (CUT) - NH&Acirc;N TỐ ĐỊNH GI&Aacute; THỨ 4</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="https://static.wixstatic.com/media/452282_2f4c7ed8bac84166a94a3093671a0258~mv2.png/v1/fill/w_525,h_302,al_c,lg_1,q_85,enc_auto/452282_2f4c7ed8bac84166a94a3093671a0258~mv2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ảnh: <em>H&igrave;nh dạng của vi&ecirc;n kim cương</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng thấy dạng cắt kim cương được liệt k&ecirc; v&agrave;o danh s&aacute;ch gi&aacute; cả kim cương, tuy nhi&ecirc;n n&oacute; lại đ&oacute;ng một vai tr&ograve; quan trọng g&oacute;p phần tạo n&ecirc;n gi&aacute; trị của vi&ecirc;n kim cương. Khi một vi&ecirc;n kim cương được khai th&aacute;c, ch&uacute;ng ta gọi n&oacute; l&agrave; một vi&ecirc;n kim cương th&ocirc;. H&igrave;nh dạng của n&oacute; rất bất thường. Sau đ&oacute; những chiếc m&aacute;y cắt kim cương sẽ tiến h&agrave;nh ph&acirc;n t&iacute;ch vi&ecirc;n kim cương để đưa ra được phương ph&aacute;p tối ưu để cắt kim cương sao cho tối đa h&oacute;a năng suất v&agrave; sự ho&agrave;n hảo. Đ&oacute; l&agrave; khi chiều d&agrave;y mặt dưới được h&igrave;nh th&agrave;nh.</p>\r\n\r\n<p>Sau đ&oacute;, những vi&ecirc;n kim cương đ&atilde; được cắt gọt sẽ được đ&aacute;nh b&oacute;ng để l&agrave;m cho những mặt gi&aacute;c trở n&ecirc;n ho&agrave;n to&agrave;n ph&ugrave; hợp v&agrave; c&acirc;n đối. Nh&igrave;n chung th&igrave; qu&aacute; tr&igrave;nh m&agrave;i giũa n&agrave;y sẽ khiến cho vi&ecirc;n kim cương trở n&ecirc;n rạng rỡ, lấp l&aacute;nh. Việc m&agrave;i giũa vi&ecirc;n kim cương x&aacute;c định c&aacute;ch &aacute;nh s&aacute;ng đi v&agrave;o vi&ecirc;n kim cương v&agrave; phản chiếu ra ngo&agrave;i. Do đ&oacute;, nh&acirc;n tố cuối c&ugrave;ng n&agrave;y, độ s&aacute;ng của vi&ecirc;n kim cương, quyết định n&ecirc;n gi&aacute; trị của một vi&ecirc;n kim cương đặc biệt.</p>\r\n\r\n<h2>&nbsp;</h2>\r\n\r\n<h2>L&Agrave;M THẾ N&Agrave;O ĐỂ T&Iacute;NH GI&Aacute; KIM CƯƠNG?</h2>\r\n\r\n<p>Đ&oacute; l&agrave; c&acirc;u hỏi m&agrave; kh&ocirc;ng &iacute;t c&aacute;c doanh nh&acirc;n, hay những người muốn sở hữu những vi&ecirc;n kim cương c&oacute; gi&aacute; trị , hay kể cả những người s&agrave;nh kim cương đều đặt ra khi họ đang ph&acirc;n v&acirc;n bỏ một số tiền lớn để đầu tư, hoặc đơn giản chỉ để &ldquo;chơi&rdquo;.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; c&aacute;c bước đơn giản để t&iacute;nh gi&aacute; của một vi&ecirc;n kim cương, sẽ gi&uacute;p &iacute;ch cho bạn trong việc quyết định lựa chọn vi&ecirc;n kim cương theo sở th&iacute;ch m&agrave; vẫn ph&ugrave; hợp với t&uacute;i tiền của m&igrave;nh.</p>\r\n\r\n<p>Khi n&oacute;i về gi&aacute; th&igrave; tất cả kim cương được ph&acirc;n loại theo trọng lượng (carat), v&agrave; mỗi mức trọng lượng th&igrave; c&oacute; một mức gi&aacute; ri&ecirc;ng. Sau đ&oacute; n&oacute; được chia l&agrave;m 2 loại l&agrave; h&igrave;nh tr&ograve;n hoặc h&igrave;nh d&aacute;ng lạ mắt (bất cứ h&igrave;nh dạng kh&aacute;c). Nhưng bất kể kim cương bạn muốn mua l&agrave; h&igrave;nh tr&ograve;n hoặc h&igrave;nh d&aacute;ng lạ mắt, c&aacute;ch t&iacute;nh gi&aacute; kim cương với Danh s&aacute;ch gi&aacute; kim cương Rapaport l&agrave; giống hệt nhau.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>1. GI&Aacute; TR&Ecirc;N MỖI CARAT</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="https://static.wixstatic.com/media/452282_ef0d0591d5464bd5b0c0ed5b8cbb2007~mv2.png/v1/fill/w_875,h_490,al_c,lg_1,q_90,enc_auto/452282_ef0d0591d5464bd5b0c0ed5b8cbb2007~mv2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ảnh: <em>Bảng gi&aacute; kim cương 3 Carat của Danh s&aacute;ch gi&aacute; Rapaport</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nếu bạn quan t&acirc;m đến một vi&ecirc;n kim cương 3 carat, m&agrave;u G với độ sạch VS1 th&igrave; bạn n&ecirc;n tra cứu danh s&aacute;ch gi&aacute; cho vi&ecirc;n kim cương 3 carat, v&agrave; t&igrave;m thấy những gi&aacute; trị ph&ugrave; hợp với m&agrave;u G với độ sạch VS1. Trong bảng ở tr&ecirc;n ch&uacute;ng ta c&oacute; thể thấy rằng gi&aacute; trị l&agrave; 28.270 mỗi carat. Hiểu được gi&aacute; tr&ecirc;n mỗi gi&aacute; trị Carat l&agrave; rất quan trọng khi ta nh&igrave;n v&agrave;o gi&aacute; kim cương trong ng&agrave;nh c&ocirc;ng nghiệp kim cương bởi v&igrave; n&oacute; kh&ocirc;ng phải l&agrave; gi&aacute; cuối c&ugrave;ng được n&ecirc;u ra. C&aacute;ch t&iacute;nh v&ocirc; c&ugrave;ng đơn giản v&agrave; dễ hiểu:</p>\r\n\r\n<p><strong>Gi&aacute; vi&ecirc;n kim cương = Gi&aacute; tr&ecirc;n mỗi Carat x trọng lượng carat.</strong></p>\r\n\r\n<p>&Aacute;p dụng cho v&iacute; dụ n&oacute;i tr&ecirc;n th&igrave; ta c&oacute; ph&eacute;p t&iacute;nh: 28.270 x 3= $84,810</p>\r\n\r\n<p>Do đ&oacute;, ch&uacute;ng ta sẽ phải chi 84,810 đ&ocirc; la cho một vi&ecirc;n kim cương 3 carat, m&agrave;u G v&agrave; độ sạch VS1.</p>\r\n\r\n<p>Giả sử bạn muốn mua một vi&ecirc;n kim cương với trọng lượng carat cụ thể th&igrave; bạn n&ecirc;n t&igrave;m kiếm vi&ecirc;n 3.12 carat, m&agrave;u G, độ sạch VS2. Ph&eacute;p t&iacute;nh l&agrave;: 28.270 x 3,12 = $88.202</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>2. RAPAPORT DIAMOND PRICE LIST (DANH S&Aacute;CH GI&Aacute; KIM CƯƠNG RAPAPORT)</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Danh s&aacute;ch gi&aacute; Rapaport l&agrave; nguồn th&ocirc;ng tin đ&aacute;ng tin cậy cho việc bu&ocirc;n b&aacute;n kim cương v&agrave; thường được c&aacute;c đại l&yacute; sử dụng để định gi&aacute; gi&aacute; kim cương. Tuy nhi&ecirc;n, c&aacute;c mức gi&aacute; trong danh s&aacute;ch n&agrave;y c&oacute; thể cao hơn đ&aacute;ng kể so với gi&aacute; giao dịch thực tế. Rapaport được c&ocirc;ng bố trực tuyến v&agrave;o nửa đ&ecirc;m thứ 5 h&agrave;ng tuần.</p>\r\n\r\n<p>Danh s&aacute;ch gi&aacute; Rapaport kh&ocirc;ng đưa ra gi&aacute; giao dịch ch&iacute;nh x&aacute;c của một vi&ecirc;n kim cương m&agrave; chỉ l&agrave; một nền tảng khởi đầu cho c&aacute;c cuộc thương thảo v&agrave; l&agrave; cơ sở cho việc ước t&iacute;nh gi&aacute; trị cho một loạt c&aacute;c vi&ecirc;n kim cương với k&iacute;ch cỡ v&agrave; chất lượng kh&aacute;c nhau. Gi&aacute; giao dịch l&agrave; kết quả của cuộc đ&agrave;m ph&aacute;n giữa người b&aacute;n v&agrave; người mua, hơn nữa n&oacute; phản &aacute;nh rất nhiều yếu tố bao gồm cả đặc t&iacute;nh vật l&yacute; của kim cương, điều khoản b&aacute;n h&agrave;ng, dịch vụ kh&aacute;ch h&agrave;ng v&agrave; một loạt c&aacute;c yếu tố kh&aacute;c. Gi&aacute; giao dịch c&oacute; thể cao hơn đ&aacute;ng kể hoặc thấp hơn so với gi&aacute; ni&ecirc;m yết. Do đ&oacute;, cả người mua v&agrave; người b&aacute;n n&ecirc;n tham khảo &yacute; kiến của chuy&ecirc;n gia hoặc những người &ldquo;s&agrave;nh&rdquo; kim cương trước khi quyết định giao dịch kim cương.</p>\r\n\r\n<p>Vậy l&agrave;m thế n&agrave;o để c&oacute; thể đọc được Danh s&aacute;ch gi&aacute; Rapaport?</p>\r\n\r\n<p><strong>Tại bảng gi&aacute; quy định:</strong></p>\r\n\r\n<p>- Trọng lượng (Carat): L&agrave; h&agrave;ng tr&ecirc;n c&ugrave;ng (phần b&ocirc;i đen), trọng lượng của vi&ecirc;n kim cương trong khoảng từ .ct-.ct.</p>\r\n\r\n<p>- M&agrave;u sắc (Color): Được thể hiện theo cấp độ từ cao tới thấp: D- F, G-H, I-J, K-L, M-N</p>\r\n\r\n<p>- Độ tinh khiết (Clarity): Được thể hiện theo cấp độ từ cao tới thấp: IF, VVS, VS, SI1, SI2, SI3, I1, I2, I3</p>\r\n\r\n<p>- Ng&agrave;y th&aacute;ng bảng gi&aacute; được ban h&agrave;nh: H&agrave;ng tr&ecirc;n c&ugrave;ng phần b&ocirc;i đen</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="https://static.wixstatic.com/media/452282_b68101795a3745c8be4ea70e178c43d5~mv2.png/v1/fill/w_748,h_552,al_c,lg_1,q_90,enc_auto/452282_b68101795a3745c8be4ea70e178c43d5~mv2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ảnh: <em>Bảng gi&aacute; kim cương Rapaport từ .01-.29 ct</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Hướng dẫn c&aacute;ch t&iacute;nh:</strong></p>\r\n\r\n<p>- Bước 1: Đối chiếu trọng lượng của vi&ecirc;n kim cương cần t&iacute;nh gi&aacute; tr&ugrave;ng với trọng lượng trong bảng Rapaport.</p>\r\n\r\n<p>- Bước 2: Đối chiếu m&agrave;u sắc của vi&ecirc;n kim cương cần t&iacute;nh gi&aacute; tr&ugrave;ng với m&agrave;u sắc trong bảng.</p>\r\n\r\n<p>- Bước 3: Đối chiếu độ tinh khiết của vi&ecirc;n kim cương cần t&iacute;nh gi&aacute; tr&ugrave;ng với độ tinh khiết trong bảng.</p>\r\n\r\n<p>- Bước 4: Đối chiếu cột ngang (độ tinh khiết) v&agrave; cột dọc (cấp độ m&agrave;u) để t&igrave;m gi&aacute;/carat (ct) của vi&ecirc;n kim cương cần t&iacute;nh (đơn vị t&iacute;nh trong bảng gi&aacute; quy định l&agrave; 100 đ&ocirc; la /carat (ct).</p>\r\n\r\n<p><strong>V&iacute; dụ:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="https://static.wixstatic.com/media/452282_0fc5037bf33c491192a99fa04694f367~mv2.png/v1/fill/w_750,h_439,al_c,lg_1,q_85,enc_auto/452282_0fc5037bf33c491192a99fa04694f367~mv2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ảnh: <em>Bảng gi&aacute; kim cương Rapaport từ .30-.89 ct</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>[Theo bảng gi&aacute; ng&agrave;y 09/07/2012] Muốn t&iacute;nh gi&aacute; một vi&ecirc;n kim cương l&agrave; 0,5578ct, m&agrave;u F, độ tinh khiết VVS1 th&igrave; c&aacute;ch t&iacute;nh như sau:</p>\r\n\r\n<p>1. Trọng lượng của vi&ecirc;n kim cương l&agrave; 0,558 carat nằm trong khoảng (.50 &ndash; .69ct).</p>\r\n\r\n<p>2. Đối chiếu cấp độ m&agrave;u của vi&ecirc;n kim cương l&agrave; m&agrave;u F ứng với bảng.</p>\r\n\r\n<p>3. Đối chiếu độ tinh khiết của vi&ecirc;n kim cương l&agrave; VVS1 ứng với bảng.</p>\r\n\r\n<p>4. Đối chiếu m&agrave;u sắc v&agrave; độ tinh khiết của vi&ecirc;n kim cương th&igrave; c&oacute; gi&aacute; l&agrave; 56.</p>\r\n\r\n<p>C&aacute;ch t&iacute;nh gi&aacute; vi&ecirc;n kim cương: 56 x $100 x 0,5578 ct = $3,124</p>\r\n\r\n<p>V&igrave; vậy bạn sẽ phải cho ra 3,124 đ&ocirc; la Mỹ để mua được 1 vi&ecirc;n kim cương 0,5578 ct, m&agrave;u F với độ sạch VVS1</p>\r\n\r\n<p>Ngo&agrave;i ra, sau khi đ&atilde; c&acirc;n nhắc v&agrave; t&iacute;nh to&aacute;n về gi&aacute; của vi&ecirc;n kim cương trong tay th&igrave; bạn n&ecirc;n xem x&eacute;t kỹ lưỡng Certification (Chứng chỉ kim cương của GIA) để tr&aacute;nh mua phải h&agrave;ng k&eacute;m chất lượng, thậm ch&iacute; l&agrave; h&agrave;ng giả.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="https://static.wixstatic.com/media/452282_d279b2a7838f45bea0f6e06906cb0983~mv2.png/v1/fill/w_760,h_595,al_c,q_90,enc_auto/452282_d279b2a7838f45bea0f6e06906cb0983~mv2.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ảnh:<em> Chứng chỉ kim cương của GIA</em></p>\r\n\r\n<p>Hy vọng rằng b&agrave;i viết tr&ecirc;n đ&atilde; gi&uacute;p bạn nắm r&otilde; được phần n&agrave;o kiến thức về ti&ecirc;u chuẩn 4C v&agrave; bảng Rapaport trong khi định gi&aacute; một vi&ecirc;n kim cương. Với hai c&aacute;ch cơ bản dựa tr&ecirc;n carat v&agrave; đối chiếu với bảng Rapaport, bạn dễ d&agrave;ng c&oacute; thể lựa chọn cho m&igrave;nh một vi&ecirc;n kim cương ph&ugrave; hợp với t&uacute;i tiền v&agrave; phong c&aacute;ch của bạn m&agrave; vẫn đảm bảo độ tin cậy. H&atilde;y l&agrave; một người ti&ecirc;u d&ugrave;ng th&ocirc;ng minh bằng việc hiểu r&otilde; hơn về sản phẩm trước khi quyết định &ldquo; đầu tư&rdquo; v&agrave;o loại đ&aacute; qu&yacute; bậc nhất n&agrave;y!</p>\r\n', 'Artboard_45.png', '2023-05-22 13:52:58', '67', '2023-05-22 13:54:32', '67', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(2, 'Hiệp gà', 'hiep1998', 'e10adc3949ba59abbe56e057f20f883e', '', '0981643651', 'vanhiepp1998@gmail.com', '2019-05-24 22:10:08', 0, 1),
(9, 'Nguyễn Đức Lương', 'luong1998', 'e10adc3949ba59abbe56e057f20f883e', '', '090932323', 'luong@gmail.com', '2019-06-11 17:15:12', 0, 1),
(39, 'Bảo bự', '', '', '', '052244141', 'baobu@gmail.com', '2019-06-16 23:19:45', 0, 1),
(46, 'Dương Minh Trí', '', '', '', '0908030405', '', '2019-06-22 23:11:42', 0, 1),
(47, 'Trần Thanh Tuy', '', '', '', '090305146', '', '2019-06-22 23:16:45', 0, 1),
(48, 'Xuân Thịnh', '', '', '', '090640316', '', '2019-06-25 22:52:27', 0, 1),
(49, 'Minh Sang', '', '', '', '0913164136', '', '2019-06-25 22:58:22', 0, 1),
(50, 'Hoàng Dũng', '', '', '', '096323646', '', '2019-06-25 23:09:57', 0, 1),
(51, 'Nguyễn Văn Trường', '', '', '', '0357646765', '', '2019-06-26 13:17:30', 0, 1),
(52, 'Hiệp Ngô', '', '', '', '076613166', '', '2019-06-26 16:26:19', 0, 1),
(53, 'Thanh Sơn', '', '', '', '0903121564', '', '2019-06-28 15:57:50', 0, 1),
(54, 'Thành', '', '', '', '033564616', '', '2019-06-28 22:17:44', 0, 1),
(55, 'Lương 21', '', '', '', '03056451', '', '2019-06-29 15:02:46', 0, 1),
(56, 'Tuấn Anh', '', '', '', '0305464844', '', '2019-06-29 15:09:06', 0, 1),
(57, 'Tiến Đạt', '', '', '', '032133234', '', '2019-07-05 23:01:51', 0, 1),
(66, 'Hiệp 2019', 'hiep2019', 'e10adc3949ba59abbe56e057f20f883e', '', '0306444854', 'vanhiepp19988@gmail.com', '2019-07-06 00:00:00', 0, 1),
(67, 'Phạm Phan Hồng Thái', 'duythai', 'e10adc3949ba59abbe56e057f20f883e', '', '0966234475', 'duythai11082000@gmail.com', '2023-05-15 00:00:00', 1, 1),
(68, 'Thai123', 'hongthai', 'e10adc3949ba59abbe56e057f20f883e', '', '1234567890', 'duythaind@gmail.com', '2023-05-17 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MAHETLUOT', 100000, 30, 30, '2023-09-29', 500000, 'Giam 100000', '2019-06-10', 1, 1, 1),
(3, 'khachvip', 200000, 300, 103, '2023-07-20', 300000, 'giảm 200k', '2019-06-25', 1, 1, 1),
(4, 'MAHETHAN', 150000, 68, 23, '2023-06-30', 500000, 'giảm 300k', '2019-06-25', 1, 1, 1),
(13, 'DUYTHAI', 1500000, 200, 0, '2023-07-26', 100000000, 'Giảm 1500k', '2019-07-06', 1, 1, 1),
(16, '4GPLR3LGU61V', 100000, 1, 0, '2023-06-15', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2023-05-15', 0, 1, 1),
(17, 'ESAWNF9GAMGV', 100000, 1, 0, '2023-06-17', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2023-05-17', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H'' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H''leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M''gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M''Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1',
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`, `payment`) VALUES
(1, 'I3b4DHyJ', 67, '2023-05-22 13:26:34', 'Phạm Phan Hồng Thái', '0966234475', 8030000, 30000, 0, 1, 21, 'Nhổn', 1, 2, 1),
(2, 'bwOquzyR', 67, '2023-05-22 13:28:42', 'Phạm Phan Hồng Thái', '0966234475', 548280000, 30000, 0, 1, 21, 'Nhổn', 1, 2, 2),
(3, 'dxKOMHnC', 67, '2023-05-22 13:29:26', 'Phạm Phan Hồng Thái', '0966234475', 548280000, 30000, 0, 1, 21, 'Nhổn', 1, 4, 1),
(4, 'gfDC140h', 67, '2023-05-22 14:01:33', 'Phạm Phan Hồng Thái', '0966234475', 27030000, 30000, 0, 1, 21, 'Nhổn', 1, 4, 1),
(5, 'wW9bchg1', 67, '2023-05-22 14:05:36', 'Phạm Phan Hồng Thái', '0966234475', 21730000, 30000, 0, 1, 21, 'Nhổn', 1, 2, 1),
(6, '08CWL9yc', 67, '2023-05-22 14:06:33', 'Phạm Phan Hồng Thái', '0966234475', 27030000, 30000, 0, 1, 21, 'Nhổn', 1, 4, 1),
(7, 'XGHL7rfn', 67, '2023-05-22 19:58:36', 'Phạm Phan Hồng Thái', '0966234475', 530000, 30000, 0, 1, 19, 'Nhổn', 1, 2, 1),
(8, 'zEMOqSBY', 67, '2023-05-22 20:00:18', 'Phạm Phan Hồng Thái', '0966234475', 435000, 30000, 0, 1, 273, 'Nhổn', 1, 2, 1),
(9, 'KGjuEB39', 67, '2023-05-22 20:02:27', 'Phạm Phan Hồng Thái', '0966234475', 435000, 30000, 0, 1, 274, 'Nhổn', 1, 4, 1),
(10, 'pFfiDOHA', 67, '2023-05-22 20:06:48', 'Phạm Phan Hồng Thái', '0966234475', 56030000, 30000, 0, 1, 21, 'Nhổn', 1, 2, 1),
(11, '2ENSOZnM', 67, '2023-05-22 20:20:01', 'Phạm Phan Hồng Thái', '0966234475', 548280000, 30000, 0, 1, 21, 'Nhổn', 1, 2, 1),
(12, 'sQBl3tvO', 67, '2023-05-22 20:23:13', 'Phạm Phan Hồng Thái', '0966234475', 548280000, 30000, 0, 1, 21, 'Nhổn', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(1, 1, 40, 1, 8000000, 1, 1),
(2, 2, 39, 1, 548250000, 1, 1),
(3, 3, 39, 1, 548250000, 1, 1),
(4, 4, 42, 1, 27000000, 1, 1),
(5, 5, 36, 1, 21700000, 1, 1),
(6, 6, 42, 1, 27000000, 1, 1),
(7, 7, 37, 1, 500000, 1, 1),
(8, 8, 38, 1, 405000, 1, 1),
(9, 9, 38, 1, 405000, 1, 1),
(10, 10, 43, 2, 28000000, 1, 1),
(11, 11, 39, 1, 548250000, 1, 1),
(12, 12, 39, 1, 548250000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `trash` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Diamond', 'DIAMOND', 'kim cương', '2019-05-22 16:08:31', 1, '2023-05-15 17:06:05', 1, 1, 1),
(2, 'Nhà cung cấp vàng, bạc, đá quý uy tín, chất lượng', 'NCCVBCC', 'vang,bac,daquy', '2019-06-12 23:30:37', 2, '2023-05-15 17:06:17', 1, 1, 1),
(3, 'Trang sức, đá quý quốc tế', 'TSDQQT', 'vang,bac,daquy', '2019-05-22 16:06:31', 4, '2023-05-15 17:07:10', 1, 1, 1),
(4, 'Dior', 'XCFV', 'vang,bac,daquy', '2023-05-18 22:23:25', 11, '2023-05-18 22:23:25', 11, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(30, 1, 'Vòng tay bạc nữ mặt hoa', 'vong-tay-bac-nu-mat-hoa', '5f3671e9347062d857f6c8f6d71362a3.png', '6c7bbeb651fc95d4b96e94921be75340.png', 'Vòng tay bạc nữ mặt hoa với điểm nhấn là chiếc mặt hoa đính đá mầu đỏ. Tạo nên môt sản phẩm sang trọng, quý phái và nổi bật.', '<p><strong>V&ograve;ng tay bạc nữ mặt hoa</strong>&nbsp;với điểm nhấn l&agrave; chiếc mặt hoa đ&iacute;nh đ&aacute; mầu đỏ. Tạo n&ecirc;n m&ocirc;t sản phẩm sang trọng, qu&yacute; ph&aacute;i v&agrave; nổi bật.</p>\r\n\r\n<p>Sản phẩm bao gồm 01&nbsp;<strong>V&ograve;ng tay bạc nữ mặt hoa</strong>.</p>\r\n\r\n<p>K&iacute;ch thước l&ograve;ng trong của v&ograve;ng: 55mm x 52 mm</p>\r\n\r\n<p>Trọng lượng: 2.6 chỉ</p>\r\n\r\n<p>Chất liệu: Bạc ta nguy&ecirc;n chất.</p>\r\n\r\n<p>L&agrave;m s&aacute;ng miễn ph&iacute; trọn đời. Thanh to&aacute;n khi nhận h&agrave;ng.</p>\r\n', 2, 201, 0, 0, 300000, 300000, '2023-05-19 11:31:31', '11', '2023-05-22 12:27:27', '9', 1, 1),
(31, 7, 'Nhẫn đôi vàng PNJ 18k', 'nhan-doi-vang-pnj-18k', '65326b89f2321cf46da2977c69ddc065.png', '0e0763c41431bf3b723e3d41394fdc45.png', 'Nhẫn cưới hoàn hảo', '<p>Chất liệu: AU585</p>\r\n\r\n<p>Trọng lượng v&agrave;ng: &asymp;2.79g</p>\r\n\r\n<p>Loại đ&aacute;: Đ&aacute; Moissanite</p>\r\n\r\n<p>K&iacute;ch thước đ&aacute;: 2.0mm*1, 1.1mm*23</p>\r\n', 2, 80, 0, 10, 10000000, 9000000, '2023-05-22 12:51:21', '9', '2023-05-22 12:53:25', '9', 1, 1),
(32, 9, 'Dây chuyền kim cương', 'day-chuyen-kim-cuong', '33babead427fb4315ee912b1e43f23bb.png', '5f517dde3d7a3e4f5056a0da8e6c64d3.png', 'Dây chuyền solitaire kim cương, dây chuyền đá quý lớn và đầy màu sắc', '<p>D&acirc;y chuyền solitaire kim cương, d&acirc;y chuyền đ&aacute; qu&yacute; lớn v&agrave; đầy m&agrave;u sắc hoặc d&acirc;y chuyền fusion. Bạn c&oacute; thể chọn loại kim loại v&agrave; m&agrave;u sắc y&ecirc;u th&iacute;ch của m&igrave;nh c&ugrave;ng với bất kỳ thiết kế n&agrave;o bạn ưa chuộng. Th&ecirc;m một n&eacute;t vẽ ho&agrave;n hảo cho bất kỳ bộ trang phục n&agrave;o với c&aacute;c thiết kế d&acirc;y chuyền độc đ&aacute;o của GLAMIRA.</p>\r\n', 1, 31, 0, 5, 24000000, 22800000, '2023-05-22 12:57:36', '9', '2023-05-22 12:58:24', '9', 1, 1),
(33, 9, 'Hoa tai trái tim đính kim cương', 'hoa-tai-trai-tim-dinh-kim-cuong', '9cad8d01cde82e790046549265896dcf.png', '121f0433d4d16522049c232a7edd1421.png', 'Hoa tai kim cương được thiết kế bởi Tâm Luxury mang lại cảm giác thanh thoát nhẹ nhàng nhưng không kém phần sang trọng cho khuôn mặt.', '<p>Hoa tai kim cương được thiết kế bởi T&acirc;m Luxury mang lại cảm gi&aacute;c thanh tho&aacute;t nhẹ nh&agrave;ng nhưng kh&ocirc;ng k&eacute;m phần sang trọng cho khu&ocirc;n mặt.</p>\r\n', 3, 33, 0, 0, 58000000, 58000000, '2023-05-22 13:01:30', '9', '2023-05-22 13:01:30', '9', 1, 1),
(34, 2, 'Hoa tai bạc đính đá', 'hoa-tai-bac-dinh-da', 'ccc6ece55d6daa8fbdc99fd7bc1775a9.png', 'ba270bd91b84bf2f5a2bc049510203c3.png', 'Bạc ta cao cấp đính đá xin xò', '<table cellpadding="5" cellspacing="2" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>Chất liệu</td>\r\n			<td>Bạc ta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh</td>\r\n			<td>L&agrave;m s&aacute;ng miễn ph&iacute; trọn đời &amp; rơi đ&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>L&agrave;ng Nghề V&agrave;ng bạc Ch&acirc;u Kh&ecirc;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 2, 150, 0, 5, 1200000, 1140000, '2023-05-22 13:04:37', '9', '2023-05-22 13:16:23', '9', 1, 1),
(35, 3, 'Dây chuyền dạng hạt vàng ', 'day-chuyen-dang-hat-vang', 'b123bb7560c258350420f9d152c5b78e.png', 'f9b079648c3d2dcf31bc21719b31f8fe.png', 'Dây chuyền sang trọng, quý phái', '<p>Sản phẩm&nbsp;<strong>D&acirc;y Chuyền V&agrave;ng 14k Đ&iacute;nh Hạt Tr&ograve;n Xinh Xắn</strong>&nbsp;đang được mở b&aacute;n với mức gi&aacute; si&ecirc;u tốt khi mua online, giao h&agrave;ng online tr&ecirc;n to&agrave;n quốc với chi ph&iacute; tiết kiệm nhất,0 đ&atilde; được b&aacute;n ra kể từ l&uacute;c ch&agrave;o b&aacute;n lần cuối c&ugrave;ng.Tr&ecirc;n đ&acirc;y l&agrave; số liệu về sản phẩm ch&uacute;ng t&ocirc;i thống k&ecirc; v&agrave; gửi đến bạn</p>\r\n', 3, 67, 0, 0, 30000000, 30000000, '2023-05-22 13:08:41', '9', '2023-05-22 13:08:41', '9', 1, 1),
(36, 7, 'Nhẫn vàng đính hồng ngọc', 'nhan-vang-dinh-hong-ngoc', '9d94c0a0fa0d51d32b4e92e90c6e8f18.png', '61cd4a87744599a7c3743b32354702a6.png', 'Vẻ đẹp tự nhiên, quý phái', '<p>Sản phẩm&nbsp;<strong>Nhẫn V&agrave;ng&nbsp;Đ&iacute;nh Đ&aacute; Hồng Ngọc Hồng Lựu Độc Đ&aacute;o</strong>&nbsp;đang được mở b&aacute;n với mức gi&aacute; si&ecirc;u tốt khi mua online, giao h&agrave;ng online tr&ecirc;n to&agrave;n quốc với chi ph&iacute; tiết kiệm nhất,0 đ&atilde; được b&aacute;n ra kể từ l&uacute;c ch&agrave;o b&aacute;n lần cuối c&ugrave;ng.</p>\r\n', 2, 167, 1, 10, 23000000, 21700000, '2023-05-22 13:12:08', '9', '2023-05-22 13:12:08', '9', 1, 1),
(37, 1, 'Lắc tay bạc hoa đẹp', 'lac-tay-bac-hoa-dep', 'd4bce3880dd113ade8b336181673c101.png', '5ea34816f2c98947f4e74ee4f9b043a3.png', 'vẻ đẹp quý phái, sang trọng', '<table cellpadding="5" cellspacing="2" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>Chất liệu</td>\r\n			<td>Bạc ta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh</td>\r\n			<td>L&agrave;m s&aacute;ng miễn ph&iacute; trọn đời &amp; rơi đ&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>L&agrave;ng Nghề V&agrave;ng bạc Ch&acirc;u Kh&ecirc;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 2, 231, 1, 0, 500000, 500000, '2023-05-22 13:14:22', '9', '2023-05-22 13:14:22', '9', 1, 1),
(38, 6, 'Dây chuyền bạc họa tiết cao cấp', 'day-chuyen-bac-hoa-tiet-cao-cap', '579e980e6e28f5f3f334f2a57dc921a4.png', '9bf90b0606be41595d92f5b559576ab1.png', 'Sang trọng, quý phái', '<table cellpadding="5" cellspacing="2" style="width:100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>Chất liệu</td>\r\n			<td>Bạc ta</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh</td>\r\n			<td>L&agrave;m s&aacute;ng miễn ph&iacute; trọn đời &amp; rơi đ&aacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ</td>\r\n			<td>L&agrave;ng Nghề V&agrave;ng bạc Ch&acirc;u Kh&ecirc;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 2, 89, 1, 10, 450000, 405000, '2023-05-22 13:19:51', '9', '2023-05-22 13:19:51', '9', 1, 1),
(39, 9, 'Nhẫn kim cương xanh', 'nhan-kim-cuong-xanh', '53da75febca39ed51a0c0234e47d6a36.png', 'e615eea6640e2c9bc77851d6e7f5ec36.png', 'Dù là biểu lộ tình yêu hay là biểu tượng của thời trang, nhẫn luôn là món đồ trang sức quan trọng nhất. ', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Đ&aacute; Ch&iacute;nh</td>\r\n			<td>Kim cương xanh dương</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đ&aacute; số 2</td>\r\n			<td>Kim Cương</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u Sắc / Hợp Kim[?]</td>\r\n			<td>V&agrave;ng Trắng 585</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 12, 3, 15, 645000000, 548250000, '2023-05-22 13:23:01', '9', '2023-05-22 13:23:01', '9', 1, 1),
(40, 7, 'Nhẫn vàng hình đầu mèo vui vẻ', 'nhan-vang-hinh-dau-meo-vui-ve', 'faee8eead6257cce4d22be7e8fff4508.png', '27a4394841da57da9dd32ea4af35f2ba.png', 'Sang trọng, quý phái', '<p>H&agrave;ng đẹp , ch&acirc;t lượng cao</p>\r\n', 3, 1, 1, 0, 8000000, 8000000, '2023-05-22 13:25:39', '9', '2023-05-22 13:25:39', '9', 1, 1),
(41, 3, 'Dây chuyền vàng chữ " LOVE "', 'day-chuyen-vang-chu-love', '6dd6e77b3f0a514b6bebbe87e925eeaa.png', 'da15e1ea364ecec3403c61cc2d7f2d0a.png', 'Sang trọng, Quý Phái', '<p>V&agrave;ng bạc uy t&iacute;n, chất lượng</p>\r\n', 3, 63, 0, 0, 12000000, 12000000, '2023-05-22 13:33:40', '67', '2023-05-22 13:33:40', '67', 1, 1),
(42, 4, 'Lắc tay vàng chất lượng', 'lac-tay-vang-chat-luong', '685e675f2ed0a1d15a5e49f8b74cfa68.png', '9eb6d32cc328a37687f82d9c8a93428c.png', 'Quý phái, sang trọng', '<p>Lắc tay đẹp được thiết kế tỉ mỉ ho&agrave;n to&agrave;n thủ c&ocirc;ng từ tay c&aacute;c nghệ nh&acirc;n chuy&ecirc;n nghiệp, c&oacute; kinh nghi&ecirc;m l&acirc;u năm .</p>\r\n', 2, 122, 0, 10, 30000000, 27000000, '2023-05-22 13:37:20', '67', '2023-05-22 13:37:20', '67', 1, 1),
(43, 5, 'Lắc chân vàng', 'lac-chan-vang', '798509d6e1199fe4a2d141cba017325c.png', '7fedd94d375714f78ba1cdd23b359aac.png', 'Sang trọng, quý phái', '<p>Lắc ch&acirc;n đẹp được thiết kế tỉ mỉ ho&agrave;n to&agrave;n thủ c&ocirc;ng từ tay c&aacute;c nghệ nh&acirc;n chuy&ecirc;n nghiệp, c&oacute; kinh nghi&ecirc;m l&acirc;u năm .</p>\r\n', 2, 100, 2, 0, 28000000, 28000000, '2023-05-22 13:39:32', '67', '2023-05-22 13:39:32', '67', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 'Banner1', 'banner-1', '2.jpg', '2019-06-13 21:27:24', '1', '2019-06-13 23:42:42', '', 0, 1),
(2, 'Banner 2', 'Banner-2', 'default.png', '2019-06-13 23:45:04', '1', '2019-06-13 23:45:44', '', 0, 1),
(3, 'trang chu 1', 'trang-chu', 'Banner.jpg', '2019-07-03 17:05:52', '1', '2023-05-15 17:07:40', '', 1, 1),
(4, 'slider trang chu 2', 'slider-trang-chu-2', 'banner-samsungs101.png', '2019-07-03 17:06:38', '1', '2023-05-22 13:55:44', '', 1, 1),
(5, 'slider trang chu 3', 'slider-trang-chu-3', 'Artboard_45_copy.png', '2019-07-03 17:06:58', '1', '2023-05-22 13:56:30', '', 1, 1),
(6, 'ss', 'ss', 'icon_142e7.png', '2019-07-03 17:08:07', '1', '2019-07-03 17:08:07', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(9, 'Phạm Phan Hồng Thái', 'duythai', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'duythai11082000@gmail.com', 0, '0966234476', 'Nhổn', 'default.png', '2023-03-17 13:06:19', 1, 1),
(10, 'Duy Thái', 'duythaind@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'duythai1108200@gmail.com', 0, '0966234475', 'Nhổn', 'default.png', '2023-03-17 16:31:56', 1, 1),
(11, 'admin', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '010101011', 'Nhổn', 'default.png', '2023-05-17 16:34:20', 1, 1),
(12, 'Người qua đường', 'adminadmin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'duythai110820@gmail.com', 0, '1264879468', 'Nhổn', 'default.png', '2023-05-18 22:32:44', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Toàn quyền', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
