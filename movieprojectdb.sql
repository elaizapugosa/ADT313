-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 06:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `url` varchar(255) NOT NULL,
  `characterName` varchar(120) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `movieId`, `userId`, `name`, `url`, `characterName`, `dateCreated`, `dateUpdated`) VALUES
(1, 38, 1, 'Jim Carrey', 'https://cdn.britannica.com/84/200584-050-7EC3F3F6/Jim-Carrey-2012.jpg', 'Bruce Nolan', '2024-10-21 19:25:43', '0000-00-00 00:00:00'),
(3, 38, 1, 'Jennifer Aniston', 'https://th.bing.com/th/id/OIP.wOueuzErH4ZsOkiVYBRZMgHaLH?w=1600&h=2400&rs=1&pid=ImgDetMain', 'Grace Connelly', '2024-11-27 15:50:07', '0000-00-00 00:00:00'),
(5, 38, 1, 'Morgan Freeman', 'https://images6.fanpop.com/image/photos/40600000/Morgan-Freeman-2009-morgan-freeman-40627129-2790-3906.jpg', 'God', '2024-11-30 12:10:11', '0000-00-00 00:00:00'),
(6, 38, 1, 'Philip Baker Hall', 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/mC1wmuGSCyIQ7ABkfRe1jJV1FGV.jpg', 'Jack Baylor', '2024-12-03 07:45:51', '0000-00-00 00:00:00'),
(7, 38, 1, 'Catherine Bell', 'https://celebmafia.com/wp-content/uploads/2017/06/catherine-bell-cars-3-premiere-in-anaheim-ca-06-10-2017-1.jpg', 'Susan Ortega', '2024-12-03 07:45:52', '0000-00-00 00:00:00'),
(11, 38, 1, 'Lou Felder', 'https://image.tmdb.org/t/p/w200//sRiR1byMvYhcZVl2N9o8ceWJKGk.jpg', 'Pete Fineman', '2024-12-04 17:24:35', '0000-00-00 00:00:00'),
(12, 38, 1, 'Steve Carell', 'https://image.tmdb.org/t/p/w200//1LQDqpcDQTtQb90o9vagbuCHueb.jpg', 'Evan Baxter', '2024-12-04 17:25:47', '0000-00-00 00:00:00'),
(13, 38, 1, 'Nora Dunn', 'https://image.tmdb.org/t/p/w200//x9NAUBciKKxDaYRcntc4vKjqilG.jpg', 'Ally Loman', '2024-12-04 17:26:24', '0000-00-00 00:00:00'),
(15, 38, 1, 'Paul Satterfield', 'https://image.tmdb.org/t/p/w200//n8Id0zf5N9xeqPngA4YtGoPIcMj.jpg', 'Dallas Coleman', '2024-12-05 14:58:08', '0000-00-00 00:00:00'),
(16, 299536, 1, 'Robert Downey Jr.', 'https://image.tmdb.org/t/p/w200//5qHNjhtjMD4YWH3UP0rm4tKwxCL.jpg', 'Tony Stark / Iron Man', '2024-12-05 16:05:47', '0000-00-00 00:00:00'),
(17, 299536, 1, 'Chris Evans', 'https://image.tmdb.org/t/p/w200//3bOGNsHlrswhyW79uvIHH1V43JI.jpg', 'Steve Rogers / Captain America', '2024-12-05 16:06:09', '0000-00-00 00:00:00'),
(18, 299536, 1, 'Chris Hemsworth', 'https://image.tmdb.org/t/p/w200//piQGdoIQOF3C1EI5cbYZLAW1gfj.jpg', 'Thor', '2024-12-05 16:06:13', '0000-00-00 00:00:00'),
(19, 299536, 1, 'Josh Brolin', 'https://image.tmdb.org/t/p/w200//sX2etBbIkxRaCsATyw5ZpOVMPTD.jpg', 'Thanos', '2024-12-05 16:06:16', '0000-00-00 00:00:00'),
(20, 299536, 1, 'Mark Ruffalo', 'https://image.tmdb.org/t/p/w200//5GilHMOt5PAQh6rlUKZzGmaKEI7.jpg', 'Bruce Banner / Hulk', '2024-12-05 16:06:20', '0000-00-00 00:00:00'),
(21, 299536, 1, 'Scarlett Johansson', 'https://image.tmdb.org/t/p/w200//6NsMbJXRlDZuDzatN2akFdGuTvx.jpg', 'Natasha Romanoff / Black Widow', '2024-12-05 16:06:24', '0000-00-00 00:00:00'),
(22, 299536, 1, 'Don Cheadle', 'https://image.tmdb.org/t/p/w200//oZ1u1GmudvUGpbMfi9Hxonzp3lF.jpg', 'James Rhodes / War Machine', '2024-12-05 16:09:50', '0000-00-00 00:00:00'),
(23, 299536, 1, 'Benedict Cumberbatch', 'https://image.tmdb.org/t/p/w200//fBEucxECxGLKVHBznO0qHtCGiMO.jpg', 'Doctor Strange', '2024-12-05 16:09:53', '0000-00-00 00:00:00'),
(24, 299536, 1, 'Tom Holland', 'https://image.tmdb.org/t/p/w200//1d67to0U8bx5jhWTanVx37k6Nd0.jpg', 'Peter Parker / Spider-Man', '2024-12-05 16:09:57', '0000-00-00 00:00:00'),
(25, 299536, 1, 'Chadwick Boseman', 'https://image.tmdb.org/t/p/w200//nL16SKfyP1b7Hk6LsuWiqMfbdb8.jpg', 'T\'Challa / Black Panther', '2024-12-05 16:10:00', '0000-00-00 00:00:00'),
(26, 299536, 1, 'Zoe Saldaña', 'https://image.tmdb.org/t/p/w200//snQ1rfO9Bb2LRG9MAOQnn3JXVHy.jpg', 'Gamora', '2024-12-05 16:10:04', '0000-00-00 00:00:00'),
(27, 299536, 1, 'Karen Gillan', 'https://image.tmdb.org/t/p/w200//kFLXcFdok3ShDxylr3WNreQphQm.jpg', 'Nebula', '2024-12-05 16:10:06', '0000-00-00 00:00:00'),
(28, 299536, 1, 'Tom Hiddleston', 'https://image.tmdb.org/t/p/w200//mclHxMm8aPlCPKptP67257F5GPo.jpg', 'Loki', '2024-12-05 16:10:10', '0000-00-00 00:00:00'),
(29, 299536, 1, 'Paul Bettany', 'https://image.tmdb.org/t/p/w200//oNrDowF5cRtK5lJJuCAh0KeFizy.jpg', 'Vision', '2024-12-05 16:10:13', '0000-00-00 00:00:00'),
(30, 299536, 1, 'Elizabeth Olsen', 'https://image.tmdb.org/t/p/w200//mbMsmQE5CyMVTIGMGCw2XpcPCOc.jpg', 'Wanda Maximoff / Scarlet Witch', '2024-12-05 16:10:16', '0000-00-00 00:00:00'),
(31, 299536, 1, 'Anthony Mackie', 'https://image.tmdb.org/t/p/w200//kDKaBf5GJuK42N9zKeftokcbMap.jpg', 'Sam Wilson / Falcon', '2024-12-05 16:10:19', '0000-00-00 00:00:00'),
(32, 10950, 1, 'Sean Penn', 'https://image.tmdb.org/t/p/w200//lpZRNf56TmPsNNWZ7lhcgFM6rBc.jpg', 'Sam Dawson', '2024-12-05 16:14:08', '0000-00-00 00:00:00'),
(33, 10950, 1, 'Michelle Pfeiffer', 'https://image.tmdb.org/t/p/w200//oGUmQBU87QXAsnaGleYaAjAXSlj.jpg', 'Rita Harrison Williams', '2024-12-05 16:14:11', '0000-00-00 00:00:00'),
(34, 10950, 1, 'Dianne Wiest', 'https://image.tmdb.org/t/p/w200//axqtFLgJNNz0N9i443USHCOvrmY.jpg', 'Annie Cassell', '2024-12-05 16:14:16', '0000-00-00 00:00:00'),
(35, 10950, 1, 'Dakota Fanning', 'https://image.tmdb.org/t/p/w200//hwcO08SVWkelfvgfIa5HsTMxsK8.jpg', 'Lucy Diamond Dawson', '2024-12-05 16:14:23', '0000-00-00 00:00:00'),
(36, 10950, 1, 'Richard Schiff', 'https://image.tmdb.org/t/p/w200//oFDka3Y5H3DBiZRqbdPabtX8ncP.jpg', 'Mr. Turner', '2024-12-05 16:14:27', '0000-00-00 00:00:00'),
(37, 10950, 1, 'Loretta Devine', 'https://image.tmdb.org/t/p/w200//cGTQ0X19bkMWqL6O00JK2t6uJBK.jpg', 'Margaret Calgrove', '2024-12-05 16:14:29', '0000-00-00 00:00:00'),
(38, 10950, 1, 'Marin Hinkle', 'https://image.tmdb.org/t/p/w200//uk58Dpo68zafLnePSEjgK09hM6X.jpg', 'Patricia', '2024-12-05 16:14:32', '0000-00-00 00:00:00'),
(39, 10950, 1, 'Laura Dern', 'https://image.tmdb.org/t/p/w200//gB9PnGEvxKg33OSlcqptQwTBwPE.jpg', 'Randy Carpenter', '2024-12-05 16:14:35', '0000-00-00 00:00:00'),
(40, 402431, 1, 'Cynthia Erivo', 'https://image.tmdb.org/t/p/w200//4cpvSGrJg2hwddkTPMyDKj0c3O.jpg', 'Elphaba Thropp', '2024-12-05 16:21:35', '0000-00-00 00:00:00'),
(41, 402431, 1, 'Ariana Grande', 'https://image.tmdb.org/t/p/w200//cslFyOh3sTWDeWXgsxmjJ1uqE0P.jpg', 'Galinda \'Glinda\' Upland', '2024-12-05 16:21:37', '0000-00-00 00:00:00'),
(42, 402431, 1, 'Jonathan Bailey', 'https://image.tmdb.org/t/p/w200//mZNzekZo8eaHMuXKgDTNLp0EvYM.jpg', 'Fiyero Tigelaar', '2024-12-05 16:21:40', '0000-00-00 00:00:00'),
(43, 402431, 1, 'Michelle Yeoh', 'https://image.tmdb.org/t/p/w200//v74Mkt4dml2LhUv7IfPvBfZFTrV.jpg', 'Madame Morrible', '2024-12-05 16:21:43', '0000-00-00 00:00:00'),
(44, 402431, 1, 'Jeff Goldblum', 'https://image.tmdb.org/t/p/w200//o3PahuK7OmCI0RAQUq38CUBWYZ9.jpg', 'The Wonderful Wizard of Oz', '2024-12-05 16:21:46', '0000-00-00 00:00:00'),
(45, 402431, 1, 'Marissa Bode', 'https://image.tmdb.org/t/p/w200//3ZoBNPpXsM35HrGMkRxU9Ez5YR0.jpg', 'Nessarose Thropp', '2024-12-05 16:21:50', '0000-00-00 00:00:00'),
(46, 402431, 1, 'Ethan Slater', 'https://image.tmdb.org/t/p/w200//xIgqyrM78FPt7Pb2Vv3IvJcnOWS.jpg', 'Boq Woodsman', '2024-12-05 16:21:52', '0000-00-00 00:00:00'),
(47, 402431, 1, 'Bowen Yang', 'https://image.tmdb.org/t/p/w200//lrebxaz4BGJucBW79cakZ0HsSa1.jpg', 'Pfannee', '2024-12-05 16:21:56', '0000-00-00 00:00:00'),
(48, 639720, 1, 'Cailey Fleming', 'https://image.tmdb.org/t/p/w200//yF2p16KK9gFlGnYKd2PLQqwmsek.jpg', 'Bea', '2024-12-05 16:29:25', '0000-00-00 00:00:00'),
(49, 639720, 1, 'Ryan Reynolds', 'https://image.tmdb.org/t/p/w200//6m3hkkHmKkD4MUJhng7ojE7MLKC.jpg', 'Cal', '2024-12-05 16:29:28', '0000-00-00 00:00:00'),
(50, 639720, 1, 'John Krasinski', 'https://image.tmdb.org/t/p/w200//pmVGDb6Yl6OyFcHVGbu1EYNfyFK.jpg', 'Dad / Marshmallow (voice)', '2024-12-05 16:29:31', '0000-00-00 00:00:00'),
(51, 639720, 1, 'Fiona Shaw', 'https://image.tmdb.org/t/p/w200//tjM74LcxwnYM77Csg1EtlXb1F9a.jpg', 'Grandmother', '2024-12-05 16:29:34', '0000-00-00 00:00:00'),
(52, 639720, 1, 'Steve Carell', 'https://image.tmdb.org/t/p/w200//1LQDqpcDQTtQb90o9vagbuCHueb.jpg', 'Blue (voice)', '2024-12-05 16:29:38', '0000-00-00 00:00:00'),
(53, 639720, 1, 'Phoebe Waller-Bridge', 'https://image.tmdb.org/t/p/w200//bkDzGCyE84JpUniL2LP8UKxXGV1.jpg', 'Blossom (voice)', '2024-12-05 16:29:42', '0000-00-00 00:00:00'),
(54, 639720, 1, 'Louis Gossett Jr.', 'https://image.tmdb.org/t/p/w200//27SplfxhM8Do78mYOyi43t1G3fy.jpg', 'Lewis (voice)', '2024-12-05 16:29:45', '0000-00-00 00:00:00'),
(55, 639720, 1, 'Alan Kim', 'https://image.tmdb.org/t/p/w200//mE7eLjp7rRqMTguX2BcLzEiV7RV.jpg', 'Benjamin', '2024-12-05 16:29:49', '0000-00-00 00:00:00'),
(56, 539681, 1, 'Dwayne Johnson', 'https://image.tmdb.org/t/p/w200//5QApZVV8FUFlVxQpIK3Ew6cqotq.jpg', 'Krypto the Superdog (voice)', '2024-12-05 16:31:44', '0000-00-00 00:00:00'),
(57, 539681, 1, 'Kevin Hart', 'https://image.tmdb.org/t/p/w200//byiNydUlM6oP8diA7WMvYbNM7a1.jpg', 'Ace the Bat-Hound (voice)', '2024-12-05 16:31:48', '0000-00-00 00:00:00'),
(58, 539681, 1, 'John Krasinski', 'https://image.tmdb.org/t/p/w200//pmVGDb6Yl6OyFcHVGbu1EYNfyFK.jpg', 'Clark Kent / Superman (voice)', '2024-12-05 16:31:51', '0000-00-00 00:00:00'),
(59, 539681, 1, 'Keanu Reeves', 'https://image.tmdb.org/t/p/w200//4D0PpNI0kmP58hgrwGC3wCjxhnm.jpg', 'Bruce Wayne / Batman (voice)', '2024-12-05 16:31:54', '0000-00-00 00:00:00'),
(60, 539681, 1, 'Kate McKinnon', 'https://image.tmdb.org/t/p/w200//2cNetzianFcxPQbyOQnkAIkKUZE.jpg', 'Lulu (voice)', '2024-12-05 16:31:58', '0000-00-00 00:00:00'),
(61, 539681, 1, 'Vanessa Bayer', 'https://image.tmdb.org/t/p/w200//8IUjlVY8l7S7BEVhfHzKNgVGpUX.jpg', 'PB (voice)', '2024-12-05 16:32:01', '0000-00-00 00:00:00'),
(62, 539681, 1, 'Natasha Lyonne', 'https://image.tmdb.org/t/p/w200//2QJoTBEIeYyjGSDot9qxv2ayPH3.jpg', 'Merton (voice)', '2024-12-05 16:32:03', '0000-00-00 00:00:00'),
(63, 539681, 1, 'Diego Luna', 'https://image.tmdb.org/t/p/w200//lGjCNMB7h4ObMwM0upMiOjZM6mv.jpg', 'Chip (voice)', '2024-12-05 16:32:07', '0000-00-00 00:00:00'),
(64, 539681, 1, 'Jameela Jamil', 'https://image.tmdb.org/t/p/w200//rB3lWcIdcldHJxpVQhwNU2ZwWPS.jpg', 'Diana Prince / Wonder Woman (voice)', '2024-12-05 16:32:11', '0000-00-00 00:00:00'),
(65, 539681, 1, 'Marc Maron', 'https://image.tmdb.org/t/p/w200//2ENNRs7lgbyLfrUN622zRqkYJWL.jpg', 'Lex Luthor (voice)', '2024-12-05 16:32:15', '0000-00-00 00:00:00'),
(66, 539681, 1, 'Dascha Polanco', 'https://image.tmdb.org/t/p/w200//blUbrcKm2ILZZZ1WlQUDZ5rKGF7.jpg', 'Jessica Cruz / Green Lantern (voice)', '2024-12-05 16:32:17', '0000-00-00 00:00:00'),
(67, 539681, 1, 'Olivia Wilde', 'https://image.tmdb.org/t/p/w200//jYopRE6nhYGqpb64fVUKrbJVMy1.jpg', 'Lois Lane (voice)', '2024-12-05 16:32:21', '0000-00-00 00:00:00'),
(68, 429617, 1, 'Tom Holland', 'https://image.tmdb.org/t/p/w200//1d67to0U8bx5jhWTanVx37k6Nd0.jpg', 'Peter Parker / Spider-Man', '2024-12-05 16:35:44', '0000-00-00 00:00:00'),
(69, 429617, 1, 'Jake Gyllenhaal', 'https://image.tmdb.org/t/p/w200//rJdYHYNhlcOBwbPvDZVvt1xw7bi.jpg', 'Quentin Beck / Mysterio', '2024-12-05 16:35:46', '0000-00-00 00:00:00'),
(70, 429617, 1, 'Samuel L. Jackson', 'https://image.tmdb.org/t/p/w200//AiAYAqwpM5xmiFrAIeQvUXDCVvo.jpg', 'Nick Fury', '2024-12-05 16:35:50', '0000-00-00 00:00:00'),
(71, 429617, 1, 'Marisa Tomei', 'https://image.tmdb.org/t/p/w200//5w6qM8FWsl5SutKSpx6Va64eCTE.jpg', 'May Parker', '2024-12-05 16:35:53', '0000-00-00 00:00:00'),
(72, 429617, 1, 'Jon Favreau', 'https://image.tmdb.org/t/p/w200//tnx7iMVydPQXGOoLsxXl84PXtbA.jpg', 'Happy Hogan', '2024-12-05 16:35:57', '0000-00-00 00:00:00'),
(73, 429617, 1, 'Zendaya', 'https://image.tmdb.org/t/p/w200//tylFh0K48CZIIhvKlA7WA1XBAtE.jpg', 'MJ', '2024-12-05 16:36:00', '0000-00-00 00:00:00'),
(74, 429617, 1, 'Jacob Batalon', 'https://image.tmdb.org/t/p/w200//53YhaL4xw4Sb1ssoHkeSSBaO29c.jpg', 'Ned Leeds', '2024-12-05 16:36:03', '0000-00-00 00:00:00'),
(75, 429617, 1, 'Tony Revolori', 'https://image.tmdb.org/t/p/w200//tSF6XmXDikrKZbFUeoDnafXxKjT.jpg', 'Flash Thompson', '2024-12-05 16:36:05', '0000-00-00 00:00:00'),
(77, 76600, 1, 'Sam Worthington', 'https://image.tmdb.org/t/p/w200//mflBcox36s9ZPbsZPVOuhf6axaJ.jpg', 'Jake Sully', '2024-12-05 16:40:24', '0000-00-00 00:00:00'),
(78, 76600, 1, 'Zoe Saldaña', 'https://image.tmdb.org/t/p/w200//snQ1rfO9Bb2LRG9MAOQnn3JXVHy.jpg', 'Neytiri', '2024-12-05 16:40:27', '0000-00-00 00:00:00'),
(79, 76600, 1, 'Sigourney Weaver', 'https://image.tmdb.org/t/p/w200//wTSnfktNBLd6kwQxgvkqYw6vEon.jpg', 'Kiri', '2024-12-05 16:40:30', '0000-00-00 00:00:00'),
(80, 76600, 1, 'Stephen Lang', 'https://image.tmdb.org/t/p/w200//xEBuFWrCKDQD6r6CZK71GYIc4UW.jpg', 'Colonel Miles Quaritch', '2024-12-05 16:40:33', '0000-00-00 00:00:00'),
(81, 76600, 1, 'Kate Winslet', 'https://image.tmdb.org/t/p/w200//zIiU5mOcinbkpHWCxuDigucsyZC.jpg', 'Ronal', '2024-12-05 16:40:36', '0000-00-00 00:00:00'),
(82, 76600, 1, 'Cliff Curtis', 'https://image.tmdb.org/t/p/w200//3D6qz8vL6DWHAO3HeXeaSuwxq3s.jpg', 'Tonowari', '2024-12-05 16:40:40', '0000-00-00 00:00:00'),
(83, 76600, 1, 'Joel David Moore', 'https://image.tmdb.org/t/p/w200//mMVhVglj6BZFuvqAXnEibce08k7.jpg', 'Norm Spellman', '2024-12-05 16:40:43', '0000-00-00 00:00:00'),
(84, 76600, 1, 'CCH Pounder', 'https://image.tmdb.org/t/p/w200//vJ5Swy2WDBC46zJrbJmwsGgTPJ2.jpg', 'Mo\'at', '2024-12-05 16:40:45', '0000-00-00 00:00:00'),
(85, 1241982, 1, 'Auliʻi Cravalho', 'https://image.tmdb.org/t/p/w200//vEroqcnM2g6yY7qXDAie7hx2Cyp.jpg', 'Moana (voice)', '2024-12-05 16:43:27', '0000-00-00 00:00:00'),
(86, 1241982, 1, 'Dwayne Johnson', 'https://image.tmdb.org/t/p/w200//5QApZVV8FUFlVxQpIK3Ew6cqotq.jpg', 'Maui (voice)', '2024-12-05 16:43:30', '0000-00-00 00:00:00'),
(87, 1241982, 1, 'Hualālai Chung', 'https://image.tmdb.org/t/p/w200//x2g5fdHqETY9dZgL4aB0QDP0boR.jpg', 'Moni (voice)', '2024-12-05 16:43:32', '0000-00-00 00:00:00'),
(88, 1241982, 1, 'Rose Matafeo', 'https://image.tmdb.org/t/p/w200//zQa39fMjbOTIsovbh1TBTJVlToz.jpg', 'Loto (voice)', '2024-12-05 16:43:36', '0000-00-00 00:00:00'),
(89, 1241982, 1, 'David Fane', 'https://image.tmdb.org/t/p/w200//tcozyaTgAa8rRmzc5qeht0loni6.jpg', 'Kele (voice)', '2024-12-05 16:43:39', '0000-00-00 00:00:00'),
(90, 1241982, 1, 'Awhimai Fraser', 'https://image.tmdb.org/t/p/w200//276OUDPl2iIsz772HQw3tiz2JN2.jpg', 'Matangi (voice)', '2024-12-05 16:43:42', '0000-00-00 00:00:00'),
(91, 1241982, 1, 'Khaleesi Lambert-Tsuda', 'https://image.tmdb.org/t/p/w200//3LHXDjy9UijbtR7X2EReX5H57kk.jpg', 'Simea (voice)', '2024-12-05 16:43:45', '0000-00-00 00:00:00'),
(92, 1241982, 1, 'Temuera Morrison', 'https://image.tmdb.org/t/p/w200//1ckHDFgKXJ8pazmvLCW7DeOKqA0.jpg', 'Chief Tui (voice)', '2024-12-05 16:43:47', '0000-00-00 00:00:00'),
(93, 810693, 1, 'Megumi Ogata', 'https://image.tmdb.org/t/p/w200//eNdfMUyZgG5P4TNIZpbTAu8gBs9.jpg', 'Yuta Okkotsu (voice)', '2024-12-05 17:12:37', '0000-00-00 00:00:00'),
(94, 810693, 1, 'Kana Hanazawa', 'https://image.tmdb.org/t/p/w200//rYbVloKRRK3gRTVAf3Mbj9xak4Z.jpg', 'Rika Orimoto (voice)', '2024-12-05 17:12:40', '0000-00-00 00:00:00'),
(95, 810693, 1, 'Yuichi Nakamura', 'https://image.tmdb.org/t/p/w200//wb8behVKjBHX9XXrEydvNINCYwH.jpg', 'Satoru Gojo (voice)', '2024-12-05 17:12:43', '0000-00-00 00:00:00'),
(96, 810693, 1, 'Takahiro Sakurai', 'https://image.tmdb.org/t/p/w200//8s8owcKmpRAuhzEGjSdRpztthUg.jpg', 'Suguru Geto (voice)', '2024-12-05 17:12:45', '0000-00-00 00:00:00'),
(97, 810693, 1, 'Mikako Komatsu', 'https://image.tmdb.org/t/p/w200//13tQEZ1tLdOmi7oGoRJ4xep1ODQ.jpg', 'Maki Zen\'in (voice)', '2024-12-05 17:12:49', '0000-00-00 00:00:00'),
(98, 810693, 1, 'Koki Uchiyama', 'https://image.tmdb.org/t/p/w200//sllSm3iZZWVLTBrDZQRtWrZUfEj.jpg', 'Toge Inumaki (voice)', '2024-12-05 17:12:52', '0000-00-00 00:00:00'),
(99, 810693, 1, 'Tomokazu Seki', 'https://image.tmdb.org/t/p/w200//4N6i4cgtbeUj5AJd8kiBZ2BxxEJ.jpg', 'Panda (voice)', '2024-12-05 17:12:55', '0000-00-00 00:00:00'),
(100, 810693, 1, 'Mitsuo Iwata', 'https://image.tmdb.org/t/p/w200//xCAsuzc5OBQZWhG5WSZIyhBZ7xj.jpg', 'Kiyotaka Ijichi (voice)', '2024-12-05 17:12:57', '0000-00-00 00:00:00'),
(101, 810693, 1, 'Takaya Kuroda', 'https://image.tmdb.org/t/p/w200//7UH1DDjoF7x4b9pOT4bLF9ew8Uq.jpg', 'Masamichi Yaga (voice)', '2024-12-05 17:13:01', '0000-00-00 00:00:00'),
(102, 810693, 1, 'Risae Matsuda', 'https://image.tmdb.org/t/p/w200//7bUMIZ3S1Wc73d5wgNCyiLYUhyU.jpg', 'Mimiko Hasaba (voice)', '2024-12-05 17:13:04', '0000-00-00 00:00:00'),
(103, 810693, 1, 'Satsumi Matsuda', 'https://image.tmdb.org/t/p/w200//2t35t5W2hyBD0eQGCpJcG4m4zHh.jpg', 'Nanako Hasaba (voice)', '2024-12-05 17:13:07', '0000-00-00 00:00:00'),
(104, 810693, 1, 'Shizuka Itoh', 'https://image.tmdb.org/t/p/w200//n47YvFPlJzl8HnsoDBtM8SUqG8q.jpg', 'Manami Suda (voice)', '2024-12-05 17:13:10', '0000-00-00 00:00:00'),
(105, 347183, 1, 'Ayumu Murase', 'https://image.tmdb.org/t/p/w200//3aGM6KpcCIEKOXP9510tzaKc8uw.jpg', 'Shoyo Hinata (voice)', '2024-12-05 17:52:15', '0000-00-00 00:00:00'),
(106, 347183, 1, 'Kaito Ishikawa', 'https://image.tmdb.org/t/p/w200//fzjIkotjUHHs3wgftM9tqdsG8ph.jpg', 'Tobio Kageyama (voice)', '2024-12-05 17:52:18', '0000-00-00 00:00:00'),
(107, 347183, 1, 'Koki Uchiyama', 'https://image.tmdb.org/t/p/w200//sllSm3iZZWVLTBrDZQRtWrZUfEj.jpg', 'Kei Tsukishima (voice)', '2024-12-05 17:52:21', '0000-00-00 00:00:00'),
(108, 347183, 1, 'Soma Saito', 'https://image.tmdb.org/t/p/w200//8W8Y02Jmjivw0kk5PDih9dqiyd9.jpg', 'Tadashi Yamaguchi (voice)', '2024-12-05 17:52:24', '0000-00-00 00:00:00'),
(109, 347183, 1, 'Nobuhiko Okamoto', 'https://image.tmdb.org/t/p/w200//41BGKnwmE2573X2ve9rGXeLw3oW.jpg', 'Yu Nishinoya (voice)', '2024-12-05 17:52:28', '0000-00-00 00:00:00'),
(110, 347183, 1, 'Toshiki Masuda', 'https://image.tmdb.org/t/p/w200//oMAk5Pu3aazmwFwiVOgyU7iW5ut.jpg', 'Chikara Ennoshita (voice)', '2024-12-05 17:52:30', '0000-00-00 00:00:00'),
(111, 347183, 1, 'Yuu Hayashi', 'https://image.tmdb.org/t/p/w200//tCABSsjU9fWZqTtOAGTGcUnEF2p.jpg', 'Ryunosuke Tanaka (voice)', '2024-12-05 17:52:33', '0000-00-00 00:00:00'),
(112, 347183, 1, 'Miyu Irino', 'https://image.tmdb.org/t/p/w200//8qEEhHUObNvGQr4e6eqLu5z4qTz.jpg', 'Koshi Sugawara (voice)', '2024-12-05 17:52:36', '0000-00-00 00:00:00'),
(113, 1012201, 1, 'Ayumu Murase', 'https://image.tmdb.org/t/p/w200//3aGM6KpcCIEKOXP9510tzaKc8uw.jpg', 'Shoyo Hinata (voice)', '2024-12-05 17:55:19', '0000-00-00 00:00:00'),
(114, 1012201, 1, 'Kaito Ishikawa', 'https://image.tmdb.org/t/p/w200//fzjIkotjUHHs3wgftM9tqdsG8ph.jpg', 'Tobio Kageyama (voice)', '2024-12-05 17:55:22', '0000-00-00 00:00:00'),
(115, 1012201, 1, 'Yuki Kaji', 'https://image.tmdb.org/t/p/w200//8wKdPV11IwowfwoqGqMMNt9hmp6.jpg', 'Kenma Kozume (voice)', '2024-12-05 17:55:29', '0000-00-00 00:00:00'),
(116, 1012201, 1, 'Yuichi Nakamura', 'https://image.tmdb.org/t/p/w200//wb8behVKjBHX9XXrEydvNINCYwH.jpg', 'Tetsuro Kuroo (voice)', '2024-12-05 17:55:32', '0000-00-00 00:00:00'),
(117, 1012201, 1, 'Koki Uchiyama', 'https://image.tmdb.org/t/p/w200//sllSm3iZZWVLTBrDZQRtWrZUfEj.jpg', 'Kei Tsukishima (voice)', '2024-12-05 17:55:36', '0000-00-00 00:00:00'),
(118, 1012201, 1, 'Satoshi Hino', 'https://image.tmdb.org/t/p/w200//8ZJIiwIVF2zDyyFr7oXewj0eEuu.jpg', 'Daichi Sawamura (voice)', '2024-12-05 17:55:39', '0000-00-00 00:00:00'),
(119, 1012201, 1, 'Yuu Hayashi', 'https://image.tmdb.org/t/p/w200//tCABSsjU9fWZqTtOAGTGcUnEF2p.jpg', 'Ryunosuke Tanaka (voice)', '2024-12-05 17:55:43', '0000-00-00 00:00:00'),
(120, 1012201, 1, 'Nobuhiko Okamoto', 'https://image.tmdb.org/t/p/w200//41BGKnwmE2573X2ve9rGXeLw3oW.jpg', 'Yu Nishinoya (voice)', '2024-12-05 17:55:47', '0000-00-00 00:00:00'),
(121, 593961, 1, 'Kathryn Bernardo', 'https://image.tmdb.org/t/p/w200//asUDwi9gHO8YlgvvCRrTP5qa5fx.jpg', 'Joy Fabregas', '2024-12-05 18:00:07', '0000-00-00 00:00:00'),
(122, 593961, 1, 'Alden Richards', 'https://image.tmdb.org/t/p/w200//mNppSbvS4CrYKTxeSuBbj8Zw6eg.jpg', 'Ethan Del Rosario', '2024-12-05 18:00:10', '0000-00-00 00:00:00'),
(123, 593961, 1, 'Maymay Entrata', 'https://image.tmdb.org/t/p/w200//if4VozZeroomnMaEc83hYzSeLzL.jpg', 'Mary Dale Fabregas', '2024-12-05 18:00:12', '0000-00-00 00:00:00'),
(124, 593961, 1, 'Maricel Laxa', 'https://image.tmdb.org/t/p/w200//7ipJWfFyvjskPjyvWPh1lUHnVWF.jpg', 'Joy\'s mother', '2024-12-05 18:00:15', '0000-00-00 00:00:00'),
(125, 593961, 1, 'Jameson Blake', 'https://image.tmdb.org/t/p/w200//1g5yjfQETXEjhNdMNOrdEiNk1iE.jpg', 'Edward Del Rosario', '2024-12-05 18:00:18', '0000-00-00 00:00:00'),
(126, 593961, 1, 'Kakai Bautista', 'https://image.tmdb.org/t/p/w200//49F5z1KNxjOl7Fn9JuWPgRfm1HV.jpg', 'Sally', '2024-12-05 18:00:21', '0000-00-00 00:00:00'),
(127, 593961, 1, 'Joross Gamboa', 'https://image.tmdb.org/t/p/w200//7WGlXF3BVqIELaxiKYRdU7M1iYE.jpg', 'Jhim', '2024-12-05 18:00:24', '0000-00-00 00:00:00'),
(128, 593961, 1, 'Lito Pimentel', 'https://image.tmdb.org/t/p/w200//4EXaZRbX33BTedj4h7hLp49LBxs.jpg', 'Ethan\'s father', '2024-12-05 18:00:27', '0000-00-00 00:00:00'),
(129, 593961, 1, 'Lovely Abella', 'https://image.tmdb.org/t/p/w200//38owecCElNnQDW2jR5CL8E3DxY2.jpg', 'Gina', '2024-12-05 18:00:31', '0000-00-00 00:00:00'),
(130, 593961, 1, 'Jeffrey Tam', 'https://image.tmdb.org/t/p/w200//ra3qC7JBVbVjE9R2N1qHJmxdVPp.jpg', 'Carlo', '2024-12-05 18:00:34', '0000-00-00 00:00:00'),
(131, 593961, 1, 'Wilbert Ross', 'https://image.tmdb.org/t/p/w200//uboxvkoki8yY80jX245uspyhXjo.jpg', 'Joey Fabregas', '2024-12-05 18:00:41', '0000-00-00 00:00:00'),
(132, 593961, 1, 'Jerome Ponce', 'https://image.tmdb.org/t/p/w200//zgM7uhD8JNHgdpDyffMnN9G3ETW.jpg', 'JM', '2024-12-05 18:00:44', '0000-00-00 00:00:00'),
(133, 399566, 1, 'Alexander Skarsgård', 'https://image.tmdb.org/t/p/w200//eOZtchOOkk8Q65Dyg6Hn2tbeMmf.jpg', 'Nathan Lind', '2024-12-05 18:07:07', '0000-00-00 00:00:00'),
(134, 399566, 1, 'Rebecca Hall', 'https://image.tmdb.org/t/p/w200//cVZaQrUY7F5khCBYdKDlEppHnQi.jpg', 'Ilene Andrews', '2024-12-05 18:07:10', '0000-00-00 00:00:00'),
(135, 399566, 1, 'Kaylee Hottle', 'https://image.tmdb.org/t/p/w200//xpQQZgptOUI6duMMBDyCiaJ4JUv.jpg', 'Jia', '2024-12-05 18:07:13', '0000-00-00 00:00:00'),
(136, 399566, 1, 'Brian Tyree Henry', 'https://image.tmdb.org/t/p/w200//2MsJh0bpyzwvOUnXOltHp3j85Pb.jpg', 'Bernie Hayes', '2024-12-05 18:07:16', '0000-00-00 00:00:00'),
(137, 399566, 1, 'Millie Bobby Brown', 'https://image.tmdb.org/t/p/w200//kHO7hdNEVuTnQ0OjjrxP1RcAa0e.jpg', 'Madison Russell', '2024-12-05 18:07:20', '0000-00-00 00:00:00'),
(138, 399566, 1, 'Julian Dennison', 'https://image.tmdb.org/t/p/w200//jp1phhrj8lT4NWQpztqi0FmM94i.jpg', 'Josh Valentine', '2024-12-05 18:07:22', '0000-00-00 00:00:00'),
(139, 399566, 1, 'Demián Bichir', 'https://image.tmdb.org/t/p/w200//sw8TqPQLbMMgLbkNNUIW649THWJ.jpg', 'Walter Simmons', '2024-12-05 18:07:26', '0000-00-00 00:00:00'),
(140, 399566, 1, 'Eiza González', 'https://image.tmdb.org/t/p/w200//w2pZ8gLqZNguj8cqrDGbMw2Ibj0.jpg', 'Maia Simmons', '2024-12-05 18:07:28', '0000-00-00 00:00:00'),
(141, 672, 1, 'Daniel Radcliffe', 'https://image.tmdb.org/t/p/w200//iPg0J9UzAlPj1fLEJNllpW9IhGe.jpg', 'Harry Potter', '2024-12-05 18:13:04', '0000-00-00 00:00:00'),
(142, 672, 1, 'Rupert Grint', 'https://image.tmdb.org/t/p/w200//iFlkpTaOF6fGLqxz8b0PhI0i0zN.jpg', 'Ron Weasley', '2024-12-05 18:13:07', '0000-00-00 00:00:00'),
(143, 672, 1, 'Emma Watson', 'https://image.tmdb.org/t/p/w200//A14lLCZYDhfYdBa0fFRpwMDiwRN.jpg', 'Hermione Granger', '2024-12-05 18:13:09', '0000-00-00 00:00:00'),
(144, 672, 1, 'Kenneth Branagh', 'https://image.tmdb.org/t/p/w200//AbCqqFxNi5w3nDUFdQt0DGMFh5H.jpg', 'Gilderoy Lockhart', '2024-12-05 18:13:12', '0000-00-00 00:00:00'),
(145, 672, 1, 'Toby Jones', 'https://image.tmdb.org/t/p/w200//1qNisdp4f1KstdfvAgYXMdrhwfk.jpg', 'Dobby (voice)', '2024-12-05 18:13:14', '0000-00-00 00:00:00'),
(146, 672, 1, 'Robbie Coltrane', 'https://image.tmdb.org/t/p/w200//jOHs3xvlwRiiG2CLtso5zzmGCXg.jpg', 'Rubeus Hagrid', '2024-12-05 18:13:17', '0000-00-00 00:00:00'),
(147, 672, 1, 'Richard Harris', 'https://image.tmdb.org/t/p/w200//cYgP5An0cOyzQZKuYMR3Dm2yAyb.jpg', 'Albus Dumbledore', '2024-12-05 18:13:20', '0000-00-00 00:00:00'),
(148, 672, 1, 'Alan Rickman', 'https://image.tmdb.org/t/p/w200//nKl8ZRYjBJya7aj7phJUyrtSll6.jpg', 'Severus Snape', '2024-12-05 18:13:23', '0000-00-00 00:00:00'),
(149, 10191, 1, 'Jay Baruchel', 'https://image.tmdb.org/t/p/w200//1GYJeQzPcY9Pfmc3FFsBwClkCv7.jpg', 'Hiccup (voice)', '2024-12-05 18:18:30', '0000-00-00 00:00:00'),
(150, 10191, 1, 'Gerard Butler', 'https://image.tmdb.org/t/p/w200//rTO5opVC3Gs6hPYAxWSP9eEjogi.jpg', 'Stoick (voice)', '2024-12-05 18:18:32', '0000-00-00 00:00:00'),
(151, 10191, 1, 'Craig Ferguson', 'https://image.tmdb.org/t/p/w200//mBxNrOxdQeM7bVBveE47Syj9ES6.jpg', 'Gobber (voice)', '2024-12-05 18:18:36', '0000-00-00 00:00:00'),
(152, 10191, 1, 'America Ferrera', 'https://image.tmdb.org/t/p/w200//7F84Lh2lKpvkM3EiOvqqvlOmw93.jpg', 'Astrid (voice)', '2024-12-05 18:18:38', '0000-00-00 00:00:00'),
(153, 10191, 1, 'Jonah Hill', 'https://image.tmdb.org/t/p/w200//cymlWttB83MsAGR2EkTgANtjeRH.jpg', 'Snotlout (voice)', '2024-12-05 18:18:42', '0000-00-00 00:00:00'),
(154, 10191, 1, 'Christopher Mintz-Plasse', 'https://image.tmdb.org/t/p/w200//dnj2qyxmPt5JF5uurbXQLegppAx.jpg', 'Fishlegs (voice)', '2024-12-05 18:18:44', '0000-00-00 00:00:00'),
(155, 10191, 1, 'T.J. Miller', 'https://image.tmdb.org/t/p/w200//rRrVvBxOkyYM5XdLXimShHR1Itn.jpg', 'Tuffnut (voice)', '2024-12-05 18:18:47', '0000-00-00 00:00:00'),
(156, 10191, 1, 'Kristen Wiig', 'https://image.tmdb.org/t/p/w200//N517EQh7j4mNl3BStMmjMN6hId.jpg', 'Ruffnut (voice)', '2024-12-05 18:18:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `tmdbId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `overview` text NOT NULL,
  `popularity` float NOT NULL,
  `releaseDate` date NOT NULL,
  `voteAverage` float NOT NULL,
  `backdropPath` varchar(255) NOT NULL,
  `posterPath` varchar(255) NOT NULL,
  `isFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `userId`, `tmdbId`, `title`, `overview`, `popularity`, `releaseDate`, `voteAverage`, `backdropPath`, `posterPath`, `isFeatured`, `dateCreated`, `dateUpdated`) VALUES
(1, 1, 38, 'Bruce Almighty', '\"Bruce Nolan toils as a \"human interest\" television reporter in Buffalo, NY, but despite his high ratings and the love of his beautiful girlfriend, Bruce remains unfulfilled. At the end of the worst day in his life, he angrily ridicules God - and the Almighty responds, endowing Bruce with all of His divine powers.', 57.52, '2003-05-23', 6.715, 'uploads/backdrop1727345404.jpg', 'https://image.tmdb.org/t/p/original//3XJKBKh9Km89EoUEitVTSnrlAkZ.jpg', 0, '2024-09-26 09:53:29', '0000-00-00 00:00:00'),
(2, 1, 299536, 'Avengers: Infinity War', 'As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment - the fate of Earth and existence itself has never been more uncertain.', 253.375, '2018-04-25', 8.243, 'https://image.tmdb.org/t/p/original//mDfJG3LC3Dqb67AZ52x3Z0jU0uB.jpg', 'https://image.tmdb.org/t/p/original//7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', 0, '2024-10-25 04:58:08', '0000-00-00 00:00:00'),
(12, 1, 10950, 'I Am Sam', 'Sam, a neurodivergent man, has a daughter with a homeless woman who abandons them when they leave the hospital, leaving Sam to raise Lucy on his own. But as Lucy grows up, Sam\'s limitations as a parent start to become a problem and the authorities take her away. Sam convinces high-priced lawyer Rita to take his case pro bono and in turn teaches her the value of love and family.', 33.775, '2001-12-28', 7.6, 'https://image.tmdb.org/t/p/original//opPxzpbASiXHX7jlMwSepLs9zcq.jpg', 'https://image.tmdb.org/t/p/original//wSgAn3zhgwuTOhhvvqcdxVqTLts.jpg', 0, '2024-11-26 15:08:36', '0000-00-00 00:00:00'),
(15, 1, 402431, 'Wicked', 'Elphaba, a young woman misunderstood because of her green skin, and Glinda, a popular aristocrat gilded by privilege, become unlikely friends in the fantastical Land of Oz. As the two women struggle with their opposing personalities, their friendship is tested as both begin to fulfill their destinies as Glinda the Good and the Wicked Witch of the West.', 1477.86, '2024-11-20', 7.8, 'https://image.tmdb.org/t/p/original//w22GVYotTIVC1dUd58mRhwPqiS.jpg', 'https://image.tmdb.org/t/p/original//c5Tqxeo1UpBvnAc3csUm7j3hlQl.jpg', 0, '2024-11-26 15:11:19', '0000-00-00 00:00:00'),
(17, 1, 639720, 'IF', 'After discovering she can see everyone\'s imaginary friends, a girl embarks on a magical adventure to reconnect forgotten imaginary friends with their kids.', 259.137, '2024-05-08', 7.276, 'https://image.tmdb.org/t/p/original//nxxCPRGTzxUH8SFMrIsvMmdxHti.jpg', 'https://image.tmdb.org/t/p/original//xbKFv4KF3sVYuWKllLlwWDmuZP7.jpg', 0, '2024-11-26 15:30:17', '0000-00-00 00:00:00'),
(18, 1, 539681, 'DC League of Super-Pets', 'When Superman and the rest of the Justice League are kidnapped, Krypto the Super-Dog must convince a rag-tag shelter pack - Ace the hound, PB the potbellied pig, Merton the turtle and Chip the squirrel - to master their own newfound powers and help him rescue the superheroes.', 29.371, '2022-07-27', 7.2, 'https://image.tmdb.org/t/p/original//tecCZQA0E3qHSPOTUMj3YQniT4.jpg', 'https://image.tmdb.org/t/p/original//qpPMewlugFaejXjz4YNDnpTniFX.jpg', 0, '2024-11-26 15:53:44', '0000-00-00 00:00:00'),
(20, 1, 429617, 'Spider-Man: Far From Home', 'Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to agree to help Nick Fury uncover the mystery of creatures that cause natural disasters and destruction throughout the continent.', 81.006, '2019-06-28', 7.422, 'https://image.tmdb.org/t/p/original//34jW8LvjRplM8Pv06cBFDpLlenR.jpg', 'https://image.tmdb.org/t/p/original//4q2NNj4S5dG2RLF9CpXsej7yXl.jpg', 0, '2024-12-05 16:03:03', '0000-00-00 00:00:00'),
(21, 1, 76600, 'Avatar: The Way of Water', 'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.', 158.187, '2022-12-14', 7.6, 'https://image.tmdb.org/t/p/original//8rpDcsfLJypbO6vREc0547VKqEv.jpg', 'https://image.tmdb.org/t/p/original//t6HIqrRAclMCA60NsSmeqe9RmNV.jpg', 0, '2024-12-05 16:03:32', '0000-00-00 00:00:00'),
(22, 1, 1241982, 'Moana 2', 'After receiving an unexpected call from her wayfinding ancestors, Moana journeys alongside Maui and a new crew to the far seas of Oceania and into dangerous, long-lost waters for an adventure unlike anything she\'s ever faced.', 5883.76, '2024-11-27', 6.946, 'https://image.tmdb.org/t/p/original//tElnmtQ6yz1PjN1kePNl8yMSb59.jpg', 'https://image.tmdb.org/t/p/original//yh64qw9mgXBvlaWDi7Q9tpUBAvH.jpg', 0, '2024-12-05 16:04:26', '0000-00-00 00:00:00'),
(23, 1, 810693, '劇場版 呪術廻戦 0', 'Yuta Okkotsu is a nervous high school student who is suffering from a serious problem—his childhood friend Rika has turned into a curse and won\'t leave him alone. Since Rika is no ordinary curse, his plight is noticed by Satoru Gojo, a teacher at Jujutsu High, a school where fledgling exorcists learn how to combat curses. Gojo convinces Yuta to enroll, but can he learn enough in time to confront the curse that haunts him?', 57.956, '2021-12-24', 8.168, 'https://image.tmdb.org/t/p/original//921vUyXdfIYpaXqu5Lnf3nVb4IJ.jpg', 'https://image.tmdb.org/t/p/original//23oJaeBh0FDk2mQ2P240PU9Xxfh.jpg', 0, '2024-12-05 17:12:18', '0000-00-00 00:00:00'),
(25, 1, 1012201, '劇場版ハイキュー!! ゴミ捨て場の決戦', 'Shoyo Hinata joins Karasuno High\'s volleyball club to be like his idol, a former Karasuno player known as the \'Little Giant\'. But Hinata soon learns that he must team up with his middle school nemesis, Tobio Kageyama. Their clashing styles form a surprising weapon, but can their newfound teamwork defeat their rival Nekoma High in the highly anticipated \'Dumpster Battle\', the long awaited ultimate showdown between two opposing underdog teams?', 63.336, '2024-02-16', 7.466, 'https://image.tmdb.org/t/p/original//xMM0RE6WjfmZKtffj2JReMjNhDC.jpg', 'https://image.tmdb.org/t/p/original//ntRU0OA4etGGiMMmH1Yw0bnaMdW.jpg', 0, '2024-12-05 17:54:53', '0000-00-00 00:00:00'),
(26, 1, 593961, 'Hello, Love, Goodbye', 'A bartender and a domestic helper of Filipino origin living in Hong Kong find themselves falling in love, but they each have different plans for their future.', 17.662, '2019-07-31', 6.3, 'https://image.tmdb.org/t/p/original//ptijXES6uMuKfKolTbAeV2LvEVN.jpg', 'https://image.tmdb.org/t/p/original//sJFouUfCgHFSUh5OKVSQBSfrfA1.jpg', 0, '2024-12-05 17:59:47', '0000-00-00 00:00:00'),
(27, 1, 399566, 'Godzilla vs. Kong', 'In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.', 44.949, '2021-03-24', 7.595, 'https://image.tmdb.org/t/p/original//mGJuQwMq1bEboaVTqQAK4p4zQvC.jpg', 'https://image.tmdb.org/t/p/original//pgqgaUx1cJb5oZQQ5v0tNARCeBp.jpg', 0, '2024-12-05 18:06:43', '0000-00-00 00:00:00'),
(28, 1, 672, 'Harry Potter and the Chamber of Secrets', 'Cars fly, trees fight back, and a mysterious house-elf comes to warn Harry Potter at the start of his second year at Hogwarts. Adventure and danger await when bloody writing on a wall announces: The Chamber Of Secrets Has Been Opened. To save Hogwarts will require all of Harry, Ron and Hermione’s magical abilities and courage.', 147.434, '2002-11-13', 7.7, 'https://image.tmdb.org/t/p/original//yHzyPJrVqlTySQ9mc379yxrLBYQ.jpg', 'https://image.tmdb.org/t/p/original//sdEOH0992YZ0QSxgXNIGLq1ToUi.jpg', 0, '2024-12-05 18:12:41', '0000-00-00 00:00:00'),
(29, 1, 10191, 'How to Train Your Dragon', 'As the son of a Viking leader on the cusp of manhood, shy Hiccup Horrendous Haddock III faces a rite of passage: he must kill a dragon to prove his warrior mettle. But after downing a feared dragon, he realizes that he no longer wants to destroy it, and instead befriends the beast – which he names Toothless – much to the chagrin of his warrior father.', 175.82, '2010-03-18', 7.833, 'https://image.tmdb.org/t/p/original//59vDC1BuEQvti24OMr0ZvtAK6R1.jpg', 'https://image.tmdb.org/t/p/original//92olhXYaIX6lvB8jwFz4OSfPaKq.jpg', 0, '2024-12-05 18:17:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `userId`, `movieId`, `url`, `description`, `dateCreated`, `dateUpdated`) VALUES
(1, 1, 38, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoDMz8mb2GyZfj_Qj2ga0KWPn-54_3rPBQxQ&s', 'Bruce Almighty', '2024-10-03 21:17:46', '0000-00-00 00:00:00'),
(2, 1, 38, 'https://ichef.bbci.co.uk/images/ic/640x360/p01gylnm.jpg', 'Bruce Almighty', '2024-10-21 20:56:09', '0000-00-00 00:00:00'),
(3, 1, 38, 'https://m.media-amazon.com/images/M/MV5BZWM2ZjA2OTctZmRhMy00ZDIzLTkwZGQtYTRlNmQwZWZmMDBlXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', 'Bruce Almighty', '2024-12-01 08:16:33', '0000-00-00 00:00:00'),
(4, 1, 38, 'https://m.media-amazon.com/images/M/MV5BMTI3NTM0NzIzNV5BMl5BanBnXkFtZTcwOTA2MTEzMw@@._V1_.jpg', 'Bruce Almighty', '2024-12-01 12:07:14', '0000-00-00 00:00:00'),
(5, 1, 38, 'https://www.syfy.com/sites/syfy/files/styles/scale_862/public/2022/11/2294_00001a_01r.jpg', 'Bruce Almighty', '2024-12-01 12:08:43', '0000-00-00 00:00:00'),
(6, 1, 38, 'https://image.tmdb.org/t/p/original/rM67wZAB2fcVfquSGwVBcnfYJ0U.jpg', 'Imported from TMDB', '2024-12-04 21:33:23', '0000-00-00 00:00:00'),
(7, 1, 38, 'https://image.tmdb.org/t/p/original/mTmELtUOWKi6Kv5DDKIMPbIDerg.jpg', 'Imported from TMDB', '2024-12-05 14:01:35', '0000-00-00 00:00:00'),
(8, 1, 299536, 'https://image.tmdb.org/t/p/original/mDfJG3LC3Dqb67AZ52x3Z0jU0uB.jpg', 'Imported from TMDB', '2024-12-05 16:11:45', '0000-00-00 00:00:00'),
(9, 1, 299536, 'https://image.tmdb.org/t/p/original/icUSGFn22cP2BQ0tXCIsykWVCQ.jpg', 'Imported from TMDB', '2024-12-05 16:11:49', '0000-00-00 00:00:00'),
(10, 1, 299536, 'https://image.tmdb.org/t/p/original/vdRUFLMMAay3RcD3MC4r8PeaAcR.jpg', 'Imported from TMDB', '2024-12-05 16:11:53', '0000-00-00 00:00:00'),
(11, 1, 299536, 'https://image.tmdb.org/t/p/original/hH9L70yQJQNYosBKb1oX6ggrRoh.jpg', 'Imported from TMDB', '2024-12-05 16:11:55', '0000-00-00 00:00:00'),
(13, 1, 299536, 'https://image.tmdb.org/t/p/original/sbpTzyKkBedre1CjExJMNawEbHB.jpg', 'Imported from TMDB', '2024-12-05 16:12:06', '0000-00-00 00:00:00'),
(14, 1, 299536, 'https://image.tmdb.org/t/p/original/b3XV61VdIV26VGTY7dncn9szOko.jpg', 'Imported from TMDB', '2024-12-05 16:12:17', '0000-00-00 00:00:00'),
(15, 1, 299536, 'https://image.tmdb.org/t/p/original/z75yuSzbDUPyx380GPa0g6IdaOn.jpg', 'Imported from TMDB', '2024-12-05 16:12:25', '0000-00-00 00:00:00'),
(16, 1, 299536, 'https://image.tmdb.org/t/p/original/k3xGG77CAiB0Wr2Y1H3ApihKTkk.jpg', 'Imported from TMDB', '2024-12-05 16:12:28', '0000-00-00 00:00:00'),
(17, 1, 10950, 'https://image.tmdb.org/t/p/original/opPxzpbASiXHX7jlMwSepLs9zcq.jpg', 'Imported from TMDB', '2024-12-05 16:20:31', '0000-00-00 00:00:00'),
(18, 1, 10950, 'https://image.tmdb.org/t/p/original/mOsg2l9zq315ouw55rbNATSwgU1.jpg', 'Imported from TMDB', '2024-12-05 16:20:33', '0000-00-00 00:00:00'),
(19, 1, 10950, 'https://image.tmdb.org/t/p/original/gGzQPHUxxkFWmFXnDqWAZbkir2.jpg', 'Imported from TMDB', '2024-12-05 16:20:36', '0000-00-00 00:00:00'),
(20, 1, 10950, 'https://image.tmdb.org/t/p/original/1NoEfcNxGIIOXZNVK4lAGTLW7tL.jpg', 'Imported from TMDB', '2024-12-05 16:20:40', '0000-00-00 00:00:00'),
(21, 1, 10950, 'https://image.tmdb.org/t/p/original/4H2NnG4kC5Bi5Exptf9Fm1dUrHp.jpg', 'Imported from TMDB', '2024-12-05 16:20:45', '0000-00-00 00:00:00'),
(22, 1, 10950, 'https://image.tmdb.org/t/p/original/6g5ThATO9LgOwW0uiNU9rFrw5GG.jpg', 'Imported from TMDB', '2024-12-05 16:20:48', '0000-00-00 00:00:00'),
(23, 1, 10950, 'https://image.tmdb.org/t/p/original/vj0FMHaUTgqGAQ0XvY4WBN4fHvh.jpg', 'Imported from TMDB', '2024-12-05 16:20:54', '0000-00-00 00:00:00'),
(24, 1, 10950, 'https://image.tmdb.org/t/p/original/dyOlYXfSsxWj6yoEkW6BZsfmBzB.jpg', 'Imported from TMDB', '2024-12-05 16:20:57', '0000-00-00 00:00:00'),
(25, 1, 402431, 'https://image.tmdb.org/t/p/original/w22GVYotTIVC1dUd58mRhwPqiS.jpg', 'Imported from TMDB', '2024-12-05 16:27:53', '0000-00-00 00:00:00'),
(26, 1, 402431, 'https://image.tmdb.org/t/p/original/uKb22E0nlzr914bA9KyA5CVCOlV.jpg', 'Imported from TMDB', '2024-12-05 16:27:57', '0000-00-00 00:00:00'),
(27, 1, 402431, 'https://image.tmdb.org/t/p/original/bbNUSVOqgbJ2U5OtEeMC76qlqxH.jpg', 'Imported from TMDB', '2024-12-05 16:28:02', '0000-00-00 00:00:00'),
(28, 1, 402431, 'https://image.tmdb.org/t/p/original/uVlUu174iiKhsUGqnOSy46eIIMU.jpg', 'Imported from TMDB', '2024-12-05 16:28:08', '0000-00-00 00:00:00'),
(29, 1, 402431, 'https://image.tmdb.org/t/p/original/3iD9yEsxKqliZfPck1aoTVC6K53.jpg', 'Imported from TMDB', '2024-12-05 16:28:14', '0000-00-00 00:00:00'),
(30, 1, 402431, 'https://image.tmdb.org/t/p/original/nHlFV6H0wfs4AMcM5AfGdVsD1o8.jpg', 'Imported from TMDB', '2024-12-05 16:28:23', '0000-00-00 00:00:00'),
(31, 1, 402431, 'https://image.tmdb.org/t/p/original/ieYXS9LZG5AEkkv4bdptvw99snj.jpg', 'Imported from TMDB', '2024-12-05 16:28:31', '0000-00-00 00:00:00'),
(32, 1, 402431, 'https://image.tmdb.org/t/p/original/pTFEJcKKM8RPtRKiCvDrzqrYSKz.jpg', 'Imported from TMDB', '2024-12-05 16:28:53', '0000-00-00 00:00:00'),
(33, 1, 639720, 'https://image.tmdb.org/t/p/original/nxxCPRGTzxUH8SFMrIsvMmdxHti.jpg', 'Imported from TMDB', '2024-12-05 16:30:37', '0000-00-00 00:00:00'),
(34, 1, 639720, 'https://image.tmdb.org/t/p/original/nxxCPRGTzxUH8SFMrIsvMmdxHti.jpg', 'Imported from TMDB', '2024-12-05 16:30:37', '0000-00-00 00:00:00'),
(35, 1, 639720, 'https://image.tmdb.org/t/p/original/iZW7mOF6kfsLoL1f3PfMDh6X6z4.jpg', 'Imported from TMDB', '2024-12-05 16:30:42', '0000-00-00 00:00:00'),
(36, 1, 639720, 'https://image.tmdb.org/t/p/original/pzqH5SgQrYjNRVhx5572Oi4W75n.jpg', 'Imported from TMDB', '2024-12-05 16:30:46', '0000-00-00 00:00:00'),
(37, 1, 639720, 'https://image.tmdb.org/t/p/original/x1ZvNFXpEeDljvqdO8Z8aZcqsOI.jpg', 'Imported from TMDB', '2024-12-05 16:30:54', '0000-00-00 00:00:00'),
(38, 1, 639720, 'https://image.tmdb.org/t/p/original/vpWVeIMNi0Np5shuKFE3QkneiTt.jpg', 'Imported from TMDB', '2024-12-05 16:31:00', '0000-00-00 00:00:00'),
(39, 1, 639720, 'https://image.tmdb.org/t/p/original/1TBU5Fiwvim3MjVQkfpSWZEYNM.jpg', 'Imported from TMDB', '2024-12-05 16:31:05', '0000-00-00 00:00:00'),
(40, 1, 639720, 'https://image.tmdb.org/t/p/original/jTWllMddJzCb7hBVNZICtgKhYM9.jpg', 'Imported from TMDB', '2024-12-05 16:31:08', '0000-00-00 00:00:00'),
(41, 1, 539681, 'https://image.tmdb.org/t/p/original/6DMBwEqD3UsNnaNnf4K33DpZE0a.jpg', 'Imported from TMDB', '2024-12-05 16:33:03', '0000-00-00 00:00:00'),
(43, 1, 539681, 'https://image.tmdb.org/t/p/original/qZmDAMVWbZSqRoIpiQRewJDXjlY.jpg', 'Imported from TMDB', '2024-12-05 16:33:11', '0000-00-00 00:00:00'),
(44, 1, 539681, 'https://image.tmdb.org/t/p/original/mzFlwK2WN5KGCgEc4ExJmooJy97.jpg', 'Imported from TMDB', '2024-12-05 16:33:14', '0000-00-00 00:00:00'),
(45, 1, 539681, 'https://image.tmdb.org/t/p/original/80v5WaU6L6YXLATmMrD8EIl3H9H.jpg', 'Imported from TMDB', '2024-12-05 16:33:18', '0000-00-00 00:00:00'),
(46, 1, 539681, 'https://image.tmdb.org/t/p/original/9FQmThEGHHwWYjY4U15oTqJgLHv.jpg', 'Imported from TMDB', '2024-12-05 16:33:24', '0000-00-00 00:00:00'),
(47, 1, 539681, 'https://image.tmdb.org/t/p/original/lK4kMtv0rjPBp4FCr2CowtYNThJ.jpg', 'Imported from TMDB', '2024-12-05 16:33:29', '0000-00-00 00:00:00'),
(48, 1, 539681, 'https://image.tmdb.org/t/p/original/iwHRWp6E9VPrFGixZoCNxEBd1tQ.jpg', 'Imported from TMDB', '2024-12-05 16:33:33', '0000-00-00 00:00:00'),
(49, 1, 539681, 'https://image.tmdb.org/t/p/original/p8XnVA7zWZu7ZJsM1Cm9l7S9IH8.jpg', 'Imported from TMDB', '2024-12-05 16:33:37', '0000-00-00 00:00:00'),
(50, 1, 429617, 'https://image.tmdb.org/t/p/original/uHuM6lErhDQS5oLqN3cMT5QGIDx.jpg', 'Imported from TMDB', '2024-12-05 16:38:55', '0000-00-00 00:00:00'),
(51, 1, 429617, 'https://image.tmdb.org/t/p/original/34jW8LvjRplM8Pv06cBFDpLlenR.jpg', 'Imported from TMDB', '2024-12-05 16:38:58', '0000-00-00 00:00:00'),
(52, 1, 429617, 'https://image.tmdb.org/t/p/original/vamhMTvh9m9zFHDoR0v1nRtf6T4.jpg', 'Imported from TMDB', '2024-12-05 16:39:05', '0000-00-00 00:00:00'),
(53, 1, 429617, 'https://image.tmdb.org/t/p/original/fVsy8Z646SZUP6qLJrQCAwi0jhq.jpg', 'Imported from TMDB', '2024-12-05 16:39:10', '0000-00-00 00:00:00'),
(54, 1, 429617, 'https://image.tmdb.org/t/p/original/Dk8wzICaD5q7vBp1xeDOWd6e80.jpg', 'Imported from TMDB', '2024-12-05 16:39:15', '0000-00-00 00:00:00'),
(55, 1, 429617, 'https://image.tmdb.org/t/p/original/wqBW5ltBJu0gs26yCc8shQQV82d.jpg', 'Imported from TMDB', '2024-12-05 16:39:18', '0000-00-00 00:00:00'),
(56, 1, 429617, 'https://image.tmdb.org/t/p/original/6V3KHX1ajN7KLS20oqys3z2itPm.jpg', 'Imported from TMDB', '2024-12-05 16:39:38', '0000-00-00 00:00:00'),
(57, 1, 429617, 'https://image.tmdb.org/t/p/original/1TmsOrCBSlJIWHtaqzEJgkrSzES.jpg', 'Imported from TMDB', '2024-12-05 16:39:43', '0000-00-00 00:00:00'),
(58, 1, 76600, 'https://image.tmdb.org/t/p/original/8rpDcsfLJypbO6vREc0547VKqEv.jpg', 'Imported from TMDB', '2024-12-05 16:41:36', '0000-00-00 00:00:00'),
(59, 1, 76600, 'https://image.tmdb.org/t/p/original/j9b9WKm0ncyY2sW9iKrSwY90Ald.jpg', 'Imported from TMDB', '2024-12-05 16:41:39', '0000-00-00 00:00:00'),
(60, 1, 76600, 'https://image.tmdb.org/t/p/original/rdtZokC7lYFUuGjn1zGaY4WrVXU.jpg', 'Imported from TMDB', '2024-12-05 16:41:43', '0000-00-00 00:00:00'),
(61, 1, 76600, 'https://image.tmdb.org/t/p/original/jjBNylTtCmJ7xy5U0H6PjaB8gLA.jpg', 'Imported from TMDB', '2024-12-05 16:41:51', '0000-00-00 00:00:00'),
(62, 1, 76600, 'https://image.tmdb.org/t/p/original/v8Ydx3TyWOImcInNb1idApEM8ty.jpg', 'Imported from TMDB', '2024-12-05 16:42:15', '0000-00-00 00:00:00'),
(63, 1, 76600, 'https://image.tmdb.org/t/p/original/4pNlHx6ytdYBDs94PgcS0wQkbc4.jpg', 'Imported from TMDB', '2024-12-05 16:42:19', '0000-00-00 00:00:00'),
(64, 1, 76600, 'https://image.tmdb.org/t/p/original/wMMyNUjyvy4U68nrrMkwLwg3GU3.jpg', 'Imported from TMDB', '2024-12-05 16:42:25', '0000-00-00 00:00:00'),
(65, 1, 76600, 'https://image.tmdb.org/t/p/original/zENT3sNfL2HONYS99sFEYlE6R28.jpg', 'Imported from TMDB', '2024-12-05 16:42:59', '0000-00-00 00:00:00'),
(66, 1, 1241982, 'https://image.tmdb.org/t/p/original/tElnmtQ6yz1PjN1kePNl8yMSb59.jpg', 'Imported from TMDB', '2024-12-05 16:44:17', '0000-00-00 00:00:00'),
(67, 1, 1241982, 'https://image.tmdb.org/t/p/original/6cXqnUlCklzV52kqyn3EEqDonyM.jpg', 'Imported from TMDB', '2024-12-05 16:44:21', '0000-00-00 00:00:00'),
(68, 1, 1241982, 'https://image.tmdb.org/t/p/original/4oYaZcYovt34sd60X2IL0ayg2js.jpg', 'Imported from TMDB', '2024-12-05 16:44:25', '0000-00-00 00:00:00'),
(69, 1, 1241982, 'https://image.tmdb.org/t/p/original/gBp4DWiyl7sUMKPBDVM4MyVTuIV.jpg', 'Imported from TMDB', '2024-12-05 16:44:29', '0000-00-00 00:00:00'),
(70, 1, 1241982, 'https://image.tmdb.org/t/p/original/9b9b2SJ4Wd8YQSLDszNCtceHUyy.jpg', 'Imported from TMDB', '2024-12-05 16:44:33', '0000-00-00 00:00:00'),
(71, 1, 1241982, 'https://image.tmdb.org/t/p/original/xY9pZLfkWpbcSY3gD4uamItdqzX.jpg', 'Imported from TMDB', '2024-12-05 16:44:36', '0000-00-00 00:00:00'),
(72, 1, 1241982, 'https://image.tmdb.org/t/p/original/AlV4ZAvMAj2qLGTZLM2luNDWcLq.jpg', 'Imported from TMDB', '2024-12-05 16:44:40', '0000-00-00 00:00:00'),
(73, 1, 1241982, 'https://image.tmdb.org/t/p/original/c1JdGeBm2cTtsOUnpciiFyex7JI.jpg', 'Imported from TMDB', '2024-12-05 16:45:10', '0000-00-00 00:00:00'),
(74, 1, 810693, 'https://image.tmdb.org/t/p/original/921vUyXdfIYpaXqu5Lnf3nVb4IJ.jpg', 'Imported from TMDB', '2024-12-05 17:13:56', '0000-00-00 00:00:00'),
(75, 1, 810693, 'https://image.tmdb.org/t/p/original/fh4H92nhTUJTONXVRUHIpOGsHnK.jpg', 'Imported from TMDB', '2024-12-05 17:13:59', '0000-00-00 00:00:00'),
(76, 1, 810693, 'https://image.tmdb.org/t/p/original/uBxkwY70q6d7c8dN0qAXRHmHeUQ.jpg', 'Imported from TMDB', '2024-12-05 17:14:04', '0000-00-00 00:00:00'),
(77, 1, 810693, 'https://image.tmdb.org/t/p/original/7phcGGiYRrEQDHWB0cBwgtt3dkY.jpg', 'Imported from TMDB', '2024-12-05 17:14:07', '0000-00-00 00:00:00'),
(78, 1, 810693, 'https://image.tmdb.org/t/p/original/7uxQQUnHvPKc2LmvDXRszgfBka8.jpg', 'Imported from TMDB', '2024-12-05 17:14:11', '0000-00-00 00:00:00'),
(79, 1, 810693, 'https://image.tmdb.org/t/p/original/geYUecpFI2AonDLhjyK9zoVFcMv.jpg', 'Imported from TMDB', '2024-12-05 17:14:15', '0000-00-00 00:00:00'),
(80, 1, 810693, 'https://image.tmdb.org/t/p/original/10jVpNPcl9uzVR7W6EXKRyKLTXZ.jpg', 'Imported from TMDB', '2024-12-05 17:14:19', '0000-00-00 00:00:00'),
(82, 1, 810693, 'https://image.tmdb.org/t/p/original/t9K8ycUBCplWiICDOKRNRYcEH9e.jpg', 'Imported from TMDB', '2024-12-05 17:15:08', '0000-00-00 00:00:00'),
(83, 1, 593961, 'https://image.tmdb.org/t/p/original/ptijXES6uMuKfKolTbAeV2LvEVN.jpg', 'Imported from TMDB', '2024-12-05 18:03:30', '0000-00-00 00:00:00'),
(84, 1, 593961, 'https://image.tmdb.org/t/p/original/qu7LhROVNP8bfa5ddB22zS81Fav.jpg', 'Imported from TMDB', '2024-12-05 18:03:33', '0000-00-00 00:00:00'),
(85, 1, 593961, 'https://image.tmdb.org/t/p/original/yC6uVwqrlo5CvB3czeU7tRAr86m.jpg', 'Imported from TMDB', '2024-12-05 18:03:37', '0000-00-00 00:00:00'),
(86, 1, 593961, 'https://image.tmdb.org/t/p/original/mfxbEvaz68QllWCUkYobPx1Cv6S.jpg', 'Imported from TMDB', '2024-12-05 18:03:41', '0000-00-00 00:00:00'),
(87, 1, 593961, 'https://image.tmdb.org/t/p/original/wCuuzDsAmhqNszNJCuq1LGC3XOD.jpg', 'Imported from TMDB', '2024-12-05 18:03:44', '0000-00-00 00:00:00'),
(88, 1, 593961, 'https://image.tmdb.org/t/p/original/foMDjFHrTrex6Rr6bApB8TbWlie.jpg', 'Imported from TMDB', '2024-12-05 18:03:48', '0000-00-00 00:00:00'),
(89, 1, 593961, 'https://image.tmdb.org/t/p/original/fAa1pY9cPLfJC8p9t6gCUe2nlP7.jpg', 'Imported from TMDB', '2024-12-05 18:03:52', '0000-00-00 00:00:00'),
(90, 1, 399566, 'https://image.tmdb.org/t/p/original/inJjDhCjfhh3RtrJWBmmDqeuSYC.jpg', 'Imported from TMDB', '2024-12-05 18:07:58', '0000-00-00 00:00:00'),
(91, 1, 399566, 'https://image.tmdb.org/t/p/original/iopYFB1b6Bh7FWZh3onQhph1sih.jpg', 'Imported from TMDB', '2024-12-05 18:08:02', '0000-00-00 00:00:00'),
(92, 1, 399566, 'https://image.tmdb.org/t/p/original/aDxwo5rFjKkO3yii6263X0P0pW7.jpg', 'Imported from TMDB', '2024-12-05 18:08:06', '0000-00-00 00:00:00'),
(93, 1, 399566, 'https://image.tmdb.org/t/p/original/klqlZnQcjWZm59OOCVfM4dPUhMq.jpg', 'Imported from TMDB', '2024-12-05 18:08:10', '0000-00-00 00:00:00'),
(94, 1, 399566, 'https://image.tmdb.org/t/p/original/Abl800WtSz8aZImDbKKDSmd7hjX.jpg', 'Imported from TMDB', '2024-12-05 18:08:13', '0000-00-00 00:00:00'),
(95, 1, 399566, 'https://image.tmdb.org/t/p/original/8iiu1VQjcH7fjKgfzVd0hlOlHXQ.jpg', 'Imported from TMDB', '2024-12-05 18:08:17', '0000-00-00 00:00:00'),
(96, 1, 399566, 'https://image.tmdb.org/t/p/original/yOnWwGjRJsb4tHHzk6t5TuiOE3L.jpg', 'Imported from TMDB', '2024-12-05 18:08:20', '0000-00-00 00:00:00'),
(97, 1, 399566, 'https://image.tmdb.org/t/p/original/pBscXLwZg9rmYCp6HfiIF19WGH0.jpg', 'Imported from TMDB', '2024-12-05 18:08:25', '0000-00-00 00:00:00'),
(98, 1, 672, 'https://image.tmdb.org/t/p/original/yHzyPJrVqlTySQ9mc379yxrLBYQ.jpg', 'Imported from TMDB', '2024-12-05 18:13:57', '0000-00-00 00:00:00'),
(99, 1, 672, 'https://image.tmdb.org/t/p/original/fr047KaRVQW5egYeJIlkch3S7C7.jpg', 'Imported from TMDB', '2024-12-05 18:14:00', '0000-00-00 00:00:00'),
(100, 1, 672, 'https://image.tmdb.org/t/p/original/xACx8htL9Ubz1qGe0gU2ggHonxV.jpg', 'Imported from TMDB', '2024-12-05 18:14:03', '0000-00-00 00:00:00'),
(101, 1, 672, 'https://image.tmdb.org/t/p/original/4kgQ8iafeMdzM79wmSYFv1Krkrs.jpg', 'Imported from TMDB', '2024-12-05 18:14:08', '0000-00-00 00:00:00'),
(102, 1, 672, 'https://image.tmdb.org/t/p/original/mD33fciFvkBx7tM3aVRSa0eBLO7.jpg', 'Imported from TMDB', '2024-12-05 18:14:11', '0000-00-00 00:00:00'),
(103, 1, 672, 'https://image.tmdb.org/t/p/original/w9Mx7J3OpNnkHvNSc3Ecp9HOXtu.jpg', 'Imported from TMDB', '2024-12-05 18:14:15', '0000-00-00 00:00:00'),
(104, 1, 672, 'https://image.tmdb.org/t/p/original/qSrq6ACzPDv4xerGJ78iS3N827K.jpg', 'Imported from TMDB', '2024-12-05 18:14:20', '0000-00-00 00:00:00'),
(105, 1, 672, 'https://image.tmdb.org/t/p/original/pWkpvgDbyc7Cxe4aHEOkPx8oCtB.jpg', 'Imported from TMDB', '2024-12-05 18:14:26', '0000-00-00 00:00:00'),
(106, 1, 10191, 'https://image.tmdb.org/t/p/original/59vDC1BuEQvti24OMr0ZvtAK6R1.jpg', 'Imported from TMDB', '2024-12-05 18:21:34', '0000-00-00 00:00:00'),
(107, 1, 10191, 'https://image.tmdb.org/t/p/original/pHHScFZhrUejzmWc6smRrfCoNBz.jpg', 'Imported from TMDB', '2024-12-05 18:21:38', '0000-00-00 00:00:00'),
(108, 1, 10191, 'https://image.tmdb.org/t/p/original/aH9KWmXFMamXkHMgLjnQmSYjScL.jpg', 'Imported from TMDB', '2024-12-05 18:21:43', '0000-00-00 00:00:00'),
(109, 1, 10191, 'https://image.tmdb.org/t/p/original/bBjwoFoaAt7PV3nMW3tFREKENCU.jpg', 'Imported from TMDB', '2024-12-05 18:21:47', '0000-00-00 00:00:00'),
(110, 1, 10191, 'https://image.tmdb.org/t/p/original/kxklJL1v8MYEU5xdU6W5VvmBwVz.jpg', 'Imported from TMDB', '2024-12-05 18:21:52', '0000-00-00 00:00:00'),
(111, 1, 10191, 'https://image.tmdb.org/t/p/original/v529QdjxwGKmJycQWnJj6qGSpta.jpg', 'Imported from TMDB', '2024-12-05 18:21:55', '0000-00-00 00:00:00'),
(112, 1, 10191, 'https://image.tmdb.org/t/p/original/zYltonEJitG5EYciuJEgbMTKjSB.jpg', 'Imported from TMDB', '2024-12-05 18:21:59', '0000-00-00 00:00:00'),
(113, 1, 10191, 'https://image.tmdb.org/t/p/original/hoZG9ulu6aC0zZ2GPAunvsAiJJV.jpg', 'Imported from TMDB', '2024-12-05 18:22:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(128) NOT NULL,
  `middleName` varchar(128) NOT NULL,
  `lastName` varchar(128) NOT NULL,
  `contactNo` varchar(15) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstName`, `middleName`, `lastName`, `contactNo`, `role`) VALUES
(1, 'test@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'string', 'string', 'string', 'string', 'admin'),
(2, 'elai@mail.com', 'be3f4e7eeb9ee617206564ff294562de', 'elaiza', 'yong', 'pugosa', '09123456789', 'admin'),
(3, 'elaiza@gmail.com', '5e16f050563f8503265224a42394f5c6', 'Elaiza', 'Yong', 'Pugosa', '09192372846', 'admin'),
(4, 'elai95@gmail.com', '05ab0995ad3e3d0f76fcb0582614c0b9', 'Elaiza', 'Yong', 'Pugosa', '09425739573', 'user'),
(6, 'elai_95@mail.com', 'be3f4e7eeb9ee617206564ff294562de', 'Elaiza', 'Yong', 'Pugosa', '09129242484', 'user'),
(7, 'elaizapugosa@mail.com', 'be3f4e7eeb9ee617206564ff294562de', 'Elaiza', 'Yong', 'Pugosa', '09127438294', 'admin'),
(8, 'elaiza_pugosa@mail.com', 'be3f4e7eeb9ee617206564ff294562de', 'Elaiza', 'Yong', 'Pugosa', '09127438294', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `videoKey` varchar(255) NOT NULL,
  `videoType` varchar(255) NOT NULL,
  `official` tinyint(1) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT current_timestamp(),
  `dateUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `userId`, `movieId`, `url`, `name`, `site`, `videoKey`, `videoType`, `official`, `dateCreated`, `dateUpdated`) VALUES
(1, 1, 38, 'https://www.youtube.com/watch?v=hw1vimQP70k', 'A Message From God | Bruce Almighty (2003) | Family Flicks', 'Youtube', 'hw1vimQP70k', 'Clip', 0, '2024-10-21 21:13:14', '0000-00-00 00:00:00'),
(2, 1, 38, 'https://www.youtube.com/watch?v=5tNiEq4lUOU', 'Bruce Almighty (2003) - Bruce Meets God', 'Youtube', '5tNiEq4lUOU', 'Clip', 0, '2024-10-21 21:15:45', '0000-00-00 00:00:00'),
(3, 1, 38, 'https://www.youtube.com/watch?v=fe-luzrqWSk', 'BRUCE ALMIGHTY (2003) - Official Movie Trailer', 'Youtube', 'fe-luzrqWSk', 'Clip', 1, '2024-12-01 07:38:02', '0000-00-00 00:00:00'),
(4, 1, 38, 'https://www.youtube.com/watch?v=4lzPzAkNIjA', 'Bruce Almighty (2003) - Bruce Gets His Powers', 'Youtube', '4lzPzAkNIjA', 'Clip', 0, '2024-12-03 05:50:29', '0000-00-00 00:00:00'),
(5, 1, 38, 'https://www.youtube.com/watch?v=51NIQ0xx4aA', 'Bruce Almighty: Bruce controls Evan HD CLIP', 'Youtube', '51NIQ0xx4aA', 'Clip', 0, '2024-12-03 05:53:03', '0000-00-00 00:00:00'),
(6, 1, 38, 'https://www.youtube.com/watch?v=CEZWFRDnh0o', 'Pulling The Moon & Clearing The Sky - Bruce Almighty-(2003) Movie Clip Blu-ray HD', 'Youtube', 'CEZWFRDnh0o', 'Clip', 0, '2024-12-03 06:27:09', '0000-00-00 00:00:00'),
(13, 1, 38, 'https://www.youtube.com/watch?v=0XBxoKumlqQ', 'Bruce Almighty', 'YouTube', '0XBxoKumlqQ', 'trailer', 0, '2024-12-05 13:49:29', '0000-00-00 00:00:00'),
(14, 1, 299536, 'https://www.youtube.com/watch?v=QwievZ1Tx-8', 'Avengers: Infinity War', 'YouTube', 'QwievZ1Tx-8', 'trailer', 0, '2024-12-05 16:11:11', '0000-00-00 00:00:00'),
(15, 1, 10950, 'https://www.youtube.com/watch?v=z_AguDqCBvo', 'I Am Sam', 'YouTube', 'z_AguDqCBvo', 'trailer', 0, '2024-12-05 16:16:42', '0000-00-00 00:00:00'),
(18, 1, 402431, 'https://www.youtube.com/watch?v=pqi45Qhq3CI', 'Wicked', 'YouTube', 'pqi45Qhq3CI', 'trailer', 0, '2024-12-05 16:22:29', '0000-00-00 00:00:00'),
(21, 1, 639720, 'https://www.youtube.com/watch?v=TP47e3-nmw8', 'IF', 'YouTube', 'TP47e3-nmw8', 'trailer', 0, '2024-12-05 16:30:16', '0000-00-00 00:00:00'),
(22, 1, 539681, 'https://www.youtube.com/watch?v=xEbpPP-_1Ig', 'DC League of Super-Pets', 'YouTube', 'xEbpPP-_1Ig', 'trailer', 0, '2024-12-05 16:32:45', '0000-00-00 00:00:00'),
(23, 1, 429617, 'https://www.youtube.com/watch?v=LFoz8ZJWmPs', 'Spider-Man: Far From Home', 'YouTube', 'LFoz8ZJWmPs', 'trailer', 0, '2024-12-05 16:36:51', '0000-00-00 00:00:00'),
(25, 1, 76600, 'https://www.youtube.com/watch?v=o5F8MOz_IDw', 'Avatar: The Way of Water', 'YouTube', 'o5F8MOz_IDw', 'trailer', 0, '2024-12-05 16:41:16', '0000-00-00 00:00:00'),
(26, 1, 1241982, 'https://www.youtube.com/watch?v=JdSl4RMNtGE', 'Moana 2', 'YouTube', 'JdSl4RMNtGE', 'trailer', 0, '2024-12-05 16:44:03', '0000-00-00 00:00:00'),
(27, 1, 299536, 'https://www.youtube.com/watch?v=7E7-CNl5qUI', 'Avengers Infinity War Final Battle Climax Scene Thanos Vs Avengers Wakanda Fight Scenes', 'YouTube', '7E7-CNl5qUI', 'Clip', 0, '2024-12-05 17:06:24', '0000-00-00 00:00:00'),
(28, 1, 299536, 'https://www.youtube.com/watch?v=EpI3x6gf2uA', 'Avengers: Infinity War (2018) - \"Secret Reinforcements\" | Movie Clip HD', 'YouTube', 'EpI3x6gf2uA', 'Clip', 0, '2024-12-05 17:07:28', '0000-00-00 00:00:00'),
(29, 1, 299536, 'https://www.youtube.com/watch?v=g5_w5XrC7Ts', 'Avengers: Infinity War (2018) - \"Battle Of Wakanda\" | Movie Clip HD', 'Youtube', 'g5_w5XrC7Ts', 'Clip', 0, '2024-12-05 17:08:31', '0000-00-00 00:00:00'),
(30, 1, 299536, 'https://www.youtube.com/watch?v=jQoNILVFFvs', 'Avengers: Infinity War (2018) - \"Dangers Of Strangers\" | Movie Clip', 'Youtube', 'jQoNILVFFvs', 'Clip', 0, '2024-12-05 17:09:28', '0000-00-00 00:00:00'),
(31, 1, 299536, 'https://www.youtube.com/watch?v=0dsvhatg29s', 'Avengers: Infinity War (2018) - \"Tricks Of The Wizard\" | Movie Clip', 'Youtube', '0dsvhatg29s', 'Clip', 0, '2024-12-05 17:10:16', '0000-00-00 00:00:00'),
(32, 1, 10950, 'https://www.youtube.com/watch?v=oBURpv30IkA', 'I Am Sam (2001) - Shoe Shopping Scene (3/9) | Movieclips', 'Youtube', 'oBURpv30IkA', 'Clip', 0, '2024-12-05 17:11:23', '0000-00-00 00:00:00'),
(33, 1, 810693, 'https://www.youtube.com/watch?v=UPRqnFnnrr8', 'Jujutsu Kaisen 0: The Movie Trailer #2 (2022) | Movieclips Trailers', 'YouTube', 'UPRqnFnnrr8', 'trailer', 0, '2024-12-05 17:13:33', '0000-00-00 00:00:00'),
(34, 1, 10950, 'https://www.youtube.com/watch?v=dAlYuokC9R0', 'I Am Sam (2001) - You\'re Not Like Other Daddies Scene (2/9) | Movieclips', 'YouTube', 'dAlYuokC9R0', 'Clip', 0, '2024-12-05 17:17:51', '0000-00-00 00:00:00'),
(35, 1, 402431, 'https://www.youtube.com/watch?v=amgPXKrFZVg', 'Wicked | What Is This Feeling', 'YouTube', 'amgPXKrFZVg', 'Clip', 0, '2024-12-05 17:21:54', '0000-00-00 00:00:00'),
(36, 1, 402431, 'https://www.youtube.com/watch?v=ENkfNb1I0jc', 'Wicked | Popular', 'YouTube', 'ENkfNb1I0jc', 'Clip', 0, '2024-12-05 17:22:41', '0000-00-00 00:00:00'),
(37, 1, 639720, 'https://www.youtube.com/watch?v=mb2187ZQtBE', 'IF | Final Trailer (2024 Movie) - Ryan Reynolds, John Krasinski, Steve Carell', 'YouTube', 'mb2187ZQtBE', 'Clip', 0, '2024-12-05 17:26:44', '0000-00-00 00:00:00'),
(38, 1, 639720, 'https://www.youtube.com/watch?v=F4jUW7OEwFM', 'This place can be anything you want it to be ✨ | IF | CLIP', 'YouTube', 'F4jUW7OEwFM', 'Clip', 0, '2024-12-05 17:27:46', '0000-00-00 00:00:00'),
(39, 1, 539681, 'https://www.youtube.com/watch?v=uOkEOqtL9VQ', 'SUPERMAN & his DOG escape KRYPTON | DC League of Super Pets', 'YouTube', 'uOkEOqtL9VQ', 'Clip', 0, '2024-12-05 17:28:49', '0000-00-00 00:00:00'),
(40, 1, 539681, 'https://www.youtube.com/watch?v=xGWa1XIBF5s', 'Superpets ace\'s backstory', 'YouTube', 'xGWa1XIBF5s', 'Clip', 0, '2024-12-05 17:29:48', '0000-00-00 00:00:00'),
(41, 1, 429617, 'https://www.youtube.com/watch?v=GwTEorgoveQ', 'Spider-Man vs Mysterio - Mysterio\'s Illusion Scene | Spider-Man: Far From Home', 'YouTube', 'GwTEorgoveQ', 'Clip', 0, '2024-12-05 17:31:36', '0000-00-00 00:00:00'),
(42, 1, 429617, 'https://www.youtube.com/watch?v=ko-pvluFBEc', 'Spider Man Far From Home - Peter make his own suit Spider man new suit', 'YouTube', 'ko-pvluFBEc', 'Clip', 0, '2024-12-05 17:33:41', '0000-00-00 00:00:00'),
(43, 1, 76600, 'https://www.youtube.com/watch?v=Zw1yQ1uuq7Y', 'Avatar: The Way of Water | Teaser Trailer', 'YouTube', 'Zw1yQ1uuq7Y', 'trailer', 0, '2024-12-05 17:35:38', '0000-00-00 00:00:00'),
(44, 1, 76600, 'https://www.youtube.com/watch?v=iDkCBPckHmQ', 'Learning To Dive Scene | AVATAR: THE WAY OF WATER (2023) Movie CLIP HD', 'YouTube', 'iDkCBPckHmQ', 'Clip', 0, '2024-12-05 17:36:43', '0000-00-00 00:00:00'),
(46, 1, 1241982, 'https://www.youtube.com/watch?v=m_Ef1_9OGG8', 'Auli\'i Cravalho - Beyond (End Credit Version) (From \"Moana 2\"/Lyric Video) ft. Te Vaka', 'YouTube', 'm_Ef1_9OGG8', 'Lyric Video', 0, '2024-12-05 17:42:38', '0000-00-00 00:00:00'),
(47, 1, 1241982, 'https://www.youtube.com/watch?v=-SyDDEThMz0', 'Dwayne Johnson - Can I Get A Chee Hoo? (From \"Moana 2\"/Lyric Video)', 'YouTube', '-SyDDEThMz0', 'Lyric Video', 0, '2024-12-05 17:44:36', '0000-00-00 00:00:00'),
(48, 1, 810693, 'https://www.youtube.com/watch?v=901o9QSXqAA', 'Yuta vs Geto [4K 60FPS] | JUJUTSU KAISEN 0', 'YouTube', '901o9QSXqAA', 'Clip', 0, '2024-12-05 17:45:39', '0000-00-00 00:00:00'),
(49, 1, 810693, 'https://www.youtube.com/watch?v=9xnSDHDW5QQ', 'Gojo vs. Miguel | Full Fight Scene | Jujutsu Kaisen 0 | Prime Video', 'YouTube', '9xnSDHDW5QQ', 'Clip', 0, '2024-12-05 17:48:47', '0000-00-00 00:00:00'),
(50, 1, 347183, 'https://www.youtube.com/watch?v=Q0gkKsFTCSU', 'Haikyuu!! The Movie: The End and the Beginning', 'YouTube', 'Q0gkKsFTCSU', 'trailer', 0, '2024-12-05 17:52:58', '0000-00-00 00:00:00'),
(51, 1, 1012201, 'https://www.youtube.com/watch?v=jlU8bA9LtTM', 'HAIKYU!! The Dumpster Battle', 'YouTube', 'jlU8bA9LtTM', 'trailer', 0, '2024-12-05 17:56:24', '0000-00-00 00:00:00'),
(52, 1, 1012201, 'https://www.youtube.com/watch?v=b6DK28daegk', 'Hinata Shoyo First Open Spike | Haikyu the Movie: The Dumpster Battle', 'YouTube', 'b6DK28daegk', 'Clip', 0, '2024-12-05 17:57:50', '0000-00-00 00:00:00'),
(53, 1, 1012201, 'https://www.youtube.com/watch?v=9QYlYSyvTIs', 'Haikyu!! Movie: The Dumpster Battle「AMV」- GODS', 'YouTube', '9QYlYSyvTIs', 'AMV', 0, '2024-12-05 17:58:41', '0000-00-00 00:00:00'),
(54, 1, 593961, 'https://www.youtube.com/watch?v=s7UyA4w6a7A', 'Hello, Love, Goodbye', 'YouTube', 's7UyA4w6a7A', 'trailer', 0, '2024-12-05 18:01:03', '0000-00-00 00:00:00'),
(55, 1, 593961, 'https://www.youtube.com/watch?v=fC6LRRgJCVY', 'Ikaw At Ako - Moira Dela Torre x Jason Marvin (Lyrics) | \"Hello, Love, Goodbye\" OST', 'YouTube', 'fC6LRRgJCVY', 'OST', 0, '2024-12-05 18:02:18', '0000-00-00 00:00:00'),
(56, 1, 593961, 'https://www.youtube.com/watch?v=u-DejkOlkNk', 'Joy: ‘Kung mahal mo ‘ko bakit pinapapili mo ako?’ | ‘Hello Love Goodbye’ Movie Clip (5/5)', 'YouTube', 'u-DejkOlkNk', 'Clip', 0, '2024-12-05 18:03:06', '0000-00-00 00:00:00'),
(57, 1, 399566, 'https://www.youtube.com/watch?v=odM92ap8_c0', 'Godzilla vs. Kong', 'YouTube', 'odM92ap8_c0', 'trailer', 0, '2024-12-05 18:07:45', '0000-00-00 00:00:00'),
(58, 1, 399566, 'https://www.youtube.com/watch?v=QsvRms3HJi4', 'Godzilla vs. Kong\'s Best Fights', 'YouTube', 'QsvRms3HJi4', 'Clip', 0, '2024-12-05 18:09:19', '0000-00-00 00:00:00'),
(59, 1, 399566, 'https://www.youtube.com/watch?v=KIKEHZCL5Nc', 'Godzilla vs. Kong (2021) - Hong Kong Fight Scene', 'YouTube', 'KIKEHZCL5Nc', 'Clip', 0, '2024-12-05 18:09:58', '0000-00-00 00:00:00'),
(60, 1, 672, 'https://www.youtube.com/watch?v=nE11U5iBnH0', 'Harry Potter and the Chamber of Secrets', 'YouTube', 'nE11U5iBnH0', 'trailer', 0, '2024-12-05 18:13:38', '0000-00-00 00:00:00'),
(61, 1, 672, 'https://www.youtube.com/watch?v=Su0NGEIW0z4', 'Harry Potter vs Basilisk inside chamber of secrets | Harry Potter and the Chamber of Secrets ', 'YouTube', 'Su0NGEIW0z4', 'Clip', 0, '2024-12-05 18:15:32', '0000-00-00 00:00:00'),
(62, 1, 672, 'https://www.youtube.com/watch?v=https://www.youtube.com/watch?v=uwieFbajGxwz', 'I Am Lord Voldemort | Harry Potter and the Chamber of Secrets', 'YouTube', 'uwieFbajGxwz', 'Clip', 0, '2024-12-05 18:16:18', '0000-00-00 00:00:00'),
(63, 1, 10191, 'https://www.youtube.com/watch?v=1huZhKwhIQc', 'How to Train Your Dragon', 'YouTube', '1huZhKwhIQc', 'trailer', 0, '2024-12-05 18:19:11', '0000-00-00 00:00:00'),
(64, 1, 10191, 'https://www.youtube.com/watch?v=BogSv_c8Dhw', 'HOW TO TRAIN YOUR DRAGON Clip - \"Freeing The Night Fury\" (2010)', 'YouTube', 'BogSv_c8Dhw', 'Clip', 0, '2024-12-05 18:20:33', '0000-00-00 00:00:00'),
(65, 1, 10191, 'https://www.youtube.com/watch?v=nPmIhH775L4', 'How to Train Your Dragon - Making Friends With A Dragon Scene', 'YouTube', 'nPmIhH775L4', 'Clip', 0, '2024-12-05 18:21:13', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
