-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Sty 2021, 10:14
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
-- Baza danych: `books`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazka`
--

CREATE TABLE `ksiazka` (
  `Idksiazki` int(11) NOT NULL,
  `imieautora` text NOT NULL,
  `nazwiskoautora` text NOT NULL,
  `tytul` text NOT NULL,
  `cena` float NOT NULL,
  `rokwydania` int(11) NOT NULL,
  `wydawnictwo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ksiazka`
--

INSERT INTO `ksiazka` (`Idksiazki`, `imieautora`, `nazwiskoautora`, `tytul`, `cena`, `rokwydania`, `wydawnictwo`) VALUES
(1, 'Jan', 'Michalak', 'Zaawansowane programowanie w PHP', 47.29, 2000, 'Albatros'),
(2, 'Andrzej', 'Krawczyk', 'Windows 8 PL. Zaawansowana administracja systemem', 49.99, 2001, 'Czarny Kruk'),
(3, 'Piotr', 'Jakubowski', 'HTML5. Tworzenie witryn', 53.65, 2000, 'Albatros'),
(4, 'Tomasz', 'Kowalski', 'Urządzenia techniki komputerowej', 34.15, 2015, 'Komp2002'),
(5, 'Jan', 'Pasternak', 'PHP. Tworzenie nowoczesnych stron WWW', 29.99, 2015, 'EdukacjaPl'),
(6, 'Robin', 'Nixon', 'PHP, MySQL i JavaScript', 99, 2002, 'Czarny Kruk'),
(7, 'Jolanta', 'Pokorska', 'Tworzenie stron internetowych', 23.95, 2000, 'EdukacjaPl'),
(8, 'Krzysztof', 'Pytel', 'Pracownia aplikacji internetowych', 35.4, 2000, 'EdukacjaPl');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ksiazka`
--
ALTER TABLE `ksiazka`
  ADD PRIMARY KEY (`Idksiazki`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
