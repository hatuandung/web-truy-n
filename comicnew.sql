-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2018 at 04:38 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truyentranhtuan`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `idTruyen` int(11) NOT NULL,
  `chuong` int(10) NOT NULL,
  `ngayDang` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`idTruyen`, `chuong`, `ngayDang`) VALUES
(1, 1, '2018-04-02 00:00:00'),
(2, 1, '2018-04-03 00:00:00'),
(3, 3, '2018-04-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `subject_name` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `subject_name`) VALUES
(1, 'diễn đàn'),
(2, 'trang chủ'),
(3, 'thể loại');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(10) NOT NULL,
  `tenhinh` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `link` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `tenhinh`, `link`) VALUES
(1, 'naruto', 'http://static.phimmoi.net/post/2015/09/12/x.jpg'),
(2, 'tokyo-ghoul', 'https://res.cloudinary.com/teepublic/image/private/s--EZV_BR4Q--/t_Preview/b_rgb:191919,c_lpad,f_jpg,h_630,q_90,w_1200/v1446234398/production/designs/246334_1.jpg'),
(3, 'once-pice', 'http://media.comicbook.com/2017/12/onepiece-1067035-1280x0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `idTruyen` int(10) DEFAULT NULL,
  `idTacGia` int(10) NOT NULL,
  `tenTacGia` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`idTruyen`, `idTacGia`, `tenTacGia`) VALUES
(1, 1, 'Kishimoto Masashi '),
(2, 2, 'Tite Kubo'),
(3, 3, 'Eiichiro Oda');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `idTheLoai` int(10) NOT NULL,
  `tenTheLoai` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`idTheLoai`, `tenTheLoai`, `id_menu`) VALUES
(1, 'adventure', 3),
(2, 'commedy', 3),
(3, 'drama', 3),
(4, 'shoujo', 3),
(5, 'action', 3),
(6, 'anime', 3),
(7, 'supernatural', 3),
(8, 'shounen', 3);

-- --------------------------------------------------------

--
-- Table structure for table `truyen`
--

CREATE TABLE `truyen` (
  `idTruyen` int(10) NOT NULL,
  `tenTruyen` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `truyen`
--

INSERT INTO `truyen` (`idTruyen`, `tenTruyen`) VALUES
(1, 'naruto'),
(2, 'bleach'),
(3, 'one piece');

-- --------------------------------------------------------

--
-- Table structure for table `truyentl`
--

CREATE TABLE `truyentl` (
  `idTruyen` int(10) NOT NULL,
  `idTheLoai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `truyentl`
--

INSERT INTO `truyentl` (`idTruyen`, `idTheLoai`) VALUES
(1, 5),
(2, 5),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tttruyen`
--

CREATE TABLE `tttruyen` (
  `idTruyen` int(10) NOT NULL,
  `hinhAnh` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tomTat` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `luotXem` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tttruyen`
--

INSERT INTO `tttruyen` (`idTruyen`, `hinhAnh`, `tomTat`, `luotXem`) VALUES
(1, 'http://truyentranhtuan.com/wp-content/uploads/2013/01/naruto-anh-bia-200x304.jpg', 'Bối cảnh Naruto xảy ra vào mười hai năm trước khi câu chuyện chính thức bắt đầu, một con hồ ly chín đuôi đã tấn công Konohagakure. Nó là một con quái vật có sức mạnh khủng khiếp, chỉ một cái vẫy từ một trong chín cái đuôi của nó có thể tạo ra những cơn sóng thần và san bằng nhiều ngọn núi. Nó gây ra sự hỗn loạn và giết chết rất nhiều người cho đến khi người đứng đầu làng Lá – Hokage đệ tứ – đã đánh bại nó bằng cách đổi lấy mạng sống của mình để phong ấn nó vào trong người một đứa trẻ mới sinh. Đứa trẻ đó tên là Uzumaki Naruto. Bộ truyện kể về cuộc hành trình đầy gian khổ với vô vàn khó khăn, thử thách của Naruto từ khi còn là một cậu bé tới khi trở thành một trong những nhẫn giả vĩ đại nhất. Không chỉ mô tả về một thế giới nhẫn giả huyền bí, Naruto còn mang trong nó nhiều ý nghĩa nhân sinh sâu sắc về tình bạn, tình đồng đội, tình yêu, ước mơ và hi vọng.', NULL),
(2, 'http://truyentranhtuan.com/wp-content/uploads/2013/09/bleach-200x304.jpg', '\r\nBLEACH\r\nTên khác: Sứ Giả Ichigo\r\n\r\nTác giả: Tite Kubo .\r\n\r\nThể loại: Action , Adventure , Anime , Comedy , Drama , Fantasy , Shounen , Supernatural .\r\n\r\nChương mới nhất: 686 - Đang tiến hành\r\n\r\n\r\n\r\nNhân vật chính của Bleach là Ichigo Kurosaki có khả năng nhìn thấy những hồn ma. Cuộc sống của cậu thay đổi khi cậu gặp Rukia Kuchiki, một Thần Chết và là thành viên của Âm Giới. Khi chiến đấu với một yêu quái chuyên đi săn những người có năng lực tâm linh, Rukia đã cho Ichigo mượn sức mạnh của mình để cậu có thể cứu gia đình mình. Nhưng trước sự ngạc nhiên của Rukia, Ichigo đã hấp thu toàn bộ sức mạnh của cô. Khi đã trở thành một Thần Chết, Ichigo nhanh chóng biết được rằng thế giới cậu đang sống chứa đầy những linh hồn nguy hiểm, và cùng với Rukia, người đang từ từ khôi phục lại sức mạnh của mình, công việc của Ichigo lúc này là bảo vệ những người vô tội khỏi lũ yêu quái và giúp đỡ những linh hồn tìm được nơi yên nghỉ.\r\nKhông dừng lại tại đó, trong Bleach, Ichigo sẽ dần phải đụng độ với các tổ chức hùng mạnh, với những âm mưu đan xen để bảo vệ thế giới. Mỗi phần của truyện đều có liên kết chặt chẽ với nhau chứ không tách rời. Đọc Bleach, bạn khó có thể dừng theo dõi các trận chiến hoành tráng và hấp dẫn nối tiếp nhau.', NULL),
(3, 'http://truyentranhtuan.com/wp-content/uploads/2013/01/one-piece-anh-bia-200x304.jpg', 'One Piece là câu truyện kể về Luffy và các thuyền viên của mình. Khi còn nhỏ, Luffy ước mơ trở thành Vua Hải Tặc. Cuộc sống của cậu bé thay đổi khi cậu vô tình có được sức mạnh có thể co dãn như cao su, nhưng đổi lại, cậu không bao giờ có thể bơi được nữa. Giờ đây, Luffy cùng những người bạn hải tặc của mình ra khơi tìm kiếm kho báu One Piece, kho báu vĩ đại nhất trên thế giới. Trong One Piece, mỗi nhân vật trong đều mang một nét cá tính đặc sắc kết hợp cùng các tình huống kịch tính, lối dẫn truyện hấp dẫn chứa đầy các bước ngoặt bất ngờ và cũng vô cùng hài hước đã biến One Piece trở thành một trong những bộ truyện nổi tiếng nhất không thể bỏ qua.\r\nHãy đọc One Piece để hòa mình vào một thế giới của những hải tặc rộng lớn, đầy màu sắc, sống động và thú vị, cùng đắm chìm với những nhân vật yêu tự do, trên hành trình đi tìm ước mơ của mình.', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_chitiettruyen`
-- (See below for the actual view)
--
CREATE TABLE `view_chitiettruyen` (
`tenTacGia` varchar(50)
,`tenTheLoai` varchar(50)
,`tenTruyen` varchar(50)
,`hinhAnh` varchar(500)
);

-- --------------------------------------------------------

--
-- Structure for view `view_chitiettruyen`
--
DROP TABLE IF EXISTS `view_chitiettruyen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_chitiettruyen`  AS  select `tacgia`.`tenTacGia` AS `tenTacGia`,`theloai`.`tenTheLoai` AS `tenTheLoai`,`truyen`.`tenTruyen` AS `tenTruyen`,`tttruyen`.`hinhAnh` AS `hinhAnh` from ((((`tacgia` join `truyen`) join `truyentl`) join `tttruyen`) join `theloai`) where ((`tacgia`.`idTruyen` = `truyen`.`idTruyen`) and (`truyen`.`idTruyen` = `tttruyen`.`idTruyen`) and (`truyen`.`idTruyen` = `truyentl`.`idTruyen`) and (`truyentl`.`idTheLoai` = `theloai`.`idTheLoai`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`idTruyen`,`chuong`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`idTacGia`),
  ADD KEY `idTruyen` (`idTruyen`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`idTheLoai`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`idTruyen`);

--
-- Indexes for table `truyentl`
--
ALTER TABLE `truyentl`
  ADD PRIMARY KEY (`idTruyen`,`idTheLoai`),
  ADD KEY `idTheLoai` (`idTheLoai`);

--
-- Indexes for table `tttruyen`
--
ALTER TABLE `tttruyen`
  ADD PRIMARY KEY (`idTruyen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `idTacGia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `idTheLoai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `truyen`
--
ALTER TABLE `truyen`
  MODIFY `idTruyen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`idTruyen`) REFERENCES `truyen` (`idTruyen`);

--
-- Constraints for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD CONSTRAINT `tacgia_ibfk_1` FOREIGN KEY (`idTruyen`) REFERENCES `truyen` (`idTruyen`);

--
-- Constraints for table `theloai`
--
ALTER TABLE `theloai`
  ADD CONSTRAINT `theloai_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Constraints for table `truyentl`
--
ALTER TABLE `truyentl`
  ADD CONSTRAINT `truyentl_ibfk_1` FOREIGN KEY (`idTruyen`) REFERENCES `truyen` (`idTruyen`),
  ADD CONSTRAINT `truyentl_ibfk_2` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`idTheLoai`);

--
-- Constraints for table `tttruyen`
--
ALTER TABLE `tttruyen`
  ADD CONSTRAINT `tttruyen_ibfk_1` FOREIGN KEY (`idTruyen`) REFERENCES `truyen` (`idTruyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
