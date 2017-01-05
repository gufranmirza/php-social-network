-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2016 at 10:54 PM
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
(1, 'gufran', '222');

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
(672, 'gufran', 1, '653'),
(673, 'prince', 0, '653'),
(674, 'prince', 16, '652'),
(675, 'prince', 16, '652'),
(676, 'prince', 16, '652'),
(677, 'prince', 16, '652'),
(678, 'prince', 16, '652'),
(679, 'prince', 16, '652'),
(680, 'prince', 16, '652'),
(681, 'prince', 16, '652'),
(682, 'prince', 16, '652'),
(683, 'prince', 16, '652'),
(684, 'prince', 16, '652'),
(685, 'prince', 16, '652'),
(686, 'prince', 16, '652'),
(687, 'prince', 16, '652'),
(688, 'prince', 16, '652'),
(689, 'prince', 16, '652'),
(690, 'prince', 0, '652'),
(691, 'gufran', 0, '676'),
(692, 'gufran', 0, '677'),
(693, 'gufran', 0, '678'),
(694, 'gufran', 0, '679'),
(695, 'gufran', 0, '684'),
(696, 'gufran2', 0, '698'),
(697, 'gufran', 0, '696'),
(698, 'gufran', 0, '691'),
(699, 'gufran', 0, '700'),
(700, 'gufran', 0, '694'),
(701, 'gufran', 0, '702'),
(702, 'prince', 0, '703'),
(703, 'prince', 0, '697');

-- --------------------------------------------------------

--
-- Table structure for table `message_list`
--

CREATE TABLE `message_list` (
  `id` int(11) NOT NULL,
  `user_from` varchar(225) NOT NULL,
  `user_to` varchar(225) NOT NULL,
  `body` varchar(500) NOT NULL,
  `message_id` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_list`
--

INSERT INTO `message_list` (`id`, `user_from`, `user_to`, `body`, `message_id`) VALUES
(37, 'prince', 'gufran2', '', '484589000'),
(38, 'gufran2', 'prince', '', '484589000'),
(39, 'prince', 'gufran', '', '233176906'),
(40, 'gufran', 'prince', '', '233176906'),
(41, 'gufran', 'hadiya', '', '116946378'),
(42, 'hadiya', 'gufran', '', '116946378'),
(43, 'prince', 'hadiya', '', '553649148'),
(44, 'hadiya', 'prince', '', '553649148'),
(45, '222', 'prince', '', '334035616'),
(46, 'prince', '222', '', '334035616'),
(47, '222', 'gufran', '', '1029648008'),
(48, 'gufran', '222', '', '1029648008');

-- --------------------------------------------------------

--
-- Table structure for table `new_post`
--

CREATE TABLE `new_post` (
  `id` int(11) NOT NULL,
  `site_title` varchar(225) NOT NULL,
  `site_url` varchar(225) NOT NULL,
  `site_disc` varchar(225) NOT NULL,
  `site_img_url` varchar(500) NOT NULL,
  `text_area` varchar(500) NOT NULL,
  `vedio_url` varchar(225) NOT NULL,
  `added_by` varchar(225) NOT NULL,
  `added_to` varchar(225) NOT NULL,
  `date_added` varchar(225) NOT NULL,
  `time` varchar(225) NOT NULL,
  `deleted` int(225) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_post`
--

INSERT INTO `new_post` (`id`, `site_title`, `site_url`, `site_disc`, `site_img_url`, `text_area`, `vedio_url`, `added_by`, `added_to`, `date_added`, `time`, `deleted`) VALUES
(682, 'bthbtyh', '', 'yhyth', 'upload_post_video/', '', 'upload_post_video/W3C', 'gufran', 'gufran', 'Tuesday 19th of July 2016 10:31:22 PM', '1468960282', 1),
(683, 'ddfewfwef', '', 'fwefwefwefwefwewefwe', 'upload_post_video/>\n<b>Warning<', '', 'upload_post_video/b>:  POST Content-Length of 40266325 bytes exceeds the limit of 8388608 bytes in <b>Unknown<', 'gufran', 'gufran', 'Tuesday 19th of July 2016 10:50:58 PM', '1468961458', 1),
(684, ' ', ' ', ' ', 'uploads/idea1.png', 't45t45t', '', 'gufran', 'gufran', 'Tuesday 19th of July 2016 10:52:49 PM', '1468961569', 1),
(685, '', '', '', 'upload_post_video/>\n<b>Warning<', '', 'upload_post_video/b>:  POST Content-Length of 40266325 bytes exceeds the limit of 8388608 bytes in <b>Unknown<', 'gufran', 'gufran', 'Tuesday 19th of July 2016 10:54:00 PM', '1468961640', 1),
(686, 'this is done now', '', 'it ios working here ', 'upload_post_video/1.jpg', '', 'upload_post_video/1124628.mp4', 'gufran', 'gufran', 'Tuesday 19th of July 2016 10:59:04 PM', '1468961944', 1),
(687, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/1J9Z0qhKZqo/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=G7j3pW0OFHVTEO_kqJT7R_2N2Qw', 'http://youtube.com\n', '', 'gufran', 'gufran', 'Tuesday 19th of July 2016 11:00:33 PM', '1468962033', 1),
(688, 'bvdf htrh yh ty htyh ty hyt h', '', 'h y y hy ty hty hyt hyt ', 'upload_post_video/1.jpg', '', 'upload_post_video/700682787.mp4', 'gufran', 'gufran', 'Tuesday 19th of July 2016 11:02:27 PM', '1468962147', 1),
(689, ' he etyh', '', ' tyh yt hrt hyt ht ht h', 'upload_post_video/1.jpg', '', 'upload_post_video/520742467.mp4', 'gufran', 'gufran', 'Tuesday 19th of July 2016 11:05:42 PM', '1468962342', 1),
(690, ' ', ' ', ' ', 'uploads/Content_Page (2).jpg', 'brtb r br h r ', '', 'gufran', 'gufran', 'Thursday 21st of July 2016 05:01:15 PM', '1469113275', 1),
(691, ' hiii \nthis is amnzing ebook get your copy at  vrtg rtgh tyeh', ' ', ' ', 'uploads/2002.jpg', 'please look inside the book before buying it .................y h 53 bftgb fgb  ', '', 'gufran', 'gufran', 'Thursday 21st of July 2016 05:01:54 PM', '1469113314', 0),
(692, 'What a nice song ', '', 'h ty htyh ty hty hty hty hh ty hty ', 'upload_post_video/1.jpg', 'upload more songs here \nyou can add more songs like this ', 'upload_post_video/964970132.mp4', 'gufran', 'gufran', 'Thursday 21st of July 2016 05:20:07 PM', '1469114407', 1),
(693, 'update title on click and its done ', ' ', ' ', '', 'update disc on click and working fine ', '', 'gufran', 'gufran', 'Thursday 21st of July 2016 06:18:51 PM', '1469117931', 0),
(694, ' my official blog get more details from here  vrbg rth grth r', ' http://gufranmirza.com ', ' ', 'http://gufranmirza.com/blog/wp-content/uploads/2016/06/drfcde.jpg', 'http://gufranmirza.com h rth rt hrt rt h', '', 'gufran', 'gufran', 'Thursday 21st of July 2016 08:03:47 PM', '1469124227', 0),
(695, ' this is my post title ', ' ', ' ', '', '\nthis is discription here n hgngh n\n', '', 'gufran', 'gufran', 'Thursday 21st of July 2016 08:55:26 PM', '1469127326', 0),
(696, ' Raman Raghav 2.0 | Official Trailer | Nawazuddin Siddiqui & Vicky Kaushal | Releasing 24th June 2016 \n', ' https://www.youtube.com/watch?v=xq1cEmhVa68 ', ' Presenting the official trailer of Raman Raghav 2.0. Directed by Anurag Kashyap, starring Nawazuddin Siddiqui, Vicky Kaushal &amp; Sobhita Dhulipala. Releasing o... ', '', 'https://www.youtube.com/watch?v=xq1cEmhVa68\n', 'https://www.youtube.com/embed/xq1cEmhVa68 ', 'gufran', 'gufran', 'Friday 22nd of July 2016 05:58:46 PM', '1469203126', 0),
(697, ' ', ' ', ' ', 'uploads/Capture.JPG', 'ngfngfn\nnghngh\nn\ngnhg\nngh\nnghngh', '', 'prince', 'prince', 'Saturday 23rd of July 2016 01:04:34 PM', '1469271875', 0),
(698, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/GC9vW-BCp20/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=QfqYKisYfgU0pRADXajfEUFDte0', 'http://youtube.com\n', '', 'gufran2', 'gufran2', 'Saturday 23rd of July 2016 02:11:58 PM', '1469275918', 0),
(699, ' ', ' ', ' ', 'uploads/Capture2.JPG', 'bfgbfgbfgbfgbfgb', '', '222', '222', 'Saturday 23rd of July 2016 06:47:14 PM', '1469292434', 0),
(700, ' this is a title here ', ' ', ' ', 'uploads/seofordebtcollectionagencies.jpg', 'this is a test here ', '', 'gufran', 'gufran', 'Sunday 24th of July 2016 06:36:35 PM', '1469378195', 0),
(701, ' ', ' ', ' ', 'uploads/debtcollector.png', '$$$$$$$$$$$$$$$$', '', 'gufran', 'gufran', 'Sunday 24th of July 2016 09:59:58 PM', '1469390398', 0),
(702, ' vdf dfg dfg db fgb fgb fgb fgb fdg fgb f', ' ', ' ', 'uploads/Capture2.JPG', 'bnfgn', '', 'gufran', 'gufran', 'Sunday 24th of July 2016 10:23:55 PM', '1469391835', 0),
(703, ' ', ' ', ' ', 'uploads/Content_Page.jpg', 'nghnghnghn', '', 'prince', 'prince', 'Sunday 24th of July 2016 10:34:01 PM', '1469392441', 0),
(704, ' ', ' ', ' ', 'uploads/20160218_232140.jpg', ' cf gtd\n tfg rt hrt\nh rth rth ', '', 'prince', 'prince', 'Sunday 24th of July 2016 10:34:33 PM', '1469392473', 0),
(705, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/QA_ay6kU5UY/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=mmwlsJ8JXf52EG-KaokJVL_XFcs', 'http://youtube.com\n\n', '', 'gufran2', 'gufran2', 'Sunday 24th of July 2016 10:35:56 PM', '1469392556', 0),
(706, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/eGL7bqC_xJE/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=uin79uF2HCUCPT3CfvuWGCc_i_8', 'http://youtube.com\n\n', '', 'gufran2', 'gufran2', 'Sunday 24th of July 2016 10:36:32 PM', '1469392592', 0),
(707, ' Best Cloud Storage Solution [microcloud.net.in] - YouTube By gufran mirza', ' https://www.youtube.com/watch?v=Rf6xw2D97sg ', ' sign up and get 5gb cloud storage on microcloud. Easy to share files. visit website http://microcloud.net.in ', '', 'https://www.youtube.com/watch?v=Rf6xw2D97sg\nJust Uploaded to youtube By gufran mirza', 'https://www.youtube.com/embed/Rf6xw2D97sg ', 'gufran', 'gufran', 'Monday 25th of July 2016 07:59:28 PM', '1469469568', 0);

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
(10, 'prince', 'gufran'),
(11, 'gufran', 'hadiya'),
(12, 'gufran', 'hadiya');

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
(171, 'dfbfgb\r\ntyby\r\ntbty\r\nbytb\r\nty\r\nby', '', '2016-06-21', 'gufran', 'gufran'),
(170, 'nghnghnghnghnghnghngh', '', '2016-06-05', 'gufran', 'gufran');

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
(110, 'fgfnfgng', 'gufran', 'gufran', 0, 171),
(111, 'fgfnfgnghngnghnghngngh', 'gufran', 'gufran', 0, 171),
(112, 'bhfgbnfgnfgnhgn', 'gufran', 'gufran', 0, 171),
(113, 'mghmghm', 'gufran', 'gufran', 0, 171),
(114, 'nghnghnhg', 'gufran', 'gufran', 0, 171),
(115, '6', 'gufran', 'gufran', 0, 171),
(116, '7', 'gufran', 'gufran', 0, 171),
(117, 'bgfgb', 'gufran', 'gufran', 0, 171),
(118, 'vdfvdfvdfvdf', 'gufran', 'gufran', 0, 171),
(119, 'hrtghrthrth', 'gufran', 'gufran', 0, 171),
(120, '1', 'gufran', 'gufran', 0, 171),
(121, '2', 'gufran', 'gufran', 0, 171),
(122, '', 'gufran', 'gufran', 0, 171),
(123, '', 'gufran', 'gufran', 0, 171),
(124, 'blanck', 'gufran', 'gufran', 0, 171),
(125, 'ghng', 'gufran', 'gufran', 0, 171),
(126, 'first comment here ', 'gufran', 'gufran', 0, 170),
(127, 'second comment ', 'gufran', 'gufran', 0, 170),
(128, 'commenting on gufrans post ', 'prince', '', 0, 170),
(129, 'just for test only', 'prince', '', 0, 170),
(130, 'bgfgb', 'prince', '', 0, 170),
(131, 'bfgbfgb', 'prince', '', 0, 170),
(132, 'dfvdv', 'prince', '', 0, 170),
(133, 'how is it\n', 'hadiya', '', 0, 171),
(134, '3132132', 'gufran', 'gufran', 0, 171),
(135, 'insert at bottom', 'gufran', 'gufran', 0, 171),
(136, 'rgreg', 'gufran', 'gufran', 0, 170),
(137, 'ewfwefwefwef', 'gufran', 'gufran', 0, 171),
(138, 'jytjtyjty', 'gufran', 'gufran', 0, 171),
(139, 'grtgrt', 'gufran', 'gufran', 0, 171),
(140, '23 comment\n\n', 'gufran', 'gufran', 0, 171),
(141, '32csdcwsdce', 'gufran', 'gufran', 0, 171),
(142, 'comment', 'gufran', 'gufran', 0, 171),
(143, 'hrtht', 'gufran', 'gufran', 0, 171),
(144, 'b fgbfgb', 'gufran', 'gufran', 0, 171),
(145, 'htyht', 'gufran', 'gufran', 0, 171),
(146, 'tyhtyh', 'gufran', 'gufran', 0, 171),
(147, 'fgh', 'gufran', 'gufran', 0, 171),
(148, 'dscsd', 'gufran', 'gufran', 0, 170),
(149, '232', 'gufran', 'gufran', 0, 170),
(150, 'fbfgbfg', 'gufran', 'gufran', 0, 170),
(151, '6556', 'gufran', 'gufran', 0, 170),
(152, '1', 'gufran', 'gufran', 0, 170),
(153, '2', 'gufran', 'gufran', 0, 170),
(154, 'zwqzqw', 'gufran', 'gufran', 0, 171),
(155, 'comment\n', 'gufran', 'gufran', 0, 171),
(156, 'sacedcer ercercer eccrrec \n\rcvercre\ncrecer\nf', 'gufran', 'gufran', 0, 171),
(157, 'commented \n', 'gufran', 'gufran', 0, 170),
(158, 'rjyryjt', 'gufran', 'gufran', 0, 170),
(159, '\n\n\n', 'gufran', 'gufran', 0, 171),
(160, 'nghnghn', 'gufran', 'gufran', 0, 171),
(161, 'nfgn\n', 'gufran', 'gufran', 0, 171),
(162, 'btgrtghrtghrth', 'gufran', 'gufran', 0, 171),
(163, 'this is a sample commenrt ', 'prince', '', 0, 653),
(164, 'this is another comment ', 'prince', '', 0, 653),
(165, 'this is a demo comment ', '222', '', 0, 665),
(166, '4654', '222', '', 0, 665),
(167, 'vdfvd dv dfv df vfd bfdbgfghg jg', '222', '', 0, 665),
(168, '6546546 nghn tyn ty', '222', '', 0, 664),
(169, '65 h4rth4 ', '222', '', 0, 663),
(170, 'hii i am commenting on your post  as gufran ', 'gufran', 'gufran', 0, 665),
(171, 'thi is skln scsdckm', '222', '', 0, 0),
(172, 'gnfgnfgn', '222', '', 0, 0),
(173, ' dfbfgbfgbfgdbfg', '222', '', 0, 665),
(174, 'it should work now ', '222', '', 0, 664),
(175, 'bdfbdfbfg', '222', '', 0, 664),
(176, '123465', '222', '', 0, 664),
(177, '101010', '222', '', 0, 664),
(178, '132456', '222', '', 0, 664),
(179, 'fade in now', '222', '', 0, 664),
(180, 'fade in now here ', '222', '', 0, 664),
(181, 'i am commenting on it ', 'prince', '', 0, 665),
(182, 'jtjuu', 'gufran', 'gufran', 0, 170),
(183, 'grfbrtbr', 'gufran', 'gufran', 0, 171),
(184, 'comment ', 'gufran', 'gufran', 0, 679),
(185, 'cdedc eruvfier verjhv rt', 'gufran', 'gufran', 0, 687),
(186, 'htyjh tyjuyjuyj uy j', 'gufran', 'gufran', 0, 693),
(187, 'comment ', 'gufran', 'gufran', 0, 693),
(188, 'comment', 'gufran', 'gufran', 0, 693),
(189, 'htyjh tyjuyjuyj uy j', 'gufran', 'gufran', 0, 693),
(190, 'htyjh tyjuyjuyj uy j', 'gufran', 'gufran', 0, 693),
(191, 'nghnmghnmghm', 'gufran2', '', 0, 698),
(192, 'hhjtyj', 'gufran2', '', 0, 698),
(193, 'good looking here ', '222', '', 0, 699),
(194, 'good looking ivjdfv dfivdf m,vdfiovndm, fvkodfvn', '222', '', 0, 699),
(195, 'comment', 'gufran', 'gufran', 0, 700),
(196, 'comment ', 'gufran', 'gufran', 0, 700),
(197, 'hyfhnhghnghn gh ', 'gufran', 'gufran', 0, 694),
(198, 'bgfbfgb', 'gufran', 'gufran', 0, 694),
(199, 'jfjnghnhg n n   hngh', 'gufran', 'gufran', 0, 701),
(200, 'kjljkljkljkl', 'gufran', 'gufran', 0, 701),
(201, 'bfgbfg fgb fg bdfg b', 'gufran', 'gufran', 0, 701),
(202, 'hjkhkjhjkhjk', 'gufran', 'gufran', 0, 701),
(203, 'brtbrtbrt', 'gufran', 'gufran', 0, 701),
(204, '132456', 'gufran', 'gufran', 0, 701),
(205, 'bfgbfgbfg', 'gufran', 'gufran', 0, 702);

-- --------------------------------------------------------

--
-- Table structure for table `profile_certificate`
--

CREATE TABLE `profile_certificate` (
  `id` int(11) NOT NULL,
  `certificate_info` varchar(225) NOT NULL,
  `user_uid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_certificate`
--

INSERT INTO `profile_certificate` (`id`, `certificate_info`, `user_uid`) VALUES
(1, 'MSCITP(training)  ', 'gufran'),
(2, 'Hardware And Networking  ', 'gufran '),
(3, 'Dummy certificate  Unused ', 'gufran '),
(4, 'Adding one more here ', 'gufran'),
(5, 'Adding a certificate here  And its Done ', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `profile_education`
--

CREATE TABLE `profile_education` (
  `id` int(11) NOT NULL,
  `education_inf` varchar(225) NOT NULL,
  `user_uid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_education`
--

INSERT INTO `profile_education` (`id`, `education_inf`, `user_uid`) VALUES
(1, 'Studied At Sinhgad Academy Of Engineering (Pune, INDIA) ', 'gufran'),
(2, 'Studied At Seva Sadan Higher Secondry School  ', 'gufran '),
(3, 'Studied At Global Computer  Training Academy Burhanpur ', 'gufran'),
(15, 'Pune University, Pune IN', 'prince'),
(17, 'this is a demo here ', 'prince'),
(18, 'one more demo ', 'prince'),
(19, 'one more finally here ', 'prince'),
(20, 'one more finally here hg rth rth r t', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `profile_employment`
--

CREATE TABLE `profile_employment` (
  `id` int(11) NOT NULL,
  `employment_info` varchar(225) NOT NULL,
  `user_uid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_employment`
--

INSERT INTO `profile_employment` (`id`, `employment_info`, `user_uid`) VALUES
(1, 'Micro System Private Limited (India )', 'gufran '),
(2, 'New Employment ', 'gufran'),
(3, 'Add employment here ', 'prince'),
(4, 'add one more employment here ', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `profile_experience`
--

CREATE TABLE `profile_experience` (
  `id` int(11) NOT NULL,
  `experience_info` varchar(225) NOT NULL,
  `user_uid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_experience`
--

INSERT INTO `profile_experience` (`id`, `experience_info`, `user_uid`) VALUES
(1, '2+ years experience in web development ', 'gufran'),
(2, '3 years Experience in server administration  (Linux)', 'gufran'),
(3, 'Add new Exp ', 'gufran'),
(4, 'one more here ', 'gufran'),
(5, 'Add ecperience ', 'prince'),
(6, 'add one more experience here ', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `profile_projects`
--

CREATE TABLE `profile_projects` (
  `id` int(11) NOT NULL,
  `projects_info` varchar(225) NOT NULL,
  `user_uid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_projects`
--

INSERT INTO `profile_projects` (`id`, `projects_info`, `user_uid`) VALUES
(1, 'cloud computing platform ', 'gufran '),
(2, 'Designed Cloud Storage Solution  (microcloud.net.in)', 'gufran '),
(3, 'Add new project', 'gufran'),
(4, 'Add new', 'gufran'),
(5, 'Add project here ', 'prince'),
(6, 'Add one more project here ', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `profile_skills`
--

CREATE TABLE `profile_skills` (
  `id` int(11) NOT NULL,
  `skills_info` varchar(225) NOT NULL,
  `user_uid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_skills`
--

INSERT INTO `profile_skills` (`id`, `skills_info`, `user_uid`) VALUES
(1, 'Web Developer', 'gufran'),
(2, 'AI Programmer', 'gufran '),
(3, 'Server Administrator  (Linux)', 'gufran '),
(4, 'Cloud Computing  Developer', 'gufran'),
(5, 'Add one more  here ', 'gufran'),
(6, 'Add A skills here ', 'prince'),
(7, 'Add one more skills hwere ', 'prince');

-- --------------------------------------------------------

--
-- Table structure for table `pvt_messages`
--

CREATE TABLE `pvt_messages` (
  `id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL,
  `msg_body` text NOT NULL,
  `date` date NOT NULL,
  `opened` varchar(255) NOT NULL,
  `deleted` varchar(225) NOT NULL,
  `message_uid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pvt_messages`
--

INSERT INTO `pvt_messages` (`id`, `user_from`, `user_to`, `msg_body`, `date`, `opened`, `deleted`, `message_uid`) VALUES
(210, 'prince', 'gufran2', 'mkuy jkuyjky', '0000-00-00', '', '', '484589000'),
(211, 'prince', 'gufran2', 'kuyk', '0000-00-00', '', '', '484589000'),
(212, 'prince', 'gufran2', 'uyky', '0000-00-00', '', '', '484589000'),
(213, 'prince', 'gufran2', 'kyu', '0000-00-00', '', '', '484589000'),
(214, 'prince', 'gufran2', 'kyu', '0000-00-00', '', '', '484589000'),
(215, 'prince', 'gufran2', 'yuk', '0000-00-00', '', '', '484589000'),
(216, 'prince', 'gufran2', 'yuk', '0000-00-00', '', '', '484589000'),
(217, 'prince', 'gufran2', 'yuk', '0000-00-00', '', '', '484589000'),
(218, 'prince', 'gufran2', 'yuk', '0000-00-00', '', '', '484589000'),
(219, 'prince', 'gufran2', 'uky', '0000-00-00', '', '', '484589000'),
(220, 'prince', 'gufran2', 'kyu', '0000-00-00', '', '', '484589000'),
(221, 'prince', 'gufran2', 'kuy', '0000-00-00', '', '', '484589000'),
(222, 'prince', 'gufran2', 'kuy', '0000-00-00', '', '', '484589000'),
(223, 'prince', 'gufran2', 'kukuyk', '0000-00-00', '', '', '484589000'),
(224, 'prince', 'gufran', 'kuyk', '0000-00-00', '', '', '233176906'),
(225, 'prince', 'gufran', 'uky', '0000-00-00', '', '', '233176906'),
(226, 'prince', 'gufran', 'ky', '0000-00-00', '', '', '233176906'),
(227, 'prince', 'gufran', 'kuyk', '0000-00-00', '', '', '233176906'),
(228, 'prince', 'gufran', 'uyk', '0000-00-00', '', '', '233176906'),
(229, 'prince', 'gufran', 'uyk', '0000-00-00', '', '', '233176906'),
(230, 'prince', 'gufran', 'uyk', '0000-00-00', '', '', '233176906'),
(231, 'prince', 'gufran', 'uyk', '0000-00-00', '', '', '233176906'),
(232, 'gufran', 'prince', 'g rtg', '0000-00-00', '', '', '233176906'),
(233, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(234, 'gufran', 'prince', 'rtg', '0000-00-00', '', '', '233176906'),
(235, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(236, 'gufran', 'prince', 'grtr', '0000-00-00', '', '', '233176906'),
(237, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(238, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(239, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(240, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(241, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(242, 'gufran', 'prince', 'grt', '0000-00-00', '', '', '233176906'),
(243, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(244, 'gufran', 'prince', 'rgtv', '0000-00-00', '', '', '233176906'),
(245, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(246, 'gufran', 'prince', 'rgt', '0000-00-00', '', '', '233176906'),
(247, 'gufran', 'hadiya', 'vferg', '0000-00-00', '', '', '116946378'),
(248, 'gufran', 'hadiya', 'rgt', '0000-00-00', '', '', '116946378'),
(249, 'gufran', 'hadiya', 'rgt', '0000-00-00', '', '', '116946378'),
(250, 'gufran', 'hadiya', 'rgt', '0000-00-00', '', '', '116946378'),
(251, 'gufran', 'hadiya', 'grt', '0000-00-00', '', '', '116946378'),
(252, 'gufran', 'hadiya', 'rgt', '0000-00-00', '', '', '116946378'),
(253, 'gufran', 'hadiya', 'rgt', '0000-00-00', '', '', '116946378'),
(254, 'gufran', 'hadiya', 'rgt', '0000-00-00', '', '', '116946378'),
(255, 'gufran', 'hadiya', 'rgt', '0000-00-00', '', '', '116946378'),
(256, 'prince', 'hadiya', 'ffr ', '0000-00-00', '', '', '553649148'),
(257, 'prince', 'hadiya', 'wer', '0000-00-00', '', '', '553649148'),
(258, 'prince', 'hadiya', 'erf', '0000-00-00', '', '', '553649148'),
(259, 'prince', 'hadiya', 'werf', '0000-00-00', '', '', '553649148'),
(260, 'prince', 'hadiya', 'werf ', '0000-00-00', '', '', '553649148'),
(261, 'prince', 'hadiya', 'wer f', '0000-00-00', '', '', '553649148'),
(262, 'prince', 'hadiya', ' fewr', '0000-00-00', '', '', '553649148'),
(263, 'prince', 'hadiya', ' fwer', '0000-00-00', '', '', '553649148'),
(264, 'prince', 'hadiya', ' fwer', '0000-00-00', '', '', '553649148'),
(265, '222', 'prince', 'btrtb', '0000-00-00', '', '', '334035616'),
(266, '222', 'prince', 'rtb', '0000-00-00', '', '', '334035616'),
(267, '222', 'prince', 'brt', '0000-00-00', '', '', '334035616'),
(268, '222', 'prince', 'brt', '0000-00-00', '', '', '334035616'),
(269, '222', 'prince', 'brt', '0000-00-00', '', '', '334035616'),
(270, '222', 'prince', 'btrtbv rt', '0000-00-00', '', '', '334035616'),
(271, '222', 'prince', 'h ', '0000-00-00', '', '', '334035616'),
(272, '222', 'prince', ' ', '0000-00-00', '', '', '334035616'),
(273, '222', 'prince', 'eh ', '0000-00-00', '', '', '334035616'),
(274, '222', 'prince', 'rt', '0000-00-00', '', '', '334035616'),
(275, '222', 'prince', 'rt', '0000-00-00', '', '', '334035616'),
(276, '222', 'gufran', 'grtg', '0000-00-00', '', '', '1029648008'),
(277, '222', 'gufran', 'rgt', '0000-00-00', '', '', '1029648008'),
(278, '222', 'gufran', 'gt', '0000-00-00', '', '', '1029648008'),
(279, '222', 'gufran', 'r', '0000-00-00', '', '', '1029648008'),
(280, '222', 'gufran', 'rgt', '0000-00-00', '', '', '1029648008'),
(281, '222', 'gufran', 'rgt', '0000-00-00', '', '', '1029648008'),
(282, '222', 'gufran', 'rgt', '0000-00-00', '', '', '1029648008'),
(283, '222', 'gufran', 'rgt', '0000-00-00', '', '', '1029648008'),
(284, '222', 'gufran', 'gtr', '0000-00-00', '', '', '1029648008'),
(285, '222', 'gufran', 'rgt', '0000-00-00', '', '', '1029648008'),
(286, 'hadiya', 'prince', 'gh56h', '0000-00-00', '', '', '553649148'),
(287, 'hadiya', 'prince', 'h6', '0000-00-00', '', '', '553649148'),
(288, 'hadiya', 'prince', 'h6', '0000-00-00', '', '', '553649148'),
(289, 'hadiya', 'prince', '6', '0000-00-00', '', '', '553649148'),
(290, 'hadiya', 'prince', 'h6', '0000-00-00', '', '', '553649148'),
(291, 'hadiya', 'gufran', 'h6h656', '0000-00-00', '', '', '116946378'),
(292, 'hadiya', 'gufran', '6', '0000-00-00', '', '', '116946378'),
(293, 'hadiya', 'gufran', 'h6', '0000-00-00', '', '', '116946378'),
(294, 'hadiya', 'gufran', 'h6', '0000-00-00', '', '', '116946378'),
(295, 'hadiya', 'gufran', '6', '0000-00-00', '', '', '116946378'),
(296, 'hadiya', 'gufran', 'h', '0000-00-00', '', '', '116946378'),
(297, 'prince', 'hadiya', 'nghnghnghnghn', '0000-00-00', '', '', '553649148'),
(298, 'prince', 'gufran2', 'btrhrth', '0000-00-00', '', '', '484589000'),
(299, 'prince', 'gufran2', 'btrhrth.', '0000-00-00', '', '', '484589000'),
(300, 'prince', 'gufran2', 'btrhrth.', '0000-00-00', '', '', '484589000'),
(301, 'prince', 'gufran2', 'btrhrth.', '0000-00-00', '', '', '484589000'),
(302, 'prince', 'gufran2', 'fdgfg', '0000-00-00', '', '', '484589000'),
(303, 'prince', 'gufran2', 'fdgfg', '0000-00-00', '', '', '484589000'),
(304, 'prince', 'gufran2', 'fdgfg', '0000-00-00', '', '', '484589000'),
(305, 'prince', 'gufran2', 'fdgfg', '0000-00-00', '', '', '484589000'),
(306, 'prince', 'hadiya', 'undefined', '0000-00-00', '', '', '553649148'),
(307, 'prince', '222', 'undefined', '0000-00-00', '', '', '334035616'),
(308, 'prince', 'hadiya', 'fbfgbfgbfgb', '0000-00-00', '', '', '553649148'),
(309, 'prince', 'gufran2', 'bfgbfgbfbfgb', '0000-00-00', '', '', '484589000'),
(310, 'prince', '222', 'vdfvdf', '0000-00-00', '', '', '334035616'),
(311, 'prince', '222', 'vdfvdf', '0000-00-00', '', '', '334035616'),
(312, 'prince', '222', 'dvdfvdfv', '0000-00-00', '', '', '334035616'),
(313, 'prince', '222', 'nnghnghnghn', '0000-00-00', '', '', '334035616'),
(314, 'prince', '222', 'gnghnghn', '0000-00-00', '', '', '334035616'),
(315, 'gufran', 'prince', 'jjjujyjuyjuy', '0000-00-00', '', '', '233176906'),
(316, 'gufran', 'prince', 'uyjuyj', '0000-00-00', '', '', '233176906'),
(317, 'gufran', 'hadiya', 'j767ui67', '0000-00-00', '', '', '116946378'),
(318, 'gufran', 'hadiya', 'j76j76j', '0000-00-00', '', '', '116946378'),
(319, 'gufran', '222', 'yjuj', '0000-00-00', '', '', '1029648008'),
(320, 'gufran', '222', 'ujy', '0000-00-00', '', '', '1029648008'),
(321, 'gufran', '222', 'yuj', '0000-00-00', '', '', '1029648008'),
(322, 'gufran', '222', 'uyj', '0000-00-00', '', '', '1029648008'),
(323, 'gufran', 'hadiya', 'hftyrh', '0000-00-00', '', '', '116946378'),
(324, 'gufran', 'hadiya', 'tyhtyhtyh', '0000-00-00', '', '', '116946378'),
(325, 'gufran', 'hadiya', 'fbfgbfgbf fgbfg bfgb fg b', '0000-00-00', '', '', '116946378'),
(326, 'gufran', '222', 'kui', '0000-00-00', '', '', '1029648008'),
(327, 'gufran', '222', 'uik', '0000-00-00', '', '', '1029648008'),
(328, 'gufran', '222', 'this is a test here ', '0000-00-00', '', '', '1029648008'),
(329, 'prince', 'gufran', 'okkkk', '0000-00-00', '', '', '233176906'),
(330, 'prince', 'gufran2', 'bfgb', '0000-00-00', '', '', '484589000'),
(331, 'gufran2', 'prince', ' bgfbfgbfg', '0000-00-00', '', '', '484589000'),
(332, 'gufran', '222', 'did you got it here ', '0000-00-00', '', '', '1029648008'),
(333, '222', 'prince', '222 to prince ', '0000-00-00', '', '', '334035616'),
(334, 'gufran', '222', 'gufran to 222', '0000-00-00', '', '', '1029648008'),
(335, '222', 'gufran', 'yup get it here ', '0000-00-00', '', '', '1029648008'),
(336, '222', 'prince', '4f545', '0000-00-00', '', '', '334035616'),
(337, '222', 'prince', 'ferf', '0000-00-00', '', '', '334035616'),
(338, '222', 'prince', 'erf', '0000-00-00', '', '', '334035616'),
(339, '222', 'prince', 'fer', '0000-00-00', '', '', '334035616'),
(340, '222', 'prince', 'ferf', '0000-00-00', '', '', '334035616'),
(341, 'prince', '222', 'prince to 222', '0000-00-00', '', '', '334035616'),
(342, 'gufran', '222', 'gufran to 222', '0000-00-00', '', '', '1029648008'),
(343, 'gufran', 'prince', 'xsdciodchnjioercvneiorvniotjiotrjviotrjviortjviortjvirjvondf,v ndfiovndjklvnionvorinv voirvntoiv tivnrtjkv viorvnotv rviovnrjvor iovjiofdv edvrtir vrtio', '0000-00-00', '', '', '233176906'),
(344, 'gufran', 'prince', 'gergko;ekrg;e perg ergoperg erogper gperogje r', '0000-00-00', '', '', '233176906'),
(345, 'gufran', 'prince', 'joperg giojer eriogher geoirge geriopg gioerg iogejer geriog iorg ergeiorg', '0000-00-00', '', '', '233176906'),
(346, 'gufran', 'prince', 'jgpoer gergioer gerioger gerioge rgioerg ergioerg ergerioug ', '0000-00-00', '', '', '233176906'),
(347, 'gufran', 'prince', 'joigerjg ergvejkrger gerkglner gerioger gerogie ', '0000-00-00', '', '', '233176906'),
(348, 'gufran', 'prince', 'hgoier rgioerjklgneriogj ernhgoehg nergioerg ', '0000-00-00', '', '', '233176906'),
(349, 'gufran', 'prince', 'jgiopergm,nejkrfvh vuiouerv vuioervs mverivd nvduiorv uvierjkv vuisdfvhd vfdvioudvbd fv dmfvdfkjvbd fvdjskfvdnm fvkdjfv muivdf', '0000-00-00', '', '', '233176906'),
(350, 'gufran', '222', 'this is a new message from me to you . did you get it ', '0000-00-00', '', '', '1029648008'),
(351, '222', 'gufran', 'yup it is there ', '0000-00-00', '', '', '1029648008'),
(352, 'prince', 'gufran', 'nkldfv dfvjkf vfjksvnrfv', '0000-00-00', '', '', '233176906'),
(353, 'gufran', 'prince', 'sgfr brst ghrtgh thyrh fhjy ', '0000-00-00', '', '', '233176906');

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
(2, 'gufran', 'gufran', 'mirza', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-08', '0', 'I am web developer currently working on cloud computing and virtualization ...!!!\r\n', 'Z9GhJwTSNguACtm/logo.png', 'prince,hadiya,222', 'yes'),
(4, 'prince', 'gufran', 'mirza', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-10', '0', 'hii\r\nmine is \r\nprince', 'qG2sQtHAUJVNr1O/Desert.jpg', 'gufran2,222,gufran,hadiya', 'yes'),
(5, 'gufran2', 'gufran', 'ffff', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-13', '0', 'hii \r\nits gufran2', 'b6ledKQT3zWkBcs/Hydrangeas.jpg', 'prince', 'yes'),
(6, '222', 'ff', 'mirza', '222', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-14', '0', 'kkk', 'cADY9Kb0sGp8VWd/Tulips.jpg', 'prince,gufran', 'yes'),
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
(39, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/OkbwP43E1Ke50Yy/', 'yes'),
(40, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/FGEfrYPS5niJVOg/', 'yes'),
(41, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/xMr2oNFDhR04ikI/Chrysanthemum.jpg', 'yes'),
(42, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/GTnzX5miCDt9ysY/', 'No'),
(43, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/n43Sc9hOMsbRoyT/', 'No'),
(44, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/saXNle9GZkMFy6C/', 'yes'),
(45, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/Hwf1i8LSXtQ0u2v/Desert.jpg', 'No'),
(46, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/2iJkDNCEa8MXKex/Jellyfish.jpg', 'No'),
(47, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/D1mN2gOs67QvVJe/Chrysanthemum.jpg', 'No'),
(48, 'gufran', '', '', '111', 'http://localhost/dashboard/str/userdata/user_albums/bBHLoCjnt4TY6Au/', 'yes'),
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
-- Indexes for table `message_list`
--
ALTER TABLE `message_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_post`
--
ALTER TABLE `new_post`
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
-- Indexes for table `profile_certificate`
--
ALTER TABLE `profile_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_education`
--
ALTER TABLE `profile_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_employment`
--
ALTER TABLE `profile_employment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_experience`
--
ALTER TABLE `profile_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_projects`
--
ALTER TABLE `profile_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_skills`
--
ALTER TABLE `profile_skills`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=704;
--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `new_post`
--
ALTER TABLE `new_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=708;
--
-- AUTO_INCREMENT for table `photo_albums`
--
ALTER TABLE `photo_albums`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `poke`
--
ALTER TABLE `poke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `profile_certificate`
--
ALTER TABLE `profile_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profile_education`
--
ALTER TABLE `profile_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `profile_employment`
--
ALTER TABLE `profile_employment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profile_experience`
--
ALTER TABLE `profile_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `profile_projects`
--
ALTER TABLE `profile_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `profile_skills`
--
ALTER TABLE `profile_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;
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
