-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2016 at 09:22 PM
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
(690, 'prince', 0, '652');

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
(9, 'prince', 'gufran', 'prince to gufran ', 'mid1'),
(10, 'gufran', 'prince', 'gufran to prince ', 'mid1'),
(11, 'hadiya ', 'prince', 'hadiya to prince ', 'uid2'),
(12, 'prince ', 'hadiya ', 'prince to hadiya', 'uid2'),
(31, 'gufran', '222', '', '1023017028'),
(32, '222', 'gufran', '', '1023017028'),
(33, '222', 'prince', '', '1143316566'),
(34, 'prince', '222', '', '1143316566'),
(35, 'gufran', 'hadiya', '', '661628626'),
(36, 'hadiya', 'gufran', '', '661628626');

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
  `time` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_post`
--

INSERT INTO `new_post` (`id`, `site_title`, `site_url`, `site_disc`, `site_img_url`, `text_area`, `vedio_url`, `added_by`, `added_to`, `date_added`, `time`) VALUES
(652, ' Best Of Shreya Ghoshal | Bollywood Songs | Shreya Ghosal Hit songs - YouTube ', ' https://www.youtube.com/watch?v=639rYo3ubTM ', ' Saregama brings to you an extensive collection of the popular Bollywood singer Shreya Ghosalâ€™s hit songs. Listen online or download popular songs of Shreya G... ', '', 'https://www.youtube.com/watch?v=639rYo3ubTM ', 'https://www.youtube.com/embed/639rYo3ubTM ', 'gufran', 'gufran', 'Tuesday 28th of June 2016 12:39:22 PM', '1467110362'),
(654, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/6TPcwWHZN_0/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=MOvwtusB1n5Mob6coH2W4HqvgIw', 'http://youtube.com ', '', 'gufran', 'gufran', 'Tuesday 28th of June 2016 12:53:33 PM', '1467111213'),
(655, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/r2ecLFsdbzI/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=v9xNIsjRcZzgWowXJTsmtBp14QM', 'http://youtube.com ', '', 'gufran', 'gufran', 'Tuesday 28th of June 2016 01:10:00 PM', '1467112200'),
(656, ' Free stock photos Â· Pexels ', ' https://www.pexels.com/ ', ' Free stock photos you can use everywhere. âœ“ Free for commercial use âœ“ No attribution required ', 'https://static.pexels.com/photos/1440/city-road-street-buildings-tiny.jpg', 'https://www.pexels.com/\ntjis is a image website you can check it out for more information \nanything else \nyou can contact us ', '', 'gufran', 'gufran', 'Tuesday 28th of June 2016 01:45:38 PM', '1467114338'),
(657, ' Microcloud Welcomes you ', ' http://microcloud.net.in ', ' ', '', 'http://microcloud.net.in \nthis is a cloud website you can get more storage on cloud you need to just sign up now ', '', 'gufran', 'gufran', 'Tuesday 28th of June 2016 01:47:56 PM', '1467114476'),
(658, ' ', ' ', ' ', '', '\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n', '', 'gufran', 'gufran', 'Tuesday 28th of June 2016 01:59:51 PM', '1467115191'),
(659, ' ', ' http://gufranmirza.com ', ' ', 'http://gufranmirza.com/blogs/wp-content/uploads/2016/06/20160218_referfwefrfwefewfw232140.jpg', 'http://gufranmirza.com ', '', 'prince', 'prince', 'Tuesday 28th of June 2016 02:11:17 PM', '1467115877'),
(660, ' ', ' http://gufranmirza.com ', ' ', 'http://gufranmirza.com/blogs/wp-content/uploads/2016/06/Capture-5.png', 'http://gufranmirza.com \n\nhiii this is my blog you \nget latest news and updates from here ', '', 'gufran', 'gufran', 'Tuesday 28th of June 2016 05:18:36 PM', '1467127116'),
(661, ' ', ' http://gufranmirza.com ', ' ', 'http://gufranmirza.com/blogs/wp-content/uploads/2016/06/Capture.png', 'http://gufranmirza.com ', '', 'prince', 'prince', 'Tuesday 28th of June 2016 05:21:25 PM', '1467127285'),
(662, ' Tune jo na kaha, Mein Woh Sunta Raha HD.flv - YouTube ', ' https://www.youtube.com/watch?v=xiId0u5n4YM ', ' ', '', 'https://www.youtube.com/watch?v=xiId0u5n4YM\n', 'https://www.youtube.com/embed/xiId0u5n4YM ', 'prince', 'prince', 'Tuesday 28th of June 2016 05:22:05 PM', '1467127325'),
(663, ' kyun aaj kal neend kam khwaab jyada hai - YouTube ', ' https://www.youtube.com/watch?v=8slG42lLq8U ', ' ', '', 'https://www.youtube.com/watch?v=8slG42lLq8U ', 'https://www.youtube.com/embed/8slG42lLq8U ', '222', '222', 'Tuesday 28th of June 2016 05:35:20 PM', '1467128120'),
(664, ' ', ' http://gufranmirza.com ', ' ', 'http://gufranmirza.com/blogs/wp-content/uploads/2016/06/Capture-3.png', 'http://gufranmirza.com ', '', '222', '222', 'Tuesday 28th of June 2016 05:40:22 PM', '1467128422'),
(665, ' kyun aaj kal neend kam khwaab jyada hai - YouTube ', ' https://www.youtube.com/watch?v=8slG42lLq8U ', ' ', '', 'https://www.youtube.com/watch?v=8slG42lLq8U ', 'https://www.youtube.com/embed/8slG42lLq8U ', '222', '222', 'Tuesday 28th of June 2016 05:49:31 PM', '1467128971'),
(666, ' ', ' http://gufranmirza.com ', ' ', 'http://gufranmirza.com/blogs/wp-content/themes/enigma/images/3.png', 'http://gufranmirza.com \n\nthis is a final and new post everything is working fine now ', '', '222', '222', 'Tuesday 28th of June 2016 08:52:43 PM', '1467139963'),
(667, ' Agents 411 - A place of Knowledge ', ' http://agents411.com ', ' A place of Knowledge ', 'http://www.agents411.com/wp-content/uploads/2016/05/Investment--150x150.jpg', 'http://agents411.com ', '', '222', '222', 'Tuesday 28th of June 2016 08:56:34 PM', '1467140194'),
(668, ' Agents 411 - A place of Knowledge ', ' http://agents411.com ', ' A place of Knowledge ', 'http://www.agents411.com/wp-content/uploads/2016/05/cropped-cropped-cropped-Real-Estate-b-2.jpg', 'http://agents411.com ', '', '222', '222', 'Tuesday 28th of June 2016 08:58:29 PM', '1467140309'),
(669, ' Google ', ' http://google.com ', ' ', '', 'http://google.com ', '', '222', '222', 'Tuesday 28th of June 2016 08:59:29 PM', '1467140369'),
(670, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/XIf--aDHmpc/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=yPQ2yMQOBPMIshHWui4S4-1aVVA', 'http://youtube.com ', '', 'prince', 'prince', 'Tuesday 28th of June 2016 09:00:41 PM', '1467140441'),
(671, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/3QHkqy9vb_s/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=SR3N32uMDt-l_iZp_wvFE5KXWFM', 'http://youtube.com ', '', 'prince', 'prince', 'Tuesday 28th of June 2016 09:02:04 PM', '1467140524'),
(672, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/Aak8VOwFQPs/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=4rk6vTpjz19r1LVAQUa_u_6foeY', 'http://youtube.com ', '', 'prince', 'prince', 'Tuesday 28th of June 2016 09:03:40 PM', '1467140620'),
(673, ' Web OS Concept Acess Over Internet - YouTube ', ' https://www.youtube.com/watch?v=bn_Dj7Ak8Pg ', ' This vedio shows that how you can acess Web OS Over internet in a browser. ', '', 'https://www.youtube.com/watch?v=bn_Dj7Ak8Pg ', 'https://www.youtube.com/embed/bn_Dj7Ak8Pg ', 'prince', 'prince', 'Tuesday 28th of June 2016 09:08:39 PM', '1467140919'),
(674, ' YouTube ', ' http://youtube.com ', ' Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube. ', 'https://i.ytimg.com/vi/TYg29vEgwc0/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=e1RbpkKiQExaTIPPIh5m7V1M8Ng', 'http://youtube.com \n', '', 'prince', 'prince', 'Tuesday 28th of June 2016 09:10:51 PM', '1467141051'),
(675, 'this is a test title', '', 'this is a demo disc ', 'upload_post_video/1.jpg', '', 'upload_post_video/56392012.mp4', 'gufran', 'prince', 'Tuesday 28th of June 2016 09:15:23 PM', '1467141323');

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
(181, 'i am commenting on it ', 'prince', '', 0, 665);

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
(90, 'gufran', 'prince', 'hey prince', '0000-00-00', '', '', 'mid1'),
(91, 'prince', 'gufran', 'hi gufran , how are you ', '0000-00-00', '', '', 'mid1'),
(92, 'prince', 'gufran', 'everything is fine????', '0000-00-00', '', '', 'mid1'),
(93, 'gufran', 'prince', 'thanks , all ok here ', '0000-00-00', '', '', 'mid1'),
(94, 'prince', 'gufran', 'did you get a response', '0000-00-00', '', '', 'mid1'),
(95, 'gufran', 'prince', 'yes i get it', '0000-00-00', '', '', 'mid1'),
(96, 'gufran', 'prince', 'hjnmghjnuy', '0000-00-00', '', '', 'mid1'),
(97, 'gufran', 'prince', 'kill it ', '0000-00-00', '', '', 'mid1'),
(98, 'prince', 'gufran', 'yes do it now', '0000-00-00', '', '', 'mid1'),
(99, 'prince', 'gufran', 'all clear ', '0000-00-00', '', '', 'mid1'),
(100, 'gufran', 'prince', 'yes its working ', '0000-00-00', '', '', 'mid1'),
(101, 'gufran', 'prince', 'okkk fine', '0000-00-00', '', '', 'mid1'),
(102, 'prince', 'gufran', 'yes do it now', '0000-00-00', '', '', 'mid1'),
(103, 'prince', 'hadiya ', 'hii prince ', '0000-00-00', '', '', 'uid2'),
(104, 'prince', 'hadiya ', 'hiii hadiya', '0000-00-00', '', '', 'uid2'),
(105, 'hadiya', 'prince ', 'hii prince ', '0000-00-00', '', '', 'uid2'),
(106, 'gufran', 'prince', 'got a message', '0000-00-00', '', '', 'mid1'),
(107, 'gufran', 'prince', '66163', '0000-00-00', '', '', 'mid1'),
(108, 'gufran', 'prince', 'jkwnfujrhsdvv]', '0000-00-00', '', '', 'mid1'),
(109, 'gufran', 'prince', 'fweiofumksdcvnwewe', '0000-00-00', '', '', 'mid1'),
(110, 'gufran', 'prince', 'wdviovhkevh', '0000-00-00', '', '', 'mid1'),
(111, 'gufran', 'prince', 'ioeghejkvnsdioff', '0000-00-00', '', '', 'mid1'),
(112, 'gufran', 'prince', 'jhcdjhwe', '0000-00-00', '', '', 'mid1'),
(113, 'gufran', 'prince', 'wcjbefiuw  ', '0000-00-00', '', '', 'mid1'),
(114, 'gufran', 'prince', 'wijefugewfxs b51984bg', '0000-00-00', '', '', 'mid1'),
(115, 'gufran', 'prince', 'erg', '0000-00-00', '', '', 'mid1'),
(116, 'gufran', 'prince', 'erg', '0000-00-00', '', '', 'mid1'),
(117, 'gufran', 'prince', 'erg', '0000-00-00', '', '', 'mid1'),
(118, 'gufran', 'prince', 'ewrg', '0000-00-00', '', '', 'mid1'),
(119, 'gufran', 'prince', 'erg', '0000-00-00', '', '', 'mid1'),
(120, 'prince', 'gufran', 'jkghuiuhi', '0000-00-00', '', '', 'mid1'),
(121, 'prince', 'gufran', 'uihyuiuy9h', '0000-00-00', '', '', 'mid1'),
(122, 'prince', 'gufran', 'evfu', '0000-00-00', '', '', 'mid1'),
(123, 'prince', 'gufran', 'evf', '0000-00-00', '', '', 'mid1'),
(124, 'prince', 'gufran', 'efed', '0000-00-00', '', '', 'mid1'),
(125, 'prince', 'gufran', 'vfdr', '0000-00-00', '', '', 'mid1'),
(126, 'prince', 'gufran', 'ervdfvde', '0000-00-00', '', '', 'mid1'),
(127, 'prince', 'gufran', 'sdv', '0000-00-00', '', '', 'mid1'),
(128, 'prince', 'gufran', 'sd', '0000-00-00', '', '', 'mid1'),
(129, 'prince', 'gufran', 'd', '0000-00-00', '', '', 'mid1'),
(130, 'prince', 'gufran', 'sd', '0000-00-00', '', '', 'mid1'),
(131, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(132, 'prince', 'gufran', 'f', '0000-00-00', '', '', 'mid1'),
(133, 'prince', 'gufran', 'sd', '0000-00-00', '', '', 'mid1'),
(134, 'prince', 'gufran', 'c', '0000-00-00', '', '', 'mid1'),
(135, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(136, 'gufran', 'prince', 'g', '0000-00-00', '', '', 'mid1'),
(137, 'gufran', 'prince', 'v', '0000-00-00', '', '', 'mid1'),
(138, 'gufran', 'prince', 'fsdf', '0000-00-00', '', '', 'mid1'),
(139, 'gufran', 'prince', 'dsc', '0000-00-00', '', '', 'mid1'),
(140, 'gufran', 'prince', 'sdcsd', '0000-00-00', '', '', 'mid1'),
(141, 'gufran', 'prince', 'csdvsd', '0000-00-00', '', '', 'mid1'),
(142, 'gufran', 'prince', 'csd', '0000-00-00', '', '', 'mid1'),
(143, 'gufran', 'prince', 'ferwf', '0000-00-00', '', '', 'mid1'),
(144, 'gufran', 'prince', 'dvv', '0000-00-00', '', '', 'mid1'),
(145, 'gufran', 'prince', 'sdsd', '0000-00-00', '', '', 'mid1'),
(146, 'gufran', 'prince', 'sd', '0000-00-00', '', '', 'mid1'),
(147, 'gufran', 'prince', 'sdf', '0000-00-00', '', '', 'mid1'),
(148, 'gufran', 'prince', 'f', '0000-00-00', '', '', 'mid1'),
(149, 'prince', 'gufran', 'ggerg', '0000-00-00', '', '', 'mid1'),
(150, 'prince', 'gufran', 'dfgdfg', '0000-00-00', '', '', 'mid1'),
(151, 'prince', 'gufran', 'dffgd', '0000-00-00', '', '', 'mid1'),
(152, 'prince', 'gufran', 'gd', '0000-00-00', '', '', 'mid1'),
(153, 'prince', 'gufran', 'fd', '0000-00-00', '', '', 'mid1'),
(154, 'prince', 'gufran', 'dfg', '0000-00-00', '', '', 'mid1'),
(155, 'prince', 'gufran', 'gre', '0000-00-00', '', '', 'mid1'),
(156, 'prince', 'gufran', 'dfv', '0000-00-00', '', '', 'mid1'),
(157, 'prince', 'gufran', 'er', '0000-00-00', '', '', 'mid1'),
(158, 'prince', 'gufran', 'vdf', '0000-00-00', '', '', 'mid1'),
(159, 'prince', 'gufran', 'er', '0000-00-00', '', '', 'mid1'),
(160, 'prince', 'gufran', 'erv', '0000-00-00', '', '', 'mid1'),
(161, 'prince', 'gufran', 'cv', '0000-00-00', '', '', 'mid1'),
(162, 'prince', 'gufran', 'gwe', '0000-00-00', '', '', 'mid1'),
(163, 'prince', 'gufran', 'dfd', '0000-00-00', '', '', 'mid1'),
(164, 'prince', 'gufran', 'dv', '0000-00-00', '', '', 'mid1'),
(165, 'prince', 'gufran', 'df', '0000-00-00', '', '', 'mid1'),
(166, 'prince', 'gufran', 'dfv', '0000-00-00', '', '', 'mid1'),
(167, 'prince', 'gufran', 'df', '0000-00-00', '', '', 'mid1'),
(168, 'prince', 'gufran', 'vdf', '0000-00-00', '', '', 'mid1'),
(169, 'prince', 'gufran', 'df', '0000-00-00', '', '', 'mid1'),
(170, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(171, 'prince', 'gufran', 'fv', '0000-00-00', '', '', 'mid1'),
(172, 'prince', 'gufran', 'vfvf', '0000-00-00', '', '', 'mid1'),
(173, 'prince', 'gufran', 'fvf', '0000-00-00', '', '', 'mid1'),
(174, 'prince', 'gufran', 'fvfvf', '0000-00-00', '', '', 'mid1'),
(175, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(176, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(177, 'prince', 'gufran', 'vf', '0000-00-00', '', '', 'mid1'),
(178, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(179, 'prince', 'gufran', 'vfv', '0000-00-00', '', '', 'mid1'),
(180, 'prince', 'gufran', 'vfvvvv', '0000-00-00', '', '', 'mid1'),
(181, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(182, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(183, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(184, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(185, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(186, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(187, 'prince', 'gufran', 'v', '0000-00-00', '', '', 'mid1'),
(188, 'gufran', '222', '222 you got the result', '0000-00-00', '', '', '1198700318'),
(189, '222', 'gufran', 'yes i got it ', '0000-00-00', '', '', '1198700318'),
(190, 'gufran', '222', 'okk fine', '0000-00-00', '', '', '1198700318'),
(191, '222', 'gufran', 'thanks', '0000-00-00', '', '', '1198700318'),
(192, '222', 'prince', 'hiiii prinve', '0000-00-00', '', '', '1143316566'),
(193, 'prince', '222', 'hiiii', '0000-00-00', '', '', '1143316566'),
(194, '222', 'prince', 'how are you', '0000-00-00', '', '', '1143316566'),
(195, 'prince', '222', 'finr', '0000-00-00', '', '', '1143316566'),
(196, 'prince', '222', '22222', '0000-00-00', '', '', '1143316566'),
(197, '222', 'prince', '22222', '0000-00-00', '', '', '1143316566'),
(198, 'gufran', '222', '222', '0000-00-00', '', '', '1023017028'),
(199, 'gufran', '222', '55556', '0000-00-00', '', '', '1023017028'),
(200, 'gufran', 'hadiya', 'hiii how are you ', '0000-00-00', '', '', '661628626'),
(201, 'hadiya', 'gufran', 'badiya', '0000-00-00', '', '', '661628626'),
(202, 'gufran', 'prince', '26 26 ', '0000-00-00', '', '', 'mid1'),
(203, 'gufran', 'prince', 'hnmjtyjuyjtyju7y', '0000-00-00', '', '', 'mid1'),
(204, 'prince', 'gufran', 'hrthrthrrgrghrt', '0000-00-00', '', '', 'mid1'),
(205, 'gufran', 'prince', 'hrthrthrt', '0000-00-00', '', '', 'mid1'),
(206, 'prince', 'gufran', 'hrthrthrt', '0000-00-00', '', '', 'mid1'),
(207, 'gufran', 'prince', 'fcbhxvgdsv', '0000-00-00', '', '', 'mid1');

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
(2, 'gufran', 'gufran', 'mirza', 'gufranmirza1@gmail.com', '16110bbbb81392aaac0dd1e5a9d8be82', '2016-05-08', '0', 'here is about me !!!!\r\nwho i am ?\r\n', 'Z9GhJwTSNguACtm/logo.png', 'prince,hadiya,222', 'yes'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=691;
--
-- AUTO_INCREMENT for table `message_list`
--
ALTER TABLE `message_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `new_post`
--
ALTER TABLE `new_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=676;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;
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
