-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 29, 2018 lúc 06:12 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `comic`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `idtacgia` int(11) NOT NULL,
  `tentacgia` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id_tl` int(11) NOT NULL,
  `tentheloai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtintruyen`
--

CREATE TABLE `thongtintruyen` (
  `id` int(11) NOT NULL,
  `hinhanh` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen`
--

CREATE TABLE `truyen` (
  `id` int(11) NOT NULL,
  `tentruyen` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tomtat` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truyen_tl`
--

CREATE TABLE `truyen_tl` (
  `id` int(11) NOT NULL,
  `id_tl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`idtacgia`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id_tl`);

--
-- Chỉ mục cho bảng `thongtintruyen`
--
ALTER TABLE `thongtintruyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `truyen_tl`
--
ALTER TABLE `truyen_tl`
  ADD PRIMARY KEY (`id`,`id_tl`),
  ADD KEY `id_tl` (`id_tl`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `idtacgia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id_tl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD CONSTRAINT `tacgia_ibfk_1` FOREIGN KEY (`id`) REFERENCES `truyen` (`id`);

--
-- Các ràng buộc cho bảng `thongtintruyen`
--
ALTER TABLE `thongtintruyen`
  ADD CONSTRAINT `thongtintruyen_ibfk_1` FOREIGN KEY (`id`) REFERENCES `truyen` (`id`);

--
-- Các ràng buộc cho bảng `truyen_tl`
--
ALTER TABLE `truyen_tl`
  ADD CONSTRAINT `truyen_tl_ibfk_1` FOREIGN KEY (`id`) REFERENCES `truyen` (`id`),
  ADD CONSTRAINT `truyen_tl_ibfk_2` FOREIGN KEY (`id_tl`) REFERENCES `theloai` (`id_tl`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
