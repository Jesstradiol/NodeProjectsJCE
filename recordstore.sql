-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 01:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recordstore`
--
CREATE DATABASE IF NOT EXISTS `recordstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recordstore`;

-- --------------------------------------------------------

--
-- Table structure for table `albumtable`
--

DROP TABLE IF EXISTS `albumtable`;
CREATE TABLE `albumtable` (
  `AlbumID` varchar(25) NOT NULL,
  `ArtistID` varchar(10) NOT NULL,
  `artists` varchar(40) DEFAULT NULL,
  `AlbumTitle` varchar(40) DEFAULT NULL,
  `Genre` varchar(25) DEFAULT NULL,
  `copiesOnHand` int(20) NOT NULL,
  `AlbumRelease` datetime DEFAULT NULL,
  `AlbumCost` double DEFAULT NULL,
  `TrackAmount` smallint(6) DEFAULT NULL,
  `ProducerFName` varchar(25) DEFAULT NULL,
  `ProducerLName` varchar(35) DEFAULT NULL,
  `InPrint` bit(1) DEFAULT NULL,
  `CoverArt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albumtable`
--

INSERT INTO `albumtable` (`AlbumID`, `ArtistID`, `artists`, `AlbumTitle`, `Genre`, `copiesOnHand`, `AlbumRelease`, `AlbumCost`, `TrackAmount`, `ProducerFName`, `ProducerLName`, `InPrint`, `CoverArt`) VALUES
('1077', '123496', 'Ween', 'The Pod', 'Psychedelic', 20, '1991-09-20 00:00:00', 8, 23, 'Dean and Gene', 'Ween', b'1', 'ThePod.jpeg'),
('1177', '123456', 'Brian Eno', 'Taking Tiger Mountain(By Strategy)', 'Experimental', 15, '1974-11-01 00:00:00', 9, 10, 'Brian', 'Eno', b'1', 'TakingTigerMountain.jpg'),
('1277', '123417', 'Frank Zappa', 'Lumpy Gravy', 'Experimental', 5, '1967-08-07 00:00:00', 5, 10, 'Frank', 'Zappa', b'1', 'LumpyGravy.jpg'),
('1377', '123437', 'Patricia Taxxon', 'Astral', 'Ambient', 8, '2019-01-26 00:00:00', 2, 7, 'Patricia', 'Taxxon', b'1', 'Astral.jpg'),
('1477', '123447', 'Syd Barrett', 'Barrett', 'Rock', 3, '1970-11-14 00:00:00', 6, 11, 'David', 'Gilmour', b'0', 'Barrett.jpg'),
('1577', '123476', 'Miles Davis', 'On the Corner', 'Experimental', 18, '1972-10-11 00:00:00', 10, 4, 'Ted', 'Macero', b'1', 'OnTheCorner.jpg'),
('1677', '123496', 'Ween', 'Pure Guava', 'Rock', 12, '1992-11-10 00:00:00', 6, 19, 'Dean and Gene', 'Ween', b'1', 'PureGuava.jpg'),
('1777', '123427', 'Blur', 'Think Tank', 'Rock', 10, '2003-05-05 00:00:00', 10, 13, 'William', 'Orbit', b'1', 'ThinkTank.jpg'),
('1778', '123437', 'Patricia Taxxon', 'Cicada', 'Ambient', 3, '2017-12-15 00:00:00', 5, 7, 'Patricia', 'Taxxon', b'1', 'Cicada.jpg'),
('1877', '123486', 'King Gizzard and the Wizard Lizard', 'Flying Microtonal Bananna', 'Experimental', 3, '2017-02-24 00:00:00', 5, 9, 'Stu', 'Mackenzie', b'1', 'FlyingMicrotonalBanana.jpg'),
('1977', '123466', 'David Bowie', 'Station to Station', 'Multi', 7, '1967-01-23 00:00:00', 6, 6, 'Harry', 'Maslin', b'1', 'StationToStation.jpg'),
('2077', '123497', 'Bjork', 'Debut', 'Multi', 16, '1993-07-05 00:00:00', 9, 11, 'Nellee', 'Hooper', b'1', 'Debut.jpg'),
('2177', '123497', 'Bjork', 'Post', 'Multi', 14, '1995-06-13 00:00:00', 11, 11, 'Bjork', 'Guðmundsdóttir', b'1', 'Post.png'),
('2277', '123517', 'Kanye West', 'Life of Pablo', 'Hip Hop', 6, '2016-02-14 00:00:00', 15, 20, 'Kanye', 'West', b'1', 'LifeOfPablo.jpg'),
('2377', '123517', 'Kanye West', '808s and Heartbreak', 'Hip Hop', 0, '2008-11-24 00:00:00', 13, 12, 'Kanye', 'West', b'1', '808sAndHeatbreak.jpg'),
('2477', '123527', 'Pink Floyd', 'Meddle', 'Psychedelic', 18, '1971-10-31 00:00:00', 4, 6, 'Pink', 'Floyd', b'1', 'Meddle.jpg'),
('2577', '123527', 'Pink Floyd', 'Piper at the Gates of Dawn', 'Psychedelic', 8, '1967-08-04 00:00:00', 11, 11, 'Norman', 'Smith', b'1', 'PiperAtTheGatesOfDawn.jpg'),
('2677', '123537', 'Gorillaz', 'Demon Days', 'Multi', 4, '2005-05-15 00:00:00', 7.99, 16, 'Danger', 'Mouse', b'1', 'DemonDays.jpg'),
('2777', '123537', 'Gorillaz', 'D Sides', 'Multi', 3, '2007-11-19 00:00:00', 8.99, 11, 'Danger', 'Mouse', b'1', 'D-sides.jpg'),
('2778', '123417', 'Frank Zappa', 'One Size Fits All', 'Multi', 12, '1975-05-25 00:00:00', 12, 9, 'Frank', 'Zappa', b'1', 'OneSizeFitsAll.jpg'),
('2877', '123547', 'Radiohead', 'Ok Computer', 'Experimental', 20, '1997-06-16 00:00:00', 10.99, 12, 'Nigel', 'Godrich', b'1', 'OkComputer.jpg'),
('2977', '123547', 'Radiohead', 'King of Limbs', 'Country', 9, '2011-02-18 00:00:00', 3.99, 8, 'Nigel', 'Godrich', b'0', 'KingOfLimbs.jpg'),
('3077', '123557', 'Todd Rundgren', 'A Wizard, A True Star', 'Rock', 2, '1973-03-02 00:00:00', 7.99, 19, 'Todd', 'Rundgren', b'1', 'AWizardATrueStar.jpg'),
('3177', '123557', 'Todd Rundgren', 'Faithful', 'Rock', 5, '1976-04-01 00:00:00', 13.99, 12, 'Todd', 'Rundgren', b'1', 'Faithful.jpg'),
('3277', '123567', 'Roxy Music', 'Roxy Music', 'Experimental', 1, '1972-06-16 00:00:00', 7.99, 9, 'Roxy', 'Music', b'1', 'RoxyMusic.jpg'),
('3377', '123567', 'Roxy Music', 'For Your Pleasure', 'Experimental', 4, '1972-03-23 00:00:00', 12.99, 8, 'Roxy', 'Music', b'1', 'ForYourPleasure.jpg'),
('3477', '123577', 'Scott Walker', 'Scott 4', 'Soul', 7, '1969-11-01 00:00:00', 4.99, 10, 'John', 'Franz', b'1', 'Scott4.jpg'),
('3577', '123577', 'Scott Walker', 'Nite Flights', 'Experimental', 0, '1978-07-01 00:00:00', 12.99, 10, 'Scott', 'Walker', b'1', 'NiteFlights.jpeg'),
('3677', '123587', 'Can', 'Tago Mago', 'Experimental', 0, '1971-02-01 00:00:00', 6.99, 7, 'The band', 'CAN', b'1', 'TagoMago.jpg'),
('3777', '123587', 'Can', 'Ege Bamyasi', 'Experimental', 14, '1972-11-01 00:00:00', 11.99, 7, 'The band', 'CAN', b'1', 'EgeBamyasi.jpg'),
('3778', '123427', 'Blur', '13', 'Rock', 19, '1999-03-15 00:00:00', 19.99, 13, 'William', 'Orbit', b'1', '13.jpg'),
('3877', '123597', 'The Talking Heads', 'Fear of Music', 'Funk', 16, '1979-08-03 00:00:00', 5.99, 11, 'Brian', 'Eno', b'1', 'FearofMusic.jpg'),
('3977', '123597', 'The Talking Heads', 'Remain in Light', 'Experimental', 11, '1980-10-08 00:00:00', 11, 8, 'Brian', 'Eno', b'1', 'RemainInLight.jpg'),
('4077', '123617', 'Jane\'s Addiction', 'Nothing\'s Shocking', 'Rock', 4, '1988-08-23 00:00:00', 7.99, 11, 'Dave', 'Jerden', b'1', 'NothingsShocking.jpg'),
('4177', '123617', 'Jane\'s Addiction', 'Ritual de la Habitual', 'Rock', 16, '1990-08-21 00:00:00', 10.99, 9, 'Dave', 'Jerden', b'1', 'RitualDeLaHabitual.jfif'),
('4778', '123437', 'Show is the Rainbow', 'Aw Nutz', 'Experimental', 9, '2018-03-03 00:00:00', 8, 9, 'Darren', 'Keen', b'0', 'AwNutz.jpg'),
('5778', '123447', 'Syd Barrett', 'The Madcap Laughs', 'Psychedelic', 11, '1970-01-03 00:00:00', 9, 13, 'David', 'Gilmour', b'1', 'MadcapLaughs.jpg'),
('6778', '123456', 'Brian Eno', 'Another Green World', 'Experimental', 20, '1975-09-01 00:00:00', 10, 14, 'Brian', 'Eno', b'1', 'AnotherGreenWorld.jpg'),
('7778', '123466', 'David Bowie', 'Low', 'Rock', 11, '1977-01-14 00:00:00', 10, 11, 'Tony', 'Visconti', b'1', 'Low.jpg'),
('8778', '123476', 'Miles Davis', 'Bitches Brew', 'Jazz', 17, '1970-03-30 00:00:00', 10, 6, 'Teo', 'Macero', b'1', 'BitchesBrew.jpg'),
('9778', '123486', 'King Gizzard and the Wizard Lizard', 'Nonagon Infinity', 'Rock', 13, '2016-04-29 00:00:00', 15, 9, 'Wayne', 'Gordon', b'1', 'NonagonInfinity.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artisttable`
--

DROP TABLE IF EXISTS `artisttable`;
CREATE TABLE `artisttable` (
  `ArtistID` varchar(10) NOT NULL,
  `ArtistGroup` varchar(40) DEFAULT NULL,
  `ArtistFName` varchar(25) DEFAULT NULL,
  `ArtistLName` varchar(35) DEFAULT NULL,
  `ArtistDebutDate` datetime DEFAULT NULL,
  `ArtistImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artisttable`
--

INSERT INTO `artisttable` (`ArtistID`, `ArtistGroup`, `ArtistFName`, `ArtistLName`, `ArtistDebutDate`, `ArtistImage`) VALUES
('123407', 'Taxxon Patricia', 'Patricia', 'Taxxon', '2015-12-10 00:00:00', 'PatriciaTaxxon.jpg'),
('123417', 'Zappa Frank', 'Frank', 'Zappa', '1966-06-27 00:00:00', 'FrankZappa.jpg'),
('123427', 'Blur', 'Blur', 'Blur', '1991-08-26 00:00:00', 'Blur.png'),
('123437', 'Keen Darren', 'Darren', 'Keen', '2005-02-22 00:00:00', 'DarrenKeen.jpg'),
('123444', 'Primus', 'The band', 'Primus', '1990-02-07 00:00:00', 'Primus.jpg'),
('123447', 'Barrett Syd', 'Syd', 'Barrett', '1967-08-04 00:00:00', 'SydBarrett.png'),
('123456', 'Eno Brian', 'Brian', 'Eno', '1971-06-16 00:00:00', 'BrianEno.jpg'),
('123466', 'Bowie David', 'David', 'Bowie', '1967-01-06 00:00:00', 'DavidBowie.gif'),
('123476', 'Davis Miles', 'Miles', 'Davis', '1953-10-05 00:00:00', 'MilesDavis.jpg'),
('123486', 'King Gizzard and the Lizard Wizard', 'King', 'Gizzard', '2013-02-22 00:00:00', 'KingGizzard.jfif'),
('123496', 'Ween', 'Dean and Gene', 'Ween', '1990-11-16 00:00:00', 'Ween.jpg'),
('123497', 'Bjork', 'Bjork', 'Guðmundsdóttir', '1977-12-01 00:00:00', 'Bjork.jpg'),
('123517', 'Kanye West', 'Kanye', 'West', '2002-12-01 00:00:00', 'KanyeWest.jpg'),
('123527', 'Pink Floyd', 'Pink', 'Floyd', '1966-03-01 00:00:00', 'PinkFloyd.jpg'),
('123537', 'Gorillaz', 'Gorillaz', 'Gorillaz', '2000-11-27 00:00:00', 'Gorillaz.png'),
('123547', 'Radiohead', 'Radio', 'Head', '1991-05-01 00:00:00', 'Radiohead.png'),
('123557', 'Todd Rundgren', 'Todd', 'Rundgren', '1967-01-01 00:00:00', 'ToddRundgren.jpg'),
('123567', 'Roxy Music', 'Roxy', 'Music', '1970-11-01 00:00:00', 'RoxyMusic.jpg'),
('123577', 'Scott Walker', 'Scott', 'Walker', '1967-09-16 00:00:00', 'ScottWalker.jpg'),
('123587', 'CAN', 'The band', 'CAN', '1968-09-01 00:00:00', 'CAN.jpg'),
('123597', 'Talking Heads', 'Talking', 'Heads', '1975-06-05 00:00:00', 'TalkingHeads.jpg'),
('123617', 'Jane\'s Addiction', 'Jane\'s', 'Addiction', '1985-05-01 00:00:00', 'JanesAddiction.jpg'),
('123757', 'The Swans', 'The', 'Swans', '1983-05-27 00:00:00', 'Swans.jpg'),
('123989', 'Wesley Willis', 'Wesley', 'Willis', '1989-06-01 00:00:00', 'WesleyWillis.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customertable`
--

DROP TABLE IF EXISTS `customertable`;
CREATE TABLE `customertable` (
  `customerID` varchar(100) NOT NULL,
  `orderID` varchar(255) DEFAULT NULL,
  `custFName` varchar(255) DEFAULT NULL,
  `custLName` varchar(255) DEFAULT NULL,
  `custEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customertable`
--

INSERT INTO `customertable` (`customerID`, `orderID`, `custFName`, `custLName`, `custEmail`, `password`) VALUES
('787878', 'OH123', 'David', 'Lynch', 'golly@gmail.com', 'I@mYou456'),
('797979', 'OH124', 'The', 'Dude', 'newRug@gmail.com', 'I@mThem678'),
('808080', 'OH134', 'Eddie', 'MoneyMurphy', 'scaryBad@yuck.org', 'I@mWho789'),
('818181', 'OH135', 'David', 'Cross', 'MrShowGuy@CrossWorks.Cross', 'I@mNoOne666');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
CREATE TABLE `ordertable` (
  `orderID` varchar(255) NOT NULL,
  `customerId` varchar(255) DEFAULT NULL,
  `numberOfItems` int(11) DEFAULT NULL,
  `orderShipping` decimal(60,0) DEFAULT NULL,
  `totalSalesPrice` double DEFAULT NULL,
  `purchaseDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`orderID`, `customerId`, `numberOfItems`, `orderShipping`, `totalSalesPrice`, `purchaseDate`) VALUES
('OH123', '787878', 32, '22', 234, '2020-04-01 00:00:00'),
('OH124', '797979', 50, '5', 324, '2020-04-02 00:00:00'),
('OH134', '808080', 4, '7', 22, '2020-03-10 00:00:00'),
('OH135', '818181', 10, '10', 53.4, '2019-05-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tracktable`
--

DROP TABLE IF EXISTS `tracktable`;
CREATE TABLE `tracktable` (
  `TrackTitle` varchar(45) DEFAULT NULL,
  `TrackNumber` smallint(6) DEFAULT NULL,
  `TrackLength` varchar(40) DEFAULT NULL,
  `TrackID` varchar(255) DEFAULT NULL,
  `ArtistID` varchar(10) DEFAULT NULL,
  `AlbumID` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracktable`
--

INSERT INTO `tracktable` (`TrackTitle`, `TrackNumber`, `TrackLength`, `TrackID`, `ArtistID`, `AlbumID`) VALUES
('Demon Sweat', 9, '1899-12-30 04:11:00', '1010999', '123496', '1077'),
('Dr. Rock', 2, '1899-12-30 03:11:00', '1111999', '123496', '1077'),
('Cicada 6', 6, '1899-12-30 07:04:00', '1119998', '123407', '1778'),
('Cicada 2', 2, '1899-12-30 07:20:00', '1212999', '123407', '1778'),
('Bitches Brew', 2, '1899-12-30 23:59:00', '1230983', '123476', '8778'),
('Andy', 8, '1899-12-30 06:04:00', '1313999', '123417', '2778'),
('Tender', 1, '1899-12-30 07:40:00', '1414999', '123427', '3778'),
('Dark Globe', 5, '1899-12-30 02:02:00', '1515999', '123447', '5778'),
('Sky Saw', 1, '1899-12-30 03:25:00', '1616999', '123456', '6778'),
('A New Career in a New Town', 7, '1899-12-30 02:51:00', '1717999', '123466', '7778'),
('Miles Runs the Voodoo Down', 5, '1899-12-30 14:04:00', '1818999', '123476', '8778'),
('Third Uncle', 6, '1899-12-30 04:48:00', '1919999', '123456', '1177'),
('Sombre Reptiles', 8, '1899-12-30 02:26:00', '1928373', '123456', '6778'),
('Mother Whale Eyeless', 4, '1899-12-30 05:45:00', '2020999', '123456', '1177'),
('White Ugliness', 14, '1899-12-30 02:22:00', '2121999', '123417', '1277'),
('King Kong', 18, '1899-12-30 00:43:00', '2222999', '123417', '1277'),
('Inca Roads', 1, '1899-12-30 08:45:00', '2229998', '123417', '2778'),
('Astral 2', 2, '1899-12-30 04:33:00', '2323999', '123407', '1377'),
('Big Fig Wasp', 2, '1899-12-30 04:54:00', '2376459', '123486', '9778'),
('Astral 5', 5, '1899-12-30 03:43:00', '2424999', '123407', '1377'),
('Road Train', 9, '1899-12-30 04:18:00', '2525999', '123486', '9778'),
('Baby Lemonade', 1, '1899-12-30 03:46:00', '2626999', '123447', '1477'),
('Terrapin', 1, '1899-12-30 05:04:00', '2647899', '123447', '5778'),
('Dominoes', 3, '1899-12-30 04:08:00', '2727999', '123447', '1477'),
('On the Corner', 1, '1899-12-30 20:02:00', '2828999', '123476', '1577'),
('Black Satin', 2, '1899-12-30 05:20:00', '2929999', '123476', '1577'),
('Push th\' Little Daises', 5, '1899-12-30 02:48:00', '3030999', '123496', '1677'),
('Poop Ship Destroyer', 19, '1899-12-30 02:16:00', '3131999', '123496', '1677'),
('Crazy Beat', 3, '1899-12-30 03:52:00', '3232999', '123427', '1777'),
('Battery in Your Leg', 13, '1899-12-30 03:20:00', '3333999', '123427', '1777'),
('Bugman', 2, '1899-12-30 04:47:00', '3339998', '123427', '3778'),
('Melting', 2, '1899-12-30 05:27:00', '3434999', '123486', '1877'),
('Nuclear Fusion', 8, '1899-12-30 04:15:00', '3535999', '123486', '1877'),
('Station to Station', 1, '1899-12-30 10:15:00', '3636999', '123466', '1977'),
('TVC 15', 4, '1899-12-30 05:31:00', '3737999', '123466', '1977'),
('Human Behavior', 1, '1899-12-30 04:08:00', '3838999', '123497', '2077'),
('Crying', 2, '1899-12-30 04:49:00', '3939999', '123497', '2077'),
('Army of Me', 1, '1899-12-30 03:54:00', '4040999', '123497', '2177'),
('Isobel', 7, '1899-12-30 05:47:00', '4141999', '123497', '2177'),
('Feedback', 5, '1899-12-30 02:27:00', '4242999', '123517', '2277'),
('Fade', 19, '1899-12-30 03:13:00', '4343999', '123517', '2277'),
('Say You Will', 1, '1899-12-30 06:17:00', '4444999', '123517', '2377'),
('Second Death', 5, '1899-12-30 04:10:00', '4449998', '123437', '4778'),
('Paranoid', 6, '1899-12-30 04:37:00', '4545999', '123517', '2377'),
('Astral 7', 7, '1899-12-30 06:36:00', '4567347', '123407', '1377'),
('Echoes', 6, '1899-12-30 23:31:00', '4646999', '123527', '2477'),
('Fearless', 3, '1899-12-30 06:08:00', '4747999', '123527', '2477'),
('People-Vultures', 4, '1899-12-30 04:45:00', '4759994', '123486', '9778'),
('Pow R. Toc H', 5, '1899-12-30 04:26:00', '4848999', '123527', '2577'),
('Interstellar Overdrive', 7, '1899-12-30 09:41:00', '4949999', '123527', '2577'),
('Kids with Guns', 3, '1899-12-30 03:46:00', '5050999', '123537', '2677'),
('Dare', 12, '1899-12-30 04:04:00', '5151999', '123537', '2677'),
('Hong Kong', 5, '1899-12-30 07:15:00', '5252999', '123537', '2777'),
('Gamma Knife', 3, '1899-12-30 04:21:00', '5298457', '123486', '9778'),
('Bill Murray', 8, '1899-12-30 03:52:00', '5353999', '123537', '2777'),
('Paranoid Android', 2, '1899-12-30 06:23:00', '5454999', '123547', '2877'),
('Fitter Happier', 7, '1899-12-30 01:57:00', '5555999', '123547', '2877'),
('If It\'s in You', 12, '1899-12-30 02:17:00', '5559998', '123447', '5778'),
('Speed of Life', 1, '1899-12-30 02:46:00', '5588746', '123466', '7778'),
('Lotus Flower', 5, '1899-12-30 05:01:00', '5656999', '123547', '2977'),
('Seperator', 8, '1899-12-30 05:20:00', '5757999', '123547', '2977'),
('Just Another Onion Head; Da Da Dali', 10, '1899-12-30 02:23:00', '5858999', '123557', '3077'),
('Sometimes I Don\'t Know What to Feel', 13, '1899-12-30 04:16:00', '5959999', '123557', '3077'),
('Good Vibrations', 2, '1899-12-30 03:44:00', '6060999', '123557', '3177'),
('Rain', 3, '1899-12-30 03:16:00', '6161999', '123557', '3177'),
('Ladytron', 2, '1899-12-30 04:41:00', '6262999', '123567', '3277'),
('If There Is Something', 3, '1899-12-30 06:33:00', '6363999', '123567', '3277'),
('Editions of You', 4, '1899-12-30 03:51:00', '6464999', '123567', '3377'),
('The Bogus Man', 6, '1899-12-30 09:20:00', '6565999', '123567', '3377'),
('The Old Man\'s Back Again', 7, '1899-12-30 03:43:00', '6666999', '123577', '3477'),
('The Big Ship', 5, '1899-12-30 03:01:00', '6669998', '123456', '6778'),
('Get Behind Me', 9, '1899-12-30 03:14:00', '6767999', '123577', '3477'),
('The Electrician', 4, '1899-12-30 06:10:00', '6868999', '123577', '3577'),
('Shutout', 1, '1899-12-30 02:46:00', '6969999', '123577', '3577'),
('Breaking Glass', 2, '1899-12-30 01:51:00', '6993772', '123466', '7778'),
('Hallaluwah', 4, '1899-12-30 18:32:00', '7070999', '123587', '3677'),
('Oh Yeah', 3, '1899-12-30 07:23:00', '7171999', '123587', '3677'),
('Sing Swan Song', 2, '1899-12-30 04:49:00', '7272999', '123587', '3777'),
('Vitamin C', 4, '1899-12-30 03:32:00', '7373999', '123587', '3777'),
('I Zimbra', 1, '1899-12-30 03:09:00', '7474999', '123597', '3877'),
('Memories Can\'t Wait', 6, '1899-12-30 03:30:00', '7575999', '123597', '3877'),
('Once in a Lifetime', 4, '1899-12-30 04:23:00', '7676999', '123597', '3977'),
('Sound and Vision', 4, '1899-12-30 03:03:00', '7779998', '123466', '7778'),
('Mr. Beat', 5, '1899-12-30 04:56:00', '7794563', '123486', '9778'),
('Crosseyed and Painless', 2, '1899-12-30 04:48:00', '7878999', '123597', '3977'),
('Up the Beach', 1, '1899-12-30 03:00:00', '7979999', '123617', '4077'),
('Ocean Size', 2, '1899-12-30 04:20:00', '8080999', '123617', '4077'),
('Had a Dad', 3, '1899-12-30 03:44:00', '8181999', '123617', '4077'),
('Ted, Just Admit It', 4, '1899-12-30 07:23:00', '8282999', '123617', '4077'),
('Standing in the Shower Thinking', 5, '1899-12-30 03:03:00', '8383999', '123617', '4077'),
('Summertime Rolls', 6, '1899-12-30 06:18:00', '8484999', '123617', '4077'),
('Mountain Song', 7, '1899-12-30 04:03:00', '8585999', '123617', '4077'),
('Idiots Rule', 8, '1899-12-30 03:00:00', '8686999', '123617', '4077'),
('Jane Says', 9, '1899-12-30 04:52:00', '8787999', '123617', '4077'),
('Thank You Boys', 10, '1899-12-30 01:01:00', '8888999', '123617', '4077'),
('Pharoah\'s Dance', 1, '1899-12-30 20:00:00', '8889998', '123476', '8778'),
('Pigs in Zen', 11, '1899-12-30 04:03:00', '8989999', '123617', '4077'),
('Three Days', 6, '1899-12-30 10:48:00', '9090999', '123617', '4177'),
('Then She Did', 7, '1899-12-30 08:18:00', '9191999', '123617', '4177'),
('Of Course', 8, '1899-12-30 07:02:00', '9292999', '123617', '4177'),
('Classic Girl', 9, '1899-12-30 05:07:00', '9393999', '123617', '4177'),
('I\'ll Come Running', 6, '1899-12-30 03:48:00', '9407643', '123456', '6778'),
('Octopus', 7, '1899-12-30 03:47:00', '9487623', '123447', '5778'),
('Stop!', 1, '1899-12-30 04:14:00', '9494999', '123617', '4177'),
('No One\'s Leaving', 2, '1899-12-30 03:01:00', '9595999', '123617', '4177'),
('Aint No Right', 3, '1899-12-30 03:34:00', '9696999', '123617', '4177'),
('Obvious', 4, '1899-12-30 03:34:00', '9797999', '123617', '4177'),
('Been Caught Stealing', 5, '1899-12-30 03:34:00', '9898999', '123617', '4177'),
('Golden Hours', 10, '1899-12-30 04:01:00', '9933667', '123456', '6778'),
('Warzawa', 8, '1899-12-30 06:20:00', '9987123', '123466', '7778'),
('Robot Stop', 1, '1899-12-30 05:22:00', '9999998', '123486', '9778');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `UserName` varchar(30) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `UserId` int(4) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `accessCode` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`UserName`, `FirstName`, `LastName`, `Email`, `UserId`, `Password`, `image`, `accessCode`) VALUES
('dannyD', 'danny', 'dannerson', 'dd@dd.com', 1, 'Blehak3o@?!237', 'Images/avatars/cattyping.gif ', 1),
('JElsener', 'Jessie', 'Elsener', 'jessicaclariceelsener@gmail.com', 2, '$2y$10$hdqB2xgIe6fHxwgd2.e0sevEGZCuSiyZJsaOlf.GITc3sAKe9UIfu', 'Images/avatars/il_794xN.1791200330_p6vm.jpg', 2),
('KillUglyRadio', 'Frank', 'Zappa', 'FrankZappa@Iamdead.com', 3, '$2y$10$QppTgRAvvot.B5RUyP8oQud4rGB3AGoeq4UtuXK3tupd2LKahmpaW', 'Images/avatars/81o5+hGVm6L._SX355_.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albumtable`
--
ALTER TABLE `albumtable`
  ADD PRIMARY KEY (`AlbumID`),
  ADD KEY `ArtistNameAndID` (`ArtistID`);

--
-- Indexes for table `artisttable`
--
ALTER TABLE `artisttable`
  ADD PRIMARY KEY (`ArtistID`);

--
-- Indexes for table `customertable`
--
ALTER TABLE `customertable`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `UserId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
