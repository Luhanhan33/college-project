-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-02 20:10:34
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
-- 資料表結構 `fruit clock`
--

CREATE TABLE `fruit clock` (
  `id` varchar(10) NOT NULL,
  `Uid` int(255) NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `fruit clock`
--

INSERT INTO `fruit clock` (`id`, `Uid`, `Note`, `Time`) VALUES
('S001', 1, '吃一碗水果', '15:55:32');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `fruit clock`
--
ALTER TABLE `fruit clock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_fc_id` (`Uid`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `fruit clock`
--
ALTER TABLE `fruit clock`
  ADD CONSTRAINT `FK_fc_id` FOREIGN KEY (`Uid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
