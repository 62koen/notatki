-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Sty 2021, 13:15
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
-- Baza danych: `workers`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(15) NOT NULL,
  `nazwisko` varchar(20) NOT NULL,
  `placa` decimal(7,2) NOT NULL,
  `stanowisko` varchar(20) DEFAULT NULL,
  `data_urodz` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `placa`, `stanowisko`, `data_urodz`) VALUES
(1, 'Adam ', 'Kowalski', '1461.60', 'magazynier', '1987-06-09'),
(2, 'Piotr', 'Nowak', '3384.00', 'kierownik', '1982-11-01'),
(3, 'Andrzej', 'Kowalski', '3780.00', 'kierownik', '1994-05-27'),
(4, 'Arkadiusz', 'Malinowski', '1440.00', 'kierowca', '2000-03-14'),
(5, 'Andrzej', 'Malinowski', '1305.00', 'sprzedawca', '1999-12-04'),
(7, 'Marek', 'Babacki', '4500.00', 'nauczyciel', '1985-04-15'),
(8, 'Ferdynand', 'Kiepski', '1900.00', 'bezrobotny', '1952-09-06'),
(9, 'Krzysztof', 'Arkuszewski', '3333.00', 'magazynier', '2000-03-14'),
(10, 'Kamil', 'Borowski', '3800.00', 'sprzedawca', '2000-07-07');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
