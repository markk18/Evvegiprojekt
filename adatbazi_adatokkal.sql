-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Okt 05. 09:20
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

--
-- A tábla adatainak kiíratása `etkezes`
--

INSERT INTO `etkezes` (`etk_id`, `nev`) VALUES
(1, 'Reggeli'),
(2, 'Ebéd'),
(3, 'Vacsora'),
(4, 'Uzsonna');

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

--
-- A tábla adatainak kiíratása `hozzavalok`
--

INSERT INTO `hozzavalok` (`hozzavalo_id`, `neve`, `feherje`, `zsir`, `szenhidrat`, `kaloria`, `me_id`) VALUES
(1, 'Marhahús (lábszár)', 20.00, 6.00, 0.00, 140.00, 1),
(2, 'Csirkecomb', 17.00, 12.00, 0.00, 180.00, 1),
(3, 'Sertéskaraj', 21.00, 5.00, 0.00, 135.00, 1),
(4, 'Füstölt kolbász', 15.00, 35.00, 2.00, 380.00, 1),
(5, 'Füstölt szalonna', 12.00, 50.00, 0.00, 500.00, 1),
(6, 'Vöröshagyma', 1.10, 0.10, 9.30, 40.00, 1),
(7, 'Burgonya', 2.00, 0.10, 17.00, 77.00, 1),
(8, 'Sárgarépa', 0.90, 0.20, 9.60, 41.00, 1),
(9, 'Fehérrépa', 1.20, 0.30, 18.00, 75.00, 1),
(10, 'Zöldpaprika (TV)', 1.00, 0.20, 4.60, 22.00, 1),
(11, 'Paradicsom', 0.90, 0.20, 3.90, 18.00, 1),
(12, 'Fokhagyma (gerezd)', 0.20, 0.00, 1.00, 5.00, 3),
(13, 'Pirospaprika (őrölt)', 0.42, 0.39, 1.62, 8.50, 5),
(14, 'Só', 0.00, 0.00, 0.00, 0.00, 6),
(15, 'Fekete bors', 0.00, 0.00, 0.00, 0.00, 6),
(16, 'Étolaj', 0.00, 9.00, 0.00, 81.00, 4),
(17, 'Sertészsír', 0.00, 12.00, 0.00, 108.00, 4),
(18, 'Tejföl (20%)', 2.80, 20.00, 3.50, 205.00, 1),
(19, 'Búzaliszt (BL55)', 10.00, 1.00, 73.00, 340.00, 1),
(20, 'Tojás (M)', 6.00, 5.00, 0.50, 72.00, 3),
(21, 'Tej (2,8%)', 3.30, 2.80, 4.70, 58.00, 2),
(22, 'Kristálycukor', 0.00, 0.00, 100.00, 400.00, 1),
(23, 'Vaj', 0.90, 81.00, 0.10, 717.00, 1),
(24, 'Zsemlemorzsa', 12.00, 2.00, 72.00, 360.00, 1),
(25, 'Száraz tészta (metélt)', 12.00, 1.50, 72.00, 350.00, 1),
(26, 'Túró (félzsíros)', 12.00, 4.00, 3.50, 100.00, 1),
(27, 'Lencse (száraz)', 25.00, 1.00, 60.00, 350.00, 1),
(28, 'Ecet (10%)', 0.00, 0.00, 0.00, 2.00, 4),
(29, 'Mák (darált)', 18.00, 42.00, 28.00, 525.00, 1),
(30, 'Babérlevél', 0.00, 0.00, 0.00, 0.00, 3),
(31, 'Cérnametélt', 12.00, 1.50, 72.00, 350.00, 1),
(32, 'Köménymag', 0.00, 0.00, 0.00, 0.00, 6),
(33, 'Sárgabarack-lekvár', 0.40, 0.10, 60.00, 245.00, 1),
(34, 'Kifli', 4.50, 1.00, 26.00, 130.00, 3),
(35, 'Savanyú káposzta', 1.10, 0.10, 3.00, 19.00, 1),
(36, 'Darált sertéshús', 17.00, 20.00, 0.00, 260.00, 1),
(37, 'Rizs (száraz)', 7.00, 0.60, 80.00, 360.00, 1),
(38, 'Ponty', 18.00, 5.50, 0.00, 115.00, 1),
(39, 'Csípős paprika', 0.20, 0.10, 1.50, 7.00, 3),
(40, 'Csiperkegomba', 3.10, 0.30, 3.30, 22.00, 1),
(41, 'Petrezselyem (zöld)', 3.00, 0.80, 6.30, 36.00, 1),
(42, 'Száraz bab', 21.00, 1.20, 60.00, 333.00, 1),
(43, 'Füstölt csülök', 22.00, 14.00, 0.00, 225.00, 1),
(44, 'Csirkemell', 23.00, 2.00, 0.00, 110.00, 1),
(45, 'Cukkini (tök)', 1.20, 0.30, 3.10, 17.00, 1),
(46, 'Kapor', 3.50, 1.10, 7.00, 43.00, 1),
(47, 'Zöldbab', 1.80, 0.20, 7.00, 31.00, 1),
(48, 'Sertéslapocka', 18.00, 15.00, 0.00, 215.00, 1),
(49, 'Tarhonya', 12.00, 1.50, 73.00, 350.00, 1),
(50, 'Zsemle', 4.50, 0.70, 28.00, 140.00, 3),
(51, 'Mustár', 0.30, 0.25, 0.20, 5.00, 5),
(52, 'Paradicsompüré (passzírozott)', 1.60, 0.30, 7.00, 38.00, 1),
(53, 'Meggy', 1.00, 0.30, 12.00, 50.00, 1),
(54, 'Fahéj (őrölt)', 0.10, 0.03, 1.70, 6.00, 5),
(55, 'Búzadara', 11.00, 1.00, 73.00, 350.00, 1),
(56, 'Kakaópor', 20.00, 14.00, 58.00, 228.00, 1),
(57, 'Mazsola', 3.00, 0.50, 79.00, 300.00, 1),
(58, 'Dió (darált)', 15.00, 65.00, 14.00, 650.00, 1),
(59, 'Tejszín (30%)', 2.20, 30.00, 3.00, 292.00, 2),
(60, 'Étcsokoládé', 6.00, 35.00, 50.00, 540.00, 1),
(61, 'Réteslap', 10.00, 1.00, 73.00, 340.00, 1),
(62, 'Alma', 0.30, 0.20, 14.00, 52.00, 1),
(63, 'Friss élesztő', 8.00, 1.00, 18.00, 105.00, 1),
(64, 'Reszelt sajt (trappista)', 26.00, 28.00, 1.00, 360.00, 1),
(65, 'Friss uborka', 0.70, 0.10, 3.60, 15.00, 1),
(66, 'Savanyú uborka', 0.50, 0.10, 2.00, 12.00, 1),
(67, 'Száraz sárgaborsó', 24.00, 1.20, 60.00, 341.00, 1),
(68, 'Spenót', 2.90, 0.40, 3.60, 23.00, 1),
(69, 'Fejes káposzta', 1.30, 0.10, 5.80, 25.00, 1),
(70, 'Kelkáposzta', 3.00, 0.20, 6.00, 27.00, 1),
(71, 'Majoránna (szárított)', 0.00, 0.00, 0.00, 0.00, 6),
(72, 'Szegfűbors', 0.00, 0.00, 0.00, 0.00, 6),
(73, 'Citrom', 1.10, 0.30, 9.30, 29.00, 3),
(74, 'Rum', 0.00, 0.00, 0.00, 35.00, 4),
(75, 'Zöldborsó', 5.40, 0.40, 14.00, 81.00, 1),
(76, 'Sóska', 2.00, 0.70, 3.20, 22.00, 1),
(77, 'Karfiol', 1.90, 0.30, 5.00, 25.00, 1),
(78, 'Tárkony (szárított)', 0.10, 0.03, 0.20, 1.00, 5),
(79, 'Kacsacomb', 16.00, 18.00, 0.00, 230.00, 1),
(80, 'Lilakáposzta', 1.40, 0.20, 7.40, 31.00, 1),
(81, 'Sertésoldalas', 15.00, 25.00, 0.00, 300.00, 1),
(82, 'Pulykamell', 24.00, 1.50, 0.00, 110.00, 1),
(83, 'Sütőtök', 1.00, 0.10, 6.50, 26.00, 1),
(84, 'Karalábé', 1.70, 0.10, 6.20, 27.00, 1),
(85, 'Főtt sonka', 19.00, 4.50, 1.00, 120.00, 1),
(86, 'Szilva', 0.70, 0.30, 11.40, 46.00, 1),
(87, 'Vaníliás cukor', 0.00, 0.00, 95.00, 380.00, 1),
(88, 'Gesztenyemassza', 2.00, 1.50, 40.00, 180.00, 1),
(89, 'Cékla', 1.60, 0.20, 9.60, 43.00, 1),
(90, 'Fejes saláta', 1.40, 0.20, 2.90, 14.00, 1),
(91, 'Tepertő', 25.00, 55.00, 0.00, 600.00, 1),
(92, 'Sütőpor', 0.00, 0.00, 28.00, 53.00, 1),
(93, 'Porcukor', 0.00, 0.00, 99.80, 399.00, 1),
(94, 'Kakukkfű (szárított)', 0.10, 0.03, 0.40, 2.00, 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoria`
--

CREATE TABLE `kategoria` (
  `k_id` int(11) NOT NULL,
  `nev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoria`
--

INSERT INTO `kategoria` (`k_id`, `nev`) VALUES
(1, 'Leves'),
(2, 'Főétel'),
(3, 'Főzelék'),
(4, 'Tésztaétel'),
(5, 'Desszert'),
(6, 'Saláta'),
(7, 'Pékáru');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mertekegyseg`
--

CREATE TABLE `mertekegyseg` (
  `me_id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `mertekegyseg`
--

INSERT INTO `mertekegyseg` (`me_id`, `nev`) VALUES
(1, 'gramm'),
(2, 'deciliter'),
(3, 'darab'),
(4, 'evőkanál'),
(5, 'teáskanál'),
(6, 'csipet');

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

--
-- A tábla adatainak kiíratása `receptek`
--

INSERT INTO `receptek` (`recept_id`, `neve`, `elkeszites`, `adagok`, `ido`, `k_id`, `etk_id`) VALUES
(1, 'Gulyásleves', 'A felkockázott vöröshagymát zsíron üvegesre pároljuk, lehúzzuk a tűzről, hozzáadjuk a pirospaprikát, majd rögtön felöntünk egy kevés vízzel. Beletesszük a kockára vágott marhahúst, a zúzott fokhagymát, a köménymagot és a sót, és lefedve, időnként kevergetve puhulásig főzzük. Ezután hozzáadjuk a felkarikázott sárgarépát és fehérrépát, a paprikát és a paradicsomot, felöntjük annyi vízzel, hogy bőven ellepje, és 20 percet főzzük. Végül beletesszük a kockára vágott burgonyát, és addig főzzük, amíg a burgonya megpuhul.', 4, 120, 1, 2),
(2, 'Paprikás csirke nokedlivel', 'A finomra vágott vöröshagymát zsíron üvegesre pároljuk, lehúzzuk a tűzről, hozzáadjuk a pirospaprikát és a sót, majd beletesszük a csirkecombokat. Hozzáadjuk a paprikát és a paradicsomot, kevés vízzel felöntjük, és lefedve, 40-45 percig főzzük. A tejfölt elkeverjük két evőkanál liszttel és egy kevés hideg vízzel, majd a pörköltbe keverve még 5 percig főzzük. A nokedlihez a maradék lisztet a tojásokkal, sóval és kevés vízzel sűrű tésztává keverjük, nokedli szaggatóval vagy kanállal forrásban lévő sós vízbe szaggatjuk, és felfőzzük. A kész nokedlit leszűrjük, és a paprikás csirkével tálaljuk.', 4, 70, 2, 2),
(3, 'Lecsó kolbásszal', 'A vöröshagymát felkockázzuk, olajon üvegesre pároljuk, majd lehúzzuk a tűzről, és belekeverjük a pirospaprikát. Hozzáadjuk a karikára vágott paprikát, és kb. 10 percig pároljuk. Beletesszük a felkockázott paradicsomot, megsózzuk, és lefedve, kis lángon további 15 percig főzzük. A karikára vágott kolbászt külön serpenyőben megpirítjuk, majd a lecsóhoz keverjük, és még 5 percig együtt főzzük. Friss kenyérrel tálaljuk.', 4, 40, 2, 3),
(4, 'Húsleves', 'A csirkecombokat és a marhahúst hideg vízben felrakjuk főni, és a habját folyamatosan leszedjük. Hozzáadjuk a sót, a borsot, a megtisztított zöldségeket (sárgarépa, fehérrépa, hagyma, paprika, paradicsom, fokhagyma), és kis lángon, fedő nélkül kb. 2 órán át főzzük. A levest leszűrjük, a húst és a répát szeletekre vágjuk. A cérnametéltet külön, sós vízben megfőzzük, majd a leves forró levével és a hússal, répával tálaljuk.', 6, 150, 1, 2),
(5, 'Rakott krumpli', 'A burgonyát héjában megfőzzük, majd meghámozzuk és karikára vágjuk. A tojásokat keményre főzzük, és szintén karikákra vágjuk. A kolbászt vékony karikákra szeljük. Egy vajjal kikent tepsibe rétegezzük a burgonyát, a tojást és a kolbászt, rétegenként sózzuk és tejföllel megkenjük. A legfelső réteg tejföl legyen. 180 fokra előmelegített sütőben kb. 30-35 percig sütjük, amíg a teteje aranybarna lesz.', 4, 90, 2, 2),
(6, 'Túrós csusza', 'A száraz tésztát bő, forrásban lévő sós vízben puhára főzzük, majd leszűrjük. A felkockázott füstölt szalonnát serpenyőben kisütjük, hogy ropogós legyen, és a zsírjával együtt a forró tésztára öntjük. Hozzáadjuk a túrót, és óvatosan összeforgatjuk. Tejföllel és a szalonnapörccel megszórva, melegen tálaljuk.', 4, 30, 4, 2),
(7, 'Palacsinta lekvárral', 'A lisztet a tojásokkal, a tejjel, a cukorral és a sóval csomómentes, folyékony masszává keverjük, majd 15 percig pihentetjük. Egy teflon serpenyőt kevés olajjal kikenünk, és vékony rétegben kisütjük a palacsintákat mindkét oldalon aranybarnára. A kisült palacsintákat sárgabarack-lekvárral megkenjük, összehajtjuk vagy feltekerjük, és melegen tálaljuk.', 4, 40, 5, 4),
(8, 'Lencsefőzelék kolbásszal', 'A lencsét 2-3 órára beáztatjuk, majd a babérlevéllel és sóval puhára főzzük. Közben olajon lisztből világos rántást készítünk, hozzáadjuk a finomra vágott vöröshagymát és a zúzott fokhagymát, majd belekeverjük a pirospaprikát, és felöntjük hideg vízzel. A rántást a lencséhez keverjük, ecettel és cukorral ízesítjük, és 10 percig főzzük. A kolbászt karikára vágva a főzelékkel együtt tálaljuk.', 4, 60, 3, 2),
(9, 'Rántott szelet burgonyapürével', 'A burgonyát meghámozzuk, sós vízben puhára főzzük, majd a vajjal és a tejjel pürésítjük. A sertéskarajt szeletekre vágjuk, kiklopfoljuk, sózzuk és borsozzuk. A szeleteket sorban lisztbe, felvert tojásba, majd zsemlemorzsába forgatjuk. Forró zsírban mindkét oldalán aranybarnára sütjük, majd papírtörlőn lecsepegtetjük. A burgonyapüréval együtt tálaljuk.', 4, 45, 2, 2),
(10, 'Mákos guba', 'A kifliket vékony karikákra szeljük, és egy tálba tesszük. A tejet a cukorral és a vajjal felforraljuk, majd a kiflikre öntjük, hogy jól átnedvesedjenek, és 5-10 percig állni hagyjuk. A darált mákot a tetejére szórjuk, és óvatosan összeforgatjuk. Melegen vagy langyosan tálaljuk, tetejére további mákot szórhatunk.', 4, 30, 5, 3),
(11, 'Marhapörkölt galuskával', 'A finomra vágott vöröshagymát zsíron üvegesre pároljuk, lehúzzuk a tűzről, és belekeverjük a pirospaprikát. Hozzáadjuk a kockára vágott marhahúst, a zúzott fokhagymát és a sót, és saját levében, időnként kevergetve pároljuk. Amikor a leve elfő, kevés vízzel felöntjük, hozzáadjuk a paprikát és a paradicsomot, és lefedve, kis lángon puhára főzzük (kb. 2 óra). A galuskához a lisztet a tojással, sóval és kevés vízzel sűrű tésztává keverjük, majd a tésztát kanállal vagy szaggatóval forrásban lévő sós vízbe szaggatjuk, és addig főzzük, amíg felúszik. A leszűrt galuskát a pörkölttel tálaljuk.', 4, 150, 2, 2),
(12, 'Töltött káposzta', 'A rizst félig megfőzzük, majd a darált hússal, a finomra vágott hagymával, a zúzott fokhagymával, a tojással, a pirospaprikával, a sóval és a borssal összedolgozzuk. A savanyú káposzta egy részét félretesszük, a többiből levelet szedünk, és a tölteléket belecsomagoljuk. Egy lábas aljára szórunk káposztát, ráfektetjük a töltelékeket, közéjük tesszük a füstölt szalonnát és a babérlevelet, majd a maradék káposztával betakarjuk. Annyi vizet öntünk rá, hogy ellepje, és kis lángon, lefedve 1,5-2 órán át főzzük. A tejfölt elkeverjük egy kevés káposztalével, a káposztához keverjük, és még 10 percig főzzük.', 6, 150, 2, 2),
(13, 'Halászlé', 'A hagymát karikára vágjuk, és vízben a paprikával, a sóval, a csípős paprikával és a paradicsommal puhára főzzük, majd az egészet áttörjük vagy leszűrjük. A ponty fejét és farkát hozzáadjuk, 15 percig főzzük. Közben a pontyot kisebb darabokra vágjuk, és a leveshez adjuk. Kis lángon, további 15-20 percig főzzük, óvatosan, hogy a hal ne essen szét. Friss kenyérrel tálaljuk.', 6, 90, 1, 2),
(14, 'Gombapaprikás', 'A hagymát olajon üvegesre pároljuk, lehúzzuk a tűzről, hozzáadjuk a pirospaprikát, majd rögtön beletesszük a felszeletelt gombát. Sózzuk, és saját levében, lefedve 10-15 percig pároljuk. A tejfölt elkeverjük a liszttel és kevés hideg vízzel, a gombához keverjük, és 5 percig főzzük. Aprított petrezselyemzölddel megszórva tálaljuk.', 4, 40, 2, 2),
(15, 'Bableves csülökkel', 'A beáztatott babot a füstölt csülökkel és a babérlevéllel hideg vízben felrakjuk főni. Amikor félig megpuhult, hozzáadjuk a felkarikázott sárgarépát és fehérrépát, a hagymát, a fokhagymát és a sót. Közben olajon lisztből rántást készítünk, belekeverjük a pirospaprikát, és hideg vízzel felöntve a leveshez adjuk. További 20-30 percig főzzük. A csülköt kiszedjük, a húst lefejtjük a csontról, és visszatesszük a levesbe. Tejföllel tálaljuk.', 6, 150, 1, 2),
(16, 'Hortobágyi húsos palacsinta', 'A lisztet a tojásokkal, a tejjel, a sóval és kevés vízzel csomómentes palacsintatésztává keverjük, és 15 percig pihentetjük. Olajjal kikent serpenyőben vékony palacsintákat sütünk. A csirkemellet kockára vágjuk, a felkockázott hagymát olajon megdinszteljük, hozzáadjuk a húst, a pirospaprikát és a sót, majd a paradicsommal lefedve puhára pároljuk. A pörköltet a tejföllel összekeverjük, a húst a palacsintákba töltjük, feltekerjük, és a maradék szaftjával leöntve tálaljuk.', 4, 90, 2, 2),
(17, 'Tökfőzelék kaporral', 'A cukkinit meghámozzuk, és vékony szeletekre vagy lereszeljük, majd sóval meghintve félretesszük. Olajon lisztből világos rántást készítünk, hozzáadjuk a zúzott fokhagymát, és hideg vízzel felöntjük. Beletesszük a kicsavart cukkinit, a cukrot és az ecetet, és 10 percig főzzük. A tejfölt elkeverjük egy kevés főzelékkel, majd a főzelékhez keverjük, hozzáadjuk a kaprot, és még egyszer összeforraljuk.', 4, 30, 3, 2),
(18, 'Zöldbabfőzelék', 'A zöldbabot megtisztítjuk, vágjuk, és sós vízben puhára főzzük. Olajon lisztből rántást készítünk, hozzáadjuk a finomra vágott hagymát és a zúzott fokhagymát, majd belekeverjük a pirospaprikát, és felöntjük a bab főzővizével. A rántást a babhoz keverjük, ecettel ízesítjük, és 10 percig főzzük. Végül a tejföllel elkeverve tálaljuk.', 4, 35, 3, 2),
(19, 'Sertéspörkölt tarhonyával', 'A hagymát zsíron üvegesre pároljuk, lehúzzuk a tűzről, hozzáadjuk a pirospaprikát és a sót, majd beletesszük a kockára vágott sertéslapockát. A fokhagymával, a paprikával és a paradicsommal együtt saját levében lefedve, kis lángon puhára főzzük (kb. 1,5 óra). A tarhonyát száraz serpenyőben vagy kevés olajon aranybarnára pirítjuk, felöntjük kétszeres mennyiségű forró sós vízzel, és lefedve puhára pároljuk. A pörkölttel együtt tálaljuk.', 4, 120, 2, 2),
(20, 'Székelykáposzta', 'A felvágott sertéslapockát zsíron a hagymával együtt megpirítjuk, hozzáadjuk a pirospaprikát és a köménymagot, majd a lecsöpögtetett savanyú káposztát és a babérlevelet. Annyi vízzel felöntjük, hogy éppen ellepje, megsózzuk, és lefedve, kis lángon 1-1,5 órán át főzzük. A tejfölt elkeverjük egy kevés káposzta levével, a káposztához keverjük, és még 10 percig főzzük. Tejföllel és friss kenyérrel tálaljuk.', 4, 100, 2, 2),
(21, 'Fasírt', 'A zsemléket tejben beáztatjuk, majd kinyomkodjuk. A darált húst a zsemlével, a tojással, a finomra vágott hagymával, a zúzott fokhagymával, a mustárral, a pirospaprikával, a sóval és a borssal alaposan összegyúrjuk. Nedves kézzel lapos fasírtokat formálunk, zsemlemorzsába forgatjuk, és forró olajban mindkét oldalán aranybarnára, közepes lángon átsütjük (kb. 12-15 perc). Papírtörlőn lecsepegtetjük, és köretekkel tálaljuk.', 4, 45, 2, 2),
(22, 'Paradicsomleves tésztával', 'A hagymát vajon üvegesre pároljuk, hozzáadjuk a lisztet, és világos rántást készítünk. Beletesszük a passzírozott paradicsomot, felöntjük vízzel, hozzáadjuk a cukrot és a sót, és 15 percig főzzük. A cérnametéltet külön sós vízben megfőzzük, és a levesbe tesszük vagy tányéronként adjuk hozzá.', 4, 30, 1, 2),
(23, 'Hideg meggyleves', 'A magozott meggyet vízben a cukorral, a fahéjjal és a sóval puhára főzzük. A tejfölt kevés hideg levessel simára keverjük, a leveshez adjuk, és még egyszer felforraljuk. Hűtőben legalább 2 órát hűtjük, és jéghidegen tálaljuk.', 4, 30, 1, 2),
(24, 'Túrógombóc', 'A túrót villával összetörjük, hozzáadjuk a tojásokat, a búzadarát, a sót és a cukrot, és összekeverjük. 20 percig pihentetjük. Nedves kézzel gombócokat formálunk, és forrásban lévő enyhén sós vízben 10-12 percig főzzük. A zsemlemorzsát vajon aranybarnára pirítjuk, a leszűrt gombócokat ebben megforgatjuk, és tejföllel tálaljuk.', 4, 45, 5, 2),
(25, 'Somlói galuska', 'A tojásokat a cukorral habosra verjük, hozzáadjuk a lisztet, és kevés vízzel sűrű piskótatésztává keverjük. A tésztát három részre osztjuk: az egyik rész kakaós lesz, egy másikba darált diót keverünk, a harmadikba mazsolát. Sütőpapíros tepsiben 180 fokon kb. 20 percig sütjük, majd kihűtjük és kockákra vágjuk. A piskótakockákat tálban rétegezzük, és a kakaóból, a tejből és a cukorból főzött meleg csokiöntettel leöntjük. Tejszínhabbal és mazsolával megszórva tálaljuk.', 6, 60, 5, 4),
(26, 'Almás rétes', 'Az almát meghámozzuk, lereszeljük, és a cukorral, a fahéjjal, valamint a pirított zsemlemorzsával összekeverjük. A réteslapokat megolvasztott vajjal megkenjük, rétegezzük, és a töltelékkel megrakva feltekerjük. Vajjal megkenjük, és 180 fokra előmelegített sütőben kb. 35-40 percig, aranybarnára sütjük. Langyosan szeletelve tálaljuk.', 8, 75, 5, 4),
(27, 'Lángos', 'Az élesztőt a cukorral és a langyos tejjel felfuttatjuk. A lisztet a sóval, a főtt, áttört burgonyával és az élesztős tejjel összegyúrjuk, majd 45 percig kelesztjük. A megkelt tésztából kézzel lapos lepényeket formálunk, és bő, forró olajban mindkét oldalukon aranybarnára sütjük. A zúzott fokhagymát kevés vízzel elkeverjük, megkenjük vele a lángosokat, majd tejföllel és reszelt sajttal tálaljuk.', 6, 90, 2, 3),
(28, 'Rántotta hagymával és paprikával', 'A hagymát és a felkockázott szalonnát olajon üvegesre pároljuk, hozzáadjuk a felkarikázott paprikát és a paradicsomot, és 5 percig pároljuk. A tojásokat sóval felverjük, a zöldségekre öntjük, és kevergetve, kis lángon kb. 3-4 perc alatt összesütjük. Friss kenyérrel tálaljuk.', 2, 15, 2, 1),
(29, 'Uborkasaláta', 'A friss uborkát vékony karikákra szeljük, sóval meghintjük, és 10 percig állni hagyjuk, majd kicsavarjuk. Az ecetet a cukorral, a zúzott fokhagymával és a pirospaprikával elkeverjük, ráöntjük az uborkára, és összeforgatjuk. Hűtőben legalább 30 percig állni hagyjuk.', 4, 15, 6, 2),
(30, 'Burgonyasaláta', 'A burgonyát héjában megfőzzük, még melegen meghámozzuk és karikára vágjuk. A tojásokat keményre főzzük, felszeleteljük. A burgonyát a finomra vágott hagymával, a savanyú uborkával és a tojással összekeverjük. Az ecetet az olajjal, a mustárral, a sóval és a borssal elkeverjük, ráöntjük a salátára, és alaposan összeforgatjuk. Hűtőben legalább 1 órát állni hagyjuk.', 6, 45, 6, 3),
(31, 'Krumplileves', 'A vöröshagymát zsíron üvegesre pároljuk, hozzáadjuk a pirospaprikát, majd felöntjük vízzel. Beletesszük a kockára vágott burgonyát, a karikára vágott sárgarépát és fehérrépát, a babérlevelet, a köménymagot, a majoránnát és a sót, és puhára főzzük (kb. 25 perc). A lisztet a tejföllel és kevés hideg vízzel simára keverjük, a leveshez adjuk, hozzáadjuk a zúzott fokhagymát, és még 5 percig főzzük.', 4, 45, 1, 2),
(32, 'Korhelyleves', 'A felkockázott szalonnát kisütjük, hozzáadjuk a finomra vágott hagymát, és üvegesre pároljuk. Belekeverjük a pirospaprikát és a lisztet, majd felöntjük vízzel. Hozzáadjuk a savanyú káposztát, a karikára vágott füstölt kolbászt, a zúzott fokhagymát, a babérlevelet és a sót, és 25-30 percig főzzük. A tejfölt egy merőkanál leveshez keverjük, majd a levesbe öntjük, és összeforgatjuk.', 4, 40, 1, 2),
(33, 'Sárgaborsófőzelék', 'A sárgaborsót egy éjszakára beáztatjuk, majd a karikára vágott sárgarépával és sóval puhára főzzük. Olajon lisztből világos rántást készítünk, hozzáadjuk a finomra vágott hagymát és a zúzott fokhagymát, majd hideg vízzel felöntjük. A rántást a borsóhoz keverjük, majoránnával ízesítjük, és 10 percig főzzük.', 4, 75, 3, 2),
(34, 'Spenótfőzelék tükörtojással', 'A spenótot megmossuk, és forró vízben 2-3 percig blansírozzuk, majd leszűrjük és apróra vágjuk. A vajon lisztből világos rántást készítünk, hozzáadjuk a zúzott fokhagymát, és tejjel felöntjük. Beletesszük a spenótot, sóval és borssal ízesítjük, és 10 percig főzzük. Az olajon tükörtojást sütünk, és a főzelékre helyezve tálaljuk.', 4, 30, 3, 2),
(35, 'Rakott káposzta', 'A rizst félig megfőzzük, a darált húst a finomra vágott hagymával, sóval és borssal pirítjuk. A savanyú káposztát lecsöpögtetjük. Zsírral kikent tepsibe rétegezzük a káposztát, a darált húst, a rizst és a karikára vágott kolbászt, minden réteget meglocsolunk tejföllel, és kevés pirospaprikával megszórjuk. A tetejét tejföllel borítjuk, és 180 fokra előmelegített sütőben kb. 45-50 percig sütjük.', 6, 90, 2, 2),
(36, 'Sült csirkecomb burgonyával', 'A csirkecombokat sóval, borssal, pirospaprikával, majoránnával és a zúzott fokhagymával bedörzsöljük, és 30 percig pihentetjük. A burgonyát meghámozzuk, cikkekre vágjuk, sóval és olajjal összeforgatjuk. Tepsibe tesszük a csirkét és a burgonyát, és 200 fokra előmelegített sütőben kb. 50-60 percig sütjük, közben egyszer megfordítjuk, amíg a csirke aranybarna és a burgonya puha.', 4, 75, 2, 2),
(37, 'Brassói aprópecsenye', 'A sertéskarajt kisebb kockákra vágjuk, sóval, borssal és pirospaprikával ízesítjük, majd forró zsíron megpirítjuk. A hagymát felkarikázzuk, hozzáadjuk a húshoz, és együtt puhára pároljuk. A burgonyát kockára vágjuk, külön serpenyőben zsíron aranybarnára sütjük. A zúzott fokhagymát a hús közé keverjük, majd a sült burgonyát hozzáadjuk, és összeforgatjuk.', 4, 60, 2, 2),
(38, 'Vadas marha', 'A marhahúst sózzuk, és zsíron minden oldalán megpirítjuk. Hozzáadjuk a felkarikázott sárgarépát, fehérrépát és hagymát, a babérlevelet, a szegfűborsot és a cukrot, és kevés vízzel felöntve lefedve, puhára pároljuk (kb. 2 óra). A mártást leszűrjük, és a zöldségeket pürésítjük. A lisztet a tejföllel, a mustárral és a citromlével simára keverjük, a mártáshoz keverjük, és 5 percig főzzük. A húst szeletekre vágva a mártással tálaljuk.', 4, 150, 2, 2),
(39, 'Gombaleves', 'A felszeletelt gombát a finomra vágott hagymával vajon megpároljuk, sózzuk, borsozzuk, majd pirospaprikával meghintve vízzel felöntjük. Lisztből és hideg vízből habarást készítünk, a leveshez keverjük, és 15 percig főzzük. A tejfölt egy kevés levessel elkeverjük, hozzáadjuk a zúzott fokhagymát, és a levesbe kevergetjük. Apróra vágott petrezselyemzölddel megszórva tálaljuk.', 4, 35, 1, 2),
(40, 'Káposztás tészta', 'A fejes káposztát vékonyra szeleteljük, sóval meghintjük, és 20 percig állni hagyjuk, majd kicsavarjuk. A cukrot olajon aranybarnára karamellizáljuk, hozzáadjuk a káposztát, és lefedve, kevergetve puhára, aranybarnára pároljuk (kb. 25 perc). Borssal ízesítjük. A száraz tésztát sós vízben megfőzzük, leszűrjük, és a káposztával összeforgatjuk.', 4, 40, 4, 3),
(41, 'Mákos tészta', 'A száraz tésztát bő, sós vízben puhára főzzük, majd leszűrjük. A darált mákot a cukorral és egy csipet sóval összekeverjük. A tésztát vajjal megforgatjuk, rászórjuk a mákos cukrot, és összeforgatjuk. Melegen tálaljuk.', 4, 25, 4, 3),
(42, 'Diós tészta', 'A száraz tésztát sós vízben puhára főzzük, majd leszűrjük. A darált diót a cukorral és egy csipet sóval összekeverjük. A forró tésztát vajjal megforgatjuk, rászórjuk a diós cukrot, és alaposan összeforgatjuk. Melegen tálaljuk.', 4, 25, 4, 3),
(43, 'Sajtos pogácsa', 'A lisztet elmorzsoljuk a hideg vajjal, hozzáadjuk a tejfölt, az egyik tojást, a sót, a langyos tejben felfuttatott élesztőt és a reszelt sajt nagyobb részét, és sima tésztává gyúrjuk. Hűtőben 30 percig pihentetjük. Kinyújtjuk, egyszer hajtogatjuk, kiszaggatjuk, majd a tetejüket bevágjuk. A maradék tojással megkenjük, a maradék sajttal megszórjuk, és 200 fokra előmelegített sütőben 20-25 percig, aranybarnára sütjük.', 10, 90, 7, 4),
(44, 'Zserbó', 'A lisztet a vajjal, a cukorral, a tojásokkal és a tejjel sima tésztává gyúrjuk, és három részre osztjuk. Mindegyik réteget kinyújtjuk, és sütőpapíros tepsiben 180 fokon aranybarnára sütjük. A lekvárt a darált dióval elkeverjük, és két réteg közé kenjük. A tetejét megolvasztott étcsokoládéval és vajjal bevonjuk. Egy éjszakára hűtőbe tesszük, majd szeletekre vágjuk.', 16, 120, 5, 4),
(45, 'Gundel palacsinta', 'A lisztet a tojásokkal, a tejjel, az olajjal és a sóval palacsintatésztává keverjük, és 15 percig pihentetjük. Vékony palacsintákat sütünk. A darált diót a mazsolával, a cukorral és a rummal összekeverjük, és a palacsintákba töltjük, majd összehajtjuk. A tejszínt felforraljuk, hozzáadjuk az étcsokoládét, és simára keverjük. A palacsintákat a csokoládémártással leöntve tálaljuk.', 4, 60, 5, 2),
(46, 'Piskótatekercs', 'A tojások sárgáját a cukor felével habosra keverjük, a fehérjét a maradék cukorral kemény habbá verjük. A kettőt óvatosan összekeverjük, a lisztet belesziteljük, és sütőpapíros tepsibe simítjuk. 180 fokra előmelegített sütőben kb. 10-12 percig sütjük. A forró piskótát megkenjük a lekvárral, és a papírral együtt feltekerjük. Kihűtve szeletekre vágjuk.', 8, 60, 5, 4),
(47, 'Rizsfelfújt', 'A rizst a tejben, a cukor felével és egy csipet sóval puhára főzzük, és hagyjuk kihűlni. A tojások sárgáját a vajjal és a maradék cukorral habosra keverjük, a citrom lereszelt héját és a mazsolát hozzáadjuk, és a rizzsel összekeverjük. A tojásfehérjét kemény habbá verjük, és óvatosan beleforgatjuk. Zsírozott, zsemlemorzsával kiszórt formában 180 fokon kb. 30-35 percig sütjük.', 6, 60, 5, 2),
(48, 'Tejberizs', 'A tejet a rizzsel, a cukorral és egy csipet sóval felforraljuk, majd kis lángon, gyakran kevergetve, kb. 25-30 percig főzzük, amíg a rizs puha és a tej besűrűsödik. Fahéjjal meghintve, melegen vagy langyosan tálaljuk.', 4, 35, 5, 1),
(49, 'Almáspite', 'A lisztet a hideg vajjal, a cukor felével és a tojásokkal sima tésztává gyúrjuk, két részre osztjuk, és hűtőben pihentetjük. Az almát meghámozzuk, lereszeljük, a maradék cukorral és a fahéjjal összekeverjük. Az egyik tésztalapot kinyújtjuk, tepsibe tesszük, megszórjuk zsemlemorzsával, ráhalmozzuk az almát, és befedjük a másik lappal. 180 fokon kb. 40 percig sütjük.', 8, 75, 5, 4),
(50, 'Túrós lepény', 'A lisztet a hideg vajjal, a cukor felével és egy tojással sima tésztává gyúrjuk, és hűtőben pihentetjük. A túrót a maradék cukorral, két tojással, a tejföllel, a mazsolával és a citrom lereszelt héjával simára keverjük. A tésztát kinyújtjuk, tepsibe fektetjük, ráöntjük a túrós tölteléket, és 180 fokra előmelegített sütőben kb. 40 percig sütjük.', 8, 70, 5, 4),
(51, 'Töltött paprika', 'A rizst félig megfőzzük, a darált hússal, a finomra vágott hagymával, a tojással, a pirospaprikával, a sóval és a borssal összedolgozzuk. A paprikák kupakját levágjuk, kiszedjük a magházat, és megtöltjük a hússal. Olajon lisztből rántást készítünk, felöntjük vízzel és a paradicsompürével, hozzáadjuk a cukrot és a sót, majd belehelyezzük a töltött paprikákat. Lefedve, kis lángon kb. 50-60 percig főzzük.', 6, 100, 2, 2),
(52, 'Kelkáposzta főzelék', 'A kelkáposztát vékonyra szeleteljük, és sós vízben a köménymaggal puhára főzzük. Olajon lisztből világos rántást készítünk, hozzáadjuk a finomra vágott hagymát és a zúzott fokhagymát, majd a káposzta főzővizével felöntjük. A rántást a káposztához keverjük, 10 percig főzzük, majd tejföllel elkeverve tálaljuk.', 4, 40, 3, 2),
(53, 'Paprikás krumpli', 'A hagymát zsíron üvegesre pároljuk, lehúzzuk a tűzről, hozzáadjuk a pirospaprikát, majd rögtön beletesszük a karikára vágott kolbászt. Hozzáadjuk a felkarikázott paprikát és a paradicsomot, majd a kockára vágott burgonyát. Sózzuk, annyi vízzel felöntjük, hogy ellepje, és lefedve, puhára főzzük (kb. 25-30 perc).', 4, 50, 2, 2),
(54, 'Tojásos nokedli', 'A lisztet két tojással, sóval és kevés vízzel sűrű nokedlitésztává keverjük. A tésztát szaggatóval forrásban lévő sós vízbe szaggatjuk, és addig főzzük, amíg felúszik, majd leszűrjük. Olajon három tojásból rántottát készítünk, hozzáadjuk a nokedlit, és összeforgatjuk. Melegen tálaljuk.', 4, 30, 4, 3),
(55, 'Káposztasaláta', 'A fejes káposztát vékonyra gyaluljuk, sóval meghintjük, és 15 percig állni hagyjuk, majd kicsavarjuk. Az ecetet a cukorral, az olajjal és a köménymaggal elkeverjük, ráöntjük a káposztára, és alaposan összeforgatjuk. Legalább 30 percig hűtőben állni hagyjuk.', 6, 15, 6, 2),
(56, 'Zöldborsóleves galuskával', 'A vajon megpároljuk a felkarikázott sárgarépát, hozzáadjuk a zöldborsót, és néhány percig együtt pirítjuk. Felöntjük 1,2 liter vízzel, sózzuk, megcukrozzuk, és 15 percig főzzük. A tojást a liszttel és kevés vízzel galuskatésztává keverjük, és kanalanként a forrásban lévő levesbe szaggatjuk. Amikor a galuska felúszik, hozzáadjuk a tejfölt és az apróra vágott petrezselymet, még egyszer felforraljuk, és melegen tálaljuk.', 4, 40, 1, 2),
(57, 'Sóskaleves tojással', 'A sóskát megmossuk, durvára vágjuk, és 1 liter forrásban lévő sós vízben 5 percig főzzük. Közben az olajból és a lisztből világos rántást készítünk, hozzáadjuk a zúzott fokhagymát, hideg vízzel felöntjük, és csomómentesre keverjük. A rántást a sóskához öntjük, megcukrozzuk, és 10 percig főzzük. A tejfölt egy merőkanál levessel elkeverjük, majd beleforgatjuk a levesbe. A tojásokat keményre főzzük, meghámozzuk, félbevágjuk, és a leves tetejére tesszük.', 4, 30, 1, 2),
(58, 'Karfiolleves', 'A vajon üvegesre pároljuk az apróra vágott vöröshagymát. Hozzáadjuk a rózsákra szedett karfiolt és a kockára vágott burgonyát, felöntjük 8 dl vízzel, megsózzuk, és kb. 20 percig főzzük puhára. Botmixerrel simára pürésítjük, hozzáadjuk a tejszínt, és borssal ízesítjük. Felforraljuk, majd apróra vágott petrezselyemmel megszórva tálaljuk.', 4, 40, 1, 2),
(59, 'Tárkonyos csirkeragu leves', 'A csirkemellet 1,5 liter enyhén sós vízben 20 perc alatt puhára főzzük, kivesszük, és apró kockákra vágjuk. A levesbe tesszük a karikára vágott sárgarépát és fehérrépát, 10 perc után hozzáadjuk a zöldborsót is, és puhára főzzük. Az olajból és a lisztből világos rántást készítünk, hidegen a levessel felöntjük, és a leveshez keverjük. A tejfölt a citromlével, a tárkonnyal és a borssal elkeverjük, és ezzel behabarjuk a levest. A csirkehúst visszatesszük, egyet forralunk rajta, és tálaljuk.', 4, 50, 1, 2),
(60, 'Rántott csirkemell rizzsel', 'A csirkemellet felszeleteljük, kiklopfoljuk, sózzuk és borsozzuk. A szeleteket sorban lisztbe, felvert tojásba, majd zsemlemorzsába forgatjuk. Forró olajban mindkét oldalon aranybarnára sütjük, majd papírtörlőre szedjük. A rizst a vajon röviden megpirítjuk, 5 dl vízzel felöntjük, és lefedve 15 percig főzzük. A rizst apróra vágott petrezselyemmel meghintjük, a csirkét citromkarikákkal tálaljuk.', 4, 50, 2, 2),
(61, 'Tejszínes gombás csirkemell', 'A csirkemellet kockákra vágjuk, sózzuk, borsozzuk, és liszttel meghintjük. A vaj felén kisütjük, majd kivesszük a serpenyőből. A maradék vajon megpároljuk az apróra vágott hagymát és a zúzott fokhagymát, hozzáadjuk a szeletelt gombát, és a levét elfőzzük. Visszatesszük a húst, felöntjük a tejszínnel és 1 dl vízzel, és 10 percig főzzük, amíg besűrűsödik. Közben a tésztát sós vízben kifőzzük. A szószt petrezselyemmel megszórjuk, és tésztával tálaljuk.', 4, 40, 2, 3),
(62, 'Bakonyi sertésszelet nokedlivel', 'A szalonnát kockákra vágjuk, és kisütjük. A zsírján megpároljuk a hagymát, majd lehúzzuk a tűzről, és belekeverjük a pirospaprikát. Hozzáadjuk a csíkokra vágott sertéskarajt, a zúzott fokhagymát, a sót és a borsot, és fehéredésig pirítjuk. Rátesszük a szeletelt gombát, a paprikát és a paradicsompürét, kevés vízzel felöntjük, és lefedve 35-40 percig főzzük. A tejfölt egy merőkanál szafttal elkeverjük, hozzáadjuk, és egyet forralunk rajta. A lisztből, a tojásokból és kevés vízből nokedlitésztát keverünk, forrásban lévő vízbe szaggatjuk, és a ragut nokedlivel tálaljuk.', 4, 60, 2, 2),
(63, 'Kacsacomb lilakáposztával', 'A kacsacombokat sózzuk, borsozzuk, majorannával és a köménymag felével megszórjuk, és 180 fokra előmelegített sütőben, bőrös felükkel felfelé, 90 percig sütjük. A felcsíkozott lilakáposztát olajon a finomra vágott hagymával, a cukorral, a babérlevéllel és a maradék köménnyel megpároljuk. Hozzáadjuk a lereszelt almát, az ecetet és kevés vizet, majd lefedve 40 percig puhára főzzük. A burgonyát megpucoljuk, cikkekre vágjuk, és a kacsa mellé tesszük a tepsibe, hogy a kisült zsíron megsüljön. Az egészet a káposztával együtt tálaljuk.', 4, 120, 2, 2),
(64, 'Magyaros sült oldalas', 'A zúzott fokhagymát elkeverjük a mustárral, a pirospaprikával, a majorannával, a sóval, a borssal és az olajjal. Az oldalast a páccal alaposan bekenjük, és legalább 2 órát (lehetőleg egy éjszakát) pihentetjük. Fóliával lefedve 170 fokon 90 percig sütjük, majd a fóliát levesszük, és további 20 percig pirítjuk. A meghámozott, cikkekre vágott burgonyát az oldalas mellé tesszük a tepsibe, és együtt sütjük. Savanyú uborkával tálaljuk.', 4, 130, 2, 2),
(65, 'Borsos marhatokány', 'A marhahúst ujjnyi csíkokra vágjuk. A zsíron megpároljuk a vöröshagymát, hozzáadjuk a húst, és erős lángon addig pirítjuk, amíg a leve elfő. Hozzáadjuk a zúzott fokhagymát, a durvára tört fekete borsot, a sót és a paradicsompürét. Kevés vízzel felöntjük, lefedve, kis lángon 90 percig főzzük. Utoljára a csíkokra vágott paprikát és paradicsomot is hozzáadjuk, és további 15 percig főzzük. Megfőzött rizzsel tálaljuk.', 4, 120, 2, 2),
(66, 'Pulykamell zöldségekkel', 'A pulykamellet csíkokra vágjuk, sózzuk, borsozzuk, kakukkfűvel meghintjük. Két evőkanál olajon aranybarnára sütjük, majd kivesszük a serpenyőből. A maradék olajon megpároljuk a hagymát, hozzáadjuk a vékony karikákra vágott sárgarépát, 5 perc múlva a kockázott cukkinit és a paprikát. A zúzott fokhagymával fűszerezzük, 10 percig pároljuk. Visszatesszük a húst, és még 5 percig együtt főzzük. Citromlével meglocsolva tálaljuk.', 4, 45, 2, 3),
(67, 'Rántott gomba tartármártással', 'A gombafejeket megtisztítjuk, megsózzuk, és sorban lisztbe, felvert tojásba, majd zsemlemorzsába forgatjuk. Forró olajban mindkét oldalukon aranybarnára sütjük, és papírtörlőre szedjük. A tartármártáshoz a tejfölt elkeverjük a finomra vágott savanyú uborkával és a mustárral. A burgonyát héjában megfőzzük, meghámozzuk, és a gombával, a mártással együtt tálaljuk.', 4, 45, 2, 3),
(68, 'Sütőtökfőzelék tükörtojással', 'A sütőtököt meghámozzuk, kimagozzuk, és vékonyra gyaluljuk. Sós vízben 10 percig főzzük, majd a levének felét leöntjük. Az olajból és a lisztből világos rántást készítünk, hozzáadjuk a zúzott fokhagymát, és a tökhöz keverjük. Megcukrozzuk, ecettel ízesítjük, hozzáadjuk a tejfölt és az apróra vágott kaprot, és 5 percig főzzük. Tükörtojással tálaljuk.', 4, 40, 3, 2),
(69, 'Zöldborsófőzelék', 'A felkarikázott sárgarépát és a zöldborsót kevés sós vízben, cukorral 15 percig puhára főzzük. Az olajból és a lisztből világos rántást készítünk, hozzáadjuk az apróra vágott petrezselymet, felöntjük kevés hideg vízzel, és a zöldségekhez keverjük. Tejföllel behabarjuk, és még 5 percig főzzük. Sült húshoz vagy tükörtojással tálaljuk.', 4, 35, 3, 2),
(70, 'Karalábéfőzelék', 'A karalábét meghámozzuk, vékony csíkokra vágjuk, és sós vízben a cukorral 15-20 percig puhára főzzük. Az olajból és a lisztből világos rántást készítünk, hozzáadjuk a finomra vágott vöröshagymát, majd a tejjel és a karaláb főzővizével felöntjük. A zöldséghez keverjük, hozzáadjuk az apróra vágott petrezselymet, és 5 percig főzzük.', 4, 40, 3, 2),
(71, 'Sonkás kocka', 'A tésztát sós vízben kifőzzük, leszűrjük. A felkockázott sonkát összekeverjük a tejföllel, a tojásokkal és a borssal. A kifőtt tésztát hozzáforgatjuk. Vajjal kikent tepsibe öntjük, a reszelt sajtot a tetejére szórjuk, és 180 fokos sütőben 25 percig sütjük, amíg aranybarna nem lesz.', 4, 45, 4, 3),
(72, 'Lekváros derelye', 'A burgonyát héjában megfőzzük, meghámozzuk, és áttörjük. Hozzáadjuk a lisztet, a tojást és a sót, és összegyúrjuk. A tésztát 3 mm vastagra nyújtjuk, négyzetekre vágjuk, minden négyzet közepére lekvárt teszünk, félbehajtjuk, és körben jól összenyomjuk. A derelyéket forrásban lévő vízben 8-10 percig főzzük. A vajon aranybarnára pirítjuk a zsemlemorzsát a cukorral, a kiszedett derelyéket ebben megforgatjuk, és porcukorral meghintve tálaljuk.', 4, 60, 4, 3),
(73, 'Grízes tészta', 'A tésztát sós vízben kifőzzük, leszűrjük. A vajon világos aranysárgára pirítjuk a búzadarát, és ráöntjük a forró tésztára. Cukorral és fahéjjal ízesítjük, és alaposan összeforgatjuk. Melegen tálaljuk.', 4, 25, 4, 3),
(74, 'Császármorzsa', 'A tojássárgáját a cukorral, a vaníliás cukorral, a liszttel, a tejjel és a sóval sima palacsintatésztává keverjük, majd beleforgatjuk a kemény habbá vert tojásfehérjét. Egy vajjal kikent serpenyőbe öntjük, a mazsolát a tetejére szórjuk, és közepes lángon, fedő alatt aranybarnára sütjük az aljától. Villával apró darabokra szaggatjuk, és tovább pirítjuk. Porcukorral meghintve, lekvárral tálaljuk.', 4, 30, 5, 4),
(75, 'Szilvásgombóc', 'A burgonyát héjában megfőzzük, meghámozzuk, és áttörjük. Kihűlés után a liszttel, a tojással és a sóval összegyúrjuk. A tésztát kinyújtjuk, négyzetekre vágjuk, és mindegyikbe belehelyezünk egy kimagozott, cukorral megszórt szilvát. Gombócokat formálunk, és forrásban lévő vízben 10-12 percig főzzük. A vajon aranybarnára pirítjuk a zsemlemorzsát, a fahéjjal elkeverjük, és a leszűrt gombócokat megforgatjuk benne.', 6, 60, 5, 2),
(76, 'Vargabéles', 'A cérnametéltet sós vízben kifőzzük, leszűrjük, és a vaj felével elkeverjük. A tojások sárgáját kikeverjük a cukorral, a vaníliás cukorral, a tejföllel, a túróval, a citrom lereszelt héjával és a mazsolával. A tojásfehérjéket kemény habbá verjük, és óvatosan beleforgatjuk a töltelékbe. A tésztát összekeverjük a töltelékkel, a maradék vajjal kikent tepsibe öntjük, és 180 fokon 40-45 percig sütjük. Porcukorral meghintve, szeletelve tálaljuk.', 8, 75, 5, 4),
(77, 'Meggyes pite', 'A lisztet a sütőporral és a hideg vajjal morzsásra dolgozzuk, hozzáadjuk a cukor felét és két tojást, és sima tésztává gyúrjuk. A tésztát kétfelé osztjuk, és az egyik felét kinyújtva a tepsi aljára fektetjük. A tetejére szórjuk a zsemlemorzsát, majd a kimagozott meggyet a fahéjjal és a maradék cukorral elkeverve. A másik tésztalapot rátesszük, a tetejét villával megszurkáljuk, és a harmadik felvert tojással megkenjük. 180 fokon 40 percig sütjük. Kihűlés után porcukorral megszórjuk.', 12, 70, 5, 4),
(78, 'Gesztenyepüré tejszínhabbal', 'A gesztenyemasszát krumplinyomón áttörjük, és elkeverjük a porcukorral és a rummal. A tejszínt a vaníliás cukorral kemény habbá verjük. A gesztenyét tálalótányérokra nyomjuk, hogy vékony, tésztaszerű szálak legyenek, rátesszük a tejszínhabot, és lereszelt étcsokoládéval meghintjük.', 4, 25, 5, 4),
(79, 'Túrós palacsinta', 'A lisztet két tojással, a tejjel, a sóval és egy kevés olajjal csomómentes palacsintatésztává keverjük, és 15 percig pihentetjük. Vékony palacsintákat sütünk belőle. A túrót elkeverjük a harmadik tojással, a cukorral, a vaníliás cukorral, a mazsolával és a citrom lereszelt héjával. A palacsintákat megtöltjük, feltekerjük, vagy háromszögbe hajtjuk. Tejföllel és porcukorral tálaljuk.', 4, 50, 5, 4),
(80, 'Paradicsomsaláta', 'A paradicsomot vékony szeletekre vágjuk, a vöröshagymát karikákra szeleteljük. Az ecetet elkeverjük a cukorral, a sóval, a borssal és az olajjal, majd ráöntjük a zöldségekre. Apróra vágott petrezselyemmel megszórjuk, és 10 percig állni hagyjuk, hogy az ízek összeérjenek.', 4, 15, 6, 2),
(81, 'Céklasaláta', 'A céklát megmossuk, és sós vízben a köménymaggal 40 percig puhára főzzük. Meghámozzuk, és vékony szeletekre vágjuk vagy lereszeljük. Az ecetet elkeverjük a cukorral, az olajjal és a finomra vágott vöröshagymával, ráöntjük a céklára, és legalább 1 órát hűtőben pihentetjük.', 4, 50, 6, 2),
(82, 'Fejes saláta kemény tojással', 'A tojásokat keményre főzzük, meghámozzuk, és negyedekre vágjuk. A salátalevelet megmossuk, kicsavarjuk, és falatnyi darabokra tépjük, az uborkát vékonyra szeleteljük. Az ecetet elkeverjük a cukorral, a sóval, a zúzott fokhagymával és kevés vízzel. Közvetlenül tálalás előtt ráöntjük a salátára, és a tojással díszítjük.', 4, 15, 6, 2),
(83, 'Kakaós csiga', 'Az élesztőt a langyos tejben egy kevés cukorral felfuttatjuk. A lisztet összekeverjük a sóval, a tojásokkal és a felfuttatott élesztővel, hozzáadjuk a puha vaj felét, és sima, rugalmas tésztává dagasztjuk. Letakarva 1 órát kelesztjük. A kidagasztott tésztát téglalap alakúra nyújtjuk, megkenjük a maradék vajjal, megszórjuk a kakaóporral és a maradék cukorral, majd szorosan feltekerjük. 3 cm vastag szeletekre vágjuk, tepsibe rakjuk, 20 percig kelesztjük, és 180 fokon 20-25 percig sütjük.', 12, 120, 7, 4),
(84, 'Tepertős pogácsa', 'Az élesztőt a langyos tejben felfuttatjuk. A lisztet a sóval, a borssal és a hideg sertészsírral elmorzsoljuk, hozzáadjuk a darált vagy apróra vágott tepertőt, a tejfölt, az egyik tojást és a felfuttatott élesztőt, és gyors mozdulatokkal összegyúrjuk. A tésztát 2 cm vastagra nyújtjuk, háromszor hajtogatjuk, majd 30 percig pihentetjük. Újra kinyújtjuk, a tetejét rácsosan bevagdossuk, pogácsaszaggatóval kiszaggatjuk, és a felvert második tojással megkenjük. 200 fokon 20-25 percig sütjük.', 20, 100, 7, 4),
(85, 'Túrós batyu', 'A lisztet a hideg vajjal elmorzsoljuk, hozzáadjuk a tejfölt, az élesztőt, egy tojást és a sót, és sima tésztává gyúrjuk. Letakarva 30 percet pihentetjük. A túrót elkeverjük a másik tojással, a cukorral, a vaníliás cukorral, a mazsolával és a citrom lereszelt héjával. A tésztát vékonyra nyújtjuk, 10x10 cm-es négyzetekre vágjuk, mindegyik közepére töltelékből teszünk, és a sarkokat középen összecsípjük. 180 fokon 25 percig sütjük, majd porcukorral meghintjük.', 12, 80, 7, 4);

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

--
-- A tábla adatainak kiíratása `recept_hozzavalok`
--

INSERT INTO `recept_hozzavalok` (`recept_id`, `hozzavalo_id`, `mennyiseg`, `me_id`) VALUES
(1, 1, 500.00, 1),
(1, 6, 200.00, 1),
(1, 7, 400.00, 1),
(1, 8, 150.00, 1),
(1, 9, 100.00, 1),
(1, 10, 100.00, 1),
(1, 11, 100.00, 1),
(1, 12, 2.00, 3),
(1, 13, 3.00, 5),
(1, 14, 3.00, 6),
(1, 17, 2.00, 4),
(1, 32, 1.00, 6),
(2, 2, 800.00, 1),
(2, 6, 200.00, 1),
(2, 10, 100.00, 1),
(2, 11, 100.00, 1),
(2, 13, 4.00, 5),
(2, 14, 4.00, 6),
(2, 17, 2.00, 4),
(2, 18, 200.00, 1),
(2, 19, 320.00, 1),
(2, 20, 2.00, 3),
(3, 4, 200.00, 1),
(3, 6, 150.00, 1),
(3, 10, 600.00, 1),
(3, 11, 500.00, 1),
(3, 13, 2.00, 5),
(3, 14, 2.00, 6),
(3, 16, 2.00, 4),
(4, 1, 300.00, 1),
(4, 2, 800.00, 1),
(4, 6, 100.00, 1),
(4, 8, 250.00, 1),
(4, 9, 150.00, 1),
(4, 10, 50.00, 1),
(4, 11, 50.00, 1),
(4, 12, 2.00, 3),
(4, 14, 3.00, 6),
(4, 15, 1.00, 6),
(4, 31, 100.00, 1),
(5, 4, 200.00, 1),
(5, 7, 800.00, 1),
(5, 14, 3.00, 6),
(5, 18, 300.00, 1),
(5, 20, 4.00, 3),
(5, 23, 20.00, 1),
(6, 5, 100.00, 1),
(6, 14, 2.00, 6),
(6, 18, 200.00, 1),
(6, 25, 300.00, 1),
(6, 26, 250.00, 1),
(7, 14, 1.00, 6),
(7, 16, 3.00, 4),
(7, 19, 250.00, 1),
(7, 20, 2.00, 3),
(7, 21, 4.00, 2),
(7, 22, 20.00, 1),
(7, 33, 200.00, 1),
(8, 4, 150.00, 1),
(8, 6, 100.00, 1),
(8, 12, 2.00, 3),
(8, 13, 1.00, 5),
(8, 14, 3.00, 6),
(8, 16, 2.00, 4),
(8, 19, 30.00, 1),
(8, 22, 10.00, 1),
(8, 27, 300.00, 1),
(8, 28, 2.00, 4),
(8, 30, 2.00, 3),
(9, 3, 600.00, 1),
(9, 7, 600.00, 1),
(9, 14, 3.00, 6),
(9, 15, 1.00, 6),
(9, 17, 8.00, 4),
(9, 19, 80.00, 1),
(9, 20, 2.00, 3),
(9, 21, 1.00, 2),
(9, 23, 30.00, 1),
(9, 24, 120.00, 1),
(10, 21, 4.00, 2),
(10, 22, 80.00, 1),
(10, 23, 20.00, 1),
(10, 29, 100.00, 1),
(10, 34, 6.00, 3),
(11, 1, 800.00, 1),
(11, 6, 300.00, 1),
(11, 10, 100.00, 1),
(11, 11, 100.00, 1),
(11, 12, 2.00, 3),
(11, 13, 6.00, 5),
(11, 14, 4.00, 6),
(11, 17, 2.00, 4),
(11, 19, 300.00, 1),
(11, 20, 1.00, 3),
(12, 5, 100.00, 1),
(12, 6, 150.00, 1),
(12, 12, 2.00, 3),
(12, 13, 2.00, 5),
(12, 14, 3.00, 6),
(12, 15, 1.00, 6),
(12, 17, 2.00, 4),
(12, 18, 200.00, 1),
(12, 20, 1.00, 3),
(12, 30, 2.00, 3),
(12, 35, 1000.00, 1),
(12, 36, 500.00, 1),
(12, 37, 100.00, 1),
(13, 6, 600.00, 1),
(13, 11, 100.00, 1),
(13, 13, 4.00, 5),
(13, 14, 3.00, 6),
(13, 38, 1200.00, 1),
(13, 39, 1.00, 3),
(14, 6, 150.00, 1),
(14, 13, 2.00, 5),
(14, 14, 2.00, 6),
(14, 16, 2.00, 4),
(14, 18, 200.00, 1),
(14, 19, 20.00, 1),
(14, 40, 600.00, 1),
(14, 41, 10.00, 1),
(15, 6, 100.00, 1),
(15, 8, 150.00, 1),
(15, 9, 100.00, 1),
(15, 12, 2.00, 3),
(15, 13, 1.00, 5),
(15, 14, 3.00, 6),
(15, 16, 2.00, 4),
(15, 18, 100.00, 1),
(15, 19, 30.00, 1),
(15, 30, 2.00, 3),
(15, 42, 300.00, 1),
(15, 43, 400.00, 1),
(16, 6, 150.00, 1),
(16, 11, 150.00, 1),
(16, 13, 2.00, 5),
(16, 14, 3.00, 6),
(16, 16, 4.00, 4),
(16, 18, 200.00, 1),
(16, 19, 250.00, 1),
(16, 20, 2.00, 3),
(16, 21, 3.00, 2),
(16, 44, 500.00, 1),
(17, 12, 1.00, 3),
(17, 14, 2.00, 6),
(17, 16, 2.00, 4),
(17, 18, 150.00, 1),
(17, 19, 30.00, 1),
(17, 22, 10.00, 1),
(17, 28, 1.00, 4),
(17, 45, 800.00, 1),
(17, 46, 10.00, 1),
(18, 6, 80.00, 1),
(18, 12, 2.00, 3),
(18, 13, 1.00, 5),
(18, 14, 2.00, 6),
(18, 16, 2.00, 4),
(18, 18, 100.00, 1),
(18, 19, 30.00, 1),
(18, 28, 1.00, 4),
(18, 47, 600.00, 1),
(19, 6, 300.00, 1),
(19, 10, 100.00, 1),
(19, 11, 100.00, 1),
(19, 12, 2.00, 3),
(19, 13, 6.00, 5),
(19, 14, 3.00, 6),
(19, 17, 2.00, 4),
(19, 48, 800.00, 1),
(19, 49, 300.00, 1),
(20, 6, 150.00, 1),
(20, 13, 2.00, 5),
(20, 14, 2.00, 6),
(20, 17, 2.00, 4),
(20, 18, 200.00, 1),
(20, 30, 1.00, 3),
(20, 32, 1.00, 6),
(20, 35, 800.00, 1),
(20, 48, 600.00, 1),
(21, 6, 100.00, 1),
(21, 12, 2.00, 3),
(21, 13, 1.00, 5),
(21, 14, 3.00, 6),
(21, 15, 1.00, 6),
(21, 16, 6.00, 4),
(21, 20, 1.00, 3),
(21, 21, 1.00, 2),
(21, 24, 60.00, 1),
(21, 36, 600.00, 1),
(21, 50, 2.00, 3),
(21, 51, 1.00, 5),
(22, 6, 80.00, 1),
(22, 14, 2.00, 6),
(22, 19, 30.00, 1),
(22, 22, 20.00, 1),
(22, 23, 20.00, 1),
(22, 31, 100.00, 1),
(22, 52, 700.00, 1),
(23, 14, 1.00, 6),
(23, 18, 100.00, 1),
(23, 22, 120.00, 1),
(23, 53, 600.00, 1),
(23, 54, 1.00, 5),
(24, 14, 1.00, 6),
(24, 18, 150.00, 1),
(24, 20, 2.00, 3),
(24, 22, 40.00, 1),
(24, 23, 40.00, 1),
(24, 24, 100.00, 1),
(24, 26, 500.00, 1),
(24, 55, 80.00, 1),
(25, 19, 100.00, 1),
(25, 20, 4.00, 3),
(25, 21, 2.00, 2),
(25, 22, 150.00, 1),
(25, 56, 30.00, 1),
(25, 57, 50.00, 1),
(25, 58, 60.00, 1),
(25, 59, 2.00, 2),
(25, 60, 80.00, 1),
(26, 22, 80.00, 1),
(26, 23, 60.00, 1),
(26, 24, 40.00, 1),
(26, 54, 1.00, 5),
(26, 61, 300.00, 1),
(26, 62, 1000.00, 1),
(27, 7, 150.00, 1),
(27, 12, 3.00, 3),
(27, 14, 3.00, 6),
(27, 16, 15.00, 4),
(27, 18, 150.00, 1),
(27, 19, 500.00, 1),
(27, 21, 2.50, 2),
(27, 22, 5.00, 1),
(27, 63, 25.00, 1),
(27, 64, 100.00, 1),
(28, 5, 50.00, 1),
(28, 6, 80.00, 1),
(28, 10, 100.00, 1),
(28, 11, 100.00, 1),
(28, 14, 2.00, 6),
(28, 16, 1.00, 4),
(28, 20, 6.00, 3),
(29, 12, 2.00, 3),
(29, 13, 1.00, 5),
(29, 14, 2.00, 6),
(29, 22, 10.00, 1),
(29, 28, 2.00, 4),
(29, 65, 600.00, 1),
(30, 6, 80.00, 1),
(30, 7, 800.00, 1),
(30, 14, 2.00, 6),
(30, 15, 1.00, 6),
(30, 16, 3.00, 4),
(30, 20, 3.00, 3),
(30, 28, 3.00, 4),
(30, 51, 1.00, 5),
(30, 66, 100.00, 1),
(31, 6, 100.00, 1),
(31, 7, 600.00, 1),
(31, 8, 100.00, 1),
(31, 9, 100.00, 1),
(31, 12, 2.00, 3),
(31, 13, 1.00, 5),
(31, 14, 3.00, 6),
(31, 17, 2.00, 4),
(31, 18, 100.00, 1),
(31, 19, 30.00, 1),
(31, 30, 1.00, 3),
(31, 32, 1.00, 6),
(31, 71, 1.00, 6),
(32, 4, 200.00, 1),
(32, 5, 100.00, 1),
(32, 6, 100.00, 1),
(32, 12, 3.00, 3),
(32, 13, 2.00, 5),
(32, 14, 2.00, 6),
(32, 17, 2.00, 4),
(32, 18, 150.00, 1),
(32, 19, 30.00, 1),
(32, 30, 1.00, 3),
(32, 35, 500.00, 1),
(33, 6, 80.00, 1),
(33, 8, 100.00, 1),
(33, 12, 2.00, 3),
(33, 14, 3.00, 6),
(33, 16, 2.00, 4),
(33, 19, 30.00, 1),
(33, 67, 300.00, 1),
(33, 71, 1.00, 6),
(34, 12, 3.00, 3),
(34, 14, 2.00, 6),
(34, 15, 1.00, 6),
(34, 16, 1.00, 4),
(34, 19, 30.00, 1),
(34, 20, 4.00, 3),
(34, 21, 2.00, 2),
(34, 23, 30.00, 1),
(34, 68, 800.00, 1),
(35, 4, 150.00, 1),
(35, 6, 100.00, 1),
(35, 13, 2.00, 5),
(35, 14, 2.00, 6),
(35, 15, 1.00, 6),
(35, 17, 2.00, 4),
(35, 18, 300.00, 1),
(35, 35, 800.00, 1),
(35, 36, 500.00, 1),
(35, 37, 150.00, 1),
(36, 2, 1200.00, 1),
(36, 7, 800.00, 1),
(36, 12, 4.00, 3),
(36, 13, 2.00, 5),
(36, 14, 4.00, 6),
(36, 15, 1.00, 6),
(36, 16, 3.00, 4),
(36, 71, 1.00, 6),
(37, 3, 700.00, 1),
(37, 6, 200.00, 1),
(37, 7, 800.00, 1),
(37, 12, 4.00, 3),
(37, 13, 2.00, 5),
(37, 14, 3.00, 6),
(37, 15, 1.00, 6),
(37, 17, 4.00, 4),
(38, 1, 800.00, 1),
(38, 6, 150.00, 1),
(38, 8, 150.00, 1),
(38, 9, 100.00, 1),
(38, 14, 3.00, 6),
(38, 17, 2.00, 4),
(38, 18, 150.00, 1),
(38, 19, 40.00, 1),
(38, 22, 10.00, 1),
(38, 30, 2.00, 3),
(38, 51, 2.00, 5),
(38, 72, 3.00, 6),
(38, 73, 1.00, 3),
(39, 6, 80.00, 1),
(39, 12, 2.00, 3),
(39, 13, 1.00, 5),
(39, 14, 3.00, 6),
(39, 15, 1.00, 6),
(39, 18, 150.00, 1),
(39, 19, 30.00, 1),
(39, 23, 30.00, 1),
(39, 40, 500.00, 1),
(39, 41, 10.00, 1),
(40, 14, 3.00, 6),
(40, 15, 2.00, 6),
(40, 16, 3.00, 4),
(40, 22, 20.00, 1),
(40, 25, 300.00, 1),
(40, 69, 800.00, 1),
(41, 14, 1.00, 6),
(41, 22, 80.00, 1),
(41, 23, 20.00, 1),
(41, 25, 300.00, 1),
(41, 29, 100.00, 1),
(42, 14, 1.00, 6),
(42, 22, 80.00, 1),
(42, 23, 20.00, 1),
(42, 25, 300.00, 1),
(42, 58, 120.00, 1),
(43, 14, 3.00, 6),
(43, 18, 150.00, 1),
(43, 19, 500.00, 1),
(43, 20, 2.00, 3),
(43, 21, 1.00, 2),
(43, 23, 250.00, 1),
(43, 63, 20.00, 1),
(43, 64, 150.00, 1),
(44, 19, 500.00, 1),
(44, 20, 2.00, 3),
(44, 21, 1.00, 2),
(44, 22, 100.00, 1),
(44, 23, 200.00, 1),
(44, 33, 400.00, 1),
(44, 58, 300.00, 1),
(44, 60, 100.00, 1),
(45, 14, 1.00, 6),
(45, 16, 3.00, 4),
(45, 19, 250.00, 1),
(45, 20, 2.00, 3),
(45, 21, 3.00, 2),
(45, 22, 80.00, 1),
(45, 57, 50.00, 1),
(45, 58, 150.00, 1),
(45, 59, 2.00, 2),
(45, 60, 100.00, 1),
(45, 74, 2.00, 4),
(46, 19, 150.00, 1),
(46, 20, 5.00, 3),
(46, 22, 150.00, 1),
(46, 33, 200.00, 1),
(47, 14, 1.00, 6),
(47, 20, 4.00, 3),
(47, 21, 6.00, 2),
(47, 22, 100.00, 1),
(47, 23, 30.00, 1),
(47, 24, 30.00, 1),
(47, 37, 200.00, 1),
(47, 57, 50.00, 1),
(47, 73, 1.00, 3),
(48, 14, 1.00, 6),
(48, 21, 10.00, 2),
(48, 22, 60.00, 1),
(48, 37, 150.00, 1),
(48, 54, 1.00, 5),
(49, 19, 400.00, 1),
(49, 20, 2.00, 3),
(49, 22, 150.00, 1),
(49, 23, 200.00, 1),
(49, 24, 40.00, 1),
(49, 54, 1.00, 5),
(49, 62, 1000.00, 1),
(50, 18, 150.00, 1),
(50, 19, 300.00, 1),
(50, 20, 3.00, 3),
(50, 22, 100.00, 1),
(50, 23, 150.00, 1),
(50, 26, 500.00, 1),
(50, 57, 50.00, 1),
(50, 73, 1.00, 3),
(51, 6, 100.00, 1),
(51, 10, 800.00, 1),
(51, 13, 1.00, 5),
(51, 14, 3.00, 6),
(51, 15, 1.00, 6),
(51, 16, 2.00, 4),
(51, 19, 30.00, 1),
(51, 20, 1.00, 3),
(51, 22, 10.00, 1),
(51, 36, 500.00, 1),
(51, 37, 100.00, 1),
(51, 52, 500.00, 1),
(52, 6, 80.00, 1),
(52, 12, 2.00, 3),
(52, 14, 3.00, 6),
(52, 16, 2.00, 4),
(52, 18, 100.00, 1),
(52, 19, 30.00, 1),
(52, 32, 1.00, 6),
(52, 70, 800.00, 1),
(53, 4, 200.00, 1),
(53, 6, 200.00, 1),
(53, 7, 1000.00, 1),
(53, 10, 100.00, 1),
(53, 11, 100.00, 1),
(53, 13, 3.00, 5),
(53, 14, 3.00, 6),
(53, 17, 2.00, 4),
(54, 14, 3.00, 6),
(54, 16, 2.00, 4),
(54, 19, 400.00, 1),
(54, 20, 5.00, 3),
(55, 14, 2.00, 6),
(55, 16, 2.00, 4),
(55, 22, 20.00, 1),
(55, 28, 3.00, 4),
(55, 32, 1.00, 6),
(55, 69, 600.00, 1),
(56, 8, 100.00, 1),
(56, 14, 1.00, 5),
(56, 18, 2.00, 4),
(56, 19, 100.00, 1),
(56, 20, 1.00, 3),
(56, 22, 1.00, 5),
(56, 23, 1.00, 4),
(56, 41, 10.00, 1),
(56, 75, 400.00, 1),
(57, 12, 1.00, 3),
(57, 14, 1.00, 5),
(57, 16, 2.00, 4),
(57, 18, 3.00, 4),
(57, 19, 40.00, 1),
(57, 20, 4.00, 3),
(57, 22, 1.00, 5),
(57, 76, 400.00, 1),
(58, 6, 80.00, 1),
(58, 7, 200.00, 1),
(58, 14, 1.00, 5),
(58, 15, 1.00, 6),
(58, 23, 20.00, 1),
(58, 41, 10.00, 1),
(58, 59, 1.00, 2),
(58, 77, 500.00, 1),
(59, 8, 150.00, 1),
(59, 9, 100.00, 1),
(59, 14, 1.00, 5),
(59, 15, 1.00, 6),
(59, 16, 2.00, 4),
(59, 18, 4.00, 4),
(59, 19, 30.00, 1),
(59, 44, 400.00, 1),
(59, 73, 0.50, 3),
(59, 75, 150.00, 1),
(59, 78, 2.00, 5),
(60, 14, 2.00, 5),
(60, 15, 1.00, 6),
(60, 16, 2.00, 2),
(60, 19, 80.00, 1),
(60, 20, 2.00, 3),
(60, 23, 20.00, 1),
(60, 24, 120.00, 1),
(60, 37, 250.00, 1),
(60, 41, 10.00, 1),
(60, 44, 600.00, 1),
(60, 73, 1.00, 3),
(61, 6, 100.00, 1),
(61, 12, 2.00, 3),
(61, 14, 1.00, 5),
(61, 15, 1.00, 6),
(61, 19, 30.00, 1),
(61, 23, 30.00, 1),
(61, 25, 250.00, 1),
(61, 40, 400.00, 1),
(61, 41, 10.00, 1),
(61, 44, 600.00, 1),
(61, 59, 2.00, 2),
(62, 3, 700.00, 1),
(62, 5, 80.00, 1),
(62, 6, 150.00, 1),
(62, 10, 100.00, 1),
(62, 12, 2.00, 3),
(62, 13, 2.00, 5),
(62, 14, 2.00, 5),
(62, 15, 1.00, 6),
(62, 18, 150.00, 1),
(62, 19, 250.00, 1),
(62, 20, 2.00, 3),
(62, 40, 300.00, 1),
(62, 52, 1.00, 4),
(63, 6, 100.00, 1),
(63, 7, 600.00, 1),
(63, 14, 2.00, 5),
(63, 15, 1.00, 6),
(63, 16, 1.00, 4),
(63, 22, 1.00, 4),
(63, 28, 2.00, 4),
(63, 30, 1.00, 3),
(63, 32, 1.00, 5),
(63, 62, 200.00, 1),
(63, 71, 1.00, 5),
(63, 79, 1200.00, 1),
(63, 80, 700.00, 1),
(64, 7, 800.00, 1),
(64, 12, 6.00, 3),
(64, 13, 1.00, 4),
(64, 14, 2.00, 5),
(64, 15, 1.00, 6),
(64, 16, 2.00, 4),
(64, 51, 2.00, 4),
(64, 66, 200.00, 1),
(64, 71, 1.00, 5),
(64, 81, 1200.00, 1),
(65, 1, 700.00, 1),
(65, 6, 200.00, 1),
(65, 10, 100.00, 1),
(65, 11, 100.00, 1),
(65, 12, 3.00, 3),
(65, 14, 2.00, 5),
(65, 15, 2.00, 5),
(65, 17, 2.00, 4),
(65, 37, 250.00, 1),
(65, 52, 1.00, 4),
(66, 6, 100.00, 1),
(66, 8, 200.00, 1),
(66, 10, 150.00, 1),
(66, 12, 2.00, 3),
(66, 14, 1.00, 5),
(66, 15, 1.00, 6),
(66, 16, 3.00, 4),
(66, 45, 300.00, 1),
(66, 73, 0.50, 3),
(66, 82, 600.00, 1),
(66, 94, 1.00, 5),
(67, 7, 600.00, 1),
(67, 14, 1.00, 5),
(67, 16, 2.00, 2),
(67, 18, 200.00, 1),
(67, 19, 80.00, 1),
(67, 20, 2.00, 3),
(67, 24, 120.00, 1),
(67, 40, 600.00, 1),
(67, 51, 1.00, 5),
(67, 66, 80.00, 1),
(68, 12, 2.00, 3),
(68, 14, 1.00, 5),
(68, 16, 2.00, 4),
(68, 18, 150.00, 1),
(68, 19, 40.00, 1),
(68, 20, 4.00, 3),
(68, 22, 1.00, 4),
(68, 28, 1.00, 4),
(68, 46, 10.00, 1),
(68, 83, 1000.00, 1),
(69, 8, 150.00, 1),
(69, 14, 1.00, 5),
(69, 16, 2.00, 4),
(69, 18, 100.00, 1),
(69, 19, 40.00, 1),
(69, 22, 1.00, 5),
(69, 41, 15.00, 1),
(69, 75, 600.00, 1),
(70, 6, 60.00, 1),
(70, 14, 1.00, 5),
(70, 16, 2.00, 4),
(70, 19, 40.00, 1),
(70, 21, 1.00, 2),
(70, 22, 1.00, 5),
(70, 41, 15.00, 1),
(70, 84, 800.00, 1),
(71, 14, 1.00, 5),
(71, 15, 1.00, 6),
(71, 18, 200.00, 1),
(71, 20, 2.00, 3),
(71, 23, 20.00, 1),
(71, 25, 300.00, 1),
(71, 64, 100.00, 1),
(71, 85, 250.00, 1),
(72, 7, 600.00, 1),
(72, 14, 1.00, 5),
(72, 19, 200.00, 1),
(72, 20, 1.00, 3),
(72, 22, 2.00, 4),
(72, 23, 50.00, 1),
(72, 24, 80.00, 1),
(72, 33, 200.00, 1),
(72, 93, 20.00, 1),
(73, 14, 1.00, 6),
(73, 22, 3.00, 4),
(73, 23, 50.00, 1),
(73, 25, 300.00, 1),
(73, 54, 1.00, 5),
(73, 55, 100.00, 1),
(74, 14, 1.00, 6),
(74, 19, 200.00, 1),
(74, 20, 3.00, 3),
(74, 21, 5.00, 2),
(74, 22, 4.00, 4),
(74, 23, 40.00, 1),
(74, 33, 100.00, 1),
(74, 57, 50.00, 1),
(74, 87, 8.00, 1),
(74, 93, 20.00, 1),
(75, 7, 800.00, 1),
(75, 14, 1.00, 5),
(75, 19, 250.00, 1),
(75, 20, 1.00, 3),
(75, 22, 6.00, 4),
(75, 23, 60.00, 1),
(75, 24, 100.00, 1),
(75, 54, 1.00, 5),
(75, 86, 500.00, 1),
(76, 14, 1.00, 6),
(76, 18, 200.00, 1),
(76, 20, 4.00, 3),
(76, 22, 100.00, 1),
(76, 23, 40.00, 1),
(76, 26, 500.00, 1),
(76, 31, 200.00, 1),
(76, 57, 80.00, 1),
(76, 73, 1.00, 3),
(76, 87, 8.00, 1),
(76, 93, 20.00, 1),
(77, 19, 300.00, 1),
(77, 20, 3.00, 3),
(77, 22, 150.00, 1),
(77, 23, 150.00, 1),
(77, 24, 50.00, 1),
(77, 53, 800.00, 1),
(77, 54, 1.00, 5),
(77, 92, 10.00, 1),
(77, 93, 30.00, 1),
(78, 59, 3.00, 2),
(78, 60, 50.00, 1),
(78, 74, 2.00, 4),
(78, 87, 8.00, 1),
(78, 88, 400.00, 1),
(78, 93, 80.00, 1),
(79, 14, 1.00, 6),
(79, 16, 2.00, 4),
(79, 18, 100.00, 1),
(79, 19, 150.00, 1),
(79, 20, 3.00, 3),
(79, 21, 3.00, 2),
(79, 22, 3.00, 4),
(79, 26, 300.00, 1),
(79, 57, 40.00, 1),
(79, 73, 0.50, 3),
(79, 87, 8.00, 1),
(79, 93, 15.00, 1),
(80, 6, 50.00, 1),
(80, 11, 600.00, 1),
(80, 14, 1.00, 5),
(80, 15, 1.00, 6),
(80, 16, 2.00, 4),
(80, 22, 1.00, 5),
(80, 28, 1.00, 4),
(80, 41, 10.00, 1),
(81, 6, 50.00, 1),
(81, 14, 1.00, 5),
(81, 16, 1.00, 4),
(81, 22, 1.00, 4),
(81, 28, 2.00, 4),
(81, 32, 1.00, 5),
(81, 89, 500.00, 1),
(82, 12, 1.00, 3),
(82, 14, 1.00, 6),
(82, 20, 2.00, 3),
(82, 22, 1.00, 4),
(82, 28, 2.00, 4),
(82, 65, 100.00, 1),
(82, 90, 300.00, 1),
(83, 14, 1.00, 5),
(83, 19, 500.00, 1),
(83, 20, 2.00, 3),
(83, 21, 2.50, 2),
(83, 22, 120.00, 1),
(83, 23, 100.00, 1),
(83, 56, 40.00, 1),
(83, 63, 25.00, 1),
(84, 14, 2.00, 5),
(84, 15, 1.00, 6),
(84, 17, 100.00, 1),
(84, 18, 200.00, 1),
(84, 19, 500.00, 1),
(84, 20, 2.00, 3),
(84, 21, 1.00, 2),
(84, 63, 20.00, 1),
(84, 91, 200.00, 1),
(85, 14, 1.00, 6),
(85, 18, 150.00, 1),
(85, 19, 400.00, 1),
(85, 20, 2.00, 3),
(85, 22, 80.00, 1),
(85, 23, 150.00, 1),
(85, 26, 400.00, 1),
(85, 57, 50.00, 1),
(85, 63, 20.00, 1),
(85, 73, 0.50, 3),
(85, 87, 8.00, 1),
(85, 93, 20.00, 1);

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
  MODIFY `etk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `felhasznalo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `hozzavalok`
--
ALTER TABLE `hozzavalok`
  MODIFY `hozzavalo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT a táblához `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `k_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT a táblához `mertekegyseg`
--
ALTER TABLE `mertekegyseg`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `rang`
--
ALTER TABLE `rang`
  MODIFY `rang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `receptek`
--
ALTER TABLE `receptek`
  MODIFY `recept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

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
