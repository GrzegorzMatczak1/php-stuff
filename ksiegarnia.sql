-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 19, 2024 at 07:36 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ksiegarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autor`
--

CREATE TABLE `autor` (
  `id_autora` int(11) NOT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `narodowosc` varchar(50) DEFAULT NULL,
  `okres_tworczosci` varchar(100) DEFAULT NULL,
  `jezyk` varchar(50) DEFAULT NULL,
  `rodzaj_tworczosci` varchar(100) DEFAULT NULL,
  `osiagniecia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`id_autora`, `nazwisko`, `imie`, `narodowosc`, `okres_tworczosci`, `jezyk`, `rodzaj_tworczosci`, `osiagniecia`) VALUES
(1, 'Mickiewicz', 'Adam', 'Polska', 'XIX wiek', 'Polski', 'Poezja', 'Dziady, Pan Tadeusz'),
(2, 'Sienkiewicz', 'Henryk', 'Polska', 'XIX wiek', 'Polski', 'Powieść', 'Quo Vadis, Trylogia'),
(3, 'Orwell', 'George', 'Wielka Brytania', 'XX wiek', 'Angielski', 'Powieść, Esej', 'Rok 1984, Folwark Zwierzęcy'),
(4, 'Mickiewicz', 'Adam', 'Polska', 'XIX wiek', 'Polski', 'Poezja', 'Dziady, Pan Tadeusz'),
(5, 'Sienkiewicz', 'Henryk', 'Polska', 'XIX wiek', 'Polski', 'Powieść', 'Quo Vadis, Trylogia'),
(6, 'Orwell', 'George', 'Wielka Brytania', 'XX wiek', 'Angielski', 'Powieść, Esej', 'Rok 1984, Folwark Zwierzęcy'),
(7, 'Hemingway', 'Ernest', 'USA', 'XX wiek', 'Angielski', 'Powieść', 'Stary człowiek i morze'),
(8, 'Tolkien', 'J.R.R.', 'Wielka Brytania', 'XX wiek', 'Angielski', 'Fantastyka', 'Władca Pierścieni, Hobbit'),
(9, 'Prus', 'Bolesław', 'Polska', 'XIX wiek', 'Polski', 'Powieść', 'Lalka, Faraon'),
(10, 'Dostojewski', 'Fiodor', 'Rosja', 'XIX wiek', 'Rosyjski', 'Powieść', 'Zbrodnia i kara, Bracia Karamazow'),
(11, 'Dickens', 'Charles', 'Wielka Brytania', 'XIX wiek', 'Angielski', 'Powieść', 'Opowieść wigilijna, Oliver Twist'),
(12, 'Asimov', 'Isaac', 'USA', 'XX wiek', 'Angielski', 'Science Fiction', 'Fundacja, Ja, robot'),
(13, 'King', 'Stephen', 'USA', 'XX wiek', 'Angielski', 'Horror', 'Lśnienie, Miasteczko Salem');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `faktura`
--

CREATE TABLE `faktura` (
  `nr_faktury` int(11) NOT NULL,
  `sposob_platnosci` varchar(50) DEFAULT NULL,
  `data_wystawienia_faktury` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faktura`
--

INSERT INTO `faktura` (`nr_faktury`, `sposob_platnosci`, `data_wystawienia_faktury`) VALUES
(1, 'Przelew', '2023-09-01'),
(2, 'Karta kredytowa', '2023-09-15'),
(3, 'Przelew', '2023-09-01'),
(4, 'Karta kredytowa', '2023-09-15'),
(5, 'PayPal', '2023-08-01'),
(6, 'BLIK', '2023-07-20'),
(7, 'Gotówka', '2023-06-30'),
(8, 'Przelew', '2023-05-10'),
(9, 'Karta kredytowa', '2023-04-12'),
(10, 'PayPal', '2023-03-23'),
(11, 'BLIK', '2023-02-15'),
(12, 'Gotówka', '2023-01-05');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id_klienta` int(11) NOT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `kod_pocztowy` varchar(10) DEFAULT NULL,
  `miejscowosc` varchar(50) DEFAULT NULL,
  `ulica` varchar(100) DEFAULT NULL,
  `nr_domu` varchar(10) DEFAULT NULL,
  `PESEL` varchar(11) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `adres_e_mail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` (`id_klienta`, `nazwisko`, `imie`, `kod_pocztowy`, `miejscowosc`, `ulica`, `nr_domu`, `PESEL`, `telefon`, `adres_e_mail`) VALUES
(1, 'Kowalski', 'Jan', '00-001', 'Warszawa', 'Mickiewicza', '10', '92010112345', '123456789', 'jan.kowalski@example.com'),
(2, 'Nowak', 'Anna', '30-001', 'Kraków', 'Sienkiewicza', '15', '85030456789', '987654321', 'anna.nowak@example.com'),
(3, 'Kowalski', 'Jan', '00-001', 'Warszawa', 'Mickiewicza', '10', '92010112345', '123456789', 'jan.kowalski@example.com'),
(4, 'Nowak', 'Anna', '30-001', 'Kraków', 'Sienkiewicza', '15', '85030456789', '987654321', 'anna.nowak@example.com'),
(5, 'Wiśniewski', 'Piotr', '40-500', 'Katowice', 'Kościuszki', '20', '78050511122', '502321654', 'piotr.wisniewski@example.com'),
(6, 'Mazur', 'Ewa', '60-600', 'Poznań', 'Polna', '3', '90031209876', '789654123', 'ewa.mazur@example.com'),
(7, 'Zieliński', 'Paweł', '70-700', 'Szczecin', 'Leśna', '8', '78021254321', '654987321', 'pawel.zielinski@example.com'),
(8, 'Lewandowski', 'Kamil', '80-800', 'Gdańsk', 'Morska', '12', '87030312345', '600700800', 'kamil.lewandowski@example.com'),
(9, 'Kamińska', 'Agnieszka', '90-900', 'Łódź', 'Słoneczna', '7', '90050509876', '501234567', 'agnieszka.kaminska@example.com'),
(10, 'Dąbrowski', 'Marek', '11-111', 'Wrocław', 'Zamkowa', '4', '95010198765', '789456123', 'marek.dabrowski@example.com'),
(11, 'Wojciechowski', 'Tomasz', '22-222', 'Lublin', 'Szkolna', '22', '85050576543', '789123654', 'tomasz.wojciechowski@example.com'),
(12, 'Kwiatkowska', 'Magdalena', '33-333', 'Opole', 'Ogrodowa', '16', '94031245678', '987321654', 'magdalena.kwiatkowska@example.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `id_ksiazki` int(11) NOT NULL,
  `tytul` varchar(100) DEFAULT NULL,
  `id_autora` int(11) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL,
  `wydawnictwo` varchar(100) DEFAULT NULL,
  `temat` varchar(100) DEFAULT NULL,
  `miejsce_wydania` varchar(100) DEFAULT NULL,
  `jezyk_ksiazki` varchar(50) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `rok_wydania` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`id_ksiazki`, `tytul`, `id_autora`, `cena`, `wydawnictwo`, `temat`, `miejsce_wydania`, `jezyk_ksiazki`, `opis`, `rok_wydania`) VALUES
(1, 'Pan Tadeusz', 1, 29.99, 'PWN', 'Epika', 'Warszawa', 'Polski', 'Opowieść o szlachcie polskiej w XIX wieku.', '0000'),
(2, 'Quo Vadis', 2, 34.99, 'Znak', 'Historia', 'Kraków', 'Polski', 'Opowieść o początkach chrześcijaństwa w Rzymie.', '0000'),
(3, 'Rok 1984', 3, 39.99, 'Penguin', 'Dystopia', 'Londyn', 'Angielski', 'Przyszłość pod rządami totalitarnego reżimu.', '1949'),
(4, 'Pan Tadeusz', 1, 29.99, 'PWN', 'Epika', 'Warszawa', 'Polski', 'Opowieść o szlachcie polskiej w XIX wieku.', '0000'),
(5, 'Quo Vadis', 2, 34.99, 'Znak', 'Historia', 'Kraków', 'Polski', 'Opowieść o początkach chrześcijaństwa w Rzymie.', '0000'),
(6, 'Rok 1984', 3, 39.99, 'Penguin', 'Dystopia', 'Londyn', 'Angielski', 'Przyszłość pod rządami totalitarnego reżimu.', '1949'),
(7, 'Stary człowiek i morze', 4, 24.99, 'Scribner', 'Przygoda', 'Nowy Jork', 'Angielski', 'Historia starego rybaka walczącego z olbrzymią rybą.', '1952'),
(8, 'Władca Pierścieni', 5, 59.99, 'Allen & Unwin', 'Fantastyka', 'Londyn', 'Angielski', 'Saga o Śródziemiu.', '1954'),
(9, 'Lalka', 6, 44.99, 'Czytelnik', 'Powieść społeczna', 'Warszawa', 'Polski', 'Historia miłości i walki o majątek.', '0000'),
(10, 'Zbrodnia i kara', 7, 29.99, 'LitRes', 'Psychologiczna', 'Petersburg', 'Rosyjski', 'Rozważania o zbrodni i winie.', '0000'),
(11, 'Opowieść wigilijna', 8, 19.99, 'Chapman & Hall', 'Powieść', 'Londyn', 'Angielski', 'Historia przemiany skąpca Scrooge\'a.', '0000'),
(12, 'Fundacja', 9, 49.99, 'Doubleday', 'Science Fiction', 'Nowy Jork', 'Angielski', 'Opowieść o upadku imperium galaktycznego.', '1951'),
(13, 'Lśnienie', 10, 45.99, 'Doubleday', 'Horror', 'Nowy Jork', 'Angielski', 'Historia nawiedzonego hotelu i jego wpływu na rodzinę.', '1977');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rejestracja_zamowienia`
--

CREATE TABLE `rejestracja_zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_ksiazki` int(11) NOT NULL,
  `liczba_egz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rejestracja_zamowienia`
--

INSERT INTO `rejestracja_zamowienia` (`id_zamowienia`, `id_ksiazki`, `liczba_egz`) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `data_zlozenia_zamowienia` date DEFAULT NULL,
  `data_wyslania` date DEFAULT NULL,
  `koszt_wysylki` decimal(10,2) DEFAULT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `id_faktury` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `data_zlozenia_zamowienia`, `data_wyslania`, `koszt_wysylki`, `id_klienta`, `id_faktury`) VALUES
(1, '2023-09-01', '2023-09-03', 12.99, 1, 1),
(2, '2023-09-12', '2023-09-13', 15.99, 2, 2),
(3, '2023-09-01', '2023-09-03', 12.99, 1, 1),
(4, '2023-09-12', '2023-09-13', 15.99, 2, 2),
(5, '2023-08-05', '2023-08-06', 10.50, 3, 3),
(6, '2023-07-20', '2023-07-21', 9.99, 4, 4),
(7, '2023-06-30', '2023-07-01', 8.50, 5, 5),
(8, '2023-05-10', '2023-05-12', 11.00, 6, 6),
(9, '2023-04-15', '2023-04-17', 13.99, 7, 7),
(10, '2023-03-25', '2023-03-26', 14.50, 8, 8),
(11, '2023-02-14', '2023-02-15', 16.00, 9, 9),
(12, '2023-01-04', '2023-01-05', 17.99, 10, 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id_autora`);

--
-- Indeksy dla tabeli `faktura`
--
ALTER TABLE `faktura`
  ADD PRIMARY KEY (`nr_faktury`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`id_ksiazki`),
  ADD KEY `id_autora` (`id_autora`);

--
-- Indeksy dla tabeli `rejestracja_zamowienia`
--
ALTER TABLE `rejestracja_zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`,`id_ksiazki`),
  ADD KEY `id_ksiazki` (`id_ksiazki`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_faktury` (`id_faktury`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id_autora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faktura`
--
ALTER TABLE `faktura`
  MODIFY `nr_faktury` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `klient`
--
ALTER TABLE `klient`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `id_ksiazki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD CONSTRAINT `ksiazki_ibfk_1` FOREIGN KEY (`id_autora`) REFERENCES `autor` (`id_autora`);

--
-- Constraints for table `rejestracja_zamowienia`
--
ALTER TABLE `rejestracja_zamowienia`
  ADD CONSTRAINT `rejestracja_zamowienia_ibfk_1` FOREIGN KEY (`id_zamowienia`) REFERENCES `zamowienia` (`id_zamowienia`),
  ADD CONSTRAINT `rejestracja_zamowienia_ibfk_2` FOREIGN KEY (`id_ksiazki`) REFERENCES `ksiazki` (`id_ksiazki`);

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klient` (`id_klienta`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`id_faktury`) REFERENCES `faktura` (`nr_faktury`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
