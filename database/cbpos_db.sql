-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2022 at 09:47 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `cbpos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
    `id` int(30) NOT NULL,
    `name` varchar(250) NOT NULL,
    `description` text DEFAULT NULL,
    `image_path` text DEFAULT NULL,
    `status` tinyint(1) NOT NULL DEFAULT 1,
    `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
    `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO
    `brands` (
        `id`,
        `name`,
        `description`,
        `image_path`,
        `status`,
        `delete_flag`,
        `date_created`
    )
VALUES (
        1,
        'Gap',
        'GAP Inc. is a leading global retailer offering a wide range of modern, stylish, and affordable clothing, accessories, and personal care products for men, women, and children through its iconic brands – GAP, Banana Republic, Old Navy, and Athleta.',
        'uploads/brands/1.jpg?v=1645066502',
        1,
        0,
        '2022-02-17 10:55:02'
    ),
    (
        2,
        'Calvin Klein',
        'Calvin Klein is a global fashion company that sells a wide range of products, including apparel, accessories, footwear, and fragrances. They are known for their designer jeans, underwear, and clothing lines',
        NULL,
        1,
        1,
        '2022-02-17 10:57:41'
    ),
    (
        3,
        'American Eagle',
        'American Eagle Outfitters, Inc. is a multinational specialty retailer that sells apparel, accessories, and personal care products for men and women.',
        'uploads/brands/3.jpg?v=1645066772',
        1,
        0,
        '2022-02-17 10:59:32'
    ),
    (
        4,
        'Under Armour',
        'Under Armour primarily sells performance apparel, athletic footwear, and accessories for men, women, and youth. They specialize in creating athletic gear designed to keep athletes cool, dry, and light during workouts and games.',
        'uploads/brands/4.jpg?v=1645066818',
        1,
        0,
        '2022-02-17 11:00:18'
    ),
    (
        5,
        'Levi`s',
        'Levi Strauss & Co. primarily sells clothing, especially jeans, and related accessories for men, women, and children.',
        'uploads/brands/5.jpg?v=1645066872',
        1,
        0,
        '2022-02-17 11:01:12'
    ),
    (
        6,
        'Nike',
        'Nike, Inc. is a global sports apparel and footwear company that designs, markets, and distributes athletic footwear, apparel, equipment, accessories, and services for sports and fitness activities. ',
        'uploads/brands/6.jpg?v=1645066909',
        1,
        0,
        '2022-02-17 11:01:49'
    );

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
    `id` int(30) NOT NULL,
    `client_id` int(30) NOT NULL,
    `inventory_id` int(30) NOT NULL,
    `price` double NOT NULL,
    `quantity` int(30) NOT NULL,
    `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
    `id` int(30) NOT NULL,
    `category` varchar(250) NOT NULL,
    `description` text DEFAULT NULL,
    `status` tinyint(1) NOT NULL DEFAULT 1,
    `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
    `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO
    `categories` (
        `id`,
        `category`,
        `description`,
        `status`,
        `delete_flag`,
        `date_created`
    )
VALUES (
        1,
        'Men`s wear',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue interdum pellentesque. Praesent bibendum vehicula libero a congue. In molestie rhoncus finibus.',
        1,
        0,
        '2022-02-17 11:27:11'
    ),
    (
        2,
        'Women`s wear',
        'n interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis.',
        1,
        0,
        '2022-02-17 11:27:24'
    ),
    (
        3,
        'Kid~s wear',
        'n interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis.',
        1,
        0,
        '2022-02-17 11:27:45'
    ),
    (
        4,
        'Perfumes',
        'Donec sit amet consectetur leo, eu lacinia risus. Donec dignissim magna lectus, vitae viverra lacus blandit vitae.',
        1,
        0,
        '2022-02-17 11:27:55'
    ),
    (
        5,
        'Shoes',
        'Proin sit amet elit in massa posuere ullamcorper quis quis sem. Phasellus accumsan augue vitae varius rhoncus. Proin vitae leo ante. Praesent a lorem justo.',
        1,
        0,
        '2022-02-17 11:28:38'
    ),
    (
        6,
        'Watches',
        'Nam nisl ex, condimentum nec malesuada cursus, ullamcorper in velit. Quisque lobortis diam nunc, at auctor felis placerat eu. Nullam egestas rhoncus lacinia.',
        1,
        0,
        '2022-02-17 11:29:00'
    ),
    (
        7,
        'Decorative',
        'Donec imperdiet viverra eros eu elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in nulla nec ex cursus consequat nec vel ipsum. Phasellus tristique erat sit amet neque venenatis volutpat. Maecenas varius venenatis sagittis.',
        1,
        0,
        '2022-02-17 11:29:19'
    ),
    (
        8,
        'Cosmetics',
        'Nullam quis gravida purus, quis sagittis nibh. Ut eget maximus nisl. Nam elementum diam libero, et scelerisque nisi molestie quis. Duis accumsan, neque nec laoreet malesuada, est ex pretium urna, at pellentesque arcu mauris a est. Proin et sollicitudin dui. Integer consectetur pulvinar tellus in fermentum.',
        1,
        0,
        '2022-02-17 11:29:38'
    ),
    (
        9,
        'Furniture',
        'Donec eu porttitor quam. Etiam mollis consequat risus quis maximus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas',
        1,
        0,
        '2022-02-17 11:29:59'
    ),
    (
        10,
        'test',
        'test',
        0,
        1,
        '2022-02-17 11:31:18'
    );

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
    `id` int(30) NOT NULL,
    `firstname` varchar(250) NOT NULL,
    `lastname` varchar(250) NOT NULL,
    `gender` varchar(20) NOT NULL,
    `contact` varchar(15) NOT NULL,
    `email` varchar(250) NOT NULL,
    `password` text NOT NULL,
    `default_delivery_address` text NOT NULL,
    `status` tinyint(1) NOT NULL DEFAULT 1,
    `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
    `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO
    `clients` (
        `id`,
        `firstname`,
        `lastname`,
        `gender`,
        `contact`,
        `email`,
        `password`,
        `default_delivery_address`,
        `status`,
        `delete_flag`,
        `date_created`
    )
VALUES (
        2,
        'Samantha Jane',
        'Miller',
        'Female',
        '09123456789',
        'sam23@sample.com',
        '45bff2a14658fc9b21c6e5e9bf75186b',
        'Sample Address',
        1,
        0,
        '2022-02-17 14:24:00'
    );

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
    `id` int(30) NOT NULL,
    `variant` text NOT NULL,
    `product_id` int(30) NOT NULL,
    `quantity` double NOT NULL,
    `price` float NOT NULL,
    `date_created` datetime NOT NULL DEFAULT current_timestamp(),
    `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `variant`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES⤶(1, 'S', 1, 10, 10, '2023-04-16 11:57:52', NULL),⤶(2, 'M', 1, 12, 12.5, '2023-04-16 12:01:15', NULL),⤶(3, 'L', 1, 10, 15, '2023-04-16 12:04:15', NULL),⤶(4, 'S', 2, 25, 8, '2023-04-16 13:22:54', NULL),⤶
(5, 'M', 2, 25, 12, '2023-04-16 13:23:05', NULL),⤶(6, 'L', 2, 12, 17, '2023-04-16 16:28:14', NULL),⤶(7, 'S', 3, 25, 25, '2023-04-16 13:22:54', NULL),⤶(8, 'M', 3, 25, 30, '2023-04-16 13:23:05', NULL),⤶(9, 'L', 3, 50, 35, '2023-04-16 16:28:14', NULL),⤶
(10, 'S', 4, 25, 25, '2023-04-16 13:22:54', NULL),⤶(11, 'M', 4, 25, 12, '2023-04-16 13:23:05', NULL),⤶(12, 'L', 4, 10, 15.5, '2023-04-16 16:28:14', NULL),⤶(13, 'S', 5, 25, 17, '2023-04-16 13:22:54', NULL),⤶(14, 'M', 5, 15, 9.9, '2023-04-16 13:23:05', NULL),⤶(15, 'L', 5, 30, 23, '2023-04-16 16:28:14', NULL),⤶(16, 'S', 6, 25, 25, '2023-04-16 13:22:54', NULL),
⤶(17, 'M', 6, 22, 13, '2024-10-25 13:23:05', NULL),⤶(18, 'L', 6, 10, 15, '2024-10-25 16:28:14', NULL),⤶(19, 'S', 7, 25, 25, '2024-10-25 13:22:54', NULL),⤶(20, 'M', 7, 28, 14, '2024-10-25 13:23:05', NULL),
⤶(21, 'L', 7, 10, 13, '2024-10-25 16:28:14', NULL),⤶(22, 'S', 8, 13, 20, '2024-10-25 13:22:54', NULL),⤶(23, 'M', 8, 22, 15, '2024-10-25 13:23:05', NULL),⤶(24, 'L', 8, 11, 11, '2024-10-25 16:28:14', NULL),⤶(25, 'S', 9, 25, 25, '2024-10-25 13:22:54', NULL),⤶(26, 'M', 9, 23, 30, '2024-10-25 13:23:05', NULL),
⤶(27, 'L', 9, 19, 12, '2024-10-25 16:28:14', NULL),
⤶(28, 'S', 10, 25, 21, '2024-10-25 13:22:54', NULL),⤶(29, 'M', 10, 35, 13, '2024-10-25 13:23:05', NULL),⤶(30, 'L', 10, 14, 23, '2024-10-25 16:28:14', NULL),⤶(31, 'S', 11, 22, 17, '2024-10-25 13:22:54', NULL),⤶(32, 'M', 11, 26, 22, '2024-10-25 13:23:05', NULL),⤶(33, 'L', 11, 20, 25, '2024-10-25 16:28:14', NULL),⤶(34, 'S', 12, 25, 16, '2025-01-07 13:22:54', NULL),
⤶(35, 'M', 12, 30, 19, '2025-01-07 13:23:05', NULL),⤶(36, 'L', 12, 20, 23, '2025-01-07 16:28:14', NULL),⤶(37, 'S', 13, 25, 22, '2025-01-07 13:22:54', NULL),⤶(38, 'M', 13, 15, 24, '2025-01-07 13:23:05', NULL),⤶(39, 'L', 13, 10, 19, '2025-01-07 16:28:14', NULL),
⤶(40, 'S', 14, 24, 25, '2025-01-07 13:22:54', NULL),⤶(41, 'M', 14, 23, 30, '2025-01-07 13:23:05', NULL),⤶(42, 'L', 14, 10, 35, '2025-01-07 16:28:14', NULL),⤶(43, 'S', 15, 25, 12, '2025-01-07 13:22:54', NULL),⤶(44, 'M', 15, 22, 13, '2025-01-07 13:23:05', NULL),⤶
(45, 'L', 15, 16, 13, '2025-01-07 16:28:14', NULL),⤶(46, 'S', 16, 25, 25, '2025-01-07 13:22:54', NULL),⤶(47, 'M', 16, 32, 30, '2025-01-07 13:23:05', NULL),⤶(48, 'L', 16, 28, 31, '2025-01-07 16:28:14', NULL),⤶(49, 'S', 17, 31, 20, '2025-01-07 13:22:54', NULL),⤶(50, 'M', 17, 25, 23, '2025-01-07 13:23:05', NULL),⤶(51, 'L', 17, 10, 25, '2025-01-07 16:28:14', NULL),⤶(52, 'S', 18, 25, 23,'2025-01-07 13:22:54', NULL),⤶
(53, 'M', 18, 21, 13, '2025-01-07 13:23:05', NULL),⤶(54, 'L', 18, 10, 15, '2025-01-07 16:28:14', NULL),⤶(55, 'S', 19, 25, 21, '2025-01-07 13:22:54', NULL),⤶(56, 'M', 19, 25, 16, '2025-01-07 13:23:05', NULL),⤶(57, 'L', 19, 20, 17, '2025-01-07 16:28:14', NULL),⤶(58, 'S', 20, 25, 20, '2025-02-15 13:22:54', NULL),⤶(59, 'M', 20, 35, 10, '2025-02-15 13:23:05', NULL),⤶(60, 'L', 20, 30, 13, '2025-02-15 16:28:14', NULL),⤶(61, 'S', 21, 25, 19, '2025-02-15 13:22:54', NULL),⤶(62, 'M', 21, 25, 23, '2025-02-15 13:23:05', NULL),
⤶(63, 'L', 21, 20, 25, '2025-02-15 16:28:14', NULL)

INSERT INTO `inventory` (`id`, `variant`, `product_id`, `quantity`, `price`, `date_created`, `date_updated`) VALUES
(64, 'S', 22, 15, 11, '2025-02-15 13:22:54', NULL),
(65, 'M', 22, 17, 13, '2025-02-15 13:23:05', NULL),
(66, 'L', 22, 20, 15, '2025-02-15 16:28:14', NULL),
(67, 'S', 23, 25, 19, '2025-02-15 13:22:54', NULL),
(68, 'M', 23, 21, 23, '2025-02-15 13:23:05', NULL),
(69, 'L', 23, 24, 25, '2025-02-15 16:28:14', NULL),
(70, 'S', 24, 13, 12, '2025-03-10 13:22:54', NULL),
(71, 'M', 24, 15, 15, '2025-03-10 13:23:05', NULL),
(72, 'L', 24, 23, 19, '2025-03-10 16:28:14', NULL),
(73, 'S', 25, 17, 19, '2025-03-10 13:22:54', NULL),
(74, 'M', 25, 20, 23, '2025-03-10 13:23:05', NULL),
(75, 'L', 25, 24, 25, '2025-03-10 16:28:14', NULL),
(76, 'S', 26, 12, 16, '2025-03-10 13:22:54', NULL),
(77, 'M', 26, 15, 20, '2025-03-10 13:23:05', NULL),
(78, 'L', 26, 14, 22, '2025-03-10 16:28:14', NULL),
(79, 'S', 27, 25, 10, '2025-03-10 13:22:54', NULL),
(80, 'M', 27, 35, 14, '2025-03-10 13:23:05', NULL),
(81, 'L', 27, 30, 18, '2025-03-10 16:28:14', NULL),
(82, 'S', 28, 35, 15, '2025-03-10 13:22:54', NULL),
(83, 'M', 28, 30, 23, '2025-02-15 13:23:05', NULL),
(84, 'L', 28, 35, 25, '2025-02-15 16:28:14', NULL),
(85, 'S', 29, 25, 10, '2025-02-15 13:22:54', NULL),
(86, 'M', 29, 35, 12, '2025-02-15 13:23:05', NULL),
(87, 'L', 29, 29, 15, '2025-04-09 16:28:14', NULL),
(88, 'S', 30, 25, 12, '2025-04-09 13:22:54', NULL),
(89, 'M', 30, 28, 10, '2025-04-09 13:23:05', NULL),
(90, 'L', 30, 30, 16, '2025-04-09 16:28:14', NULL),
(91, 'S', 31, 35, 19, '2025-04-09 13:22:54', NULL),
(92, 'M', 31, 32, 23, '2025-04-09 13:23:05', NULL),
(93, 'L', 31, 20, 25, '2025-04-09 16:28:14', NULL),
(94, 'S', 32, 25, 17, '2025-04-09 13:22:54', NULL),
(95, 'M', 32, 25, 19, '2025-04-09 13:23:05', NULL),
(96, 'L', 32, 25, 25, '2025-04-09 16:28:14', NULL),
(97, 'S', 33, 35, 11, '2025-04-09 13:22:54', NULL),
(98, 'M', 33, 32, 14, '2025-04-09 13:23:05', NULL),
(99, 'L', 33, 25, 17, '2025-04-09 16:28:14', NULL),
(100, 'S', 34, 35, 19, '2025-04-09 13:22:54', NULL),
(101, 'M', 34, 35, 13, '2025-04-09 13:23:05', NULL),
(102, 'L', 34, 20, 25, '2025-04-09 16:28:14', NULL),
(103, 'S', 35, 25, 09, '2025-04-09 13:22:54', NULL),
(104, 'M', 35, 25, 12, '2025-04-09 13:23:05', NULL),
(105, 'L', 35, 30, 19, '2025-04-09 16:28:14', NULL),
(106, 'S', 36, 25, 14, '2025-04-09 13:22:54', NULL),
(107, 'M', 36, 25, 16, '2025-02-15 13:23:05', NULL),
(108, 'L', 36, 30, 20, '2025-02-15 16:28:14', NULL),
(109, 'S', 37, 25, 19, '2025-02-15 13:22:54', NULL),
(110, 'M', 37, 35, 23, '2025-02-15 13:23:05', NULL),
(111, 'L', 37, 20, 25, '2025-02-15 16:28:14', NULL),
(112, 'S', 38, 25, 19, '2025-02-15 13:22:54', NULL),
(113, 'M', 38, 15, 20, '2025-02-15 13:23:05', NULL),
(114, 'L', 38, 30, 25, '2025-02-15 16:28:14', NULL),
(115, 'S', 39, 35, 15, '2025-02-15 13:22:54', NULL),
(116, 'M', 39, 25, 21, '2025-02-15 13:23:05', NULL),
(117, 'L', 39, 20, 23, '2025-02-15 16:28:14', NULL),
(118, 'S', 40, 25, 19, '2025-02-15 13:22:54', NULL),
(119, 'M', 40, 25, 23, '2025-02-15 13:23:05', NULL),
(120, 'L', 40, 20, 25, '2025-02-15 16:28:14', NULL),
(121, 'S', 41, 35, 19, '2025-02-15 13:22:54', NULL),
(122, 'M', 41, 25, 15, '2025-02-15 13:23:05', NULL),
(123, 'L', 41, 10, 23, '2025-02-15 16:28:14', NULL),
(124, 'S', 42, 25, 14, '2025-02-15 13:22:54', NULL),
(125, 'M', 42, 20, 16, '2025-02-15 13:23:05', NULL),
(126, 'L', 42, 20, 19, '2025-02-15 16:28:14', NULL),
(127, 'S', 43, 24, 12, '2025-02-15 13:22:54', NULL),
(128, 'M', 43, 25, 16, '2025-02-15 13:23:05', NULL),
(129, 'L', 43, 23, 24, '2025-02-15 16:28:14', NULL),
(130, 'S', 44, 25, 19, '2025-02-15 13:22:54', NULL),
(131, 'M', 44, 21, 23, '2025-02-15 13:23:05', NULL),
(132, 'L', 44, 20, 25, '2025-02-15 16:28:14', NULL),
(133, 'S', 45, 25, 12, '2025-02-15 13:22:54', NULL),
(134, 'M', 45, 29, 15, '2025-02-15 13:23:05', NULL),
(135, 'L', 45, 30, 20, '2025-02-15 16:28:14', NULL),
(136, 'S', 46, 35, 16, '2025-02-15 13:22:54', NULL),
(137, 'M', 46, 25, 18, '2025-02-15 13:23:05', NULL),
(138, 'L', 46, 20, 24, '2025-02-15 16:28:14', NULL),
(139, 'S', 47, 25, 15, '2025-02-15 13:22:54', NULL),
(140, 'M', 47, 25, 23, '2025-02-15 13:23:05', NULL),
(141, 'L', 47, 30, 25, '2025-02-15 16:28:14', NULL),
(142, 'S', 48, 25, 19, '2025-02-15 13:22:54', NULL),
(143, 'M', 48, 35, 20, '2025-02-15 13:23:05', NULL),
(144, 'L', 48, 10, 22, '2025-02-15 16:28:14', NULL),
(145, 'S', 49, 35, 13, '2025-02-15 13:22:54', NULL),
(146, 'M', 49, 28, 16, '2025-02-15 13:23:05', NULL),
(147, 'L', 49, 25, 19, '2025-02-15 16:28:14', NULL),
(148, 'S', 50, 35, 20, '2025-02-15 13:22:54', NULL),
(149, 'M', 50, 25, 23, '2025-02-15 13:23:05', NULL),
(150, 'L', 50, 20, 25, '2025-02-15 16:28:14', NULL),
(151, 'S', 51, 15, 12, '2025-02-15 13:22:54', NULL),
(152, 'M', 51, 25, 14, '2025-02-15 13:23:05', NULL),
(153, 'L', 51, 20, 16, '2025-02-15 16:28:14', NULL),
(154, 'S', 52, 25, 11, '2025-02-15 13:22:54', NULL),
(155, 'M', 52, 30, 15, '2025-02-15 13:23:05', NULL),
(156, 'L', 52, 20, 22, '2025-02-15 16:28:14', NULL),
(157, 'S', 53, 25, 22, '2025-02-15 13:22:54', NULL),
(158, 'M', 53, 25, 23, '2025-02-15 13:23:05', NULL),
(159, 'L', 53, 30, 25, '2025-02-15 16:28:14', NULL),
(160, 'S', 54, 25, 19, '2025-02-15 13:22:54', NULL),
(161, 'M', 54, 20, 23, '2025-02-15 13:23:05', NULL),
(162, 'L', 54, 30, 25, '2025-02-15 16:28:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
    `id` int(30) NOT NULL,
    `ref_code` varchar(100) NOT NULL,
    `client_id` int(30) NOT NULL,
    `delivery_address` text NOT NULL,
    `payment_method` varchar(100) NOT NULL,
    `order_type` tinyint(1) NOT NULL COMMENT '1= pickup,2= deliver',
    `amount` double NOT NULL,
    `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 = pending,\r\n1= Packed,\r\n2 = Out for Delivery,\r\n3=Delivered,\r\n4=cancelled',
    `paid` tinyint(1) NOT NULL DEFAULT 0,
    `date_created` datetime NOT NULL DEFAULT current_timestamp(),
    `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO
    `orders` (
        `id`,
        `ref_code`,
        `client_id`,
        `delivery_address`,
        `payment_method`,
        `order_type`,
        `amount`,
        `status`,
        `paid`,
        `date_created`,
        `date_updated`
    )
VALUES (
        3,
        '20220200001',
        2,
        'Sample Address',
        'cod',
        0,
        900,
        4,
        0,
        '2022-02-17 14:51:58',
        '2022-02-17 15:04:38'
    ),
    (
        4,
        '20220200002',
        2,
        'Sample Address',
        'Online Payment',
        0,
        1800,
        3,
        1,
        '2022-02-17 15:26:17',
        '2022-02-17 15:35:45'
    ),
    (
        5,
        '20220200003',
        2,
        'Sample Address',
        'cod',
        0,
        500,
        3,
        1,
        '2022-02-17 15:32:52',
        '2022-02-17 15:35:32'
    );

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
    `id` int(30) NOT NULL,
    `order_id` int(30) NOT NULL,
    `inventory_id` int(30) NOT NULL,
    `quantity` int(30) NOT NULL,
    `price` double NOT NULL,
    `total` double NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO
    `order_list` (
        `id`,
        `order_id`,
        `inventory_id`,
        `quantity`,
        `price`,
        `total`
    )
VALUES (4, 3, 3, 3, 300, 900),
    (5, 4, 3, 4, 300, 1200),
    (6, 4, 1, 3, 200, 600),
    (7, 5, 3, 2, 250, 500);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
    `id` int(30) NOT NULL,
    `brand_id` int(30) NOT NULL,
    `category_id` int(30) NOT NULL,
    `name` varchar(250) NOT NULL,
    `specs` text NOT NULL,
    `status` tinyint(1) NOT NULL DEFAULT 1,
    `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
    `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `products`
--


INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `specs`, `status`, `delete_flag`, `date_created`) VALUES
(52, 6, 3, 'T-Shirt', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;orem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue interdum pellentesque. Praesent bibendum vehicula libero a congue. In molestie rhoncus finibus. In interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis. Donec sit amet consectetur leo, eu lacinia risus. Donec dignissim magna lectus, vitae viverra lacus blandit vitae.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Proin sit amet elit in massa posuere ullamcorper quis quis sem. Phasellus accumsan augue vitae varius rhoncus. Proin vitae leo ante. Praesent a lorem justo. Nam nisl ex, condimentum nec malesuada cursus, ullamcorper in velit. Quisque lobortis diam nunc, at auctor felis placerat eu. Nullam egestas rhoncus lacinia.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Donec imperdiet viverra eros eu elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in nulla nec ex cursus consequat nec vel ipsum. Phasellus tristique erat sit amet neque venenatis volutpat. Maecenas varius venenatis sagittis. Nullam quis gravida purus, quis sagittis nibh. Ut eget maximus nisl. Nam elementum diam libero, et scelerisque nisi molestie quis. Duis accumsan, neque nec laoreet malesuada, est ex pretium urna, at pellentesque arcu mauris a est. Proin et sollicitudin dui. Integer consectetur pulvinar tellus in fermentum.&lt;/p&gt;', 1, 0, '2023-10-17 11:50:19'),
(53, 6, 3, 'T-Shirt', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;orem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue interdum pellentesque. Praesent bibendum vehicula libero a congue. In molestie rhoncus finibus. In interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis. Donec sit amet consectetur leo, eu lacinia risus. Donec dignissim magna lectus, vitae viverra lacus blandit vitae.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Proin sit amet elit in massa posuere ullamcorper quis quis sem. Phasellus accumsan augue vitae varius rhoncus. Proin vitae leo ante. Praesent a lorem justo. Nam nisl ex, condimentum nec malesuada cursus, ullamcorper in velit. Quisque lobortis diam nunc, at auctor felis placerat eu. Nullam egestas rhoncus lacinia.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Donec imperdiet viverra eros eu elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in nulla nec ex cursus consequat nec vel ipsum. Phasellus tristique erat sit amet neque venenatis volutpat. Maecenas varius venenatis sagittis. Nullam quis gravida purus, quis sagittis nibh. Ut eget maximus nisl. Nam elementum diam libero, et scelerisque nisi molestie quis. Duis accumsan, neque nec laoreet malesuada, est ex pretium urna, at pellentesque arcu mauris a est. Proin et sollicitudin dui. Integer consectetur pulvinar tellus in fermentum.&lt;/p&gt;', 1, 0, '2024-01-17 11:50:19'),
(54, 6, 3, 'Night wear', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;orem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue interdum pellentesque. Praesent bibendum vehicula libero a congue. In molestie rhoncus finibus. In interdum quis urna sed auctor. Vivamus a ligula ut dui aliquam efficitur ut eu ante. Phasellus pretium ut risus vitae euismod. Cras ac velit mollis, sodales urna vitae, pharetra dui. Mauris et sem vel est interdum lobortis sit amet quis felis. Donec sit amet consectetur leo, eu lacinia risus. Donec dignissim magna lectus, vitae viverra lacus blandit vitae.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Proin sit amet elit in massa posuere ullamcorper quis quis sem. Phasellus accumsan augue vitae varius rhoncus. Proin vitae leo ante. Praesent a lorem justo. Nam nisl ex, condimentum nec malesuada cursus, ullamcorper in velit. Quisque lobortis diam nunc, at auctor felis placerat eu. Nullam egestas rhoncus lacinia.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Donec imperdiet viverra eros eu elementum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in nulla nec ex cursus consequat nec vel ipsum. Phasellus tristique erat sit amet neque venenatis volutpat. Maecenas varius venenatis sagittis. Nullam quis gravida purus, quis sagittis nibh. Ut eget maximus nisl. Nam elementum diam libero, et scelerisque nisi molestie quis. Duis accumsan, neque nec laoreet malesuada, est ex pretium urna, at pellentesque arcu mauris a est. Proin et sollicitudin dui. Integer consectetur pulvinar tellus in fermentum.&lt;/p&gt;', 1, 0, '2024-02-17 11:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
    `id` int(30) NOT NULL,
    `order_id` int(30) NOT NULL,
    `total_amount` double NOT NULL,
    `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO
    `sales` (
        `id`,
        `order_id`,
        `total_amount`,
        `date_created`
    )
VALUES (
        3,
        3,
        900,
        '2022-02-17 14:51:58'
    ),
    (
        4,
        4,
        1800,
        '2022-02-17 15:26:17'
    ),
    (
        5,
        5,
        500,
        '2022-02-17 15:32:52'
    );

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
    `id` int(30) NOT NULL,
    `meta_field` text NOT NULL,
    `meta_value` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO
    `system_info` (
        `id`,
        `meta_field`,
        `meta_value`
    )
VALUES (
        1,
        'name',
        'The Minimalist Rack'
    ),
    (
        6,
        'short_name',
        'Minimalist Style'
    ),
    (
        11,
        'logo',
        'uploads/logo-1645065716.jpg?v=1645065716'
    ),
    (
        13,
        'user_avatar',
        'uploads/user_avatar.jpg'
    ),
    (
        14,
        'cover',
        'uploads/cover-1645065725.jpg?v=1645065725'
    );

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
    `id` int(50) NOT NULL,
    `firstname` varchar(250) NOT NULL,
    `lastname` varchar(250) NOT NULL,
    `username` text NOT NULL,
    `password` text NOT NULL,
    `avatar` text DEFAULT NULL,
    `last_login` datetime DEFAULT NULL,
    `type` tinyint(1) NOT NULL DEFAULT 0,
    `date_added` datetime NOT NULL DEFAULT current_timestamp(),
    `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO
    `users` (
        `id`,
        `firstname`,
        `lastname`,
        `username`,
        `password`,
        `avatar`,
        `last_login`,
        `type`,
        `date_added`,
        `date_updated`
    )
VALUES (
        1,
        'Adminstrator',
        'Admin',
        'admin',
        '0192023a7bbd73250516f069df18b500',
        'uploads/avatars/1.png?v=1645064505',
        NULL,
        1,
        '2021-01-20 14:02:37',
        '2022-02-17 10:21:45'
    );

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
ADD PRIMARY KEY (`id`),
ADD KEY `inventory_id` (`inventory_id`),
ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
ADD PRIMARY KEY (`id`),
ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
ADD PRIMARY KEY (`id`),
ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
ADD PRIMARY KEY (`id`),
ADD KEY `inventory_id` (`inventory_id`),
ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
ADD PRIMARY KEY (`id`),
ADD KEY `brand_id` (`brand_id`, `category_id`),
ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
ADD PRIMARY KEY (`id`),
ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 11;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 6;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`inventory_id`) REFERENCES `inventory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;