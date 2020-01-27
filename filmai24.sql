-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2020 m. Sau 27 d. 10:16
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmai24`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `filmai`
--

CREATE TABLE `filmai` (
  `id` int(4) NOT NULL,
  `pavadinimas` varchar(100) NOT NULL,
  `rezisierius` varchar(100) NOT NULL,
  `metai` int(4) NOT NULL,
  `zanrai` int(4) NOT NULL,
  `aprasymas` varchar(200) NOT NULL,
  `imdb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `filmai`
--

INSERT INTO `filmai` (`id`, `pavadinimas`, `rezisierius`, `metai`, `zanrai`, `aprasymas`, `imdb`) VALUES
(1, 'Pirmas Filmas', 'Jonas Jonaitis', 2012, 4, 'Geras Filmas', 8.6),
(2, 'Antras Filmas', 'Petras Petraitis', 2015, 1, 'Geras Filmas', 8.4),
(3, 'Trecias Filmas', 'Antanas Antanaitis', 1999, 3, 'Geras Filmas', 7.8),
(4, 'Ketvirtas Filmas', 'Karolis Baranauskas', 2018, 2, 'Geras Filmas', 8.2),
(5, 'Penktas Filmas', 'Gvidas Romanovas', 2001, 5, 'Geras Filmas', 7.7),
(6, 'Sestas Filmas', 'Alvydas Darokas', 1995, 6, 'Geras Filmas', 7.6),
(7, 'Septintas Filmas', 'Petras Barkauskas', 2011, 3, 'Geras Filmas', 9.1),
(8, 'Astuntas Filmas', 'Aivaras Bartulis', 2003, 5, 'Geras Filmas', 8.5),
(9, 'Devintas Filmas', 'Albinas Kuncas', 2014, 4, 'Geras Filmas', 9.4),
(10, 'Desimtas Filmas', 'Darius Oberas', 2000, 6, 'Geras Filmas', 9.7);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `zanrai`
--

CREATE TABLE `zanrai` (
  `id` int(4) NOT NULL,
  `pavadinimas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `zanrai`
--

INSERT INTO `zanrai` (`id`, `pavadinimas`) VALUES
(1, 'Fantastika'),
(2, 'Veiksmas'),
(3, 'Drama'),
(4, 'Trileris'),
(5, 'Kriminalas'),
(6, 'Detektyvas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmai`
--
ALTER TABLE `filmai`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `zanrai`
--
ALTER TABLE `zanrai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmai`
--
ALTER TABLE `filmai`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zanrai`
--
ALTER TABLE `zanrai`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
