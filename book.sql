-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 06:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `book`
--
CREATE DATABASE IF NOT EXISTS `book` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `book`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_bills`
--

CREATE TABLE `admin_bills` (
  `id` int(11) NOT NULL,
  `usernname` varchar(20) NOT NULL,
  `bill` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_books`
--

CREATE TABLE `admin_books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(20) NOT NULL,
  `author` varchar(20) NOT NULL,
  `email` text NOT NULL,
  `phone` varchar(30) NOT NULL,
  `price` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `cover` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_books`
--

INSERT INTO `admin_books` (`id`, `book_name`, `author`, `email`, `phone`, `price`, `quantity`, `cover`, `file`, `description`) VALUES
(23, 'A Place Called Home', 'Preeti Shenoy', 'preetishinou@gmail.com', '9825387631', '100', '100', 'logo4.jpg', '', 'This is description'),
(24, 'The Struggle for Pol', 'prakash singh', 'ps1@gmail.com', '9825387631', '100', '10', 'download (1).jpg', '', 'This is second test');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin_12', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_orders`
--

CREATE TABLE `admin_orders` (
  `id` int(20) NOT NULL,
  `username` text NOT NULL,
  `name_book` text NOT NULL,
  `author` varchar(10) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `gst` decimal(10,0) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `client_user`
--

CREATE TABLE `client_user` (
  `id` int(11) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_username` varchar(25) NOT NULL,
  `c_email` text NOT NULL,
  `c_mobile` varchar(10) NOT NULL,
  `c_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_user`
--

INSERT INTO `client_user` (`id`, `c_name`, `c_username`, `c_email`, `c_mobile`, `c_password`) VALUES
(1, '', '', '', '0', ''),
(2, 'System.Web.UI.WebCon', '', '', '0', ''),
(3, 'System.Web.UI.WebCon', 'System.Web', '', '0', ''),
(4, 'System.Web.UI.WebCon', 'System.Web', 'System.Web.UI.WebControls.TextBox', '0', ''),
(5, 'System.Web.UI.WebCon', 'System.Web', 'System.Web.UI.WebControls.TextBox', '0', ''),
(6, 'System.Web.UI.WebCon', 'System.Web', 'System.Web.UI.WebControls.TextBox', '0', 'System.Web.UI.WebControls.TextBox'),
(7, 'System.Web.UI.WebCon', 'System.Web', 'System.Web.UI.WebControls.TextBox', '0', 'System.Web.UI.WebControls.TextBox'),
(8, 'System.Web.UI.WebCon', 'System.Web', 'System.Web.UI.WebControls.TextBox', '0', 'System.Web.UI.WebControls.TextBox'),
(9, 'Dharmik', 'dharmiktha', 'dharmikthanki2002@gmail.com', '2147483647', 'System.Web.UI.WebControls.TextBox'),
(10, 'yogi', '', '', '', ''),
(11, 'yogi', 'yogithanki', 'ksfnv', '9898989898', 'abc'),
(12, 'Dharmik', 'dharmiktha', 'ksfnv', '9825387631', 'testing for password'),
(13, 'Dharmik', 'dharmiktha', 'ksfnv', '9825387631', 'testing for password'),
(14, 'Dharmik', 'dharmiktha', 'ksfnv', '9825387631', 'testing for password'),
(15, 'Dharmik', 'dharmiktha', 'yogithanki2002@gmail.com', '9825387631', 'sample'),
(16, 'Dharmik', 'dharmiktha', 'yogithanki2002@gmail.com', '9825387631', 'sample'),
(17, 'Dharmik', 'dharmiktha', 'yogithanki2002@gmail.com', '9825387631', 'sample'),
(18, 'Dharmik', 'dharmiktha', 'yogithanki2002@gmail.com', '9825387631', 'sample'),
(19, 'Dharmik Yogeshbhai T', 'dharmiktha', 'dharmik.y.thanki@gmail.com', '9825387631', 'passswod'),
(20, 'dharmik', 'dharmik_200', 'dharmik.y.thanki@gmail.com', '9825387631', 'Dharmik'),
(21, 'vivek', 'vivek_123', 'vivek@gmail.com', '9825387631', 'vivek123'),
(22, 'Shiv', 'shiv_010', 'shiv@gmail.com', '9825387631', 'shiv123'),
(23, 'sample', 'sample123', 'sample@gmail.com', '9825387631', 'sample'),
(24, 'sample', 'sample123', 'sample@gmail.com', '9825387631', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `mobile`, `email`, `description`) VALUES
(1, 'Dharmik Thanki', '9825387631', 'dharmik.y.thanki@gmail.com', 'This is my first message'),
(2, 'Dharmik Thanki', '', 'dharmik.y.thanki@gmail.com', 'This is my second message\r\n'),
(3, 'Dharmik Thanki', '9825387631', 'dharmik.y.thanki@gmail.com', 'test'),
(4, 'Dharmik Thanki', '9825387631', 'dharmik.y.thanki@gmail.com', 'test'),
(5, 'Dharmik Thanki', '9825387631', 'dharmik.y.thanki@gmail.com', 'test'),
(6, 'Dharmik Thanki', '9825387631', 'dharmik.y.thanki@gmail.com', 'test'),
(7, 'Vivek', '999898989', 'vk@gMAIL.COM', 'meaagse'),
(8, 'test', '7841156151', 'test@gamil.com', 'ehfbwuefh'),
(9, 'Dharmik Thanki', '+919825387631', 'dharmik.y.thanki@gmail.com', 'MEssage'),
(10, '', '', '', ''),
(11, '', '', '', ''),
(12, 'Dharmik Yogeshbhai T', '9825387631', 'dharmik.y.thanki@gmail.com', 'messgae');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_bills`
--
ALTER TABLE `admin_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_books`
--
ALTER TABLE `admin_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_orders`
--
ALTER TABLE `admin_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_user`
--
ALTER TABLE `client_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_bills`
--
ALTER TABLE `admin_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_books`
--
ALTER TABLE `admin_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_orders`
--
ALTER TABLE `admin_orders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_user`
--
ALTER TABLE `client_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;
