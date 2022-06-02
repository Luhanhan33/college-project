-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-02 20:10:26
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
-- 資料表結構 `diet record`
--

CREATE TABLE `diet record` (
  `id` varchar(10) NOT NULL,
  `Uid` int(255) NOT NULL,
  `food  name` varchar(45) NOT NULL COMMENT '食物名稱',
  `portion  size` decimal(11,2) NOT NULL COMMENT '份量',
  `Meal time` datetime NOT NULL DEFAULT current_timestamp() COMMENT '進食時間',
  `Note` varchar(500) DEFAULT NULL COMMENT '備註'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='飲食紀錄';

--
-- 傾印資料表的資料 `diet record`
--

INSERT INTO `diet record` (`id`, `Uid`, `food  name`, `portion  size`, `Meal time`, `Note`) VALUES
('S001', 1, '牛角麵包', '5.25', '2022-05-08 00:18:28', NULL),
('S002', 1, '牛角麵包', '5.25', '2022-05-08 00:19:02', '再吃一次');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `diet record`
--
ALTER TABLE `diet record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `FK_Name` (`food  name`),
  ADD KEY `FK_deit_id` (`Uid`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `diet record`
--
ALTER TABLE `diet record`
  ADD CONSTRAINT `FK_Name` FOREIGN KEY (`food  name`) REFERENCES `food` (`name`),
  ADD CONSTRAINT `FK_deit_id` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
