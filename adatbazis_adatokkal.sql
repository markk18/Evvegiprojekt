-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Okt 05. 09:06
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
(74, 'Rum', 0.00, 0.00, 0.00, 35.00, 4);

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
(55, 'Káposztasaláta', 'A fejes káposztát vékonyra gyaluljuk, sóval meghintjük, és 15 percig állni hagyjuk, majd kicsavarjuk. Az ecetet a cukorral, az olajjal és a köménymaggal elkeverjük, ráöntjük a káposztára, és alaposan összeforgatjuk. Legalább 30 percig hűtőben állni hagyjuk.', 6, 15, 6, 2);

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
(55, 69, 600.00, 1);

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
  MODIFY `hozzavalo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

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
  MODIFY `recept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
