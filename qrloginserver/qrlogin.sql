-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2015 年 03 月 24 日 00:20
-- 服务器版本: 5.5.32
-- PHP 版本: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `qrlogin`
--
CREATE DATABASE IF NOT EXISTS `qrlogin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `qrlogin`;

-- --------------------------------------------------------

--
-- 表的结构 `login_record`
--

CREATE TABLE IF NOT EXISTS `login_record` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `randnumber` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`randnumber`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `login_record`
--

INSERT INTO `login_record` (`id`, `randnumber`, `username`) VALUES
(1, '09656608', ''),
(2, '37939273', ''),
(3, '87274004', '1111111111'),
(4, '36136592', '1111111111'),
(5, '32127286', 'huidaoli');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
