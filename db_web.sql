-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 07, 2023 lúc 09:31 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `logo`) VALUES
(1, 'IPHONE', ''),
(2, 'SAMSUNG', ''),
(3, 'XIAOMI', ''),
(4, 'SONY', ''),
(5, 'OPPO', ''),
(6, 'NOKIA', ''),
(7, 'ASUS', ''),
(8, 'VIVO', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Điện thoại'),
(2, 'Tablet'),
(3, 'Laptop'),
(4, 'SmartWatch'),
(5, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `phone` int(11) NOT NULL,
  `email` text NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `name`, `gender`, `date`, `phone`, `email`, `address`, `image`, `createAt`, `updateAt`) VALUES
(1, 'nguyenhien', 'h123', 'Nguyên Hiện', 'nam', '2000-09-08', 865198651, 'nguyenhienlnh@gmail.com', 'Bắc ninh', 'avt.jpg', '2023-02-07 14:20:12', '2023-02-07 14:20:12'),
(2, 'nguyenhien1', 'h123', 'Nguyên Hiện 1', 'nam', '2000-09-08', 865198651, 'nguyenhienlnh@gmail.com', 'Bắc ninh', 'avt.jpg', '2023-02-07 14:20:12', '2023-02-07 14:20:39'),
(3, 'nguyenhienlnh', 'hien123456', 'hiện', 'Nam', '2000-09-08', 0, '', NULL, NULL, '2023-04-05 22:50:07', '2023-04-05 22:50:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `quantily` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` text NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `isReview` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `brandId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `isNew` tinyint(1) NOT NULL,
  `isHighlights` tinyint(1) NOT NULL,
  `info` varchar(1000) NOT NULL,
  `describe` varchar(2500) NOT NULL,
  `image` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `code`, `name`, `brandId`, `categoryId`, `type`, `price`, `sale`, `rate`, `isNew`, `isHighlights`, `info`, `describe`, `image`, `quantity`, `sold`, `createAt`, `updateAt`) VALUES
(1, 'IPHONE-13', 'IPhone 13', 1, 1, '128GB', 0, 0, 4, 0, 1, 'info', 'mô tả', 'iphone13.jpg', 0, 0, '2023-02-07 14:28:07', '2023-02-07 16:44:34'),
(2, 'IPHONE-13', 'IPhone 13', 1, 1, '256GB', 0, 0, 4, 1, 0, 'info', 'mô tả', 'iphone13.jpg', 0, 0, '2023-02-07 14:28:07', '2023-02-07 16:41:31'),
(3, 'IPHONE-13', 'IPhone 13', 1, 1, '512GB', 0, 0, 4, 0, 0, 'info', 'mô tả', 'iphone13.jpg', 0, 0, '2023-02-07 14:28:07', '2023-02-07 16:41:33'),
(4, 'IPHONE-13-PRO', 'IPhone 13 Pro', 1, 1, '128GB', 0, 0, 5, 1, 0, 'info', 'mô tả', 'iphone13.jpg', 0, 0, '2023-02-07 14:28:07', '2023-02-07 16:44:40'),
(5, 'IPHONE-13-PRO', 'IPhone 13 Pro', 1, 1, '256GB', 10000000, 9500000, 5, 0, 1, 'info', 'mô tả', 'iphone13.jpg', 0, 0, '2023-02-07 14:28:07', '2023-03-02 16:23:30'),
(6, 'IPHONE-13-PRO', 'IPhone 13 Pro', 1, 1, '512GB', 0, 0, 5, 0, 0, 'info', 'mô tả', 'iphone13.jpg', 0, 0, '2023-02-07 14:28:07', '2023-02-07 16:44:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `code` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_color`
--

INSERT INTO `product_color` (`id`, `productId`, `code`, `name`, `quantity`, `sold`, `image`) VALUES
(1, 1, '#fff', 'Trắng', 0, 0, 'iphone-13-white.jpg'),
(2, 1, '#2e557d', 'Xanh Dương', 4, 0, 'iphone13.jpg'),
(3, 1, '#eae6ea', 'Hồng', 2, 0, 'null'),
(4, 1, '#385b47', 'Xanh lá', 5, 0, 'null'),
(5, 1, '#000', 'Đen', 1, 0, 'iphone-13-black.jpg'),
(6, 2, '#fff', 'Trắng', 5, 0, 'iphone-13-white.jpg'),
(7, 2, '#2e557d', 'Xanh Dương', 6, 0, 'iphone13.jpg'),
(8, 2, '#eae6ea', 'Hồng', 4, 0, 'null'),
(9, 2, '#385b47', 'Xanh lá', 6, 0, 'null'),
(10, 2, '#000', 'Đen', 7, 0, 'iphone-13-black.jpg'),
(11, 3, '#fff', 'Trắng', 7, 0, 'iphone-13-white.jpg'),
(12, 3, '#2e557d', 'Xanh Dương', 4, 0, 'iphone13.jpg'),
(13, 3, '#eae6ea', 'Hồng', 5, 0, 'null'),
(14, 3, '#385b47', 'Xanh lá', 6, 0, 'null'),
(15, 3, '#000', 'Đen', 2, 0, 'iphone-13-black.jpg'),
(16, 4, '#fff', 'Trắng', 4, 0, 'iphone-13-white'),
(17, 4, '#2e557d', 'Xanh Dương', 5, 0, 'iphone13.jpg'),
(18, 4, '#eae6ea', 'Hồng', 6, 0, 'null'),
(19, 4, '#385b47', 'Xanh lá', 7, 0, 'null'),
(20, 4, '#000', 'Đen', 3, 0, 'iphone-13-black.jpg'),
(21, 5, '#fff', 'Trắng', 4, 0, 'iphone-13-white'),
(22, 5, '#2e557d', 'Xanh Dương', 2, 0, 'iphone13.jpg'),
(23, 5, '#eae6ea', 'Hồng', 6, 0, 'null'),
(24, 5, '#385b47', 'Xanh lá', 4, 0, 'null'),
(25, 5, '#000', 'Đen', 3, 0, 'iphone-13-black.jpg'),
(26, 6, '#fff', 'Trắng', 0, 0, 'null'),
(27, 6, '#2e557d', 'Xanh Dương', 0, 0, 'null'),
(28, 6, '#eae6ea', 'Hồng', 0, 0, 'null'),
(29, 6, '#385b47', 'Xanh lá', 0, 0, 'null'),
(30, 6, '#000', 'Đen', 0, 0, 'null');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `customerId` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `createAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_review`
--

INSERT INTO `product_review` (`id`, `code`, `customerId`, `rate`, `content`, `createAt`) VALUES
(1, 'IPHONE-13', 2, 3, 'Haizz', '2023-03-04 13:18:42'),
(2, 'IPHONE-13', 1, 4, 'Haizz vui nen cho 4 sao', '2023-03-04 13:18:42'),
(3, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(4, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(5, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(6, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(7, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(8, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(9, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(10, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(11, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(12, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(13, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(14, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(15, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(16, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(17, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(18, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(19, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(20, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(21, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(22, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(23, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(24, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(25, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(26, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(27, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(28, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(29, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(30, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(31, 'IPHONE-13', 1, 4, 'Haizz vui haiz', '2023-03-04 13:18:42'),
(32, 'IPHONE-13', 2, 3, 'Haizz', '2023-03-04 13:18:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `url` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `url`, `title`, `content`, `image`, `position`) VALUES
(1, '#', 'title1', 'content1', 'home4-slider1.jpg', 1),
(2, '#', 'title2', 'content2', 'home4-slider2.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer` (`customerId`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand` (`brandId`),
  ADD KEY `category` (`categoryId`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
