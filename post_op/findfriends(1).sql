-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2016 at 09:00 PM
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

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_from`, `user_to`) VALUES
(1, 'prince', 'gufran');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_liked` varchar(225) NOT NULL,
  `total_likes` int(225) NOT NULL,
  `u_likes` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_liked`, `total_likes`, `u_likes`) VALUES
(256, '', 0, '167'),
(257, '', 0, '163'),
(258, '', 0, '164'),
(259, '', 1, '162'),
(260, '', 1, '161'),
(261, 'gufran2', 0, '162'),
(262, 'prince', 0, '161'),
(263, '', 1, '168'),
(265, 'prince', 0, '168'),
(266, '', 0, '169'),
(267, '', 0, '166');

-- --------------------------------------------------------

--
-- Table structure for table `photo_albums`
--

CREATE TABLE `photo_albums` (
  `id` int(225) NOT NULL,
  `album_title` varchar(225) NOT NULL,
  `album_discription` varchar(225) NOT NULL,
  `created_by` varchar(225) NOT NULL,
  `date_created_album` varchar(225) NOT NULL,
  `album_uid` int(225) NOT NULL,
  `removed_album` varchar(225) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo_albums`
--

INSERT INTO `photo_albums` (`id`, `album_title`, `album_discription`, `created_by`, `date_created_album`, `album_uid`, `removed_album`) VALUES
(1, 'album title', 'album discription', 'gufran', '788798', 111, 'no'),
(2, 'second album', '54465465', 'gufran', '52326\r\n2', 112, 'no'),
(4, 'table3', 'jkvjkgbvrtb', 'gufran', '1321', 113, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `poke`
--

CREATE TABLE `poke` (
  `id` int(11) NOT NULL,
  `user_from` varchar(225) NOT NULL,
  `user_to` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poke`
--

INSERT INTO `poke` (`id`, `user_from`, `user_to`) VALUES
(1, 'gufran', 'prince'),
(2, 'gufran', 'prince'),
(3, 'gufran', 'prince'),
(4, 'gufran', 'prince'),
(5, 'gufran', 'prince'),
(6, 'gufran', 'prince'),
(7, 'gufran', 'prince'),
(8, 'gufran', 'prince'),
(9, 'prince', 'gufran'),
(10, 'prince', 'gufran');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `post_attachment_img` varchar(225) NOT NULL,
  `date_added` date NOT NULL,
  `added_by` varchar(255) NOT NULL,
  `user_posted_to` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `post_attachment_img`, `date_added`, `added_by`, `user_posted_to`) VALUES
(159, 'gufran to gufran', '', '2016-06-06', 'gufran', ' gufran'),
(160, 'h65h56hb56h56h', '', '2016-06-06', 'gufran', ' prince'),
(168, 'grgrgrt', '', '2016-06-06', 'prince', 'prince'),
(167, 'fvrfgergergrtg', '', '2016-06-06', '222', 'gufran'),
(166, 'ghrtgh', '', '2016-06-06', '222', '222'),
(165, 'gufran to gufran', '', '2016-06-06', 'prince', ' gufran'),
(164, 'vedfvfgbv', '', '2016-06-06', 'gufran', 'gufran'),
(162, 'gfnfb', '1.jpg', '2016-06-06', 'gufran', 'gufran'),
(163, 'ffvdfvdf', '', '2016-06-06', 'gufran', 'gufran'),
(161, 'tbyg', '', '2016-06-06', 'gufran', 'gufran'),
(169, 'nhythtyh', '', '2016-06-06', 'prince', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `comment_body` varchar(225) NOT NULL,
  `posted_by` varchar(225) NOT NULL,
  `posted_to` varchar(225) NOT NULL,
  `post_removed` tinyint(1) DEFAULT '0',
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `comment_body`, `posted_by`, `posted_to`, `post_removed`, `post_id`) VALUES
(44, 'tghrtg', 'prince', 'prince', 0, 168);

-- --------------------------------------------------------

--
-- Table structure for table `pvt_messages`
--

CREATE TABLE `pvt_messages` (
  `id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL,
  `msg_title` varchar(225) NOT NULL,
  `msg_body` text NOT NULL,
  `date` date NOT NULL,
  `opened` varchar(255) NOT NULL,
  `deleted` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resume_data`
--

CREATE TABLE `resume_data` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `intro` varchar(225) NOT NULL,
  `skills` varchar(225) NOT NULL,
  `mobile` varchar(225) NOT NULL,
  `email_id` varchar(225) NOT NULL,
  `countrey` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume_data`
--

INSERT INTO `resume_data` (`id`, `username`, `intro`, `skills`, `mobile`, `email_id`, `countrey`) VALUES
(1, 'gufran', 'hiii \r\nmy name is gufran mirza \r\ni am full time developer on fiverr\r\ni am designing this awesome pletform for students and companies', 'web developer\r\ngraphic illustrator\r\nprogrammer', '+91-7767094877', 'gufranmirza1@gmail.com', 'India'),
(2, 'prince', 'web developer\r\ngraphic illustrator\r\nprogrammer\r\nhere you can get more information about me ', 'cvewrv\r\nrtvrtv\r\nrtvgtr\r\nvtrtrvgrt', '+97-8889471375', 'prince1@gmail.com', 'Austrelia');

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
  `friend_array` text NOT NULL,
  `account_active` varchar(3) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `sign_up_date`, `activated`, `bio`, `profile_pic`, `friend_array`, `account_active`) VALUES
(2, 'gufran', 'gufran', 'mirza', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-08', '0', 'here is about me !!!!\r\nwho i am ?\r\n', 'h2Rnp86g1LsJSqx/Koala.jpg', '222,hadiya', 'yes'),
(4, 'prince', 'gufran', 'mirza', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-10', '0', 'hii\r\nmine is \r\nprince', 'qG2sQtHAUJVNr1O/Desert.jpg', 'gufran2,222,hadiya', 'yes'),
(5, 'gufran2', 'gufran', 'ffff', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-13', '0', 'hii \r\nits gufran2', 'b6ledKQT3zWkBcs/Hydrangeas.jpg', 'prince', 'yes'),
(6, '222', 'ff', 'mirza', '222', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-14', '0', 'kkk', 'cADY9Kb0sGp8VWd/Tulips.jpg', 'gufran,prince', 'yes'),
(7, 'hadiya', 'hadiya', 'ffff', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-06-03', '0', '', 'yXU4HZ3f2gF1dh8/logo1.png', 'gufran,prince', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `view_photos`
--

CREATE TABLE `view_photos` (
  `id` int(11) NOT NULL,
  `posted_by` varchar(225) NOT NULL,
  `date_posted` varchar(225) NOT NULL,
  `album_discription` varchar(225) NOT NULL,
  `photo_uid` varchar(225) NOT NULL,
  `image_url` text NOT NULL,
  `removed_photo` varchar(225) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view_photos`
--

INSERT INTO `view_photos` (`id`, `posted_by`, `date_posted`, `album_discription`, `photo_uid`, `image_url`, `removed_photo`) VALUES
(27, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/msNyfo70XphajAv/Chrysanthemum.jpg', 'no'),
(28, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/5BysFizeV7pIUDr/Koala.jpg', 'no'),
(31, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/eGZoWJrPvYVHO6S/Lighthouse.jpg', 'no'),
(32, 'gufran', '', '', '113', 'http://localhost/dashboard/str/userdata/user_albums/u7ZHQibUh8vNFKr/Jellyfish.jpg', 'no'),
(33, 'gufran', '', '', '113', 'http://localhost/dashboard/str/userdata/user_albums/fgu7NhVOT5Ysive/Desert.jpg', 'no'),
(35, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/SJNxjGmAYR0BHTy/Desert.jpg', 'No'),
(36, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/yoxGunsAlTg9iNZ/Jellyfish.jpg', 'No'),
(37, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/NhwL3HJIG5anVlE/Desert.jpg', 'No'),
(38, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/rejuKOCJI0E8Ha1/', 'No'),
(39, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/OkbwP43E1Ke50Yy/', 'No'),
(40, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/FGEfrYPS5niJVOg/', 'No'),
(41, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/xMr2oNFDhR04ikI/Chrysanthemum.jpg', 'No'),
(42, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/GTnzX5miCDt9ysY/', 'No'),
(43, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/n43Sc9hOMsbRoyT/', 'No'),
(44, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/saXNle9GZkMFy6C/', 'No'),
(45, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/Hwf1i8LSXtQ0u2v/Desert.jpg', 'No'),
(46, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/2iJkDNCEa8MXKex/Jellyfish.jpg', 'No'),
(47, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/D1mN2gOs67QvVJe/Chrysanthemum.jpg', 'No'),
(48, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/bBHLoCjnt4TY6Au/', 'No'),
(49, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/VAM6QuxNmtDOqRZ/3003.jpg', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_albums`
--
ALTER TABLE `photo_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poke`
--
ALTER TABLE `poke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume_data`
--
ALTER TABLE `resume_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_photos`
--
ALTER TABLE `view_photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;
--
-- AUTO_INCREMENT for table `photo_albums`
--
ALTER TABLE `photo_albums`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `poke`
--
ALTER TABLE `poke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resume_data`
--
ALTER TABLE `resume_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `view_photos`
--
ALTER TABLE `view_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
