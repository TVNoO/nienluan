-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2016 at 02:52 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryID` bigint(20) NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryID`, `categoryName`) VALUES
(1, 'ÁO SƠ MI'),
(2, 'ÁO THUN'),
(3, 'QUẦN JEAN'),
(4, 'QUẦN KAKI'),
(5, 'GIÀY'),
(7, 'BALO-TÚI XÁCH'),
(8, 'NÓN');

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE IF NOT EXISTS `code` (
`id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id`, `code`, `rate`) VALUES
(1, 'KHM', 10),
(2, 'OOS', 20);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`No` int(11) NOT NULL,
  `customerName` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customerEmail` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `contentFeedback` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dateFeedback` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`No`, `customerName`, `customerEmail`, `title`, `contentFeedback`, `dateFeedback`) VALUES
(5, 'Tran Van Ngoan', 'illlatvn1995@gmail.com', 'Thắc mắc', 'Xin vùng long thêm mặt hàng', '2016-10-31 11:45:54'),
(6, 'Tran Van Ngoan', 'illlatvn1995@gmail.com', 'Thắc mắc', 'Xin vùng long thêm mặt hàng', '2016-10-31 11:46:18'),
(8, 'Tran Van Ngoan', 'illlatvn1995@gmail.com', 'Thắc mắc', 'Xin vùng long thêm mặt hàng', '2016-10-31 11:46:32'),
(9, 'Tran Van Ngoan', 'illlatvn1995@gmail.com', 'Ho Tro', 'Ok', '2016-10-31 11:48:26'),
(10, '', '', '', '', '2016-11-08 08:20:47'),
(11, '', '', '', '', '2016-11-08 08:21:48'),
(12, '', '', '', '', '2016-11-08 08:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(11) NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dateNews` datetime NOT NULL,
  `content` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `topic`, `title`, `image`, `dateNews`, `content`) VALUES
(2, 'Tin Tức Thời Trang', 'Thời Trang Mùa Tựu Trường', '1.jpg', '2016-10-12 20:02:37', '<P style="MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt" class=MsoNormal><SPAN style="LINE-HEIGHT: 115%; FONT-FAMILY: ''Times New Roman'',''serif''; FONT-SIZE: 12pt" lang=EN-US>Sơ mi caro là một trong những phong cách hàng đầu được giới trẻ yêu thích vì độ năng động và trẻ trung vốn có. Và đương nhiên <b style="color:blue;">OoShop</b> chúng tôi cũng không thể bỏ lỡ bộ sưu tập HOT xình xịch như thế này vào mùa tựu trường. </SPAN></P>\r\n                            <P style="MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt" class=MsoNormal><SPAN style="LINE-HEIGHT: 115%; FONT-FAMILY: ''Times New Roman'',''serif''; FONT-SIZE: 12pt" lang=EN-US>Stress Style nổi bần bật với Caro sọc trắng lam, đơn giản nhưng cũng đủ tự tin xuống phố rồi nhé<o:p></o:p></SPAN></P>\r\n                            <P style="MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt" class=MsoNormal><SPAN style="LINE-HEIGHT: 115%; FONT-FAMILY: ''Times New Roman'',''serif''; FONT-SIZE: 12pt" lang=EN-US><o:p>&nbsp;<IMG  width=700px border=0 hspace=0 alt="" align=baseline src="https://cdn2.yame.vn/cimg/so-mi-caro--come-back-to-school-va-hon-the-nua-/2d42ad62-ed47-0a00-02f1-0012a521f7d2.jpg"></o:p></SPAN></P>'),
(4, 'Tin Tức Thời Trang', 'Thời Trang Mùa Tựu Trường', '3.jpg', '2016-10-12 20:06:12', '<P style="MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt" class=MsoNormal><SPAN style="LINE-HEIGHT: 115%; FONT-FAMILY: ''Times New Roman'',''serif''; FONT-SIZE: 12pt" lang=EN-US>Sơ mi caro là một trong những phong cách hàng đầu được giới trẻ yêu thích vì độ năng động và trẻ trung vốn có. Và đương nhiên <b style="color:blue;">OoShop</b> chúng tôi cũng không thể bỏ lỡ bộ sưu tập HOT xình xịch như thế này vào mùa tựu trường. </SPAN></P>\r\n                            <P style="MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt" class=MsoNormal><SPAN style="LINE-HEIGHT: 115%; FONT-FAMILY: ''Times New Roman'',''serif''; FONT-SIZE: 12pt" lang=EN-US>Stress Style nổi bần bật với Caro sọc trắng lam, đơn giản nhưng cũng đủ tự tin xuống phố rồi nhé<o:p></o:p></SPAN></P>\r\n                            <P style="MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt" class=MsoNormal><SPAN style="LINE-HEIGHT: 115%; FONT-FAMILY: ''Times New Roman'',''serif''; FONT-SIZE: 12pt" lang=EN-US><o:p>&nbsp;<IMG  width=700px border=0 hspace=0 alt="" align=baseline src="https://cdn2.yame.vn/cimg/so-mi-caro--come-back-to-school-va-hon-the-nua-/2d42ad62-ed47-0a00-02f1-0012a521f7d2.jpg"></o:p></SPAN></P>'),
(7, 'Khuyến Mãi', 'Thời Trang Mùa Tựu Trường', '3.jpg', '2016-10-13 12:24:23', '<p>&lt;P style=&quot;MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt&quot; class=MsoNormal&gt;&lt;SPAN style=&quot;LINE-HEIGHT: 115%; FONT-FAMILY: &#39;Times New Roman&#39;,&#39;serif&#39;; FONT-SIZE: 12pt&quot; lang=EN-US&gt;Sơ mi caro l&agrave; một trong những phong c&aacute;ch h&agrave;ng đầu được giới trẻ y&ecirc;u th&iacute;ch v&igrave; độ năng động v&agrave; trẻ trung vốn c&oacute;. V&agrave; đương nhi&ecirc;n &lt;b style=&quot;color:blue;&quot;&gt;OoShop&lt;/b&gt; ch&uacute;ng t&ocirc;i cũng kh&ocirc;ng thể bỏ lỡ bộ sưu tập HOT x&igrave;nh xịch như thế n&agrave;y v&agrave;o m&ugrave;a tựu trường. &lt;/SPAN&gt;&lt;/P&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;P style=&quot;MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt&quot; class=MsoNormal&gt;&lt;SPAN style=&quot;LINE-HEIGHT: 115%; FONT-FAMILY: &#39;Times New Roman&#39;,&#39;serif&#39;; FONT-SIZE: 12pt&quot; lang=EN-US&gt;Stress Style nổi bần bật với Caro sọc trắng lam, đơn giản nhưng cũng đủ tự tin xuống phố rồi nh&eacute;&lt;o:p&gt;&lt;/o:p&gt;&lt;/SPAN&gt;&lt;/P&gt;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;P style=&quot;MARGIN: 0cm 0cm 10pt; tab-stops: 62.7pt&quot; class=MsoNormal&gt;&lt;SPAN style=&quot;LINE-HEIGHT: 115%; FONT-FAMILY: &#39;Times New Roman&#39;,&#39;serif&#39;; FONT-SIZE: 12pt&quot; lang=EN-US&gt;&lt;o:p&gt;&amp;nbsp;&lt;IMG&nbsp; width=700px border=0 hspace=0 alt=&quot;&quot; align=baseline src=&quot;https://cdn2.yame.vn/cimg/so-mi-caro--come-back-to-school-va-hon-the-nua-/2d42ad62-ed47-0a00-02f1-0012a521f7d2.jpg&quot;&gt;&lt;/o:p&gt;&lt;/SPAN&gt;&lt;/P&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `productID` bigint(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`productID`, `orderID`, `price`, `quantity`) VALUES
(7, 3, '249000', 1),
(15, 4, '300000', 1),
(15, 5, '300000', 1),
(16, 3, '120000', 1),
(34, 6, '350000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `customerName` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customerEmail` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customerPhone` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customerAddress` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `code` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `customerName`, `customerEmail`, `customerPhone`, `customerAddress`, `code`) VALUES
(3, '2016-10-16 13:08:06', 'Tvn95', 'tvn95@gmail.com', '0969876875', '3/2', 0),
(4, '2016-10-16 13:41:23', 'Tran Van Ngoan', 'illlatvn1995@gmail.com', '0969876875', '3/2', 0),
(5, '2016-10-18 06:07:32', 'Toi', 'ngoanb1304867@student.ctu.edu.vn', '0969876875', 'Ca Mau', 0),
(6, '2016-11-09 00:53:11', 'Tran Van Ngoan', 'illlatvn1995@gmail.com', '09090922', 'ca mau', 10);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`productID` bigint(20) NOT NULL,
  `productDescription` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `productImage` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `productPrice` decimal(10,0) NOT NULL,
  `categoryID` bigint(20) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productDescription`, `productImage`, `productName`, `productPrice`, `categoryID`, `quantity`, `discount`) VALUES
(11, 'Vai tot', '/resources/images/giaynam4.jpg', 'Giay Nam 110', '279000', 5, 15, 5),
(12, 'dep', '/resources/images/non3.jpg', 'Non dep', '99000', 8, 10, 20),
(13, 'dep', '/resources/images/non3.jpg', 'Non', '89000', 8, 12, 20),
(14, 'dep', '/resources/images/balo3.jpg', 'Balo VN', '120000', 7, 2, 10),
(15, 'Dep', '/resources/images/balo4.jpg', 'Bao Lo New', '300000', 7, 3, 10),
(16, 'Dep', '/resources/images/non3.jpg', 'Non Nam', '120000', 8, 10, 20),
(17, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam', '/resources/images/asm1.jpg 	', 'Ao So Mi', '350000', 1, 12, 10),
(18, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/asm2.jpg 	', 'Ao So Mi', '350000', 1, 10, 20),
(19, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/asm3.jpg 	', 'Ao So Mi', '350000', 1, 10, 20),
(20, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/asm4.jpg 	', 'Ao So Mi', '350000', 1, 10, 20),
(21, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/asm5.jpg 	', 'Ao So Mi', '350000', 1, 10, 20),
(22, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/asm6.jpg 	', 'Ao So Mi', '350000', 1, 10, 20),
(23, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/asm7.jpg 	', 'Ao So Mi', '350000', 1, 10, 20),
(24, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/at1.jpg 	', 'Ao Thun', '150000', 2, 10, 5),
(25, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/at2.jpg 	', 'Ao Thun', '150000', 2, 10, 5),
(26, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/at3.jpg 	', 'Ao Thun', '150000', 2, 10, 5),
(27, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/at4.jpg 	', 'Ao Thun', '150000', 2, 10, 5),
(28, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/at5.jpg 	', 'Ao Thun', '150000', 2, 10, 5),
(29, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/qj1.jpg 	', 'Ao Thun', '400000', 3, 10, 10),
(30, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/qj2.jpg 	', 'Ao Thun', '400000', 3, 10, 10),
(31, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/qj3.jpg 	', 'Quan Jean', '400000', 3, 10, 10),
(32, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/qj4.jpg 	', 'Quan Jean', '400000', 3, 10, 10),
(33, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/qj5.jpg 	', 'Quan Jean', '400000', 3, 10, 10),
(34, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/qkk1.jpg 	', 'Quan Kaki', '350000', 4, 10, 10),
(35, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/qkk2.jpg 	', 'Quan Kaki', '350000', 4, 10, 10),
(36, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/qkk3.jpg 	', 'Quan Kaki', '350000', 4, 10, 10),
(37, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/giay5.jpg 	', 'Giay', '350000', 5, 10, 10),
(38, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/giay6.jpg 	', 'Giay', '350000', 5, 10, 10),
(39, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/giay7.jpg 	', 'Giay', '350000', 5, 10, 10),
(40, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/giay8.jpg 	', 'Giay', '350000', 5, 10, 10),
(41, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/non5.jpg 	', 'Non', '120000', 8, 10, 5),
(42, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/non6.jpg 	', 'Non', '120000', 8, 10, 5),
(43, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/non7.jpg 	', 'Non', '120000', 8, 10, 5),
(44, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/balo5.jpg 	', 'Balo', '240000', 7, 10, 5),
(45, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/balo6.jpg 	', 'Balo', '240000', 7, 10, 5),
(46, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/balo7.jpg 	', 'Balo', '240000', 7, 10, 5),
(47, 'Chất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt Nam\r\nChất liệu cotton\r\nAn toàn cho người dùng\r\nMềm mại thoáng mát\r\nKiểu dáng thời trang\r\nSản xuất tại Việt NamChất liệu cotton\r\nAn toàn cho người dùng\r\n', '/resources/images/balo8.jpg 	', 'Balo', '240000', 7, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE IF NOT EXISTS `survey` (
`No` int(11) NOT NULL,
  `level` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`No`, `level`) VALUES
(1, 'RT'),
(2, 'BT'),
(3, 'T'),
(4, 'BT'),
(5, 'T'),
(6, 'RT'),
(7, 'RX'),
(8, 'BT'),
(9, 'X'),
(10, 'T'),
(11, 'RT'),
(12, 'T'),
(13, 'BT'),
(14, 'T'),
(15, 'X'),
(16, 'RT'),
(17, 'T'),
(18, 'T'),
(19, 'T'),
(20, 'X');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`userID` int(11) NOT NULL,
  `userName` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `userEmail` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `userPass` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `userRole` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userName`, `userEmail`, `userPass`, `userRole`) VALUES
(12, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(19, 'TVN', 'illlatvn1995@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(20, 'tvn91', 'tvn91@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
 ADD PRIMARY KEY (`No`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
 ADD PRIMARY KEY (`productID`,`orderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`productID`), ADD KEY `FK_hfdpy6e6md3osou6tinpaysjj` (`categoryID`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
 ADD PRIMARY KEY (`No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `No` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `productID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
MODIFY `No` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `FK_hfdpy6e6md3osou6tinpaysjj` FOREIGN KEY (`categoryID`) REFERENCES `category` (`categoryID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
