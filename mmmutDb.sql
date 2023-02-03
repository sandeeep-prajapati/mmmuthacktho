-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 06:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `id` int(10) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobileNo` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `problem` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`id`, `email`, `problem`) VALUES
(1, 'fhhfghn@schbn.com', 'jhsgjjdj'),
(2, 'asfdghjbh@sxfdgchvb.wearsdtfh', 'i have not found my snack\r\n'),
(3, 'sdfgh@dfghj.vbhn', 'dinesh gandu'),
(4, 'sandeep@gmail.com', 'i did not get my snack\r\n'),
(5, 'jgsdjbjdshgh@jygsdj.com', 'i have not found burger\r\n'),
(6, 'hgfzhhdg@gamjjhb.com', 'i did not get my cake\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` int(10) NOT NULL,
  `staff` varchar(200) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `price` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `roomNo` int(10) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `title`, `price`, `email`, `status`, `roomNo`, `mobile`, `name`) VALUES
(34, 'jbmbxzbnbn', '7841', '6392424180sandeep@gmail.com', 'waiting', 309, '6392424180', 'Sandeep'),
(35, 'jbmbxzbnbn', '7841', 'hgfzhhdg@gamjjhb.com', 'waiting', 1232, '9638527410', 'sandeep'),
(36, 'jbmbxzbnbn', '7841', 'gffbgfgbff@jyhjgh.njhgh', 'waiting', 12, '12345678765', 'krishna'),
(37, 'hhghhfh', '123', 'gfxbfchn@fghngv.fhgbn', 'waiting', 123, '784512069532', 'hjyngfb '),
(38, 'ygshdgjg', '8520', 'gfxbfchn@fghngv.fhgbn', 'waiting', 123, '784512069532', 'hjyngfb '),
(39, 'yufggsajjgjax', '5635464', 'gfxbfchn@fghngv.fhgbn', 'waiting', 123, '784512069532', 'hjyngfb '),
(40, 'hgnb', '4521', 'gfxbfchn@fghngv.fhgbn', 'waiting', 0, '', ''),
(41, 'hgnb', '4521', 'akhg@jhhb.ckjbh', 'waiting', 2112, '967845378465', 'jhzjxhgzj');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `discription` varchar(250) NOT NULL,
  `price` int(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `file` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `add_on` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `discription`, `price`, `type`, `file`, `email`, `add_on`) VALUES
(8, 'hgnb', 'tdergcfvbdtrfhgvj', 4521, 'snack', 'uploaded/Screenshot (45).png', 'sdfdgfb@gmail.com', '2023-01-29 01:54:32'),
(9, 'rtd', 'aewsrdfx', 1231, 'drinmjhbnb', 'uploade/Screenshot (6).png', 'gbfchn@fghngv.fhgbn', '2023-01-29 05:32:01'),
(10, 'jhgsj', 'uygjasbh ', 987645, 'drink', 'uploaded/Screenshot (109).png', 'jkshgjnc@juth.kjhg', '2023-01-30 08:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `roomno` int(10) NOT NULL,
  `hostal` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(200) NOT NULL,
  `addon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `contact`, `roomno`, `hostal`, `email`, `password`, `status`, `addon`) VALUES
(18, 'jhzjxhgzj', 'jyzgdgnxbnhzgvn', '9678453784653', 2112, 'Boys Hostel', 'akhg@jhhb.ckjbh', 'asdf1234kgbhm5841', '', '2023-01-29 07:31:01'),
(19, 'khjkmxbm', 'lhkhskdz', '798645312', 1234, 'Boys Hostel', 'jkshgjnc@juth.kjhg', 'asdf1234kh@jhvn/sakdjh', '', '2023-01-30 07:58:04'),
(20, 'kjygjasb', 'kuahkbm', '9864351', 13245, 'Girls Hostel', 'asdfjhmhv@khmn.jghg', 'asdf1234jhyfhcbvmkjyr6454e', '', '2023-02-03 09:12:45'),
(21, 'kuhkbsmd', ',sjak, ', '976485312.0', 213245, 'Boys Hostel', 'asdfkjgjn@khjnhb.jhg', 'asdf1234hyrfxn ', '', '2023-02-03 09:14:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
