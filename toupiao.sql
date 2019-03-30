-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2019-03-31 01:21:54
-- 服务器版本： 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 5.6.40-5+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toupiao`
--

-- --------------------------------------------------------

--
-- 表的结构 `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `option` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `options`
--

INSERT INTO `options` (`id`, `option`, `num`, `create_time`, `update_time`) VALUES
(29, '个', 0, 1553960314, 1553960314),
(30, '感叹号', 1, 1553960314, 1553960314),
(31, '是否', 2, 1553960314, 1553960314),
(32, '发生的风格', 3, 1553960372, 1553960372),
(33, '刚刚我去二群', 5, 1553960372, 1553960372),
(34, '我去', 6, 1553960664, 1553960664),
(35, '天然黑', 1, 1553960664, 1553960664),
(36, '你好', 1, 1553960679, 1553960679),
(37, '润体乳', 2, 1553960679, 1553960679),
(38, '还有', 0, 1553965580, 1553965580),
(39, '我弟弟', 0, 1553965580, 1553965580),
(40, '哥哥', 0, 1553965580, 1553965580),
(41, '委屈无', 1, 1553965580, 1553965580),
(42, '哈哈', 0, 1553965594, 1553965594),
(43, '规定', 0, 1553965594, 1553965594),
(44, '让人', 0, 1553965594, 1553965594);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `vname` varchar(50) NOT NULL,
  `desciption` varchar(500) NOT NULL,
  `select_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0单选1多选',
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vote`
--

INSERT INTO `vote` (`id`, `vname`, `desciption`, `select_type`, `create_time`, `update_time`) VALUES
(21, '刚刚', '刚刚', 0, 1553960314, 1553960314),
(22, '刚刚要和他好好', '刚刚要和他好好', 0, 1553960372, 1553960372),
(23, '规定', '规定', 1, 1553960664, 1553960664),
(24, '王企鹅', '王企鹅', 0, 1553960679, 1553960679),
(25, '和接口人疼你浪费', '和接口人疼你浪费', 0, 1553965580, 1553965580),
(26, '畏畏缩缩所', '畏畏缩缩所', 1, 1553965594, 1553965594);

-- --------------------------------------------------------

--
-- 表的结构 `vote_option`
--

CREATE TABLE `vote_option` (
  `id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `vote_option`
--

INSERT INTO `vote_option` (`id`, `vid`, `oid`, `create_time`, `update_time`) VALUES
(4, 21, 29, 1553960314, 1553960314),
(5, 21, 30, 1553960314, 1553960314),
(6, 21, 31, 1553960314, 1553960314),
(7, 22, 32, 1553960372, 1553960372),
(8, 22, 33, 1553960372, 1553960372),
(9, 23, 34, 1553960664, 1553960664),
(10, 23, 35, 1553960664, 1553960664),
(11, 24, 36, 1553960679, 1553960679),
(12, 24, 37, 1553960679, 1553960679),
(13, 25, 38, 1553965580, 1553965580),
(14, 25, 39, 1553965580, 1553965580),
(15, 25, 40, 1553965580, 1553965580),
(16, 25, 41, 1553965580, 1553965580),
(17, 26, 42, 1553965594, 1553965594),
(18, 26, 43, 1553965594, 1553965594),
(19, 26, 44, 1553965594, 1553965594);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vote_option`
--
ALTER TABLE `vote_option`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `vote_option`
--
ALTER TABLE `vote_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
