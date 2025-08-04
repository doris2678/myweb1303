-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-08-04 14:33:15
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
-- 資料庫： `db03`
--

-- --------------------------------------------------------

--
-- 資料表結構 `movies`
--

CREATE TABLE `web03_movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `level` int(1) NOT NULL,
  `length` int(5) NOT NULL,
  `ondate` date NOT NULL,
  `publish` text NOT NULL,
  `director` text NOT NULL,
  `trailer` text NOT NULL,
  `poster` text NOT NULL,
  `intro` text NOT NULL,
  `rank` int(5) NOT NULL,
  `sh` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `movies`
--

INSERT INTO `web03_movies` (`id`, `name`, `level`, `length`, `ondate`, `publish`, `director`, `trailer`, `poster`, `intro`, `rank`, `sh`) VALUES
(6, '院線片06', 3, 90, '2025-08-03', '院線片06發行商', '院線片06導演', '03B06v.mp4', '03B06.png', '院線片06劇情簡介院線片06劇情簡介院線片06劇情簡介', 6, 1),
(7, '院線片07', 1, 90, '2025-08-02', '院線片07發行商', '院線片07導演', '03B07v.mp4', '03B07.png', '院線片07劇情簡介院線片07劇情簡介院線片07劇情簡介', 7, 1),
(8, '院線片08', 2, 90, '2025-08-02', '院線片08發行商', '院線片08導演', '03B08v.mp4', '03B08.png', '院線片08劇情簡介院線片08劇情簡介院線片08劇情簡介', 8, 1),
(9, '院線片09', 3, 90, '2025-08-02', '院線片09發行商', '院線片09導演', '03B09v.mp4', '03B09.png', '院線片09劇情簡介院線片09劇情簡介院線片09劇情簡介', 9, 1),
(10, '院線片10', 1, 90, '2025-08-02', '院線片10發行商', '院線片10導演', '03B10v.mp4', '03B10.png', '院線片10劇情簡介院線片10劇情簡介院線片10劇情簡介', 10, 1),
(11, '院線片11', 2, 90, '2025-08-02', '院線片11發行商', '院線片11導演', '03B11v.mp4', '03B11.png', '院線片11劇情簡介院線片11劇情簡介院線片11劇情簡介', 11, 1),
(12, '院線片12', 3, 90, '2025-08-02', '院線片12發行商', '院線片12導演', '03B12v.mp4', '03B12.png', '院線片12劇情簡介院線片12劇情簡介院線片12劇情簡介', 12, 1),
(24, '院線片13', 1, 90, '2025-08-02', '院線片13發行商', '院線片13導演', '03B13v.mp4', '03B13.png', '院線片13劇情簡介院線片13劇情簡介院線片13劇情簡介', 24, 1),
(26, ' 院線片25', 1, 90, '2025-08-02', '院線片25發行商', '院線片25導演', '03B25v.mp4', '03B25.png', '院線片25劇情簡介院線片25劇情簡介\r\n', 25, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `web03_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `no` text NOT NULL,
  `movie` text NOT NULL,
  `date` date NOT NULL,
  `session` text NOT NULL,
  `tickets` int(1) NOT NULL,
  `seats` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `web03_orders` (`id`, `no`, `movie`, `date`, `session`, `tickets`, `seats`) VALUES
(3, '202508030003', '院線片06', '2025-08-03', '14:00~16:00', 1, 'a:1:{i:0;s:1:\"0\";}'),
(4, '202508030004', '院線片07', '2025-08-03', '14:00~16:00', 2, 'a:2:{i:0;s:2:\"18\";i:1;s:2:\"19\";}'),
(5, '202508030005', '院線片09', '2025-08-03', '16:00~18:00', 3, 'a:3:{i:0;s:1:\"0\";i:1;s:1:\"5\";i:2;s:2:\"10\";}');

-- --------------------------------------------------------

--
-- 資料表結構 `poster`
--

CREATE TABLE `web03_poster` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `img` text NOT NULL,
  `sh` int(1) NOT NULL DEFAULT 1,
  `rank` int(5) NOT NULL,
  `ani` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `poster`
--

INSERT INTO `web03_poster` (`id`, `name`, `img`, `sh`, `rank`, `ani`) VALUES
(6, '預告片01', '03A01.jpg', 1, 6, 1),
(7, '預告片02', '03A02.jpg', 1, 7, 3),
(8, '預告片03', '03A03.jpg', 1, 8, 3),
(9, '預告片04', '03A04.jpg', 1, 9, 1),
(10, '預告片05', '03A05.jpg', 1, 10, 2),
(11, '預告片06', '03A06.jpg', 1, 11, 3),
(12, '預告片07', '03A07.jpg', 1, 12, 1),
(13, '預告片08', '03A08.jpg', 1, 13, 2);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `movies`
--
ALTER TABLE `web03_movies`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `web03_orders`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `poster`
--
ALTER TABLE `web03_poster`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `movies`
--
ALTER TABLE `web03_movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `web03_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `poster`
--
ALTER TABLE `web03_poster`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
