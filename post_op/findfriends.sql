-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2016 at 01:41 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `findfriends`
--

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `date_added` date NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `user_posted_to` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `date_added`, `added_by`, `user_posted_to`) VALUES
(34, 'hii \nwriting first post\n\nhju\nyjuj\niuu98\nikoiklo9\nbye...\n', '2016-05-13', 'gufran', 'gufran'),
(35, 'rjhy\nytjytj\ntyjyt\njtyj\ntyj\ntyjt', '2016-05-13', 'gufran', 'gufran'),
(40, 'another post', '2016-05-13', 'hadiya', 'hadiya'),
(37, 'jklol\n1233', '2016-05-13', 'gufran', 'gufran'),
(38, '1251\n151\n2112\n', '2016-05-13', 'hadiya', 'hadiya'),
(39, '4651\n15321\n121\n', '2016-05-13', 'hadiya', 'hadiya'),
(41, '1453\n\n1352\n21032.\npost check ', '2016-05-13', 'hadiya', 'hadiya'),
(30, '12316 546\n\n14651\n16546\n', '2016-05-13', 'gufran', 'gufran'),
(31, '12316 546\n\n14651\n16546\n', '2016-05-13', 'gufran', 'gufran'),
(32, '12316 546\n\n14651\n16546\n', '2016-05-13', 'gufran', 'gufran'),
(33, '2131\n153\n\nhii\nthis is first post', '2016-05-13', 'hadiya', 'hadiya'),
(42, '1453\n\n1352\n21032.\npost check ', '2016-05-13', 'hadiya', 'hadiya'),
(43, 'j67u76\nu76u76\n67u6', '2016-05-13', 'gufran2', 'gufran2'),
(44, 'ewrw\nwerwe\nrwerwe\nrwer', '2016-05-13', 'prince', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(32) NOT NULL,
  `sign_up_date` date NOT NULL,
  `activated` enum('0','1') NOT NULL,
  `bio` text NOT NULL,
  `profile_pic` varchar(225) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `sign_up_date`, `activated`, `bio`, `profile_pic`, `friend_array`) VALUES
(2, 'gufran', 'gufran', 'mirza', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-08', '0', 'here is about me !!!!\r\nwho i am ?\r\n', '630mCyQYRM8oGA4/Koala.jpg', 'gufran2'),
(4, 'prince', 'gufran', 'mirza', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-10', '0', 'hii\r\nmine is \r\nprince', 'xBGwoDSH3gFmP1J/Hydrangeas.jpg', ''),
(5, 'gufran2', 'gufran', 'ffff', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-13', '0', 'hii \r\nits gufran2', 'b6ledKQT3zWkBcs/Hydrangeas.jpg', 'gufran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
