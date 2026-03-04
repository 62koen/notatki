-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2025 at 12:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firma`
--

-- --------------------------------------------------------

--
-- Table structure for table `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `placa` int(11) NOT NULL,
  `stanowisko` varchar(30) NOT NULL,
  `pesel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `placa`, `stanowisko`, `pesel`) VALUES
(1, 'Adam', 'Kowalski', 1625, 'magazynier', 1234567890),
(2, 'Adam', 'Nowak', 3760, 'kierownik', 1234567890),
(3, 'Andrzej', 'Kowalski', 4200, 'kierownik', 1234567890),
(4, 'Arkadiusz', 'Malinowski', 1600, 'kierowca', 1234567890),
(5, 'Andrzej', 'Malinowski', 1450, 'sprzedawca', 1234567890),
(6, 'Krzysztof', 'Nowicki', 1300, 'sprzedawca', 1234567890),
(7, 'Kacper', 'Adamczyk', 1610, 'serwisant', 1234567890),
(8, 'Kamil', 'Andrzejczak', 1200, 'asystent', 1234567890),
(9, 'Krzysztof', 'Arkuszewski', 1500, 'magazynier', 1234567890),
(10, 'Kamil', 'Borowski', 1600, 'sprzedawca', 1234567890);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
