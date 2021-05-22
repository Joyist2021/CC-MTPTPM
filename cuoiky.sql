-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2021 at 08:51 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuoiky`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, '2019-12-29 15:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `class` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `active`, `status`, `class`, `created_at`, `updated_at`) VALUES
(16, 'Iphone', 'iphone', NULL, NULL, 1, 1, 'fas fa-mobile-alt', '2021-04-17 05:00:43', '2021-04-17 05:32:18'),
(17, 'SamSung', 'samsung', NULL, NULL, 0, 1, 'fas fa-mobile-alt', '2021-04-17 05:01:08', '2021-04-17 05:32:35'),
(18, 'OPPO', 'oppo', NULL, NULL, 0, 1, 'fas fa-mobile-alt', '2021-04-17 05:02:27', '2021-04-17 05:32:36'),
(19, 'Phụ kiện', 'phu-kien', NULL, NULL, 0, 1, 'fas fa-headphones', '2021-04-17 05:03:03', '2021-04-17 05:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(13, 9, 26, 10, 36100000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thunbar` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT 0,
  `content` text DEFAULT NULL,
  `number` int(11) NOT NULL DEFAULT 0,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thunbar`, `category_id`, `pay`, `content`, `number`, `head`, `view`, `hot`, `created_at`, `updated_at`) VALUES
(25, 'Iphone 12 Pro 128GB', 'iphone-12-pro-128gb', 30000000, 6, 'iphone-12-trang-new-600x600-600x600.jpg', 16, 0, 'Iphone 12 promax trắng', 20, 0, 0, 0, NULL, NULL),
(26, 'Iphone 12 Pro Max 512GB', 'iphone-12-pro-max-512gb', 38000000, 5, 'iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', 16, 10, 'iphone 12 pro max xanh dương', 10, 0, 0, 0, NULL, '2021-04-17 05:31:14'),
(27, 'Iphone 12 mini 128GB', 'iphone-12-mini-128gb', 20900000, 7, 'iphone-mini-do-new-600x600-600x600.jpg', 16, 0, 'iphone mini', 20, 0, 0, 0, NULL, NULL),
(28, 'Iphone XR 64GB', 'iphone-xr-64gb', 13400000, 2, 'iphone-xr-hopmoi-den-600x600-2-600x600.jpg', 16, 0, 'iphone xr xanh', 20, 0, 0, 0, NULL, NULL),
(29, 'SamSung Galaxy A52', 'samsung-galaxy-a52', 1000000, 0, 'samsung-galaxy-a52-5g-thumb-black-600x600-600x600.jpg', 17, 0, 'samsung xanh', 20, 0, 0, 0, NULL, NULL),
(30, 'SamSung A72', 'samsung-a72', 12000000, 2, 'samsung-galaxy-a72-thumb-balck-600x600-600x600.jpg', 17, 0, 'samsung a72 ', 20, 0, 0, 0, NULL, NULL),
(31, 'SamSung Note20 Ultra 5G Trắng', 'samsung-note20-ultra-5g-trang', 32000000, 9, 'samsunggalaxynote20ultratrangnew-600x600-600x600.jpg', 17, 0, 'samsung note 20', 20, 0, 0, 0, NULL, NULL),
(32, 'SamSung Galaxy Z Fold2 5G', 'samsung-galaxy-z-fold2-5g', 50000000, 10, 'samsung-galaxy-z-fold-2-vang-dong-600x600.jpg', 17, 0, 'samsung dac', 20, 0, 0, 0, NULL, NULL),
(33, 'OPPO A15 ', 'oppo-a15', 6000000, 0, 'oppo-a15-black-600-test.jpg', 18, 0, 'oppo a15', 20, 0, 0, 0, NULL, NULL),
(34, 'OPPO A93', 'oppo-a93', 8000000, 2, 'oppo-a93-trang-14-600x600.jpg', 18, 0, 'oppo a93', 20, 0, 0, 0, NULL, NULL),
(35, 'OPPO Reno5 Marvel', 'oppo-reno5-marvel', 10000000, 2, 'oppo-reno5-marvel-thumb-600x600-600x600.jpg', 18, 0, 'oppo reno5', 10, 0, 0, 0, NULL, NULL),
(36, 'OPPO Reno5 Trắng', 'oppo-reno5-trang', 9000000, 3, 'oppo-reno5-trang-600x600-1-600x600.jpg', 18, 0, 'oppo reno son tung', 20, 0, 0, 0, NULL, NULL),
(37, 'Ốp lưng Galaxy A52 5G nhựa dẻo', 'op-lung-galaxy-a52-5g-nhua-deo', 300000, 0, 'op-lung-galaxy-a52-5g-deo-a-cover-samsung-trong-1-600x600.jpg', 19, 0, 'ốp lưng', 20, 0, 0, 0, NULL, NULL),
(38, 'Tai nghe Bluetooth', 'tai-nghe-bluetooth', 700000, 0, 'tai-nghe-bluetooth-true-wireless-mozard-at15-600x600.jpg', 19, 0, 'tai nghe ', 20, 0, 0, 0, NULL, NULL),
(39, 'Pin sạc dự phòng', 'pin-sac-du-phong', 400000, 0, 'pin-sac-du-phong-7500mah-ava-la-10k-1-avatar-1-600x600.jpg', 19, 0, 'sạc dự phòng', 20, 0, 0, 0, NULL, NULL),
(40, 'Tai nghe Bluetooth Airpods Pro ', 'tai-nghe-bluetooth-airpods-pro', 6000000, 2, 'airpods-pro-wireless-charge-apple-mwp22-ava-600x600.jpg', 19, 0, 'tai nghe airpods', 20, 0, 0, 0, NULL, '2021-04-17 05:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `note` varchar(100) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `users_id`, `note`, `status`, `created_at`, `updated_at`) VALUES
(9, 397100000, 10, 'Giao hàng tận nơi', 1, '2021-04-17 05:30:47', '2021-04-17 05:31:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(10, 'vovankiet', 'vankiet123@gmail.com', '012345678', 'đà nẵng', '202cb962ac59075b964b07152d234b70', NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
