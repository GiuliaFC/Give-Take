-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2017 at 08:54 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `givetake`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambiti`
--

CREATE TABLE `ambiti` (
  `IDAmbito` int(10) NOT NULL,
  `Descrizione` varchar(30) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `ambiti`
--

INSERT INTO `ambiti` (`IDAmbito`, `Descrizione`) VALUES
(1, 'Elettrico'),
(2, 'Casalingo');

-- --------------------------------------------------------

--
-- Table structure for table `richieste`
--

CREATE TABLE `richieste` (
  `IDRichiesta` int(15) NOT NULL,
  `Utente` int(15) NOT NULL,
  `Ambito` int(10) NOT NULL,
  `Durata` time NOT NULL,
  `Ora_Registr` time NOT NULL,
  `Completato` tinyint(1) NOT NULL,
  `Incaricato` int(15) DEFAULT NULL,
  `Titolo` varchar(30) COLLATE latin1_bin NOT NULL,
  `Longitudine` varchar(11) COLLATE latin1_bin NOT NULL,
  `Latitudine` varchar(11) COLLATE latin1_bin NOT NULL,
  `Note` varchar(100) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `richieste`
--

INSERT INTO `richieste` (`IDRichiesta`, `Utente`, `Ambito`, `Durata`, `Ora_Registr`, `Completato`, `Incaricato`, `Titolo`, `Longitudine`, `Latitudine`, `Note`) VALUES
(1, 1, 1, '01:00:00', '13:20:00', 0, 2, 'Prova', 'ProvaLong', 'ProvaLat', 'Ciaone.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `IDUtente` int(11) NOT NULL,
  `Nome` varchar(30) COLLATE latin1_bin NOT NULL,
  `Cognome` varchar(30) COLLATE latin1_bin NOT NULL,
  `Email` varchar(40) COLLATE latin1_bin NOT NULL,
  `NomeUtente` varchar(20) COLLATE latin1_bin NOT NULL,
  `Password` varchar(32) COLLATE latin1_bin NOT NULL,
  `Telefono` varchar(10) COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`IDUtente`, `Nome`, `Cognome`, `Email`, `NomeUtente`, `Password`, `Telefono`) VALUES
(1, 'Prova1', 'Prova1', 'prova1@prova1.com', 'prova1', '5fe6ce280af32ba2816b0f0d4cff5e63', NULL),
(2, 'Prova2', 'Prova2', 'prova2@prova2.com', 'prova2', '280093f2cfe260a00ee1bb06f96584de', '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambiti`
--
ALTER TABLE `ambiti`
  ADD PRIMARY KEY (`IDAmbito`);

--
-- Indexes for table `richieste`
--
ALTER TABLE `richieste`
  ADD PRIMARY KEY (`IDRichiesta`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`IDUtente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `richieste`
--
ALTER TABLE `richieste`
  MODIFY `IDRichiesta` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `IDUtente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
