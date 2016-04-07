-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 07 apr 2016 om 09:24
-- Serverversie: 10.1.10-MariaDB
-- PHP-versie: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbb`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cart_bestellingen`
--

CREATE TABLE `cart_bestellingen` (
  `id` int(11) NOT NULL,
  `totaal_prijs` decimal(2,0) NOT NULL,
  `klant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cart_bestelling_line`
--

CREATE TABLE `cart_bestelling_line` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bestelling_id` int(11) NOT NULL,
  `aantal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cart_klant`
--

CREATE TABLE `cart_klant` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cart_producten`
--

CREATE TABLE `cart_producten` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `cart_producten`
--

INSERT INTO `cart_producten` (`id`, `name`, `price`) VALUES
(1, 'Name', '42');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `cart_bestellingen`
--
ALTER TABLE `cart_bestellingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cart_bestelling_line`
--
ALTER TABLE `cart_bestelling_line`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cart_klant`
--
ALTER TABLE `cart_klant`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `cart_producten`
--
ALTER TABLE `cart_producten`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `cart_bestellingen`
--
ALTER TABLE `cart_bestellingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `cart_bestelling_line`
--
ALTER TABLE `cart_bestelling_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `cart_klant`
--
ALTER TABLE `cart_klant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `cart_producten`
--
ALTER TABLE `cart_producten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
