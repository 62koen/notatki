-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Lut 2021, 08:16
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `IDAutor` int(10) UNSIGNED NOT NULL,
  `Imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `autorzy`
--

INSERT INTO `autorzy` (`IDAutor`, `Imie`, `Nazwisko`) VALUES
(1, 'Henryk', 'Sienkiewicz'),
(2, 'Adam', 'Mickiewicz'),
(3, 'Jo', 'Nesbo'),
(4, 'Charlotte', 'Link'),
(5, 'Katarzyna', 'Bonda'),
(6, 'Tom', 'Clancy'),
(7, 'Ken', 'Follet'),
(8, 'Harlan', 'Coben'),
(9, 'Wojciech', 'Chmielarz'),
(10, 'Małgorzata', 'Musierowicz'),
(11, 'Bolesław', 'Prus'),
(12, 'Stephen', 'King'),
(13, 'Remigiusz', 'Mróz'),
(14, 'Henning ', 'Mankell ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `egzemplarze`
--

CREATE TABLE `egzemplarze` (
  `IDEgzemplarz` int(10) UNSIGNED NOT NULL,
  `KsiazkaID` int(10) UNSIGNED NOT NULL,
  `LiczbaEgz` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `egzemplarze`
--

INSERT INTO `egzemplarze` (`IDEgzemplarz`, `KsiazkaID`, `LiczbaEgz`) VALUES
(1, 1, 3),
(2, 2, 4),
(3, 3, 3),
(4, 4, 6),
(5, 5, 2),
(6, 6, 2),
(7, 7, 1),
(8, 8, 1),
(9, 9, 5),
(10, 10, 1),
(11, 11, 4),
(12, 12, 1),
(13, 13, 1),
(14, 14, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `IDKsiazki` int(10) UNSIGNED NOT NULL,
  `AutorID` int(10) UNSIGNED NOT NULL,
  `Tytul` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Wydawnictwo` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `RokWydania` int(10) UNSIGNED DEFAULT NULL,
  `Cena_za_wyp` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ksiazki`
--

INSERT INTO `ksiazki` (`IDKsiazki`, `AutorID`, `Tytul`, `Wydawnictwo`, `RokWydania`, `Cena_za_wyp`) VALUES
(1, 1, 'Latarnik', 'Ossolineum', 2002, 5),
(2, 1, 'Bez dogmatu', 'Literka', 1974, 5.5),
(3, 2, 'Konrad Wallenrod', 'Krokodyl', 1965, 10),
(4, 2, 'Sonety krymskie', 'Ossolineum', 2014, 5),
(5, 2, 'Prelekcje paryskie', 'Ossolineum', 2005, 5.5),
(6, 3, 'Policja', 'Agra', 2010, 7),
(7, 4, 'Wielbiciel', 'Agra', 2012, 7),
(8, 5, 'Lampiony', 'Ossolineum', 2016, 8),
(9, 13, 'Ekstradycja', 'Czwarta Strona', 2020, 10),
(10, 13, 'Wyrok', 'Czwarta Strona', 2019, 8.5),
(11, 13, 'Rewizja', 'Czwarta Strona', 2016, 6.5),
(12, 13, 'Immunitet', 'Czwarta Strona', 2016, 6),
(13, 14, 'Biała Lwica', 'W.A.B.', 2012, 4.5),
(14, 14, 'Fałszywy trop', 'W.A.B.', 2005, 3),
(15, 14, 'O krok', 'W.A.B.', 2006, 3.5),
(16, 9, 'Wyrwa', 'Marginesy', 2020, 10),
(17, 9, 'Żmijowisko', 'Marginesy', 2018, 8),
(18, 9, 'Rana', 'Marginesy', 2019, 9),
(19, 9, 'Cienie', 'Marginesy', 2018, 8),
(20, 11, 'Lalka', 'GREG', 2006, 5);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`IDAutor`);

--
-- Indeksy dla tabeli `egzemplarze`
--
ALTER TABLE `egzemplarze`
  ADD PRIMARY KEY (`IDEgzemplarz`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`IDKsiazki`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `IDAutor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `egzemplarze`
--
ALTER TABLE `egzemplarze`
  MODIFY `IDEgzemplarz` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `IDKsiazki` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
