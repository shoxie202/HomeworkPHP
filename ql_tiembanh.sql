-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2023 at 04:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_tiembanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `bannerid` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`bannerid`, `image`) VALUES
(2, 'img/banners/banner4.jpg'),
(3, 'img/banners/banner8.jpg'),
(4, 'img/banners/banner2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Billdate` datetime NOT NULL,
  `Receiver` varchar(50) NOT NULL,
  `Phonenumber` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `PaymentMethod` varchar(20) NOT NULL,
  `Total` float NOT NULL,
  `Status` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillID`, `UserID`, `Billdate`, `Receiver`, `Phonenumber`, `Address`, `PaymentMethod`, `Total`, `Status`) VALUES
(10, 18, '2023-02-22 15:41:28', 'Nguyen Nam', '0123456789', 'hà nội', '', 120000, '1'),
(11, 18, '2023-02-25 23:59:50', 'Nguyen Nam', '0123456789', 'thái nguyên', '', 650000, '1'),
(12, 18, '2023-02-26 00:00:09', 'Nguyen Nam', '0123456789', 'hà nội', '', 650000, '1'),
(13, 13, '2023-02-26 00:07:44', 'Nguyễn Trí', '02354129852', 'Hải Phòng', '', 650000, '1'),
(14, 13, '2023-02-26 00:08:31', 'Nguyễn Trí', '02354129852', 'Hải Nam', '', 235000, '1'),
(15, 19, '2023-02-26 10:31:43', 'vu tam', '0978653899666', 'thái nguyên', '', 200000, '1'),
(16, 19, '2023-03-14 20:32:35', 'vu tam', '0978653899666', 'hà nam', '', 120000, '0'),
(17, 19, '2023-03-14 20:33:03', 'vu tam', '0978653899666', 'Hải Phòng', '', 120000, '0'),
(18, 19, '2023-03-14 21:51:55', 'vu tam', '0978653899666', 'thái nguyên', '', 120000, '0'),
(19, 19, '2023-03-14 21:55:13', 'vu tam', '0978653899666', 'hà nội', '', 120000, '1'),
(20, 19, '2023-03-14 21:59:05', 'vu tam', '0978653899666', 'Hải Phòng', '', 120000, '1'),
(21, 17, '2023-04-01 01:52:47', 'nhu tam', '0897654643', 'hà nội', '', 225000, '0'),
(22, 17, '2023-04-01 02:02:31', 'nhu tam', '0897654643', 'hà nội', '', 225000, '0'),
(23, 17, '2023-04-01 02:05:16', 'nhu tam', '0897654643', 'nha trang', '', 225000, '0'),
(24, 13, '2023-04-01 10:56:47', 'Nguyễn Trí', '02354129852', 'Hải Nam', '', 500000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `BilldetailID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Billdetailnumber` int(11) NOT NULL,
  `Billdetailprice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`BilldetailID`, `ProductID`, `Billdetailnumber`, `Billdetailprice`) VALUES
(11, 57, 1, 200000),
(11, 56, 1, 215000),
(11, 44, 1, 125000),
(12, 57, 1, 200000),
(12, 56, 1, 215000),
(12, 44, 1, 125000),
(13, 57, 1, 200000),
(13, 56, 1, 215000),
(13, 44, 1, 125000),
(14, 44, 1, 125000),
(15, 57, 1, 200000),
(16, 48, 1, 120000),
(17, 48, 1, 120000),
(18, 48, 1, 120000),
(19, 48, 1, 120000),
(20, 48, 1, 120000),
(21, 9, 1, 225000),
(22, 9, 1, 225000),
(23, 9, 1, 225000),
(24, 7, 2, 250000);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Bánh'),
(2, 'Kẹo'),
(3, 'Các loại khô');

-- --------------------------------------------------------

--
-- Table structure for table `decentralization`
--

CREATE TABLE `decentralization` (
  `DecentralizationID` int(11) NOT NULL,
  `DecentralizationName` varchar(20) NOT NULL,
  `DecentralizationDetails` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `decentralization`
--

INSERT INTO `decentralization` (`DecentralizationID`, `DecentralizationName`, `DecentralizationDetails`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `TypeproductID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `ProductName` varchar(70) NOT NULL,
  `ProductPrice` int(11) NOT NULL,
  `ProductNumber` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ProductImage1` varchar(200) NOT NULL,
  `ProductImage2` varchar(255) DEFAULT NULL,
  `ProductImage3` varchar(255) DEFAULT NULL,
  `PromotionID` int(11) NOT NULL,
  `ProductMass` varchar(50) DEFAULT NULL,
  `ProductSize` varchar(50) DEFAULT NULL,
  `ProductColor` varchar(50) DEFAULT NULL,
  `ProductMaterial` varchar(50) DEFAULT NULL,
  `Origin` varchar(50) DEFAULT NULL,
  `Shape` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `Expiry` varchar(50) DEFAULT NULL,
  `Note` varchar(50) DEFAULT NULL,
  `StarNumber` int(11) NOT NULL,
  `Evaluate` int(11) NOT NULL,
  `ProductStatus` int(11) NOT NULL,
  `ProductDescription` text NOT NULL,
  `Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `TypeproductID`, `CategoryID`, `ProductName`, `ProductPrice`, `ProductNumber`, `ProductImage1`, `ProductImage2`, `ProductImage3`, `PromotionID`, `ProductMass`, `ProductSize`, `ProductColor`, `ProductMaterial`, `Origin`, `Shape`, `Size`, `Expiry`, `Note`, `StarNumber`, `Evaluate`, `ProductStatus`, `ProductDescription`, `Time`) VALUES
(1, 33, 3, 'Tôm ớt loại 1', 60000, 10, 'img/products/kho/s20.jpg', 'img/products/kho/s22.jpg', 'img/products/kho/s20.jpg', 1, '500g', '', 'Vàng', 'Từ tôm', 'Cà Mau', 'Những chú tôm', '', '12 tháng', 'Tôm rất ngon phù hợp nấu canh nầu...', 0, 0, 0, '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Tôm khô </span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">là tôm khô tươi sấy khô trực tiếp thành tôm khô</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">.</span></p><p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\"> Tôm khô nên ngâm với nước ấm, sau đó nấu theo ý muốn.</span></p>', '2023-02-17 16:19:07'),
(2, 38, 3, 'Lạp xưởng hồ lô', 220000, 10, 'img/products/kho/s6.jpg', 'img/products/kho/s7.jpg', 'img/products/kho/s8.jpg', 2, '300g', '16cm', 'đỏ khói', 'thịt, muối, mì chính', 'nhà làm', 'tròn', '30*60', '6 tháng ', 'Bánh rất ngon nên mua 2 chiếc', 0, 0, 1, '<span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Lạp Xưởng Hồ Lô </span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">với các thành phần thịt được thái nhỏ và xay thô, mỡ được thái lát hạt lựu, phối trộn với các gia vị</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Với vị rất ngon và không quá nhiều mỡ, Lạp xưởng hồ lô có thể được sử dụng để chiên, xiên que, dùng để làm BBQ hoặc dùng chung với các món lẩu tạo hương vị mới lạ trong bữa ăn gia đình.</span>', '2023-02-17 15:19:18'),
(5, 38, 3, 'Lạp xưởng trứng muối', 185000, 14, 'img/products/kho/s36.jpg', 'img/products/kho/s5.jpg', 'img/products/kho/s4.jpg', 4, '1200g', '', 'Vàng nhạt', 'Thịt, gia vị', 'Việt Nam', 'tròn', '30*60', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 0, '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Lạp Xưởng Trứng Muối là sản phẩm mới nhất năm 2021 của thương hiệu lạp xưởng Cô Trà.&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Hương vị đậm đà của trứng muối hòa với vị ngon đặc trưng của lạp xưởng tạo nên sự hòa quyện không ngán cho món ăn thêm ngon</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">.</span><br></p>', '2023-02-17 14:27:56'),
(7, 7, 1, 'Bánh tét truyền thống', 250000, 10, 'img/products/tet/11q.jpg', '/img/products/tet/7q.jpg', '/img/products/tet/5q.jpg', 2, '1500g', '30*70', 'Xanh ', 'Từ gạo và đậu', 'Việt Nam', 'tròn, dài', '', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 1, '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Bánh tét, có nơi gọi là bánh đòn, là một loại bánh trong ẩm thực của cả người Việt và một số dân tộc ít người ở miền Nam và miền Trung Việt Nam,&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">là nét tương đồng của bánh chưng ở Miền Bắc về nguyên liệu, cách nấu, chỉ khác về hình dáng và sử dụng lá chuối để gói thay vì lá dong</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">, vì vậy nó cũng được sử dụng nhiều nhất ...</span><br></p>', '2023-02-17 14:30:32'),
(8, 7, 1, 'bánh tét 4 màu', 250000, 20, 'img/products/tet/12q.jpg', '/img/products/tet/7q.jpg', '/img/products/tet/12q.jpg', 2, '1200g', '30*60', 'trắng, cam, xanh, tím', 'gáo nếp, đậu xanh', 'Việt Nam', 'tròn, dài', '', '6 tháng kể từ ngày sản xuất', 'Bánh tuyệt vời ngon tuyệt vời', 0, 0, 1, '<p><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Bánh tét Cô Trà được làm thủ công từ những nghệ nhân có 20-30 năm kinh nghiệm, nên mang kiểu dáng và hương vị chuẩn của miền Tây. </span></p><p><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Tất cả nguyên liệu từ lạp xưởng, gạo nếp, đậu xanh hay lá gói bánh cũng đều được lấy chính từ địa phương, bảo đảm màu sắc, mùi vị hệt như trong ký ức của những người con miền Tây xa xứ.</span><br></p><div><br></div>', '2023-02-17 14:35:03'),
(9, 7, 1, 'Bánh tét đậu mỡ', 225000, 10, 'img/products/la1.jpg', 'img/products/8q.jpg', 'img/products/8q.jpg', 1, '1800g', '20*50', 'Xanh', 'gạo nếp', 'Việt Nam', 'tròn, dài', '1', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Times New Roman\"; font-size: 18px;\">Bánh tét luôn là một món ăn truyền thống của gia đình Việt Nam trong ngày tết. Người miền Nam đã biến tấu ra món bánh tét chuối thơm ngon rất hợp cho người ăn chay và mang đến mọi vùng miền tổ quốc.</span><br></p><p><span style=\"color: rgb(33, 37, 41); font-family: Roboto; text-align: justify;\">Nguyên liệu để thực hiện món bánh này khá đơn giản. Tuy nhiên cách gói thì lại rất kỳ công và cần sự khéo léo, bởi nếu không khéo léo bánh sẽ bị móp méo và vô nước làm ảnh hưởng đến chất lượng bánh.</span><span style=\"color: rgb(33, 37, 41); font-family: Roboto; text-align: justify;\"><br></span><br></p>', '2023-03-16 15:57:48'),
(10, 7, 1, 'bánh tét lá dứa đặc biệt', 160000, 10, 'img/products/ladua1.jpg', '/img/products/tet/5q.jpg', 'img/products/ladua3.jpg', 4, '800g', '30*65', 'Xanh', 'gạo, đỗ', 'Việt Nam', 'Hình cầu', '', '6 tháng kể từ ngày sản xuất', 'Bánh tét lá dứa không những thơm ngon mà còn rất b', 0, 0, 1, '<p><span style=\"color: rgb(92, 92, 92); font-family: Nunito, \"Helvetica Neue\", Helvetica, Arial, sans-serif; text-align: justify;\">Cách gói bánh tét lá dứa sẽ cho bạn món ăn có vị thơm ngon với mùi gạo nếp và nước cốt dừa, đậm đà của các loại gia vị. Không những thế, món bánh tét này còn rất bắt mắt với màu xanh ngắt của lá dứa nữa.</span></p><p><span style=\"color: rgb(92, 92, 92); font-family: Nunito, \"Helvetica Neue\", Helvetica, Arial, sans-serif;\">Chiếc bánh tét có mùi thơm của gạo nếp cùng vị đậm đà của các gia vị và màu xanh ngắt của lá dứa sẽ giúp bạn không chỉ có món ăn ngon trong ngày Tết mà còn giúp mâm cỗ Tết của bạn thêm bắt mắt và sinh động hơn.</span><span style=\"color: rgb(92, 92, 92); font-family: Nunito, \"Helvetica Neue\", Helvetica, Arial, sans-serif; text-align: justify;\"><br></span><br></p>', '2023-03-16 15:59:32'),
(11, 7, 1, 'bánh tét lá cẩm', 210000, 5, 'img/products/lcam1.webp', 'img/products/lcam2.jpg', 'img/products/lcam3.jpg', 5, '750g', '30*65', 'Tím từ lá cẩm', 'gạo nếp', 'Việt Nam', 'Hình cầu', '', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 1, '<p><em style=\"margin: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">Bánh tét – một trong những món bánh ngon đặc sản của người dân Việt, từng miếng bánh ngon với hương thơm của gạo nếp, độ béo ngậy của thịt ba chỉ, bùi bùi của đậu xanh hòa quyện tạo nên vị ngon đặc biệt</em><br></p>', '2023-02-17 14:48:09'),
(12, 7, 1, 'Bánh tét chuối', 220000, 10, 'img/products/tet/2q.jpg', '/img/products/tet/1q.jpg', '/img/products/tet/3q.jpg', 2, '750g', '30*60', 'Xanh', 'gáo nếp, đậu xanh', 'Việt Nam', 'Hình cầu', '', '6 tháng kể từ ngày sản xuất', 'bánh ngon', 0, 0, 1, '<p><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Bánh tét&nbsp;</span><b style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">có hình trụ dài nên còn được gọi là đòn bánh, hai đòn thường có một quai bánh chung bằng gân lá chuối tạo thành một cặp</b><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">. Người ta còn làm bánh không có nhân thịt để có thể để được lâu hơn hoặc ăn chay với nhân có thể là chuối chín.</span><br></p>', '2023-02-17 14:49:44'),
(13, 7, 1, 'Bánh tét 3 màu', 259000, 10, 'img/products/mau3.jpg', 'img/products/mau33.jpg', 'img/products/mau333.jpg', 4, '1250g', '30*80', 'Xanh', 'gáo nếp, đậu xanh', 'Việt Nam', 'Hình cầu', '', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 1, '<p><span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; white-space: break-spaces;\">BÁNH TÉT VỀ SẴN TẠI SHOP Ạ !!! </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: break-spaces;\">❤️❤️Bánh tét 3 màu chuẩn ngon\r\n Màu tím được làm từ màu lá cẩm\r\n Màu cam được làm từ trái gấc\r\n Màu xanh được làm từ lá dứa</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: break-spaces;\">Nhân bánh được làm từ đậu xanh tán nhuyễn cùng với thịt ba chỉ khìa nước dừa , trứng muối. Đặt biệt là bánh nhà Em cắt khoanh nào đều có trứng muối hết nhé cả nhà.</p><p data-spm-anchor-id=\"a2o4n.pdp_revamp.product_detail.i0.30273b88Ilw9sh\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; white-space: break-spaces;\">100% màu thiên nhiên, lá cẩm, lá dứa, trái gấc, khách yên tâm thưởng thức nha</p>', '2023-02-17 14:55:12'),
(30, 36, 3, 'Muối ớt loại 1', 40000, 100, 'img/products/s16.jpg', 'img/products/s16.jpg', 'img/products/s16.jpg', 1, '180g', '40*50', 'vàng nhạt', 'muối, ớt, đường', 'Việt Nam', '', '', '18 tháng kể từ ngày sản xuất', 'vặn chặt nắp sau khi sử dụng, bảo quản nơi khô ráo', 0, 0, 1, '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.3em;\" dejavu=\"\" sans\",=\"\" \"liberation=\"\" freesans,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" outline:=\"\" none;=\"\" zoom:=\"\" 1;\"=\"\"><span style=\"font-family: &quot;Times New Roman&quot;;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\"><b>Muối Ớt Cô Trà mang mùi vị đặc trưng của loại đặc sản Muối Ớt Tây Ninh, nhưng nổi bật ở kết cấu hạt muối nhuyễn, giúp dễ chấm, dễ nêm nếm khi ướp các món hải sản nướng và các món ăn vặt nổi tiếng tại Việt Nam.</b></span></h2><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.3em;\" dejavu=\"\" sans\",=\"\" \"liberation=\"\" freesans,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" outline:=\"\" none;=\"\" zoom:=\"\" 1;\"=\"\"><span style=\"text-align: justify; font-family: &quot;Times New Roman&quot;;\"><b>Đặc biệt, tiêu chí hoàn toàn “Không Màu Tổng Hợp, Không Chất Bảo Quản Nhân Tạo” giúp cho sản phẩm luôn là sự lựa chọn an toàn, chất lượng của người tiêu dùng.</b></span></h2><h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 1.3em; font-family: Helvetica, Arial, \" dejavu=\"\" sans\",=\"\" \"liberation=\"\" freesans,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" outline:=\"\" none;=\"\" zoom:=\"\" 1;\"=\"\"><br></h2>', '2023-03-29 22:48:04'),
(32, 34, 3, 'Cá dứa khô', 190000, 10, 'img/products/kho/s21.jpg', 'img/products/kho/s23.jpg', 'img/products/kho/s24.jpg', 1, '1000g', 'con 700gr - 900gr/con', 'Vàng nhạt', 'Cá được đánh bắt ngoài khơi', 'Cà Mau', '', '', '6 tháng ', 'Cá Ngon', 0, 0, 1, '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 1.3em; font-family: Helvetica, Arial, \" dejavu=\"\" sans\",=\"\" \"liberation=\"\" freesans,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" outline:=\"\" none;=\"\" zoom:=\"\" 1;\"=\"\"><table cellpadding=\"1\" cellspacing=\"1\" class=\"banggia\" style=\"border: 0px; padding: 0px; margin: 10px auto; table-layout: auto; max-width: 99%; color: rgb(34, 34, 34); font-family: Tahoma, Geneva, sans-serif; width: 852.388px; font-size: 1.125em !important; line-height: 1.5em !important;\"><tbody style=\"border: 0px; padding: 0px; margin: 0px;\"><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Quy cách đóng gói</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\">Đóng gói theo con (600g - 2kg/con)</td></tr><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Xuất xứ</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\">Cần Giờ, Vũng Tàu, Cà Mau</td></tr><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Nguyên liệu</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\">Loại cá dứa tươi sống</td></tr><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Chế biến</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\">Thủ công - Truyền thống. Hoàn toàn tự nhiên</td></tr><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Cách dùng</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\">Chiên hoặc nướng ăn cùng cơm canh.</td></tr><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Tiêu chuẩn chất lượng</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\">Đạt tiêu chuẩn sạch,&nbsp;<strong style=\"border: 0px; padding: 0px; margin: 0px; font-size: inherit;\"><span style=\"border: 0px; padding: 0px; margin: 0px; font-size: 15.75px; line-height: 1.5em !important; color: rgb(211, 84, 0);\">KHÔNG hóa chất</span></strong>,&nbsp;<strong style=\"border: 0px; padding: 0px; margin: 0px; font-size: inherit;\"><span style=\"border: 0px; padding: 0px; margin: 0px; font-size: 15.75px; line-height: 1.5em !important; color: rgb(142, 68, 173);\">KHÔNG phẩm màu</span></strong>,&nbsp;đảm bảo VSATTP.</td></tr><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Bảo quản</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\">Ngăn mát: 1-2 tháng; Ngăn đông: 3-6 tháng</td></tr><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Hình thức kinh doanh</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\">Bán lẻ toàn quốc</td></tr><tr style=\"border: 0px; padding: 0px; margin: 0px;\"><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 148px;\">Vận chuyển</td><td style=\"border: 1px solid rgb(221, 221, 221); padding: 7px 6px; margin: 0px; width: 482px;\"><p style=\"border: 0px; padding: 0px; margin: 10px 0px; text-align: inherit !important; font-family: arial, helvetica, sans-serif; font-size: 15.75px; line-height: 1.5em !important; color: rgb(51, 51, 51);\">+ Giao hàng thu tiền tận nơi TOÀN QUỐC.<br style=\"border: 0px; padding: 0px; margin: 0px;\">+ Miễn phí giao hàng TPHCM khi mua từ 2kg</p></td></tr></tbody></table></h2>', '2023-02-17 15:15:37'),
(39, 39, 3, 'Đù mặn', 220000, 10, 'img/products/duman1.jpg', 'img/products/duman2.jpg', 'img/products/duman3.jpg', 1, '500g', '120*120cm', 'màu cá', 'Nguyên liệu từ cá đù ngon tươi', 'Việt Nam', 'Cá', '5-7 con 1 túi', '6 tháng ', 'ăn khi mở náp', 0, 0, 1, '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: 1.3em; font-family: Helvetica, Arial, \" dejavu=\"\" sans\",=\"\" \"liberation=\"\" freesans,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" outline:=\"\" none;=\"\" zoom:=\"\" 1;\"=\"\"><span style=\"color: rgb(33, 37, 41); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">Khô nhà làm vừa bán vừa ăn nên đảm bảo an toàn vệ sinh thực phẩm , Sạch sẽ<br>Hình chụp thật, khô khoản 20 con 1kg<br>Khô ướp mặn, nên có thể làm mồi nhậu hoặc ăn với cơm thì hết ý<br>Đóng gói hút chân không đẹp mắt .</span><br style=\"color: rgb(33, 37, 41); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: sf-pro-text-regular, sans-serif; font-size: 14px;\">Giao hàng toàn quốc</span><br></h2>', '2023-02-17 16:25:15'),
(40, 40, 3, 'Lóc xẻ non', 20000, 10, 'img/products/kho/s25.jpg', 'img/products/locxenon1.jpg', '/img/products/kho/s33.jpg', 1, '500g', '300g/1 con', 'Vàng nhạt', 'Cá được đánh bắt ngoài khơi', 'Việt Nam', '', '2 con', '1 tháng', 'Cá Ngon', 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Làm từ cá lóc non tươi ngon.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khô lóc non tâm thịt ngọt, tẩm ướp vừa ăn.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Dùng làm mồi nhắm bia rượu, ăn cơm cũng ngon.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Được phơi khô nắng tốt sau khi xẻ.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">KHÔNG&nbsp;hóa chất –&nbsp;KHÔNG&nbsp;phẩm màu.</li></ul>', '2023-02-17 16:40:46'),
(41, 40, 3, 'Lóc tiêu sọ', 120000, 10, 'img/products/loctieuso1.jpg', 'img/products/s26.jpg', 'img/products/loctieuso2.jpg', 1, '500g', '120*120cm', 'Vàng nhạt', 'Cá được đánh bắt ngoài khơi', 'Việt Nam', 'cá to', '2 con', '1 tháng', 'Cá Ngon', 0, 0, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Làm từ cá lóc non tươi ngon.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Khô lóc non tâm thịt ngọt, tẩm ướp vừa ăn.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Dùng làm mồi nhắm bia rượu, ăn cơm cũng ngon.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">Được phơi khô nắng tốt sau khi xẻ.</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">KHÔNG&nbsp;hóa chất –&nbsp;KHÔNG&nbsp;phẩm màu.</li></ul>', '2023-02-17 16:42:55'),
(43, 6, 1, 'Bánh pía nhân trứng', 120000, 10, 'img/products/2a.jpg', '/img/products/pia/18a.jpg', '/img/products/pia/2a.jpg', 1, '500g', '80*120cm', 'Hộp màu hồng', 'Đậu xanh, trứng, bột sữa', 'Việt Nam', 'tròn', '12 bánh', '60 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở bao bì', 0, 0, 1, '<blockquote>Bánh trọng lượng nhỏ, đóng gói từng cái riêng biệt rất thuận lợi mang theo khi đi du lịch hay đi làm.Chỉ cần mở hộp có thể thưởng thức ngay món tuyệt vời.<br>Đặc biệt khi cắn miếng bánh bạn có thể cảm nhận được nhân bánh tan chảy trong miệng, khi nhai nhân bánh và vỏ bánh bánh hòa quyện.<br>Vị bánh béo, ngọt vừa phải ăn không ngán</blockquote>', '2023-03-16 15:45:26'),
(44, 1, 1, 'bánh pía lá dứa', 125000, 10, 'img/products/pia/5a.jpg', '/img/products/pia/3a.jpg', '/img/products/pia/1a.jpg', 4, '500g', '80*120cm', 'Hộp màu hồng', 'Đậu xanh, trứng, lá dứa', 'Việt Nam', 'Hình tròn', '12 bánh trong 1 hộp', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 1, '<blockquote>Bánh pía lá dứa chứa các thành phần chính là đậu xanh, giúp mang đến nhiều lợi ích cho sức khỏe: cân bằng đường huyết, ngăn ngừa ung thư...<br>Khi bẻ đôi bánh thấy được nhân bánh lấp lánh hệt như những hạt Kim Sa<br></blockquote>', '2023-02-17 15:38:36'),
(45, 1, 1, 'Bánh pía bò', 125000, 10, 'img/products/pia/6a.jpg', '/img/products/pia/1a.jpg', '/img/products/pia/7a.jpg', 4, '500g', '80*120cm', 'Hộp màu hồng', 'Chà bông bò, đường, bột mì', 'Việt Nam', 'Hình tròn', 'túi 12 bánh bao bì riêng biệt', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 1, '<blockquote>Bánh pía bò 12 bánh là sản phẩm bánh pía đặc biệt được cô Trà tung ra thị trường và tháng 7-2021<br>Nhân bánh rất đặc biệt có chà bông bò rất lạ miệng<br><br></blockquote>', '2023-02-17 15:43:51'),
(46, 1, 1, 'Bánh pía đậu xanh', 220000, 10, 'img/products/pia/11a.jpg', '/img/products/pia/12a.jpg', '/img/products/pia/1a.jpg', 4, '500g', '80*120cm', 'Hộp màu hồng', 'Đậu xanh, trứng, bột mì', 'Việt Nam', 'tròn', '12 bánh', '75 ngày kể từ ngày sản xuất', 'bánh pía lá dứa', 0, 0, 1, '<blockquote><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Bánh trọng lượng nhỏ, đóng gói từng cái riêng biệt rất thuận lợi mang theo khi đi du lịch hay đi làm.Chỉ cần mở hộp có thể thưởng thức ngay món tuyệt vời.</span><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\"><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Đặc biệt khi cắn miếng bánh bạn có thể cảm nhận được nhân bánh tan chảy trong miệng, khi nhai nhân bánh và vỏ bánh bánh hòa quyện.</span><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\"><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Vị bánh béo, ngọt vừa phải ăn không ngán</span><br></blockquote>', '2023-02-17 15:48:58'),
(47, 1, 1, 'Bánh pía thập cẩm', 239000, 10, 'img/products/pia/14a.jpg', '/img/products/pia/15a.jpg', '/img/products/pia/1a.jpg', 2, '500g', '80*120cm', 'Hộp màu hồng', 'bột mì', 'Việt Nam', 'tròn', '12 bánh trong 1 hộp', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 1, '<blockquote><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Bánh trọng lượng nhỏ, đóng gói từng cái riêng biệt rất thuận lợi mang theo khi đi du lịch hay đi làm.Chỉ cần mở hộp có thể thưởng thức ngay món tuyệt vời.</span><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\"><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Đặc biệt khi cắn miếng bánh bạn có thể cảm nhận được nhân bánh tan chảy trong miệng, khi nhai nhân bánh và vỏ bánh bánh hòa quyện.</span><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\"><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Vị bánh béo, ngọt vừa phải ăn không ngán</span><br></blockquote>', '2023-02-17 16:45:43'),
(48, 1, 1, 'Bánh pía sầu riêng', 120000, 20, 'img/products/18a.jpg', '/img/products/pia/10a.jpg', 'img/products/4a.jpg', 1, '500g', '80*120cm', 'Hộp màu hồng', 'bột mì, sầu riêng', 'Việt Nam', 'tròn', '12 bánh trong 1 hộp', '75 ngày kể từ ngày sản xuất', 'Bánh tuyệt vời', 0, 0, 1, '<blockquote><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Bánh trọng lượng nhỏ, đóng gói từng cái riêng biệt rất thuận lợi mang theo khi đi du lịch hay đi làm.Chỉ cần mở hộp có thể thưởng thức ngay món tuyệt vời.</span><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\"><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Đặc biệt khi cắn miếng bánh bạn có thể cảm nhận được nhân bánh tan chảy trong miệng, khi nhai nhân bánh và vỏ bánh bánh hòa quyện.</span><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\"><span style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 17.5px;\">Vị bánh béo, ngọt vừa phải ăn không ngán</span><br></blockquote>', '2023-02-17 18:08:30'),
(56, 1, 1, 'Bánh pía trứng muối', 215000, 10, 'img/products/pia/9a.jpg', '/img/products/pia/1a.jpg', '/img/products/pia/8a.jpg', 1, '500g', '80*120cm', 'Hộp màu hồng', 'đậu xanh, đường cát trắng, trứng muối, bột mì', 'Việt Nam', 'tròn', '12 bánh trong 1 hộp', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 1, '<p><span style=\"font-family: \"Lexend Deca\", sans-serif; text-align: justify; color: rgb(255, 0, 0);\"><span style=\"font-weight: 700;\"><a href=\"https://banhbaominh.com/san-pham/banh-pia-trung-300g/\" style=\"color: rgb(255, 0, 0);\">Bánh Pía Trứng muối</a></span></span><span style=\"color: rgb(67, 67, 67); font-family: \"Lexend Deca\", sans-serif; text-align: justify;\"> được làm từ bột mỳ với mỡ heo tạo thành nhiều lớp vỏ mỏng, tan như hàng ngàn lớp lụa được xếp chồng lên nhau. Bên trong là nhân sầu riêng tươi và trứng đã được nghiền mịn, ngọt bùi, thơm nức tạo nên hương vị độc đáo, khó quên.</span><br></p><div><br></div>', '2023-03-15 14:35:00'),
(57, 1, 1, 'bánh pía tan chảy', 200000, 10, '/img/products/pia/17a.jpg', '/img/products/pia/18a.jpg', '/img/products/pia/16a.jpg', 1, '500g', '80*120cm', 'Hộp màu hồng', 'đậu xanh, đường cát trắng, trứng, bột mì', 'Việt Nam', 'tròn', '12 bánh trong 1 hộp', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 1, '<p><span style=\"font-weight: 700; vertical-align: baseline; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: 0px; padding: 0px; margin: 0px; border: 0px; color: rgb(102, 102, 102);\">Bánh pía tan chảy&nbsp;</span><span style=\"color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">còn thích hợp làm món tráng miệng cho các bữa tiệc sinh nhật, liên hoan vô cùng tiện lợi và còn là món đặc sản Việt Nam ý nghĩa.</span><br></p>', '2023-02-17 17:11:50'),
(83, 44, 1, 'Bánh bông lan sữa tuổi thơ', 49000, 10, 'img/products/bao2.jpg', '/img/products/bao1.jpg', '/img/products/bao3.jpg', 1, '500g', '40*120cm', 'trắng', 'sữa, bột mì', 'Việt Nam', 'tròn', '50 chiếc bông lan sữa trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Chất bột từ xưa hương vị tuổi thơ không thay đổi nhé. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">????Bánh bao làm tại lò bánh của nhà em ăn bao ngon????\r\n???? Ăn một lần là ghiền luôn nè ????</span><br></p>', '2023-02-17 17:49:25'),
(84, 44, 1, 'Bánh bông lan sữa vị lá dứa', 320000, 10, 'img/products/bao32.jpg', '/img/products/bao22.jpg', '/img/products/bao222.jpg', 1, '500g', '80*120cm', 'Xanh', 'Bột mì, lá dứa, mem', 'Việt Nam', 'tròn', '50 chiếc bánh bao được bọc gọn gàng', '75 ngày kể từ ngày sản xuất', 'Bánh rất ngon', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">????????BÁNH BAO SỮA THẦN THÁNH???????? Còn ai nhớ món này không, một thời tuổi thơ bị ghiền món này đây. \r\nBánh bao sua tuổi thơ quá trời ngon luôn trời ơi, ko phải em bán mà nói đâu mà nó ngon thiệt ❤️ . </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Bánh bao sữa tuổi thơ mùi vị trẻ con của ngày xưa vẫn không thay đổi, béo và thơm phức  mùi sữa tươi luôn ạ. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Đặc biệt trẻ con rất thích bánh này luôn ạ????????</span><br></p>', '2023-02-17 18:12:03'),
(85, 45, 1, 'Bánh quy mặn tròn', 79000, 10, 'img/products/quyman2.jpg', '/img/products/quyman1.jpg', '/img/products/quyman3.jpg', 1, '500g', '80*120cm', 'Vàng nhạt', 'bột mì, sữa, trứng', 'Việt Nam', 'tròn', '50 chiếc bánh mặn trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Đồ ăn tiệm ăn cô Trà được sản xuất từ những nguyên liệu sạch, bánh mới mỗi ngày được chọn lọc kỹ càng, chế biến đảm bảo an toàn VSTP. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Sản phẩm được đóng gói bằng túi zip chắc chắn. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Hàng được Ship đi bằng hộp Cát-tông cứng nên bạn yên tâm đồ ăn chắc chắn sẽ luôn còn mới và ngon lành cho đến khi bạn nhận được sản phẩm Cô Trà nè!</span><br></p>', '2023-02-17 18:20:33'),
(86, 45, 1, 'Bánh quy đũa', 599000, 10, 'img/products/quydua3.jpg', '/img/products/quydua2.jpg', '/img/products/quydua1.jpg', 1, '500g', '80*120cm', 'Vàng nhạt', 'bột mì, sữa, trứng', 'Việt Nam', 'tròn', '50 chiếc bánh quy đũa trong 1 gói', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Đồ ăn vặt nhà Cô Trà được sản xuất từ những nguyên liệu sạch, bánh mới mỗi ngày được chọn lọc kỹ càng, chế biến đảm bảo an toàn VSTP. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Sản phẩm được đóng gói bằng túi zip chắc chắn. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Hàng được Ship đi bằng hộp Cát-tông cứng nên bạn yên tâm đồ ăn chắc chắn sẽ luôn còn mới và ngon lành cho đến khi bạn nhận được sản phẩm Cô Trà nè!</span><br></p>', '2023-02-17 18:22:11'),
(87, 46, 1, 'Bánh gấu truyền thống', 500000, 30, 'img/products/gau2.jpg', '/img/products/gau3.jpg', '/img/products/gau1.jpg', 1, '500g', '80*120cm', 'Vàng nhạt', 'bột mì, sữa ', 'Việt Nam', 'hình mặt chú gấu', '50 chiếc bánh gấu trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Bánh gấu nhân kem từ lâu đã là món ăn vặt yêu thích của nhiều người, từ các em nhỏ cho đến người lớn.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"> Khi các bạn bỏ chiếc bánh vào miệng các bạn sẽ sẽ từ từ cảm nhận được vị ngon của nhân sữa đậm đà bên trong và vị giòn tan của vỏ bánh bên ngoài. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Nhâm nhi những chiếc bánh gấu kèm một tách trà nóng hay một ly sữa hoặc trà sữa sẽ làm cho bạn thêm sảng khoái và tràn đầy năng lượng.</span><br></p>', '2023-02-17 18:35:21'),
(88, 46, 1, 'Bánh Gấu vị matcha', 599000, 40, 'img/products/gau9.jpg', '/img/products/gau5.jpg', '/img/products/gau8.jpg', 1, '500g', '80*120cm', 'Xanh', 'bột mì, sữa, trứng, matcha', 'Việt Nam', 'hình mặt chú gấu', '50 chiếc bánh gấu trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Bánh gấu nhân kem từ lâu đã là món ăn vặt yêu thích của nhiều người, từ các em nhỏ cho đến người lớn. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Khi các bạn bỏ chiếc bánh vào miệng các bạn sẽ sẽ từ từ cảm nhận được vị ngon của nhân sữa đậm đà bên trong và vị giòn tan của vỏ bánh bên ngoài. </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Nhâm nhi những chiếc bánh gấu kèm một tách trà nóng hay một ly sữa hoặc trà sữa sẽ làm cho bạn thêm sảng khoái và tràn đầy năng lượng.</span><br></p>', '2023-02-17 18:36:49'),
(94, 6, 1, 'bánh in dừa non', 85000, 14, 'img/products/in5.jpg', '/img/products/in3.jpg', '', 1, '360g', '100*100', 'trắng', 'gạo nếp, dừa non, đường...', 'Việt Nam', 'Hình bông hoa', '1 ', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nếu bạn muốn thưởng thức hương vị thơm ngon của loại bánh In mang thương hiệu Tiệm ăn Cô Trà </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh In sẽ là sự lựa chọn hợp lý nhất. Chiếc hộp quý phái, sang trọng làm nên hình thức của một hộp bánh vô cùng bắt mắt thật đáng đồng tiền.</span><br></p>', '2023-03-15 14:34:06'),
(95, 1, 1, 'Bánh pía thịt chà bông bò', 105, 42, 'img/products/bo3.jpg', '/img/products/bo2.jpg', '/img/products/bo1.jpg', 1, '420gr', '120*120cm', 'Hộp màu hồng', 'Chà bông bò, Lạp xưởng bò, mứt bí, mè, hạt dưa, hạ', 'Việt Nam', 'tròn', '12 bánh trong 1 hộp', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Nếu bạn muốn thưởng thức hương vị thơm ngon của nhiều loại bánh pía mang thương hiệu tiệm ăn Cô Trà cùng “quy tụ” lại chung một hộp thì bánh pía Cô Trà sẽ là sự lựa chọn hợp lý nhất.</span><br></p>', '2023-03-15 15:20:37'),
(97, 6, 1, 'Bánh in truyền thống', 65000, 32, 'img/products/hoa.jpg', '/img/products/in76.jpg', '', 1, '320g', '80*120cm', 'trắng', 'bột nếp, đường', 'Việt Nam', 'Hình hoa', '1', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\"> Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2023-03-15 15:27:06'),
(98, 6, 1, 'Bánh in 3 màu đặc biệt', 72000, 23, 'img/products/in4.jpg', '/img/products/in2.jpg', '/img/products/in1.jpg', 1, '320g', '80*120cm', 'trắng', 'gáo nếp, đậu xanh', 'Việt Nam', 'tròn', '1', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2023-03-15 15:33:33'),
(99, 6, 1, 'Bánh in cacao', 75000, 34, 'img/products/3xanh.jpg', '/img/products/33maun.jpg', '/img/products/in3mau.jpg', 1, '320g', '80*120cm', 'trắng', 'gáo nếp, đậu xanh', 'Việt Nam', 'tròn', '1', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn.</span><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2023-03-15 15:32:45'),
(100, 6, 1, 'Bánh in khoai môm', 55000, 100, 'img/products/3a.jpg', '/img/products/2a.jpg', '', 1, '320g', '80*120cm', 'trắng', 'gáo nếp, đậu xanh', 'Việt Nam', 'tròn', '1', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn. Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2023-03-15 15:37:21'),
(101, 6, 1, 'Bánh in tuổi thơ', 32000, 30, 'img/products/5a.jpg', '/img/products/6a.jpg', '', 1, '200g', '30*65', 'trắng', 'gáo nếp, đậu xanh', 'Việt Nam', 'tròn', '12 bánh trong 1 hộp', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn. Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2023-03-15 15:39:26'),
(102, 6, 1, 'bánh in tuổi thơ thập cẩm', 25000, 23, 'img/products/8a.jpg', '', '', 1, '150g', '20*30', 'trắng', 'gáo nếp, đậu xanh', 'Việt Nam', 'tròn', '8 bánh trong 1 hộp', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn. Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2023-03-15 15:41:33'),
(103, 6, 1, 'Bánh in thập cẩm', 52000, 15, 'img/products/1v.jpg', '/img/products/2v.jpg', '', 1, '200g', '20*30', 'trắng', 'gáo nếp, đậu xanh', 'Việt Nam', 'Hình chữ nhật', '12 bánh trong 1 hộp', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nông sản Việt đã nâng tầm món bánh Việt thêm ngon và hấp dẫn. Thương làm sao những chiếc bánh in nếp than mềm mịn, cắn một miếng lớp bột hòa tan trong miệng rồi phần nhân hòa quyện lại, có một chút ngọt thanh, một chút thơm như níu kéo mọi vị giác.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\"> Bánh nếu được dùng chung với trà nóng càng thơm ngon và dậy vị hơn!</span><br></p>', '2023-03-15 15:43:43'),
(104, 7, 1, 'Bánh tét lá dứa', 125000, 34, 'img/products/ladua.jpg', '/img/products/ladua1.jpg', '/img/products/ladua3.jpg', 1, '1200g', '15*40', 'Xanh', 'gạo nếp, lá dứa, đậu xanh, thịt', 'Việt Nam', 'tròn dài', '1', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Bánh tét Cô Trà được làm thủ công từ những nghệ nhân có 20-30 năm kinh nghiệm, nên mang kiểu dáng và hương vị chuẩn của miền Tây.</span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Tất cả nguyên liệu từ lạp xưởng, gạo nếp, đậu xanh hay lá gói bánh cũng đều được lấy chính từ địa phương, bảo đảm màu sắc, mùi vị hệt như trong ký ức của những người con miền Tây xa xứ.</span><br></p><div><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 13px;\"></div>', '2023-03-16 15:48:49'),
(105, 7, 1, 'Bánh tét lá dứa lạc', 130000, 45, 'img/products/xanh3.jpg', 'img/products/xanh2.jpg', '/img/products/xanh6.jpg', 1, '1200g', '15*60cm', 'Xanh', 'gạo nếp, đậu xanh, thịt', 'Việt Nam', 'tròn, dài', '1', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi bóc bánh', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Bánh tét Cô Trà được làm thủ công từ những nghệ nhân có 20-30 năm kinh nghiệm, nên mang kiểu dáng và hương vị chuẩn của miền Tây.</span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Tất cả nguyên liệu từ lạp xưởng, gạo nếp, đậu xanh hay lá gói bánh cũng đều được lấy chính từ địa phương, bảo đảm màu sắc, mùi vị hệt như trong ký ức của những người con miền Tây xa xứ.</span><br></p><div><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 13px;\"></div>', '2023-03-16 15:52:54'),
(106, 7, 1, 'Bánh tét chay', 50000, 100, 'img/products/chay3.jpg', '/img/products/chay2.jpg', '', 1, '1200g', '20*50', 'Xanh', 'gạo nếp, đậu xanh', 'Việt Nam', 'tròn, dài', '1', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Bánh tét Cô Trà được làm thủ công từ những nghệ nhân có 20-30 năm kinh nghiệm, nên mang kiểu dáng và hương vị chuẩn của miền Tây.</span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Tất cả nguyên liệu từ lạp xưởng, gạo nếp, đậu xanh hay lá gói bánh cũng đều được lấy chính từ địa phương, bảo đảm màu sắc, mùi vị hệt như trong ký ức của những người con miền Tây xa xứ.</span><br></p><div><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 13px;\"></div>', '2023-03-16 15:54:55'),
(107, 7, 1, 'Bánh tét đậu mỡ lạp xưởng', 166000, 34, 'img/products/6q.jpg', '', '', 1, '1200g', '20*50', 'Xanh', 'gạo nếp, đậu xanh', 'Việt Nam', 'tròn, dài', '1', '75 ngày kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Bánh tét Cô Trà được làm thủ công từ những nghệ nhân có 20-30 năm kinh nghiệm, nên mang kiểu dáng và hương vị chuẩn của miền Tây.</span></p><p style=\"margin-right: 0px; margin-bottom: 40px; margin-left: 0px; color: rgb(102, 102, 102); font-size: 13px; line-height: 20px;\"><span style=\"color: rgb(74, 77, 78); font-family: Comfortaa, sans-serif; font-size: 15px;\">Tất cả nguyên liệu từ lạp xưởng, gạo nếp, đậu xanh hay lá gói bánh cũng đều được lấy chính từ địa phương, bảo đảm màu sắc, mùi vị hệt như trong ký ức của những người con miền Tây xa xứ.</span><br></p><div><br style=\"color: rgb(102, 102, 102); font-family: Lato, sans-serif; font-size: 13px;\"></div>', '2023-03-16 16:01:00');
INSERT INTO `product` (`ProductID`, `TypeproductID`, `CategoryID`, `ProductName`, `ProductPrice`, `ProductNumber`, `ProductImage1`, `ProductImage2`, `ProductImage3`, `PromotionID`, `ProductMass`, `ProductSize`, `ProductColor`, `ProductMaterial`, `Origin`, `Shape`, `Size`, `Expiry`, `Note`, `StarNumber`, `Evaluate`, `ProductStatus`, `ProductDescription`, `Time`) VALUES
(108, 42, 1, 'Kẹo dừa dẻo bách vị', 75000, 67, 'img/products/dua1.png', '/img/products/dua2.jpg', '/img/products/dua3.jpg', 1, '500g', '30*60', 'Xanh, đỏ, vàng', 'nước cốt dừa , cơm dừa non , mạch nha nếp, đường k', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa dẻo bách vị có vị ngọt đậm đà, được nhiều người lựa chọn làm quà biếu.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\"> Vì được chế biến với nguyên liệu chính là kẹo mạch nha và nước cốt dừa, nên kẹo dừa truyền thống có thuần vị béo ngọt và thơm đặc trưng của dừa và mạch nha.</span><br></p>', '2023-03-17 00:49:51'),
(109, 42, 2, '  Kẹo dừa dứa non cà phê sữa', 80000, 200, 'img/products/dua4.jpg', '', '', 1, '500g', '30*60', 'nâu', 'đường, cà phê, dừa non...', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Dừa Dứa khác biệt so với dừa bình thường ở hương vị cơm dừa có mùi thơm của dứa, mùa nắng thì Dừa Dứa thơm hơn, nước cũng ngọt hơn. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nước Dừa Dứa thì ngọt và mát. Nếu bạn đã ăn kẹo dừa truyền thống thì Kẹo Dừa Dứa còn ngon hơn gấp nhiều lần, đặt biệt hơn nhiều lần như thế.</span><br></p>', '2023-03-17 00:52:25'),
(110, 42, 2, 'Kẹo dừa trái cây ', 79000, 54, 'img/products/dua6.jpg', '/img/products/dua5.jpg', '', 1, '500g', '30*60', 'Nhiều màu', 'Trái cây, cacao, lá dứa, mạch nha...', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo Dừa Trái Cây Bánh Tráng Bách Vị là đặc sản hoàn toàn mới và đầy sáng tạo được sản xuất từ CƠM DỪA NON, là sự pha trộn giữa món mứt dừa non dẻo, lá dứa và kẹo dừa. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Được làm từ cơm dừa non tươi, trộn mạch nha nếp, mè, xào lên cho vừa chín, sau đó được trải đều lên lớp bánh tráng mỏng, cắt thành từng viên vuông nho nhỏ vừa miệng ăn.</span><br></p>', '2023-03-17 00:56:09'),
(111, 42, 2, 'Kẹo dừa non mix 2 vị', 58000, 30, 'img/products/dua7.jpg', '/img/products/dua8.jpg', '', 1, '500g', '30*60', 'Xanh, trắng', 'dứa non, mạch nha, lá dứa', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa non mix 2 vị được làm từ cùi dừa non của quả dừa xiêm dứa một loại dừa vô cùng đặc biệt, tuy trái nhỏ nhưng nước ngọt và thơm mùi lá sâm dứa đặc trưng. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Vì thế kẹo dừa dứa non mềm dẻo và thơm ngậy vị dừa dứa rất ngon và lạ miệng</span><br></p>', '2023-03-17 01:00:30'),
(112, 42, 2, 'Kẹo dừa non dẻo mè lá dứa', 90000, 54, 'img/products/dua9.jpg', '/img/products/dua10.jpg', '/img/products/dua11.jpg', 1, '500g', '30*60', 'xanh của lá dứa', 'mạnh nha, lá dứa...', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Một đặc sản hoàn toàn mới và đầy sáng tạo được sản xuất từ CƠM DỪA NON, là sự pha trộn giữa món mứt dừa non dẻo, lá dứa và kẹo dừa – kẹo dừa non lá dứa bánh tráng dẻo. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Được làm từ cơm dừa non tươi, trộn mạch nha nếp, mè, xào lên cho vừa chín, sau đó được trải đều lên lớp bánh tráng mỏng, cắt thành từng viên vuông nho nhỏ vừa miệng ăn.</span><br></p>', '2023-03-17 01:09:26'),
(113, 42, 2, 'Kẹo dừa nướng cà phê sữa', 75000, 10, 'img/products/dua12.jpg', '/img/products/dua13.jpg', '', 1, '500g', '30*65', 'nâu cafe', 'đường cát, mạch nha, nước cốt dừa, cơm sầu riêng, ', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo Dừa Nướng Cà Phê Sữa có vị ngọt đậm đà, được nhiều người lựa chọn làm quà biếu. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo được chế biến với nguyên liệu chính là kẹo mạch nha, nước cốt dừa, đậu phộng và cà phê sữa.</span><br></p>', '2023-03-17 01:12:37'),
(114, 42, 2, 'Kẹo dừa cuộn bách vị', 70000, 30, 'img/products/dua16.jpg', '/img/products/dua15.jpg', '/img/products/dua14.jpg', 1, '500g', '30*60', 'Nhiều màu', 'đường cát, mạch nha, nước cốt dừa…', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa cuộn bách vị có vị ngọt đậm đà, được nhiều người lựa chọn làm quà biếu. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Vì được chế biến với nguyên liệu chính là kẹo mạch nha và nước cốt dừa, nên kẹo dừa truyền thống có thuần vị béo ngọt và thơm đặc trưng của dừa và mạch nha.</span><br></p>', '2023-03-17 01:15:37'),
(115, 42, 2, 'Kẹo dừa trái cây sấy', 85000, 30, 'img/products/dua17.jpg', '/img/products/dua18.jpg', '/img/products/dua19.jpg', 1, '500g', '30*60', 'Xanh', ' Mạch nha, đường cát, mít, khoai môn, chuối và tha', 'Việt Nam', 'tròn cuộn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa trái cây sấy cuộn bánh tráng một sự pha trộn hoàn hảo cùng trái cây thập cẩm sấy giòn tạo nên một loại kẹo bánh cực kì hấp dẫn. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Khi ăn vào miệng kẹo mềm, ít ngọt, không dính răng. Bánh tráng và trái cây sấy giòn rụm làm cho viên kẹo không bị dai mà mềm như ăn bánh.&nbsp;</span><br></p>', '2023-03-17 01:18:58'),
(116, 42, 2, 'Kẹo dừa dứa non', 80000, 10, 'img/products/dua20.jpg', '/img/products/dua21.jpg', '/img/products/dua22.jpg', 1, '500g', '30*60', 'trắng ngà', 'dừa, mạch nha, mè, dứa...', 'Việt Nam', 'tròn cuộn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa dứa non được làm từ cùi dừa non của quả dừa xiêm dứa một loại dừa vô cùng đặc biệt, tuy trái nhỏ nhưng nước ngọt và thơm mùi lá sâm dứa đặc trưng. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Vì thế kẹo dừa dứa non mềm dẻo và thơm ngậy vị dừa dứa rất ngon và lạ miệng.</span><br></p>', '2023-03-17 01:21:53'),
(117, 42, 2, 'Kẹo dừa dứa nướng đậu phộng', 85000, 30, 'img/products/dua23.jpg', '/img/products/dua24.jpg', '/img/products/dua25.jpg', 1, '500g', '30*60', 'Xanh nhạt', 'đường cát, mạch nha, nước cốt dừa, cơm sầu riêng, ', 'Việt Nam', 'tròn cuộn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Kẹo dừa có vị ngọt đậm đà, được nhiều người lựa chọn làm quà biếu. </span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Vì được chế biến với nguyên liệu chính là kẹo mạch nha và nước cốt dừa, nên kẹo dừa truyền thống có thuần vị béo ngọt và thơm đặc trưng của dừa và mạch nha.</span><br></p>', '2023-03-17 01:23:59'),
(118, 43, 2, 'Kẹo khóm mít dừa non', 90000, 23, 'img/products/t2.jpg', '/img/products/t1.jpg', '/img/products/t4.jpg', 1, '500g', '30*60', 'nâu', ' khóm, mít, dừa non sợi, bánh tráng', 'Việt Nam', 'Hình chữ nhật', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Miếng kẹo ngọt nhẹ, dẻo dẻo chua ngọt của mít khóm hòa quyện béo béo của dừa non.</p><p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Kẹo bao bọc bên ngoài lớp bánh tráng giòn xốp. Ăn kẹo và uống ly trà thì còn gì bằng.</p>', '2023-03-17 01:27:13'),
(119, 43, 2, 'Kẹo khóm cuộn ngào tắc đậu phộng', 95000, 23, 'img/products/t6.jpg', '/img/products/t7.jpg', '/img/products/t8.jpg', 1, '500g', '30*60', 'Nâu', 'Khóm, đậu phộng, tắc, mạch nha, đường', 'Việt Nam', 'tròn cuộn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Kẹo có lớp bánh tráng bên ngoài giòn thơm, nhân khóm sên tắc vị chua chua ngọt ngọt hoà cùng vị béo bùi từ đậu phộng rang chắc chắn sẽ làm hài lòng ngay cả khách hàng khó tính nhất.</p><p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Kẹo được gói trong từng viên kẹo bọc trong túi nylon khi ăn xé vỏ rất tiện lợi bảo quản được lâu hơn.Kẹo Khóm Cuộn Ngào Tắc Đậu Phộng được làm từ những trái khóm tươi ngon, không sử dụng chất bảo quản, hoàn toàn tự nhiên.</p><p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Bạn hãy thử một lần và cảm nhận mùi vị quê bạn nhé! đảm bảo hài lòng ạ!</p>', '2023-03-17 01:30:09'),
(120, 43, 2, 'Kẹo khóm đậu phộng', 80000, 100, 'img/products/t10.jpg', '/img/products/t11.jpg', '/img/products/t12.jpg', 1, '500g', '30*60', 'Nâu', 'đậu phộng, mè, khóm, gừng...', 'Việt Nam', 'tròn cuộn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Kẹo Khóm Đậu Phộng có vị chua chua, ngọt ngọt, có vị thơm béo của đậu phộng, mè, khóm, vị the the của gừng là món ăn vặt hay món ăn nhâm nhi uống trà lý tưởng cho tất cả mọi người. Đặc biệt Kẹo Khóm Đậu Phộng được làm từ những trái khóm tươi ngon, không sử dụng chất bảo quản, hoàn toàn tự nhiên.</p><p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Bạn hãy thử một lần và cảm nhận mùi vị quê bạn nhé! đảm bảo hài lòng ạ!</p>', '2023-03-17 01:32:59'),
(121, 33, 3, 'Tôm đất khô loại 1', 320000, 57, 'img/products/tdat1.jpg', '/img/products/tdat2.jpg', '', 1, '500g', '50*50', 'Vàng nhạt', 'tôm', 'Việt Nam', 'Hình con tôm', 'nhiều con', '6 tháng kể từ ngày sản xuất', 'Tôm rất ngon phù hợp nấu canh nầu...', 0, 0, 0, '<p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif;\">Tôm có vị ngọt đậm đà, thịt mềm và rất ngon. Thường được sử dụng để tiếp đón khách quý tại các gia đình hiện nay.</p><p style=\"margin-bottom: 1.3em; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-size: 1rem;\">Do được chế biến theo cách thủ công và phơi nắng tự nhiên nên tôm ngọt và thơm tự nhiên rất đặc trưng. Sản phẩm tuyệt đối không sử dụng màu hay chất bảo quản nên khách an tâm về chất lượng an toàn thực phẩm ạ.</span></p>', '2023-03-17 01:48:34'),
(122, 33, 3, 'Tôm sắt', 450000, 34, 'img/products/tdat1.jpg', '/img/products/tdat2.jpg', '', 1, '500g', '50*50', 'Vàng nhạt', 'tôm', 'Việt Nam', 'Hình con tôm', 'nhiều con tôm', '6 tháng kể từ ngày sản xuất', 'Tôm rất ngon phù hợp nấu canh nầu...', 0, 0, 0, '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; color: rgb(119, 119, 119); font-size: 13px; line-height: 20px; font-family: &quot;Open Sans&quot;, sans-serif;\">Tôm có vị ngọt đậm đà, thịt mềm và rất ngon. Thường được sử dụng để tiếp đón khách quý tại các gia đình hiện nay.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; color: rgb(119, 119, 119); font-size: 13px; line-height: 20px; font-family: &quot;Open Sans&quot;, sans-serif;\"><span style=\"font-size: 1rem;\">Do được chế biến theo cách thủ công và phơi nắng tự nhiên nên tôm ngọt và thơm tự nhiên rất đặc trưng. Sản phẩm tuyệt đối không sử dụng màu hay chất bảo quản nên khách an tâm về chất lượng an toàn thực phẩm ạ.</span></p>', '2023-03-17 01:51:12'),
(123, 33, 3, 'Tôm khô bạc', 500000, 30, 'img/products/tbac.jpg', '/img/products/tbac2.jpg', '', 1, '500g', '30*65', 'Vàng nhạt', 'tôm', 'Việt Nam', 'Hình con tôm', 'nhiều con tôm', '6 tháng kể từ ngày sản xuất', 'Tôm rất ngon phù hợp nấu canh nầu...', 0, 0, 0, '<h4 style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; color: rgb(119, 119, 119); font-size: 13px; line-height: 20px; font-family: &quot;Open Sans&quot;, sans-serif;\">Tôm có vị ngọt đậm đà, thịt mềm và rất ngon. Thường được sử dụng để tiếp đón khách quý tại các gia đình hiện nay.<br><span style=\"font-size: 1rem;\">Do được chế biến theo cách thủ công và phơi nắng tự nhiên nên tôm ngọt và thơm tự nhiên rất đặc trưng. Sản phẩm tuyệt đối không sử dụng màu hay chất bảo quản nên khách an tâm về chất lượng an toàn thực phẩm ạ.</span></h4>', '2023-03-17 01:54:46'),
(124, 34, 3, 'Cá dứa baby', 150000, 30, 'img/products/duababy1.jpg', '/img/products/duababy2.jpg', '/img/products/duababy3.jpg', 1, '500g', '30*60', 'màu cá', 'Cá được đánh bắt ngoài khơi', 'Việt Nam', 'Hình con cá', '1 con trong gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p style=\"margin-bottom: 1.3em; color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 14.88px;\">Cá dứa nhỏ nguyên con bỏ đi phần đầu và đuôi, muối mặn vừa ăn.</p><p style=\"margin-bottom: 1.3em; color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 14.88px;\">–Cá được phơi 3 nắng, dẻo mềm giữ được độ dai của thịt cá, không bở cũng không cứng. Chiên cá giòn lên ăn kèm cơm trắng cùng canh rau là ngon số 1</p>', '2023-03-17 14:01:20'),
(125, 34, 3, 'Cá dứa khúc', 160000, 10, 'img/products/duakhuc3.jpg', '/img/products/duakhuc2.jpg', '/img/products/duakhuc1.jpg', 1, '500g', '30*60', 'màu cá', 'Cá được đánh bắt ngoài khơi', 'Việt Nam', 'Cá', '1 con trong gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p style=\"margin-bottom: 1.3em; color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 14.88px;\">Cá dứa nhỏ nguyên con bỏ đi phần đầu và đuôi, muối mặn vừa ăn.</p><p style=\"margin-bottom: 1.3em; color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 14.88px;\">Cá được phơi 3 nắng, dẻo mềm giữ được độ dai của thịt cá, không bở cũng không cứng. Chiên cá giòn lên ăn kèm cơm trắng cùng canh rau là ngon số 1</p>', '2023-03-17 14:03:05'),
(126, 34, 3, 'Cá dứa bàn tay', 90000, 34, 'img/products/duabantay1.webp', '/img/products/duabantay2.jpg', '/img/products/duabantay3.webp', 1, '500g', '30*60', 'Xanh', 'Cá được đánh bắt ngoài khơi', 'Việt Nam', 'Cá', '1 con trong gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 14.88px;\">&nbsp;Cá được phơi 3 nắng, dẻo mềm giữ được độ dai của thịt cá, không bở cũng không cứng. </span></p><p><span style=\"color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 14.88px;\">Chiên cá giòn lên ăn kèm cơm trắng cùng canh rau là ngon số 1</span><br></p>', '2023-03-17 14:08:15'),
(127, 48, 1, 'Bánh tráng dẻo chà bông', 55000, 100, 'img/products/trang1.jpg', '/img/products/trang2.jpg', '/img/products/trang3.jpg', 1, '300g', '30*60', 'trắng đục của bánh tráng, vàng của trà bông', 'bánh tráng dẻo tôm, chà bông, dầu tỏi sa tế, hành ', 'Việt Nam', 'Hình vuông', '30 bánh trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh tráng được đóng gói trong túi theo sấp 300gr, ăn rất ngon, hay được du khách và mọi người mua ăn. Quý khách có thể dùng ngay.&nbsp;</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\"> Cái dẻo của bánh tráng phơi sương, vị mặn của muối, cay cay của ớt, thơm và giòn của hành phi, tỏi phi và chà bông. Tất cả hòa vào nhau tạo thành sự hấp dẫn với thực khách.</span><br></p>', '2023-03-17 15:53:22'),
(129, 48, 1, 'Bánh tráng dẻo khô gà', 52000, 30, 'img/products/trang4.jpg', '/img/products/trang5.jpg', '/img/products/trang6.jpg', 1, '500g', '30*60', 'trắng đục của bánh tráng, vàng của khô gà', 'tráng dẻo tôm, khô bò, dầu hành phi, hành lá, đậu ', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh tráng được đóng gói trong túi theo sấp 200gr, ăn rất ngon, hay được du khách và mọi người mua ăn. Cái dẻo của bánh tráng phơi sương, vị mặn của muối, cay cay của ớt, thơm và giòn của hành phi, tỏi phi và khô gà. Tất cả hòa vào nhau tạo thành sự hấp dẫn với thực khách.</span><br></p>', '2023-03-17 17:59:30'),
(130, 48, 1, 'Bánh tráng dẻo khô bò', 55000, 30, 'img/products/trang7.jpg', '/img/products/trang8.jpg', '/img/products/trang9.jpg', 1, '500g', '30*60', 'trắng đục của bánh tráng, vàng của khô bò', 'tráng dẻo tôm, khô bò, dầu hành phi, hành lá, đậu ', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh tráng được đóng gói trong túi theo sấp 200gr, ăn rất ngon, hay được du khách và mọi người mua ăn. Cái dẻo của bánh tráng phơi sương, vị mặn của muối, cay cay của ớt, thơm và giòn của hành phi, tỏi phi và khô bò. Tất cả hòa vào nhau tạo thành sự hấp dẫn với thực khách.</span><br></p>', '2023-03-17 18:01:28'),
(131, 48, 1, 'Bánh tráng dẻo cuốn hành phi', 45000, 23, 'img/products/trang10.jpg', '/img/products/trang11.jpg', '/img/products/trang12.jpg', 1, '500g', '30*60', 'trắng đục của bánh tráng, vàng của hành phi', 'bột gạo, hành lá, ớt, hành phi, bánh dày, nhiều hà', 'Việt Nam', 'vuông', '6 cái trong 1 túi', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh tráng được đóng gói trong túi theo sấp 200gr, ăn rất ngon, hay được du khách và mọi người mua ăn. Cái dẻo của bánh tráng phơi sương, vị mặn của muối, cay cay của ớt, thơm và giòn của hành phi và tỏi phi. Tất cả hòa vào nhau tạo thành sự hấp dẫn với thực khách</span><br></p>', '2023-03-17 18:03:49'),
(132, 48, 1, 'Bánh tráng cuộn khô bò', 54000, 30, 'img/products/trang13.jpg', '/img/products/trang14.jpg', '/img/products/trang15.jpg', 1, '500g', '30*60', 'trắng đục của bánh tráng, vàng của khô bò', 'bánh tráng trắng, khô bò, hành lá, bánh dày, nhiều', 'Việt Nam', 'vuông', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh tráng được đóng gói trong túi theo sấp, ăn rất ngon, hay được du khách và mọi người mua ăn. Cái dẻo của bánh tráng phơi sương, vị mặn của muối, cay cay của ớt, thơm và giòn của hành phi, tỏi phi và khô bò. Tất cả hòa vào nhau tạo thành sự hấp dẫn với thực khách.</span><br></p>', '2023-03-17 18:06:24'),
(133, 48, 1, 'Bánh tráng trộn sa tế', 45000, 30, 'img/products/trang16.jpg', '/img/products/trang17.jpg', '/img/products/trang18.jpg', 1, '500g', '30*60', 'trắng đục của bánh tráng, vàng của sa tế', 'bánh tráng trắng, đậu phộng, dầu, tỏi, muối, hành ', 'Việt Nam', 'hình tròn cuộn', '30 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh tráng được đóng gói trong túi theo sấp, ăn rất ngon, hay được du khách và mọi người mua ăn. Cái dẻo của bánh tráng phơi sương, vị mặn của muối, cay cay của ớt, thơm và giòn của hành phi, tỏi phi và sa tế. Tất cả hòa vào nhau tạo thành sự hấp dẫn với thực khách.</span><br></p>', '2023-03-17 18:08:11'),
(134, 34, 3, 'Măng khô xé sợi', 150000, 100, 'img/products/mang1.jpg', '/img/products/mang2.jpg', '/img/products/mang3.jpg', 1, '500g', '30*60', 'Vàng nhạt', 'Măng', 'Việt Nam', 'Hình măng', '1 túi măng', '12 tháng', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Măng khô xé sợi được chế biến từ măng tươi phơi kiệt nước và phơi khô hoàn toàn tự nhiên. Đến mùa măng, bà con ở đây lên rừng thu hái, sau đó mang về phơi khô. Nếu trời nắng lớn thì măng được phơi khô cho màu vàng tự nhiên, còn nếu thời tiết không thuận lợi thì người ta sẽ treo măng lên gác bếp để măng được sấy khô. Khi măng đã khô kiệt nước, họ sẽ xé măng ra thành sợi nhỏ sau đó phơi khô 1 lần nữa.</span><br></p>', '2023-03-17 19:11:52'),
(135, 34, 3, 'Măng le khô', 155000, 100, 'img/products/mang4.jpg', '/img/products/mang5.jpg', '/img/products/mang6.jpg', 1, '500g', '30*60', 'Vàng nhạt', 'Măng', 'Việt Nam', 'Hình măng', '1 túi măng', '12 tháng', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Măng le khô được lấy từ phần ngọn của cây măng le cắt lát phơi khô, và đây là loại măng le ngon nhất trong các loài măng như măng tre, măng nứa, măng trúc…nhờ tính đặc ruột, vị ngọt, bùi, không đắng chát,…</span><br></p>', '2023-03-17 19:14:01'),
(136, 34, 3, 'Măng nứa khô', 150000, 100, 'img/products/mang7.jpg', '/img/products/mang8.jpg', '/img/products/mang9.jpg', 1, '500g', '30*60', 'Vàng nhạt', 'Măng', 'Việt Nam', 'Hình măng', '1 túi măng', '12 tháng', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Thực phẩm được phơi khô tự nhiên và dễ bảo quản được lâu dài, dễ sắp xếp và vận chuyển đi xa khi cho tặng, làm quà biếu cho người thân trong nước và đi nước ngoài!</span><br></p>', '2023-03-17 19:15:45'),
(137, 39, 3, 'Nấm mèo khô', 60000, 100, 'img/products/nam1.jpg', '/img/products/nam2.jpg', '/img/products/nam3.jpg', 1, '250g', '30*60', 'nâu đen', 'nấm', 'Việt Nam', 'Hình chiếc nấm', '30-40 chiếc nấm trong túi', '12 tháng', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nấm mèo khô là một trong các loài nấm ăn có đặc tính bổ trợ máu huyết cực kỳ hiệu quả, nhiều Vitamin và khoáng chất, hỗ trợ tim mạch và chống mỡ máu tốt</span><br></p>', '2023-03-17 19:19:35'),
(138, 39, 3, 'Nấm mèo khô thái sợi', 60000, 100, 'img/products/nam4.jpg', '/img/products/nam5.jpg', '/img/products/nam6.jpg', 1, '250g', '30*60', 'nâu đen', 'nấm', 'Việt Nam', 'hình nấm', 'nấm thái sợi ', '12 tháng', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nấm Mèo Khô là một trong các loài nấm ăn có đặc tính bổ trợ máu huyết cực kỳ hiệu quả, nhiều Vitamin và khoáng chất, hỗ trợ tim mạch và chống mỡ máu tốt</span><br></p>', '2023-03-17 19:22:20'),
(139, 39, 3, 'Nấm rơm', 62000, 100, 'img/products/nam7.jpg', '/img/products/nam8.jpg', '/img/products/nam9.jpg', 1, '500g', '30*60', 'nâu đen', 'nấm', 'Việt Nam', 'Hình cây nấm', '30 nấm trong 1 túi', '12 tháng', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Nấm rơm sấy khô là nấm ăn có nhiều giá trị dinh dưỡng và dược tính tốt cho sức khỏe. Sử dụng dễ dàng như nấm tươi sau khi ngâm nước 20-30 phút. Trong nấm khô có hàm lượng Protein cao và nhiều loại vitamin, nhất là vitamin D tốt cho xương và răng chắc khỏe</span><br></p>', '2023-03-17 19:24:25'),
(140, 40, 3, 'Củ hủ dừa sấy khô túi lớn 500g', 600000, 100, 'img/products/cu1.jpg', '/img/products/cu2.jpg', '/img/products/cu3.jpg', 1, '500g', '30*60', 'Vàng nhạt', 'củ hủ', 'Việt Nam', 'hình củ hủ', 'Nhiều củ hủ', '6 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Củ Hủ Dừa là phần non nhất trên đọt cây dừa. Củ Hủ Dừa có vị ngọt, mát dịu, là loại thực phẩm giàu chất dinh dưỡng, rất tốt cho sức khỏe, tốt cho hệ tiêu hóa và có nhiều khoáng chất</span><br></p>', '2023-03-17 19:28:33'),
(141, 40, 3, 'Củ hủ dừa túi nhỏ 50g', 60000, 100, 'img/products/cu1.jpg', 'img/products/cu2.jpg', 'img/products/cu3.jpg', 1, '50g', '30*60', 'Vàng nhạt', 'củ hủ', 'Việt Nam', 'hình củ hủ', 'Nhiều củ hủ', '6 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, \"Helvetica Neue\", helvetica, arial, sans-serif; font-size: 15px;\">Củ hủ dừa là phần non nhất trên đọt cây dừa. Củ hủ dừa có vị ngọt, mát dịu, là loại thực phẩm giàu chất dinh dưỡng, rất tốt cho sức khỏe, tốt cho hệ tiêu hóa và có nhiều khoáng chất</span><br></p>', '2023-03-29 22:24:42'),
(142, 40, 3, 'Củ sen sấy khô', 150000, 100, 'img/products/cu4.jpg', '/img/products/cu5.jpg', '/img/products/cu6.jpg', 1, '500g', '30*60', 'vàng đục', 'củ sen', 'Việt Nam', 'Hình tròn', '40-50 củ sen thái lát mỏng', '6 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Củ sen (còn được gọi là ngó sen) là thực phẩm phổ biến ở nước ta. Củ sen có rất nhiều tác dụng đối với cơ thể con người. Củ sen có rất nhiều tác dụng đối với cơ thể con người. Vì thế mà nó không đơn thuần chỉ là một món ăn mà đã trở thành một vị thuốc trong Đông y.</span><br></p>', '2023-03-17 19:32:10'),
(143, 46, 1, 'Bánh Phồng Sữa Nước Cốt Dừa Ăn Liền Mix 2 Vị', 65000, 100, 'img/products/phong1.jpg', '/img/products/phong2.jpg', '/img/products/phong3.jpg', 1, '500g', '30*65', 'trắng, xanh', 'nước cốt dừa khoai mì, đường cát, sầu riêng, lá dứ', 'Việt Nam', 'hình tròn', 'túi có 20 cái', '6 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">Bánh có vị béo của nước cốt dừa, hòa quyện cùng với mùi thơm của sầu riêng, độ mịn, mềm của bột sắn (mì), có thêm vị ngọt dịu nhưng không ngán, dùng làm món ăn vặt thì còn gì tuyệt hơn.</span><br></p>', '2023-03-17 19:39:06'),
(144, 46, 1, 'Bánh Phồng Sữa Nước Cốt Dừa', 35000, 100, 'img/products/phong4.jpg', '/img/products/phong5.jpg', '/img/products/phong6.jpg', 1, '200g', '30*60', 'trắng', 'nước cốt dừa khoai mì, đường cát, sầu riêng, lá dứ', 'Việt Nam', 'tròn', 'túi có 20 cái', '6 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">&nbsp;Bánh có vị béo của nước cốt dừa, hòa quyện với mùi thơm của sầu riêng, độ mịn, mềm của bột sắn (mì), có vị ngọt nhưng không ngán, dùng làm món ăn vặt thì còn gì tuyệt hơn.</span><br></p>', '2023-03-17 19:41:36'),
(145, 46, 1, 'Bánh Phồng Sữa Nước Cốt Dừa Lá Dứa', 40000, 100, 'img/products/phong7.jpg', '/img/products/phong8.jpg', '/img/products/phong9.jpg', 1, '200g', '30*60', 'xanh', 'nước cốt dừa khoai mì, đường cát, sầu riêng, lá dứ', 'Việt Nam', 'tròn', 'túi có 20 cái', '6 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p><span style=\"color: rgb(34, 34, 34); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px;\">&nbsp;Bánh có vị béo của nước cốt dừa, hòa quyện với mùi thơm của sầu riêng, độ mịn, mềm của bột sắn (mì), có vị ngọt nhưng không ngán, dùng làm món ăn vặt thì còn gì tuyệt hơn.</span><br></p>', '2023-03-17 19:44:52'),
(146, 47, 1, 'Bánh Xà Lam Dừa Tam Giác Lớn', 70000, 100, 'img/products/lam1.jpg', '/img/products/lam2.jpg', '/img/products/lam3.jpg', 1, '700g', '80*120cm', 'Vàng đậm', 'Cơm dừa, bột mì, đường...', 'Việt Nam', 'Hình tam giác', 'Hộp 4 cái lớn', '6 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Bánh nướng kiểu nhà quê truyền thống. Dừa rám nạo nguyên chất không pha trộn! Cơm Dừa bùi thơm không quá ngọt gắt và không bị khô.</p><p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Bánh dung dị, chân chất hương vị quê, làm xao xuyến lòng người. Những người con xa quê bất chợt thấy món bánh này đâu đó chắc chắn cảm giác nhớ nhà, nhớ quê hương rạo rực ngay trong người nên người ta gọi là bánh xà lam.</p>', '2023-03-17 19:50:16'),
(147, 47, 1, 'Bánh Xà Lam Dừa', 55000, 100, 'img/products/lam4.jpg', '/img/products/lam5.jpg', '/img/products/lam6.jpg', 1, '500g', '30*60', 'Vàng nhạt', 'bột mì, đường, dừa', 'Việt Nam', 'tam giá', '18 bánh trong 1 túi', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở túi', 0, 0, 0, '<p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Bánh nướng kiểu nhà quê truyền thống. Dừa rám nạo nguyên chất không pha trộn ! Cơm Dừa bùi thơm không quá ngọt gắt và không bị khô.</p><p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Bánh dung dị, chân chất hương vị quê, làm xao xuyến lòng người. Những người con xa quê bất chợt thấy món bánh này đâu đó chắc chắn cảm giác nhớ nhà, nhớ quê hương rạo rực ngay trong người nên người ta gọi là bánh xà lam.</p>', '2023-03-18 00:26:23'),
(148, 47, 1, 'Bánh xà lam lá dứa', 55000, 100, 'img/products/lam7.jpg', '', '', 1, '500g', '30*60', 'Xanh', 'bột mì, đường, lá dứa', 'Việt Nam', 'Hình chữ nhật', '18 bánh trong 1 túi', '6 tháng kể từ ngày sản xuất', 'Bảo quản: Nơi thoáng mát tránh ánh nắng chiếu trực', 0, 0, 0, '<p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Bánh nướng kiểu nhà quê truyền thống. Dừa rám nạo nguyên chất không pha trộn ! Cơm Dừa bùi thơm không quá ngọt gắt và không bị khô.</p><p style=\"border: 0px; font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 15px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(34, 34, 34);\">Bánh dung dị, chân chất hương vị quê, làm xao xuyến lòng người. Những người con xa quê bất chợt thấy món bánh này đâu đó chắc chắn cảm giác nhớ nhà, nhớ quê hương rạo rực ngay trong người nên người ta gọi là bánh xà lam.</p>', '2023-03-18 01:55:46'),
(149, 38, 3, 'Lạp xưởng đặc biệt', 225000, 10, 'img/products/s4.jpg', '/img/products/s4.jpg', 'img/products/s2.jpg', 4, '1200g', '60*60', 'Vàng nhạt', 'thịt, trứng, gia vị', 'Việt Nam', 'tròn, dài', '10 cái trong 1 gói', '6 tháng kể từ ngày sản xuất', 'Ăn ngay khi mở hộp', 0, 0, 0, '<p><b><span style=\"font-size: 13px; color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Lạp Xưởng Trứng Muối là sản phẩm mới nhất năm 2021 của thương hiệu lạp xưởng Cô Trà. </span><span style=\"font-size: 13px; color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Hương vị đậm đà của trứng muối hòa với vị ngon đặc trưng của lạp xưởng tạo nên sự hòa quyện không ngán cho món ăn thêm ngon</span><span style=\"font-size: 13px; color: rgb(32, 33, 36); font-family: arial, sans-serif;\">.</span></b><br></p>', '2023-03-29 22:30:16'),
(150, 36, 3, 'Muối tôm', 40000, 20, 'img/products/muoi1.webp', 'img/products/muoi3.jpg', '', 1, '200g', '40*50', 'vàng nhạt', 'muối, ớt, đường', 'Việt Nam', '18 tháng kể từ ngày sản xuất', '1 lọ trong 1 hộp', '12 tháng', 'vặn chặt nắp sau khi sử dụng, bảo quản nơi khô ráo', 0, 0, 0, '<p style=\"line-height: 1.3em; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal;\"><b><span times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"\">MUỐI ỚT CÔ TRÀ MANG MÙI VỊ ĐẶC TRƯNG CỦA LOẠI ĐẶC SẢN MUỐI ỚT TÂY NINH, NHƯNG NỔI BẬT Ở KẾT CẤU HẠT MUỐI NHUYỄN, GIÚP DỄ CHẤM, DỄ NÊM NẾM KHI ƯỚP CÁC MÓN HẢI SẢN NƯỚNG VÀ CÁC MÓN ĂN VẶT NỔI TIẾNG TẠI VIỆT NAM.<br></span><span style=\"text-align: justify;\">ĐẶC BIỆT, TIÊU CHÍ HOÀN TOÀN “KHÔNG MÀU TỔNG HỢP, KHÔNG CHẤT BẢO QUẢN NHÂN TẠO” GIÚP CHO SẢN PHẨM LUÔN LÀ SỰ LỰA CHỌN AN TOÀN, CHẤT LƯỢNG CỦA NGƯỜI TIÊU DÙNG.</span></b></p>', '2023-03-29 22:46:55'),
(151, 36, 3, 'Muối ớt xanh', 42000, 23, 'img/products/muoi2.webp', '/img/products/muoi2.webp', '/img/products/muoi2.webp', 1, '200g', '20*30', 'Xanh', 'muối, ớt, đường', 'Việt Nam', '', '1 lọ trong 1 hộp', '12 tháng', 'vặn chặt nắp sau khi sử dụng, bảo quản nơi khô ráo', 0, 0, 0, '<p><b><span times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\" style=\"\">MUỐI ỚT CÔ TRÀ MANG MÙI VỊ ĐẶC TRƯNG CỦA LOẠI ĐẶC SẢN MUỐI ỚT TÂY NINH, NHƯNG NỔI BẬT Ở KẾT CẤU HẠT MUỐI NHUYỄN, GIÚP DỄ CHẤM, DỄ NÊM NẾM KHI ƯỚP CÁC MÓN HẢI SẢN NƯỚNG VÀ CÁC MÓN ĂN VẶT NỔI TIẾNG TẠI VIỆT NAM.<br></span><span style=\"text-align: justify;\">ĐẶC BIỆT, TIÊU CHÍ HOÀN TOÀN “KHÔNG MÀU TỔNG HỢP, KHÔNG CHẤT BẢO QUẢN NHÂN TẠO” GIÚP CHO SẢN PHẨM LUÔN LÀ SỰ LỰA CHỌN AN TOÀN, CHẤT LƯỢNG CỦA NGƯỜI TIÊU DÙNG.</span></b><br></p>', '2023-03-29 22:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `PromotionID` int(11) NOT NULL,
  `PromotionName` varchar(100) NOT NULL,
  `PromotionType` varchar(20) NOT NULL,
  `PromotionPrice` float(11,0) NOT NULL,
  `PromotionDate` datetime NOT NULL,
  `PromotionStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`PromotionID`, `PromotionName`, `PromotionType`, `PromotionPrice`, `PromotionDate`, `PromotionStatus`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2023-03-05 00:40:48', 0),
(2, 'Giảm giá', 'GiamGia', 10, '2023-02-11 10:35:14', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 30000, '2023-02-11 10:35:23', 1),
(4, 'Giảm giá 10%', 'Giamgia', 20000, '2023-02-26 14:09:24', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2023-02-26 14:09:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `typeproduct`
--

CREATE TABLE `typeproduct` (
  `TypeproductID` int(11) NOT NULL,
  `TypeproductName` varchar(70) NOT NULL,
  `TypeImage` varchar(200) NOT NULL,
  `TypeDetail` varchar(200) NOT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `typeproduct`
--

INSERT INTO `typeproduct` (`TypeproductID`, `TypeproductName`, `TypeImage`, `TypeDetail`, `CategoryID`) VALUES
(1, 'Bánh pía ', 'a1.jpg', 'Bánh píaa', 1),
(6, 'Bánh in', 'a2.jpg', 'Các sản phẩm của bánh in', 1),
(7, 'Bánh tét', 'a11.jpg', 'Các loại sản phẩm bánh tét', 1),
(33, 'Tôm khô', 'tomkho.jpg', 'Các loại tôm khô', 3),
(34, 'Măng', 'mang1.jpg', 'Các loại măng khô', 3),
(36, 'Muối', 's18.jpg', 'Các loại muối khô', 3),
(38, 'Lạp xưởng', 's1.jpg', 'Các loại lạp xưởng', 3),
(39, 'Nấm', 'nam1.jpg', 'Các loại nấm', 3),
(40, 'Củ', 'cu1.jpg', 'Các loại cá lóc khô', 3),
(42, 'Kẹo dừa', 'yy.jpg', 'Các loại kẹo dẻo', 2),
(43, 'Kẹo khóm', 't3.jpg', 'Các loại kẹo khóm', 2),
(44, 'Bánh tuổi thơ', 'bao2.jpg', '', 1),
(45, 'Bánh quy', 'quyman1.jpg', '', 1),
(46, 'bánh phồng sữa', 'gau5.jpg', '', 1),
(47, 'bánh xà lam', 'lam1.jpg', 'Các loại bánh xà lam', 1),
(48, 'bánh tráng', 'trang1.jpg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `UserFirstname` varchar(20) NOT NULL,
  `UserLastname` varchar(20) NOT NULL,
  `UserGender` varchar(10) NOT NULL,
  `UserPhone` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `UserAddress` varchar(200) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `UserPassword` varchar(100) NOT NULL,
  `DecentralizationID` int(11) NOT NULL,
  `UserStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserFirstname`, `UserLastname`, `UserGender`, `UserPhone`, `Email`, `UserAddress`, `Username`, `UserPassword`, `DecentralizationID`, `UserStatus`) VALUES
(2, 'Duong', 'A ', 'Nam', '0976942494', 'duonglslata@gmail.com', 'An Hải', 'duongls', 'e99a18c428cb38d5f260853678922e03', 3, 1),
(3, 'Duong', 'B', 'Nữ', '0976942495', 'duongls@gmail.com', 'An Bình', 'duongAB', 'e10adc3949ba59abbe56e057f20f883e', 3, 1),
(12, 'Trịnh', 'Phúc', 'Nam', '0383425354', 'phucaguero611@gmail.com', 'Đà Nẵng', 'liqin', 'e99a18c428cb38d5f260853678922e03', 2, 1),
(13, 'Nguyễn', 'Trí', 'Nam', '02354129852', 'tringuyendb@gmail.com', '', 'trimen', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(14, 'admin', 'admin', 'Nam', '23423', 'admin@gmail.com', 'thái nguyên\r\n', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', 2, 1),
(15, 'a', 'c', 'Nữ', '1234567890', 'a@gmail.com', '', '123456', '8929c46b02ed312239f6f99022739f15', 1, 1),
(16, 'Admin', 'Admin', 'Nữ', '0123456789', 'Admin@gmail.com', '', 'Admin1', '9acfbc4f1d28307941f339288f9b54e8', 2, 1),
(17, 'nhu', 'tam', 'Nữ', '0897654643', 'nhutam12@gmail.com', 'hà nội', 'nhutam', 'e10adc3949ba59abbe56e057f20f883e', 3, 1),
(18, 'Nguyen', 'Nam', '', '0123456789', 'khachhang1@gmail.com', '', 'khachhang1', '556a6ed1825dc20c0bd8f8bba91912e7', 1, 1),
(19, 'vu', 'tam', '', '0978653899666', 'tamtam1@gmail.com', '', 'tamtan', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(20, 'Hải', 'yến', 'Nữ', '0845940898', 'Admin123@gmail.com', 'thái nguyên', 'Admin12', 'e10adc3949ba59abbe56e057f20f883e', 2, 1),
(21, 'yen', 'hai', '', '0123456789', 'tranthihaiyen13113@gmail.com', '', 'vutam12', 'e10adc3949ba59abbe56e057f20f883e', 1, 1),
(22, 'Nguyễn', 'Thao', '', '1232321212', 'thao3022@gmail.com', '', 'Thao123', 'e10adc3949ba59abbe56e057f20f883e', 2, 1),
(23, 'Bố', 'Admin', '', '1234151234', 'admin111@gmail.com', '', 'admin111', 'e10adc3949ba59abbe56e057f20f883e', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`bannerid`) USING BTREE;

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillID`) USING BTREE,
  ADD KEY `MaKH` (`UserID`) USING BTREE;

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD KEY `MaHD` (`BilldetailID`) USING BTREE,
  ADD KEY `MaSP` (`ProductID`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`) USING BTREE;

--
-- Indexes for table `decentralization`
--
ALTER TABLE `decentralization`
  ADD PRIMARY KEY (`DecentralizationID`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`) USING BTREE,
  ADD KEY `LoaiSP` (`TypeproductID`) USING BTREE,
  ADD KEY `MaKM` (`PromotionID`) USING BTREE;

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`PromotionID`) USING BTREE;

--
-- Indexes for table `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD PRIMARY KEY (`TypeproductID`) USING BTREE,
  ADD KEY `MaDM` (`CategoryID`) USING BTREE,
  ADD KEY `MaLSP` (`TypeproductID`,`CategoryID`) USING BTREE,
  ADD KEY `MaLSP_2` (`TypeproductID`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`) USING BTREE,
  ADD KEY `MaQuyen` (`DecentralizationID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `bannerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `decentralization`
--
ALTER TABLE `decentralization`
  MODIFY `DecentralizationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `PromotionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `typeproduct`
--
ALTER TABLE `typeproduct`
  MODIFY `TypeproductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`BilldetailID`) REFERENCES `bill` (`BillID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`PromotionID`) REFERENCES `promotion` (`PromotionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`TypeproductID`) REFERENCES `typeproduct` (`TypeproductID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `typeproduct`
--
ALTER TABLE `typeproduct`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`DecentralizationID`) REFERENCES `decentralization` (`DecentralizationID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
