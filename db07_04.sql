-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2025-02-17 16:19:40
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
-- 資料庫： `db07_04`
--

-- --------------------------------------------------------

--
-- 資料表結構 `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `pr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `admins`
--

INSERT INTO `admins` (`id`, `acc`, `pw`, `pr`) VALUES
(1, 'admin', '1234', 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}'),
(3, 'root', '1234', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}'),
(5, 'superwoman', '1234', 'a:4:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"5\";}');

-- --------------------------------------------------------

--
-- 資料表結構 `bottom`
--

CREATE TABLE `bottom` (
  `id` int(11) NOT NULL,
  `bottom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `bottom`
--

INSERT INTO `bottom` (`id`, `bottom`) VALUES
(1, '2025 電子商務網版權所有');

-- --------------------------------------------------------

--
-- 資料表結構 `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '流水號',
  `no` text NOT NULL COMMENT '商品編號',
  `name` text NOT NULL COMMENT '商品名稱',
  `price` int(10) NOT NULL COMMENT '商品單價',
  `stock` int(10) NOT NULL COMMENT '庫存量',
  `spec` text NOT NULL COMMENT '規格',
  `intro` text NOT NULL COMMENT '商品簡介',
  `img` text NOT NULL COMMENT '商品圖片',
  `big` int(10) NOT NULL COMMENT '大分類',
  `mid` int(10) NOT NULL COMMENT '中分類',
  `sh` int(1) NOT NULL COMMENT '是否上架'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `items`
--

INSERT INTO `items` (`id`, `no`, `name`, `price`, `stock`, `spec`, `intro`, `img`, `big`, `mid`, `sh`) VALUES
(1, '010203', '手工訂製長夾', 1200, 2, '全牛皮', '手工製作長夾卡片層6*2 鈔票層 *2 零錢拉鍊層 *1\n採用愛馬仕相同的雙針縫法,皮件堅固耐用不脫線\n材質:直革鞣(馬鞍皮)牛皮製作\n手工染色', '0403.jpg', 1, 5, 0),
(2, '020705', '兩用式磁扣腰包', 685, 18, '中型', '材質:進口牛皮\n顏色:黑色荔枝紋+黑色珠光面皮(黑色縫線)\n尺寸:15cm*14cm(高)*6cm(前後)\n產地:臺灣', '0404.jpg', 1, 5, 1),
(3, '020706', '超薄設計男士長款真皮', 800, 61, 'L號', '基本:編織皮革對摺長款零錢包\n特色:最潮流最時尚的單品\n顏色:黑色珠光面皮(黑色縫線)\n形狀:黑白格編織皮革對摺', '0405.jpg', 1, 5, 1),
(4, '030103', '經典牛皮少女帆船鞋', 1200, 2, '全牛皮', '以傳統學院派風格聞名，創始近百年工藝製鞋精神\n共用獨家專利氣墊技術，兼具紐約工藝精神，與舒適跑格靈魂', '0406.jpg', 2, 7, 1),
(5, '030203', '經典優雅時尚流行涼鞋', 2650, 100, 'S號', '優雅流線方型楦頭設計，結合簡潔線條綴飾，\n獨特的弧度與曲線美，突顯年輕優雅品味，\n是年輕上班族不可或缺的鞋款！\n全新美國運回，現貨附鞋盒', '0407.jpg', 2, 10, 1),
(6, '040202', '寵愛天然藍寶女戒', 28000, 1, '1克拉', '◎典雅設計品味款\n◎藍寶為珍貴天然寶石之一，具有保值收藏\n◎專人設計製造，以貴重珠寶精緻鑲工製造', '0408.jpg', 3, 12, 1),
(7, '050107', '反折式大容量手提肩背包', 888, 15, 'L號', '特色:反折式的包口設計,釘釦的裝飾,讓簡單的包型更增添趣味性\n材質:棉布\n顏色:藍色\n尺寸:長50cm寬20cm高41cm\n產地:日本', '0409.jpg', 4, 13, 1),
(8, '060108', '男單肩包男', 650, 7, '多功能', '特色:男單肩包/電腦包/公文包/雙肩背包多用途\n材質:帆布\n顏色:黑色\n尺寸:深11cm寬42cm高33cm\n產地:香港', '0410.jpg', 4, 13, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `acc` text NOT NULL,
  `pw` text NOT NULL,
  `addr` text NOT NULL,
  `email` text NOT NULL,
  `tel` text NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`id`, `name`, `acc`, `pw`, `addr`, `email`, `tel`, `regdate`) VALUES
(2, 'mem01', 'mem01', '1234', '大安區', 'tsai@gmail.com', '0923123221', '2025-02-07 05:51:21'),
(4, 'mem02', 'mem02', '1234', '泰山區', 'mem02.test@gmail.com', '0961326990', '2025-02-17 06:14:40');

-- --------------------------------------------------------

--
-- 資料表結構 `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `big_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `types`
--

INSERT INTO `types` (`id`, `name`, `big_id`) VALUES
(1, '流行皮件', 0),
(2, '流行鞋區', 0),
(3, '流行飾品', 0),
(4, '背包', 0),
(5, '男用流行皮件', 1),
(6, '女用流行皮件', 1),
(7, '少女鞋區', 2),
(10, '紳士流行涼鞋', 2),
(11, '時尚手錶', 3),
(12, '時尚珠寶', 3),
(13, '背包', 4);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `bottom`
--
ALTER TABLE `bottom`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bottom`
--
ALTER TABLE `bottom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '流水號', AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
