-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-07-25 10:16:19
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `db02`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `level` int(1) UNSIGNED NOT NULL,
  `length` int(10) UNSIGNED NOT NULL,
  `ondate` date NOT NULL,
  `publish` text NOT NULL,
  `director` text NOT NULL,
  `trailer` text NOT NULL,
  `poster` text NOT NULL,
  `intro` text NOT NULL,
  `sh` int(1) NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `movies`
--

INSERT INTO `movies` (`id`, `name`, `level`, `length`, `ondate`, `publish`, `director`, `trailer`, `poster`, `intro`, `sh`, `rank`) VALUES
(2, '院線片01', 1, 120, '2025-07-25', '院線片01的發行商', '院線片01的導演', '03B01v.mp4', '03B01.png', '院線片01的劇情簡介', 1, 3),
(3, '院線片02', 2, 90, '2025-07-24', '院線片02的發行商', '院線片02的導演', '03B02v.mp4', '03B02.png', '院線片01的劇情簡介\r\n', 1, 2),
(4, '院線片03', 1, 90, '2025-07-24', '院線片03發行商', '院線片03導演', '03B03v.mp4', '03B03.png', '院線片03簡介院線片03簡介院線片03簡介', 1, 4),
(5, '院線片04', 2, 90, '2025-07-24', '院線片04發行商', '院線片04導演', '03B04v.mp4', '03B04.png', '院線片04簡介院線片04簡介院線片04簡介', 1, 5),
(6, '院線片05', 3, 90, '2025-07-24', '院線片05發行商', '院線片05導演', '03B05v.mp4', '03B05.png', '院線片05簡介院線片05簡介院線片05簡介', 1, 6),
(7, '院線片06', 1, 90, '2025-07-24', '院線片06發行商', '院線片06導演', '03B06v.mp4', '03B06.png', '院線片06簡介院線片06簡介院線片06簡介', 1, 7),
(8, '院線片07', 2, 90, '2025-07-24', '院線片07發行商', '院線片07導演', '03B07v.mp4', '03B07.png', '院線片07簡介院線片07簡介院線片07簡介', 1, 8),
(9, '院線片08', 3, 90, '2025-07-24', '院線片08發行商', '院線片08導演', '03B08v.mp4', '03B08.png', '院線片08簡介院線片08簡介院線片08簡介', 1, 9),
(10, '院線片09', 1, 90, '2025-07-24', '院線片09發行商', '院線片09導演', '03B09v.mp4', '03B09.png', '院線片09簡介院線片09簡介院線片09簡介', 1, 10),
(11, '院線片10', 2, 90, '2025-07-24', '院線片10發行商', '院線片10導演', '03B10v.mp4', '03B10.png', '院線片10簡介院線片10簡介院線片10簡介', 1, 11),
(12, '院線片11', 3, 90, '2025-07-24', '院線片11發行商', '院線片11導演', '03B11v.mp4', '03B11.png', '院線片11簡介院線片11簡介院線片11簡介', 1, 12),
(13, '院線片12', 1, 90, '2025-07-24', '院線片12發行商', '院線片12導演', '03B12v.mp4', '03B12.png', '院線片12簡介院線片12簡介院線片12簡介', 1, 13),
(14, '院線片13', 1, 90, '2025-07-24', '院線片13發行商', '院線片13導演', '03B13v.mp4', '03B13.png', '院線片13簡介院線片13簡介院線片13簡介', 1, 14);

-- --------------------------------------------------------

--
-- 資料表結構 `posters`
--

CREATE TABLE `posters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `sh` int(1) UNSIGNED NOT NULL,
  `rank` int(10) UNSIGNED NOT NULL,
  `ani` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `posters`
--

INSERT INTO `posters` (`id`, `name`, `img`, `sh`, `rank`, `ani`) VALUES
(1, '預告片01', '03A01.jpg', 1, 2, 1),
(2, '預告片02', '03A02.jpg', 1, 1, 2),
(5, '預告片03', '03A03.jpg', 1, 3, 3),
(6, '預告片04', '03A04.jpg', 1, 6, 2),
(9, '預告片09', '03A09.jpg', 1, 7, 3);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `posters`
--
ALTER TABLE `posters`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `posters`
--
ALTER TABLE `posters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
