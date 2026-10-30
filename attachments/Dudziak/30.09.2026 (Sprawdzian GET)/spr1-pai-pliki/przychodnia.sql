-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 29, 2026 at 09:45 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `przychodnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `harmonogram`
--

CREATE TABLE `harmonogram` (
  `id` int(11) NOT NULL,
  `lekarz_id` int(11) NOT NULL,
  `data_wizyty` date NOT NULL,
  `godzina` time NOT NULL,
  `pacjent` varchar(100) NOT NULL,
  `gabinet` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `harmonogram`
--

INSERT INTO `harmonogram` (`id`, `lekarz_id`, `data_wizyty`, `godzina`, `pacjent`, `gabinet`) VALUES
(1, 1, '2026-10-05', '09:00:00', 'Marian Grabowski', 'Gabinet 102'),
(2, 1, '2026-10-05', '09:30:00', 'Ewa Lis', 'Gabinet 102'),
(3, 1, '2026-10-06', '11:15:00', 'Piotr Wiśniewski', 'Gabinet 105'),
(4, 2, '2026-10-05', '10:00:00', 'Krzysztof Mazur', 'Gabinet 204'),
(5, 2, '2026-10-07', '14:30:00', 'Barbara Zając', 'Gabinet 204'),
(6, 3, '2026-10-06', '08:00:00', 'Zofia Kaczmarek', 'Gabinet 110');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarze`
--

CREATE TABLE `lekarze` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lekarze`
--

INSERT INTO `lekarze` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Jan', 'Kowalski'),
(2, 'Anna', 'Nowak'),
(3, 'Andrzej', 'Zieliński');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `harmonogram`
--
ALTER TABLE `harmonogram`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lekarz_id` (`lekarz_id`);

--
-- Indeksy dla tabeli `lekarze`
--
ALTER TABLE `lekarze`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `harmonogram`
--
ALTER TABLE `harmonogram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lekarze`
--
ALTER TABLE `lekarze`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `harmonogram`
--
ALTER TABLE `harmonogram`
  ADD CONSTRAINT `harmonogram_ibfk_1` FOREIGN KEY (`lekarz_id`) REFERENCES `lekarze` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
