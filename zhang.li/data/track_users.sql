-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2020 at 02:54 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lzdesign_wnm608`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `favorite_dog` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `gender`, `location`, `email`, `password`, `img`, `favorite_dog`, `date_create`) VALUES
(1, 'Bishop Bray', 'user1', 'male', 'Jamestown, Pennsylvania', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1607260980.5245_indian.png', 'Russell-Terrier', '2020-01-11 05:25:52'),
(2, 'Louise Juarez', 'user2', 'female', 'Albany, New Hampshire', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1607455853.2064_chinese.png', 'Cane corso', '2020-04-03 05:48:58'),
(3, 'Wong Lynn', 'user3', 'female', 'Homestead, Virgin Islands', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/750/fff/?text=user3', 'Bichon frise', '2020-02-23 09:21:56'),
(4, 'Tami Perry', 'user4', 'female', 'Sedley, Indiana', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/856/fff/?text=user4', 'Bulldog', '2020-05-25 01:54:07'),
(5, 'Molina Martinez', 'user5', 'male', 'Makena, Palau', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/960/fff/?text=user5', 'Russell-Terrier', '2020-04-14 08:20:19'),
(6, 'Sophie Lucas ', 'user6', 'female', 'Coyote, Federated States Of Micronesia', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1607542260.479_american.png', 'Dalmation', '2020-09-30 06:43:44'),
(7, 'Odonnell Wilder', 'user7', 'male', 'Campo, Alaska', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/783/fff/?text=user7', 'Bichon frise', '2020-06-15 03:09:01'),
(8, 'Marisol Stokes', 'user8', 'female', 'Darrtown, Hawaii', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/923/fff/?text=user8', 'Cane corso', '2020-01-25 01:36:41'),
(9, 'Ayala Chang', 'user9', 'male', 'Teasdale, Minnesota', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/733/fff/?text=user9', 'Bulldog', '2020-02-08 08:23:37'),
(10, 'Cote Ramirez', 'user10', 'male', 'Bowden, Maine', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/958/fff/?text=user10', 'Bichon frise', '2020-11-04 02:44:35'),
(17, 'Meiya Zhang', 'user0', 'female', 'San Francisco', 'user0@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1607677483.9677_WechatIMG78.jpeg', 'Bulldog', '2020-12-08 15:57:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
