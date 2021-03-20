-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2018 at 02:09 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hma_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `en_config_behavior`
--

CREATE TABLE `en_config_behavior` (
  `id` int(11) NOT NULL,
  `is_single` tinyint(1) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_behavior`
--

INSERT INTO `en_config_behavior` (`id`, `is_single`, `label`) VALUES
(1, 1, 'memorize'),
(2, 1, 'find'),
(3, 1, 'count'),
(4, 1, 'pick'),
(5, 1, 'receive'),
(6, 1, 'place'),
(7, 1, 'hand'),
(8, 1, 'follow'),
(9, 1, 'guide'),
(10, 1, 'go'),
(11, 1, 'call'),
(12, 1, 'tell'),
(13, 1, 'ask'),
(14, 1, 'answer'),
(15, 0, 'bring');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_color`
--

CREATE TABLE `en_config_color` (
  `id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_color`
--

INSERT INTO `en_config_color` (`id`, `label`) VALUES
(1, 'red'),
(2, 'orange'),
(3, 'yellow'),
(4, 'green'),
(5, 'blue'),
(6, 'purple'),
(7, 'pink'),
(8, 'brown'),
(9, 'white'),
(10, 'gray'),
(11, 'black');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_human`
--

CREATE TABLE `en_config_human` (
  `id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_human`
--

INSERT INTO `en_config_human` (`id`, `label`) VALUES
(1, 'emma'),
(2, 'olivia'),
(3, 'sophia'),
(4, 'ava'),
(5, 'isabella'),
(6, 'mia'),
(7, 'abigail'),
(8, 'emily'),
(9, 'charlotte'),
(10, 'harper'),
(11, 'noah'),
(12, 'liam'),
(13, 'mason'),
(14, 'jacob'),
(15, 'william'),
(16, 'ethan'),
(17, 'james'),
(18, 'alexander'),
(19, 'michael'),
(20, 'benjamin');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_human_other`
--

CREATE TABLE `en_config_human_other` (
  `id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_human_other`
--

INSERT INTO `en_config_human_other` (`id`, `label`) VALUES
(1, 'me'),
(2, 'someone'),
(3, 'person');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_human_other_word`
--

CREATE TABLE `en_config_human_other_word` (
  `id` int(11) NOT NULL,
  `human_other_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_human_other_word`
--

INSERT INTO `en_config_human_other_word` (`id`, `human_other_id`, `word`) VALUES
(1, 1, 'me'),
(3, 2, 'someone'),
(8, 3, 'person');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_human_word`
--

CREATE TABLE `en_config_human_word` (
  `id` int(11) NOT NULL,
  `human_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_human_word`
--

INSERT INTO `en_config_human_word` (`id`, `human_id`, `word`) VALUES
(1, 1, 'emma'),
(2, 2, 'noah'),
(3, 3, 'sophia'),
(4, 4, 'ava'),
(5, 4, 'eva'),
(6, 4, 'nina'),
(7, 5, 'isabella'),
(8, 6, 'mia'),
(9, 7, 'abigail'),
(10, 8, 'emily'),
(11, 9, 'charlotte'),
(12, 9, 'silent'),
(13, 10, 'harper'),
(14, 10, 'cooper'),
(15, 11, 'noah'),
(16, 12, 'liam'),
(17, 13, 'mason'),
(18, 13, 'missing'),
(19, 14, 'jacob'),
(20, 15, 'william'),
(21, 15, 'minion'),
(22, 16, 'ethan'),
(23, 17, 'james'),
(24, 17, 'jeans'),
(25, 18, 'alexander'),
(26, 19, 'michael'),
(27, 20, 'benjamin');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_obj`
--

CREATE TABLE `en_config_obj` (
  `id` int(11) NOT NULL,
  `obj_class_id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_obj`
--

INSERT INTO `en_config_obj` (`id`, `obj_class_id`, `label`) VALUES
(1, 1, 'chewing gum'),
(2, 2, 'corn'),
(3, 3, 'deodorant spray'),
(4, 3, 'dish soap'),
(5, 1, 'jelly'),
(6, 4, 'lemon'),
(7, 1, 'noodle'),
(8, 6, 'oolong tea'),
(9, 4, 'orange'),
(10, 5, 'peach water'),
(11, 5, 'premium boss'),
(12, 2, 'red onion'),
(13, 3, 'shampoo'),
(14, 1, 'soup pasta'),
(15, 5, 'vegetable juice'),
(16, 2, 'zucchini'),
(17, 1, 'None'),
(18, 1, 'None'),
(19, 1, 'None'),
(20, 1, 'None'),
(21, 1, 'None'),
(22, 1, 'None'),
(23, 1, 'None'),
(24, 1, 'None'),
(25, 1, 'None'),
(26, 1, 'None'),
(27, 1, 'None'),
(28, 1, 'None'),
(29, 1, 'None'),
(30, 1, 'None'),
(31, 1, 'None'),
(32, 1, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_obj_class`
--

CREATE TABLE `en_config_obj_class` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_obj_class`
--

INSERT INTO `en_config_obj_class` (`id`, `place_id`, `label`) VALUES
(1, 8, 'snack'),
(2, 6, 'food'),
(3, 9, 'cleaning stuff'),
(4, 7, 'fruit'),
(5, 10, 'drink');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_obj_class_word`
--

CREATE TABLE `en_config_obj_class_word` (
  `id` int(11) NOT NULL,
  `obj_class_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_obj_class_word`
--

INSERT INTO `en_config_obj_class_word` (`id`, `obj_class_id`, `word`) VALUES
(1, 1, 'snack'),
(2, 1, 'snacks'),
(3, 2, 'food'),
(4, 2, 'foods'),
(5, 3, 'cleaning stuff'),
(6, 4, 'fruit'),
(7, 4, 'fruits'),
(8, 5, 'drink'),
(9, 5, 'drinks');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_obj_other`
--

CREATE TABLE `en_config_obj_other` (
  `id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_obj_other`
--

INSERT INTO `en_config_obj_other` (`id`, `label`) VALUES
(1, 'it');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_obj_other_word`
--

CREATE TABLE `en_config_obj_other_word` (
  `id` int(11) NOT NULL,
  `obj_other_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_obj_other_word`
--

INSERT INTO `en_config_obj_other_word` (`id`, `obj_other_id`, `word`) VALUES
(1, 1, 'it');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_obj_word`
--

CREATE TABLE `en_config_obj_word` (
  `id` int(11) NOT NULL,
  `obj_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_obj_word`
--

INSERT INTO `en_config_obj_word` (`id`, `obj_id`, `word`) VALUES
(1, 1, 'chewing gum'),
(2, 2, 'corn'),
(3, 3, 'deodorant splay'),
(4, 4, 'dish soap'),
(5, 5, 'jelly'),
(6, 6, 'lemon'),
(7, 7, 'noodle'),
(8, 8, 'oolang tea'),
(9, 8, 'belong t'),
(10, 9, 'orange'),
(11, 10, 'peach water'),
(12, 10, 'beach wire'),
(13, 11, 'premium boss'),
(14, 11, 'premium glass'),
(15, 12, 'red onion'),
(16, 13, 'shampoo'),
(17, 14, 'soup pasta'),
(18, 15, 'vegetable juice'),
(19, 16, 'zucchini');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place`
--

CREATE TABLE `en_config_place` (
  `id` int(11) NOT NULL,
  `place_class_id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_place`
--

INSERT INTO `en_config_place` (`id`, `place_class_id`, `label`) VALUES
(1, 1, 'sofa 1'),
(2, 1, 'sofa 2'),
(3, 1, 'living table'),
(4, 2, 'desk'),
(5, 2, 'bed'),
(6, 2, 'side table'),
(7, 2, 'shelf'),
(8, 3, 'kitchen table'),
(9, 3, 'cupboard'),
(10, 3, 'bar table'),
(11, 3, 'table set 1'),
(12, 3, 'table set 2'),
(13, 4, 'table set 3'),
(14, 4, 'table set 4');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_class`
--

CREATE TABLE `en_config_place_class` (
  `id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_place_class`
--

INSERT INTO `en_config_place_class` (`id`, `label`) VALUES
(1, 'living room'),
(2, 'children\'s library'),
(3, 'kitchen and dining room'),
(4, 'hall way');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_class_pose`
--

CREATE TABLE `en_config_place_class_pose` (
  `id` int(11) NOT NULL,
  `place_class_id` int(11) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `roll` double NOT NULL,
  `pitch` double NOT NULL,
  `yaw` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_place_class_pose`
--

INSERT INTO `en_config_place_class_pose` (`id`, `place_class_id`, `x`, `y`, `z`, `roll`, `pitch`, `yaw`) VALUES
(1, 1, 2.83, 2.25, 0, 0, 0, -0.02),
(2, 2, 2.43, 4.96, 0, 0, 0, -1.54),
(3, 3, 8.12, 0.58, 0, 0, 0, -1.54),
(4, 4, 14.89, 5.29, 0, 0, 0, 0.83);

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_class_word`
--

CREATE TABLE `en_config_place_class_word` (
  `id` int(11) NOT NULL,
  `place_class_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_place_class_word`
--

INSERT INTO `en_config_place_class_word` (`id`, `place_class_id`, `word`) VALUES
(1, 1, 'living room'),
(2, 2, 'children\'s library'),
(3, 3, 'kitchen and dining room'),
(4, 4, 'hall way'),
(5, 4, 'halloween'),
(6, 4, 'holloway');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_inner_door_pose`
--

CREATE TABLE `en_config_place_inner_door_pose` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `roll` float NOT NULL,
  `pitch` float NOT NULL,
  `yaw` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `en_config_place_inner_door_pose`
--

INSERT INTO `en_config_place_inner_door_pose` (`id`, `x`, `y`, `z`, `roll`, `pitch`, `yaw`) VALUES
(1, 5.5, 2.4, 0, 0, 0, 0),
(2, 5.5, 6, 0, 0, 0, 0),
(3, 13, 6.3, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_other`
--

CREATE TABLE `en_config_place_other` (
  `id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_other_word`
--

CREATE TABLE `en_config_place_other_word` (
  `id` int(11) NOT NULL,
  `place_other_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_outer_door_pose`
--

CREATE TABLE `en_config_place_outer_door_pose` (
  `id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `roll` float NOT NULL,
  `pitch` float NOT NULL,
  `yaw` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `en_config_place_outer_door_pose`
--

INSERT INTO `en_config_place_outer_door_pose` (`id`, `x`, `y`, `z`, `roll`, `pitch`, `yaw`) VALUES
(1, 0.6, 0, 0, 0, 0, 0),
(2, 14.4, -0.5, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_pose`
--

CREATE TABLE `en_config_place_pose` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `roll` double NOT NULL,
  `pitch` double NOT NULL,
  `yaw` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_place_pose`
--

INSERT INTO `en_config_place_pose` (`id`, `place_id`, `x`, `y`, `z`, `roll`, `pitch`, `yaw`) VALUES
(1, 1, 2.83, 2.25, 0, 0, 0, -0.02),
(2, 2, 4.99, 2.29, 0, 0, 0, 0),
(3, 3, 3.99, 2.1, 0, 0, 0, -0.01),
(4, 4, 3.03, 6.81, 0, 0, 0, -1.59),
(5, 4, 2.27, 6.02, 0, 0, 0, 3.11),
(6, 5, 2.43, 4.96, 0, 0, 0, -1.54),
(7, 6, 4.6, 4.34, 0, 0, 0, 3.11),
(8, 6, 3.73, 5.15, 0, 0, 0, 1.58),
(9, 6, 4.86, 5.91, 0, 0, 0, 0),
(10, 7, 4.26, 4.04, 0, 0, 0, -0.03),
(11, 8, 5.98, 5.81, 0, 0, 0, 0),
(12, 8, 7, 5, 0, 0, 0, -1.54),
(13, 8, 5.96, 4.24, 0, 0, 0, 3.09),
(14, 9, 6.3, 3.52, 0, 0, 0, -1.51),
(15, 10, 8.12, 0.58, 0, 0, 0, -1.54),
(16, 11, 9.81, 5.03, 0, 0, 0, 1.53),
(17, 11, 11.5, 4.93, 0, 0, 0, -1.61),
(18, 12, 9.8, 2.16, 0, 0, 0, 1.64),
(19, 12, 11.5, 2.1, 0, 0, 0, -1.55),
(20, 13, 14.89, 5.29, 0, 0, 0, 0.83),
(21, 13, 16.32, 5.42, 0, 0, 0, -0.72),
(22, 13, 16.36, 3.87, 0, 0, 0, -2.36),
(23, 13, 15.19, 3.8, 0, 0, 0, 2.38),
(24, 14, 15.19, 2.86, 0, 0, 0, 0.77),
(25, 14, 16.43, 2.83, 0, 0, 0, -0.84),
(26, 14, 16.3, 1.26, 0, 0, 0, -2.45),
(27, 14, 15.09, 1.39, 0, 0, 0, 2.34);

-- --------------------------------------------------------

--
-- Table structure for table `en_config_place_word`
--

CREATE TABLE `en_config_place_word` (
  `id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_place_word`
--

INSERT INTO `en_config_place_word` (`id`, `place_id`, `word`) VALUES
(1, 1, 'sofa 1'),
(2, 1, 'sofa one'),
(3, 1, 'super one'),
(4, 2, 'sofa 2'),
(5, 2, 'sofa two'),
(6, 2, 'sofa to'),
(7, 2, 'sofa tune'),
(8, 2, 'super 2'),
(9, 2, 'super two'),
(10, 2, 'super to'),
(11, 2, 'super tune'),
(12, 3, 'living table'),
(13, 4, 'desk'),
(14, 5, 'bed'),
(15, 5, 'then'),
(16, 5, 'bend'),
(17, 5, 'vent'),
(18, 5, 'back'),
(19, 6, 'side table'),
(20, 6, 'summit able'),
(21, 7, 'shelf'),
(22, 8, 'kitchen table'),
(23, 9, 'cupboard'),
(24, 9, 'covered'),
(25, 10, 'bar table'),
(26, 10, 'nor table'),
(27, 11, 'table set 1'),
(28, 11, 'table at 1'),
(29, 11, 'table set one'),
(30, 11, 'table at one'),
(31, 12, 'table set 2'),
(32, 12, 'table set two'),
(33, 12, 'table set to'),
(34, 12, 'table at 2'),
(35, 12, 'table at to'),
(36, 12, 'table at two'),
(37, 13, 'table set 3'),
(38, 13, 'tables at 3'),
(39, 13, 'table set three'),
(40, 14, 'table set 4'),
(41, 14, 'table set for'),
(42, 14, 'table set four');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_verb_multi`
--

CREATE TABLE `en_config_verb_multi` (
  `id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_verb_multi`
--

INSERT INTO `en_config_verb_multi` (`id`, `label`) VALUES
(1, 'take'),
(2, 'go'),
(3, 'navigate');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_verb_multi_word`
--

CREATE TABLE `en_config_verb_multi_word` (
  `id` int(11) NOT NULL,
  `verb_multi_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_verb_multi_word`
--

INSERT INTO `en_config_verb_multi_word` (`id`, `verb_multi_id`, `word`) VALUES
(1, 1, 'take'),
(2, 2, 'go'),
(3, 3, 'navigate');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_verb_single`
--

CREATE TABLE `en_config_verb_single` (
  `id` int(11) NOT NULL,
  `behavior_id` int(11) NOT NULL,
  `label` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_verb_single`
--

INSERT INTO `en_config_verb_single` (`id`, `behavior_id`, `label`) VALUES
(1, 2, 'find'),
(2, 2, 'locate'),
(3, 2, 'look'),
(4, 2, 'meet'),
(5, 6, 'place'),
(6, 6, 'put'),
(7, 8, 'follow'),
(8, 8, 'come'),
(9, 8, 'accompany'),
(10, 9, 'guide'),
(11, 9, 'escort'),
(12, 9, 'lead'),
(13, 10, 'enter'),
(14, 12, 'tell'),
(15, 12, 'say'),
(16, 14, 'answer'),
(17, 15, 'bring'),
(18, 15, 'deliver'),
(19, 15, 'get'),
(20, 15, 'grasp'),
(21, 15, 'pick'),
(22, 15, 'give');

-- --------------------------------------------------------

--
-- Table structure for table `en_config_verb_single_word`
--

CREATE TABLE `en_config_verb_single_word` (
  `id` int(11) NOT NULL,
  `verb_single_id` int(11) NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `en_config_verb_single_word`
--

INSERT INTO `en_config_verb_single_word` (`id`, `verb_single_id`, `word`) VALUES
(2, 1, 'find'),
(3, 2, 'locate'),
(4, 3, 'look'),
(5, 4, 'meet'),
(6, 5, 'place'),
(7, 6, 'put'),
(8, 7, 'follow'),
(9, 8, 'come'),
(10, 9, 'accompany'),
(11, 10, 'guide'),
(12, 11, 'escort'),
(13, 12, 'lead'),
(14, 13, 'enter'),
(15, 13, 'inter'),
(16, 14, 'tell'),
(17, 15, 'say'),
(18, 16, 'answer'),
(19, 17, 'bring'),
(20, 18, 'deliver'),
(21, 19, 'get'),
(22, 20, 'grasp'),
(23, 21, 'pick'),
(24, 21, 'pic'),
(25, 22, 'give');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `en_config_behavior`
--
ALTER TABLE `en_config_behavior`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_color`
--
ALTER TABLE `en_config_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_human`
--
ALTER TABLE `en_config_human`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_human_other`
--
ALTER TABLE `en_config_human_other`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_human_other_word`
--
ALTER TABLE `en_config_human_other_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_human_word`
--
ALTER TABLE `en_config_human_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_obj`
--
ALTER TABLE `en_config_obj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_obj_class`
--
ALTER TABLE `en_config_obj_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_obj_class_word`
--
ALTER TABLE `en_config_obj_class_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_obj_other`
--
ALTER TABLE `en_config_obj_other`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_obj_other_word`
--
ALTER TABLE `en_config_obj_other_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_obj_word`
--
ALTER TABLE `en_config_obj_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place`
--
ALTER TABLE `en_config_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_class`
--
ALTER TABLE `en_config_place_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_class_pose`
--
ALTER TABLE `en_config_place_class_pose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_class_word`
--
ALTER TABLE `en_config_place_class_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_inner_door_pose`
--
ALTER TABLE `en_config_place_inner_door_pose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_other`
--
ALTER TABLE `en_config_place_other`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_other_word`
--
ALTER TABLE `en_config_place_other_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_outer_door_pose`
--
ALTER TABLE `en_config_place_outer_door_pose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_pose`
--
ALTER TABLE `en_config_place_pose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_place_word`
--
ALTER TABLE `en_config_place_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_verb_multi`
--
ALTER TABLE `en_config_verb_multi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_verb_multi_word`
--
ALTER TABLE `en_config_verb_multi_word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_verb_single`
--
ALTER TABLE `en_config_verb_single`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_config_verb_single_word`
--
ALTER TABLE `en_config_verb_single_word`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `en_config_behavior`
--
ALTER TABLE `en_config_behavior`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `en_config_color`
--
ALTER TABLE `en_config_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `en_config_human`
--
ALTER TABLE `en_config_human`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `en_config_human_other`
--
ALTER TABLE `en_config_human_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `en_config_human_other_word`
--
ALTER TABLE `en_config_human_other_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `en_config_human_word`
--
ALTER TABLE `en_config_human_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `en_config_obj`
--
ALTER TABLE `en_config_obj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `en_config_obj_class`
--
ALTER TABLE `en_config_obj_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `en_config_obj_class_word`
--
ALTER TABLE `en_config_obj_class_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `en_config_obj_other`
--
ALTER TABLE `en_config_obj_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `en_config_obj_other_word`
--
ALTER TABLE `en_config_obj_other_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `en_config_obj_word`
--
ALTER TABLE `en_config_obj_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `en_config_place`
--
ALTER TABLE `en_config_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `en_config_place_class`
--
ALTER TABLE `en_config_place_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `en_config_place_class_pose`
--
ALTER TABLE `en_config_place_class_pose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `en_config_place_class_word`
--
ALTER TABLE `en_config_place_class_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `en_config_place_inner_door_pose`
--
ALTER TABLE `en_config_place_inner_door_pose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `en_config_place_other`
--
ALTER TABLE `en_config_place_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `en_config_place_other_word`
--
ALTER TABLE `en_config_place_other_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `en_config_place_outer_door_pose`
--
ALTER TABLE `en_config_place_outer_door_pose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `en_config_place_pose`
--
ALTER TABLE `en_config_place_pose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `en_config_place_word`
--
ALTER TABLE `en_config_place_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `en_config_verb_multi`
--
ALTER TABLE `en_config_verb_multi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `en_config_verb_multi_word`
--
ALTER TABLE `en_config_verb_multi_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `en_config_verb_single`
--
ALTER TABLE `en_config_verb_single`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `en_config_verb_single_word`
--
ALTER TABLE `en_config_verb_single_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
