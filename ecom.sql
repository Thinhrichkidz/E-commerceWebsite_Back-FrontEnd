-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 01:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Keyboard', 1),
(2, 'Keycap', 1),
(3, 'Switches', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(1, 2, 'Purple', 2, 1980000, 4, '160452095_sp1.jpg', '5', '6', '7', '', '9', 1),
(2, 2, 'White', 100, 10000000, 12, '545334970_sp2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque ipsum sed pharetra pellentesque. Nulla tristique, dolor et viverra vestibulum, urna dui finibus massa, vel dapibus ligula sapien eu velit. Sed sit amet semper quam. Nam convallis nunc eget quam porta, nec sodales ligula rutrum. Maecenas volutpat scelerisque facilisis. Maecenas consequat erat vitae mauris iaculis, sit amet bibendum nisl scelerisque. Fusce pellentesque laoreet est, eu porta nunc finibus id. Fusce egestas ante ac augue facilisis, vitae volutpat nunc commodo. Proin consectetur quam at venenatis eleifend. Duis vel libero luctus, iaculis libero congue, molestie tortor.', 'test', '', 'test', 1),
(3, 2, 'Blue n White', 100, 2980000, 8, '172832439_sp3.jpg', 'test', 'test', 'test', '', 'test', 1),
(4, 7, '123', 123, 3223, 12, '606751882_578369140_1 (1).jpg', '123', '123', '123', '', '123', 1),
(5, 2, 'Blue', 123, 1890000, 12, '440493758_sp4.jpg', '123', '123', '123', '', '123', 1),
(6, 7, 'ProductX', 12, 123, 12, '261350604_119845920_2.jpg', '123', '123', '123', '', '123', 1),
(7, 7, 'ProductXyz', 123, 123, 323, '935876053_287733289_3.jpg', '123', '123', '123', '', '123', 1),
(10, 3, 'cherry1', 123, 10000, 1200, '608901635_cherry1.jpg', 'as', 'as', 'as', '', 'as', 1),
(11, 3, 'cherry2', 0, 9000, 1000, '548570237_cherry2.jpg', 'as', 'as', 'as', '', 'as', 1),
(12, 3, 'Everglide1', 0, 4000, 500, '774279210_Everglide1.jpg', 'as', 'as', 'as', '', 'as', 1),
(13, 3, 'Everglide2', 0, 3500, 1500, '915240556_Everglide2.jpg', 'as', 'as', 'as', '', 'as', 1),
(14, 1, 'keyboard 1', 0, 1300, 123, '166213876_ban_phim.jpg', 'as', 'as', 'as', '', 'as', 1),
(15, 1, 'keyboard 2', 0, 1323, 45, '740317152_ban_phim2.jpg', 'as', 'as', 'as', '', 'as', 1),
(16, 1, 'keyboard3', 0, 123, 23, '534536708_ban_phim3.jpg', 'as', 'as', 'as', '', 'as', 1),
(17, 1, 'keyboard4', 0, 123232, 45, '750384828_ban_phim4.jpg', 'as', 'as', 'as', '', 'as', 0),
(18, 3, 'cherry3', 0, 1000, 1, '327224851_cherry3.jpg', 'abc', '15x15', 'test', '', 'tes3=t3', 1),
(19, 3, 'Cherry4', 0, 2000, 2, '465161989_cherry4.jpg', 'test', 'test', 'tetete', '', 'aaaaa', 1),
(20, 3, 'Everglide3', 0, 0, 2, '556747567_Everglide3.jpg', 'adv', 'd', 'cc', '', 'wfwwf', 1),
(21, 3, 'Everglide4', 0, 3000, 4, '752206407_Everglide4.jpg', 'wef', 'wefwef', 'wef', '', 'ww', 1),
(22, 3, 'Kailh1', 0, 3000, 1, '338395650_Kailh1.jpg', 'wfvd', 'dff', 'ff', '', 'ffff', 1),
(23, 0, 'Kailh2', 0, 20000, 2, '851135137_Kailh2.jpg', 'fw', 'qweqwe', 'vrv', 'jdjd', 'kewkf', 1),
(24, 3, 'Kailh3', 0, 30000, 3, '995685760_Kailh3.jpg', 'rv', 'hrhh', 'ww', '', 'ttt', 1),
(25, 3, 'switch', 0, 100000, 1, '853736363_switch.jpg', 'wef', 'wqef', 'ee', '', 'heh', 0),
(26, 3, 'switch2', 0, 320000, 3, '332516111_switch2.jpg', 'fq', 'ef', 'ewfw', '', 'wf', 0),
(27, 3, 'switch3', 0, 54000, 5, '833173053_switch3.jpg', 'guhiu', 'bhdhh', 'fbryc', '', 'hvb', 0),
(28, 0, 'switch4', 0, 60000, 10000000, '338703429_switch4.jpg', 'rfe', 'ewrg', 'werg', 'qwefhwt', 'jig', 1),
(29, 2, 'Keycap Cherry1', 0, 100000, 10, '910198437_cherry1.jpg', 'wefwef', 'kyg', 'hbh', '', 'jbkj', 1),
(30, 2, 'Keycap Cherry2', 3, 2000000, 20, '741078400_cherry2.jpg', 'wef', 'hghghhgh', 'h3hfhf', '', 'yrhhbb', 1),
(31, 2, 'Keycap Natalius', 0, 3000000, 25, '682330604_Natalius.png', 'ghke', 'hhhhh', 'rtrttr', '', 'knf', 1),
(32, 2, 'Keycap Oblivion', 0, 3500000, 15, '447415838_oblivion.jpg', 'fqrg', 'werg', 'erg', '', 'werg', 0),
(33, 2, 'Keycap sp1', 0, 4000000, 10, '801234172_sp1.jpg', 'eg', 'ergewg', 'jkgkc', '', 'hvj', 0),
(34, 0, 'Keycap sp2', 0, 3200000, 24, '864147536_sp2.jpg', 'rgq', 'rewgewrg', 'ewrgewg', 'hl', 'hbrfkbg', 1),
(35, 2, 'Keycap sp3', 0, 5000000, 34, '388176379_sp3.jpg', 'qwf', 'lg', 'qwrfi', '', 'bqhwf', 0),
(36, 2, 'Keycap sp4', 0, 3400000, 2, '741791155_sp4.jpg', 'wqfe', 'kg', 'nwi', '', 'bqruf', 0),
(37, 2, 'Keycap sp5', 0, 2300000, 67, '233576116_172832439_sp3.jpg', 'biueef', 'kqwegvf', 'jwegfve', '', 'reg', 1),
(38, 2, 'Keycap Vilebloom', 0, 5100000, 3, '435964464_160452095_sp1.jpg', 'wef', 'kuhv', 'jhbqfiu', '', 'ouhner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(2, 'Hugo', 'Hugogogo3421', 'Hugo123@gmail.com', '123785', '2022-07-07 07:03:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
