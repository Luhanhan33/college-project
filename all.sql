-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-01 14:00:07
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
-- 資料庫： `test`
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

-- --------------------------------------------------------

--
-- 資料表結構 `food`
--

CREATE TABLE `food` (
  `name` varchar(45) NOT NULL COMMENT '食物名稱',
  `Type` varchar(45) NOT NULL COMMENT '食物分類',
  `label` varchar(45) DEFAULT NULL COMMENT '食物標籤',
  `energy` decimal(11,2) NOT NULL COMMENT '食物熱量(以大卡為單位)',
  `Fat` decimal(11,3) NOT NULL COMMENT '脂肪',
  `trans fat` decimal(11,2) NOT NULL COMMENT '反式脂肪',
  `Saturated fat` decimal(11,3) NOT NULL COMMENT '飽和脂肪',
  `carbohydrate` decimal(11,3) NOT NULL COMMENT '碳水化合物',
  `sugar` decimal(11,3) NOT NULL COMMENT '糖類',
  `protein` decimal(11,3) NOT NULL COMMENT '蛋白質'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `food`
--

INSERT INTO `food` (`name`, `Type`, `label`, `energy`, `Fat`, `trans fat`, `Saturated fat`, `carbohydrate`, `sugar`, `protein`) VALUES
('乾麵', '五穀雜糧類', '麵', '155.00', '2.710', '0.00', '0.381', '27.700', '0.080', '4.170'),
('刀削麵', '五穀雜糧類', '麵', '338.00', '11.100', '0.00', '0.218', '74.200', '0.000', '10.970'),
('拉麵', '五穀雜糧類', '麵', '120.00', '4.190', '0.01', '0.460', '16.510', '0.240', '4.190'),
('榨菜肉絲麵', '五穀雜糧類', '麵', '398.00', '9.410', '0.00', '2.304', '55.890', '1.510', '21.410'),
('炒麵', '五穀雜糧類', '麵', '773.00', '31.300', '0.27', '0.864', '30.360', '1.270', '7.840'),
('牛角麵包', '澱粉', '麵包', '968.00', '11.970', '0.00', '6.646', '26.110', '0.000', '4.670'),
('鍋燒意麵', '五穀雜糧類', '麵', '545.00', '10.940', '0.06', '2.137', '78.900', '2.610', '31.460'),
('鐵板麵', '五穀雜糧類', '麵', '406.00', '13.420', '0.00', '4.505', '44.750', '0.350', '29.250'),
('關渡麵', '五穀雜糧類', '麵', '358.00', '1.460', '0.00', '0.207', '73.340', '0.010', '11.240'),
('陽春麵', '五穀雜糧類', '麵包', '353.00', '1.390', '1.13', '0.257', '71.650', '1.590', '11.870'),
('雞蛋麵', '五穀雜糧類', '麵', '221.00', '3.310', '0.67', '0.034', '40.260', '0.640', '7.260');

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

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `account` varchar(255) NOT NULL COMMENT '帳號',
  `username` varchar(255) NOT NULL COMMENT '使用者名稱',
  `password` varchar(255) NOT NULL COMMENT '密碼',
  `gender` varchar(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '0' COMMENT '性別(0:男生/1:女生)',
  `age` int(255) NOT NULL COMMENT '年紀',
  `height` int(11) NOT NULL,
  `wieght` int(11) NOT NULL,
  `bmi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `account`, `username`, `password`, `gender`, `age`, `height`, `wieght`, `bmi`) VALUES
(1, 'abc123', 'abc', '1234567890', '0', 24, 0, 0, 0);

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
-- 資料表索引 `diet record`
--
ALTER TABLE `diet record`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `FK_Name` (`food  name`),
  ADD KEY `FK_deit_id` (`Uid`);

--
-- 資料表索引 `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`name`);

--
-- 資料表索引 `fruit clock`
--
ALTER TABLE `fruit clock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_fc_id` (`Uid`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `defecation`
--
ALTER TABLE `defecation`
  ADD CONSTRAINT `FK_id` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- 資料表的限制式 `diet record`
--
ALTER TABLE `diet record`
  ADD CONSTRAINT `FK_Name` FOREIGN KEY (`food  name`) REFERENCES `food` (`name`),
  ADD CONSTRAINT `FK_deit_id` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- 資料表的限制式 `fruit clock`
--
ALTER TABLE `fruit clock`
  ADD CONSTRAINT `FK_fc_id` FOREIGN KEY (`Uid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
