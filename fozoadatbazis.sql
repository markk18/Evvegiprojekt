-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Sze 28. 09:19
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `fozoadatbazis`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `etkezes`
--

CREATE TABLE `etkezes` (
  `etk_id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `felhasznalo_id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `rang_id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `felh_feltetelek` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hozzavalok`
--

CREATE TABLE `hozzavalok` (
  `hozzavalo_id` int(11) NOT NULL,
  `neve` varchar(100) NOT NULL,
  `feherje` decimal(8,2) DEFAULT 0.00,
  `zsir` decimal(8,2) DEFAULT 0.00,
  `szenhidrat` decimal(8,2) DEFAULT 0.00,
  `kaloria` decimal(8,2) DEFAULT 0.00,
  `me_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoria`
--

CREATE TABLE `kategoria` (
  `k_id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mertekegyseg`
--

CREATE TABLE `mertekegyseg` (
  `me_id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rang`
--

CREATE TABLE `rang` (
  `rang_id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `receptek`
--

CREATE TABLE `receptek` (
  `recept_id` int(11) NOT NULL,
  `neve` varchar(150) NOT NULL,
  `elkeszites` text NOT NULL,
  `adagok` int(11) NOT NULL,
  `ido` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `etk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `recept_hozzavalok`
--

CREATE TABLE `recept_hozzavalok` (
  `recept_id` int(11) NOT NULL,
  `hozzavalo_id` int(11) NOT NULL,
  `mennyiseg` decimal(8,2) NOT NULL,
  `me_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `velemeny`
--

CREATE TABLE `velemeny` (
  `ert_id` int(11) NOT NULL,
  `recept_id` int(11) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL,
  `ertekeles` int(11) NOT NULL,
  `datum` datetime NOT NULL DEFAULT current_timestamp(),
  `komment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `etkezes`
--
ALTER TABLE `etkezes`
  ADD PRIMARY KEY (`etk_id`);

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`felhasznalo_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `rang_id` (`rang_id`);

--
-- A tábla indexei `hozzavalok`
--
ALTER TABLE `hozzavalok`
  ADD PRIMARY KEY (`hozzavalo_id`),
  ADD KEY `me_id` (`me_id`);

--
-- A tábla indexei `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`k_id`);

--
-- A tábla indexei `mertekegyseg`
--
ALTER TABLE `mertekegyseg`
  ADD PRIMARY KEY (`me_id`);

--
-- A tábla indexei `rang`
--
ALTER TABLE `rang`
  ADD PRIMARY KEY (`rang_id`);

--
-- A tábla indexei `receptek`
--
ALTER TABLE `receptek`
  ADD PRIMARY KEY (`recept_id`),
  ADD KEY `k_id` (`k_id`),
  ADD KEY `etk_id` (`etk_id`);

--
-- A tábla indexei `recept_hozzavalok`
--
ALTER TABLE `recept_hozzavalok`
  ADD PRIMARY KEY (`recept_id`,`hozzavalo_id`),
  ADD KEY `hozzavalo_id` (`hozzavalo_id`),
  ADD KEY `me_id` (`me_id`);

--
-- A tábla indexei `velemeny`
--
ALTER TABLE `velemeny`
  ADD PRIMARY KEY (`ert_id`),
  ADD KEY `recept_id` (`recept_id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `etkezes`
--
ALTER TABLE `etkezes`
  MODIFY `etk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `felhasznalo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `hozzavalok`
--
ALTER TABLE `hozzavalok`
  MODIFY `hozzavalo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `k_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `mertekegyseg`
--
ALTER TABLE `mertekegyseg`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `rang`
--
ALTER TABLE `rang`
  MODIFY `rang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `receptek`
--
ALTER TABLE `receptek`
  MODIFY `recept_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `velemeny`
--
ALTER TABLE `velemeny`
  MODIFY `ert_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD CONSTRAINT `felhasznalo_ibfk_1` FOREIGN KEY (`rang_id`) REFERENCES `rang` (`rang_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `hozzavalok`
--
ALTER TABLE `hozzavalok`
  ADD CONSTRAINT `hozzavalok_ibfk_1` FOREIGN KEY (`me_id`) REFERENCES `mertekegyseg` (`me_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `receptek`
--
ALTER TABLE `receptek`
  ADD CONSTRAINT `receptek_ibfk_1` FOREIGN KEY (`k_id`) REFERENCES `kategoria` (`k_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receptek_ibfk_2` FOREIGN KEY (`etk_id`) REFERENCES `etkezes` (`etk_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `recept_hozzavalok`
--
ALTER TABLE `recept_hozzavalok`
  ADD CONSTRAINT `recept_hozzavalok_ibfk_1` FOREIGN KEY (`recept_id`) REFERENCES `receptek` (`recept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recept_hozzavalok_ibfk_2` FOREIGN KEY (`hozzavalo_id`) REFERENCES `hozzavalok` (`hozzavalo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recept_hozzavalok_ibfk_3` FOREIGN KEY (`me_id`) REFERENCES `mertekegyseg` (`me_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `velemeny`
--
ALTER TABLE `velemeny`
  ADD CONSTRAINT `velemeny_ibfk_1` FOREIGN KEY (`recept_id`) REFERENCES `receptek` (`recept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `velemeny_ibfk_2` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalo` (`felhasznalo_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
