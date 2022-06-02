-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-02 20:10:22
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `eat in datebase`
--

-- --------------------------------------------------------

--
-- 資料表結構 `defecation`
--

CREATE TABLE `defecation` (
  `id` varchar(10) NOT NULL,
  `Uid` int(255) NOT NULL,
  `Defecationcol` datetime NOT NULL DEFAULT current_timestamp() COMMENT '排便時間',
  `Detailed` varchar(100) NOT NULL COMMENT '排便細節'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='排便紀錄';

--
-- 傾印資料表的資料 `defecation`
--

INSERT INTO `defecation` (`id`, `Uid`, `Defecationcol`, `Detailed`) VALUES
('1', 1, '2022-04-27 03:26:41', '有點拉肚子');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `defecation`
--
ALTER TABLE `defecation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `FK_id` (`Uid`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `defecation`
--
ALTER TABLE `defecation`
  ADD CONSTRAINT `FK_id` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
