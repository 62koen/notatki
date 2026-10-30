-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Kwi 2021, 09:30
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `obcy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `KlientId` int(11) NOT NULL,
  `Imię` varchar(15) NOT NULL,
  `Nazwisko` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`KlientId`, `Imię`, `Nazwisko`) VALUES
(1, 'Jan', 'Kowalski'),
(2, 'Andrzej', 'Nowak'),
(3, 'Anna', 'Jabłońska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `ZamówienieId` int(11) NOT NULL,
  `KlientId` int(11) NOT NULL,
  `Nazwa_towaru` varchar(30) NOT NULL,
  `Data_zam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`ZamówienieId`, `KlientId`, `Nazwa_towaru`, `Data_zam`) VALUES
(1, 1, 'Towar 1', '2021-02-25'),
(2, 1, 'Towar 2', '2021-03-12'),
(3, 3, 'Towar 3', '2021-03-05');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`KlientId`);

--
-- Indeksy dla tabeli `zamówienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`ZamówienieId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
