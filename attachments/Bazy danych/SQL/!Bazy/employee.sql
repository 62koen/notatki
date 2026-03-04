-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Gru 2019, 12:43
-- Wersja serwera: 10.1.35-MariaDB
-- Wersja PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mys`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee`
--

CREATE TABLE `employee` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `SecondName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Salary` decimal(6,2) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `HireData` date DEFAULT NULL,
  `RelieveDate` date DEFAULT NULL,
  `Active` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `employee`
--

INSERT INTO `employee` (`Id`, `FirstName`, `SecondName`, `LastName`, `Gender`, `BirthDate`, `Salary`, `DepartmentId`, `HireData`, `RelieveDate`, `Active`) VALUES
(1, 'Mary', NULL, 'Smith', 'W', '1985-12-18', '2000.00', 1, '2011-05-06', NULL, b'1'),
(2, 'Paul', 'George', 'Johnson', 'M', '1990-01-13', '1500.00', 3, '2011-10-29', NULL, b'1'),
(3, 'Patricia', NULL, 'Wilson', 'W', '1995-05-28', '1000.00', 4, '2012-01-24', '2013-11-25', b'0'),
(4, 'Linda', 'Lisa', 'Brown', 'W', '1983-07-11', '2700.00', 2, '2012-06-15', NULL, b'1'),
(5, 'Johnatan', NULL, 'Davis', 'M', '1978-01-24', '1200.00', 1, '2013-01-15', NULL, b'1'),
(6, 'John', NULL, 'Miller', NULL, '1993-10-20', '2000.00', 4, '2013-03-27', '2014-10-06', b'0'),
(7, 'Elizabeth', 'Dorothy', 'Taylor', 'W', '1992-09-09', '2110.00', 1, '2013-05-01', NULL, b'1'),
(8, 'James', 'NULL', 'Wilson', 'M', '1987-03-19', '1000.00', 3, '2013-10-09', '2014-03-01', b'1'),
(9, 'Robert', 'NULL', 'Anderson', 'M', '1989-12-13', '2900.00', 2, '2013-12-20', '2014-05-05', b'0'),
(10, 'John', 'Mark', 'Smith', 'W', '1990-05-24', '2500.00', 1, '2014-01-24', NULL, b'1');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
