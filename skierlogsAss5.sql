-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02. Nov, 2017 18:53 PM
-- Server-versjon: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skierlogs`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `clubs`
--

CREATE TABLE `clubs` (
  `clubId` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `clubName` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `city` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `county` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `clubs`
--

INSERT INTO `clubs` (`clubId`, `clubName`, `city`, `county`) VALUES
('asker-ski', 'Asker skiklubb', 'Asker', 'Akershus'),
('lhmr-ski', 'Lillehammer Skiklub', 'Lillehammer', 'Oppland'),
('skiklubben', 'Trondhjems skiklub', 'Trondheim', 'Sør-Trøndelag'),
('vindil', 'Vind Idrettslag', 'Gjøvik', 'Oppland');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `log`
--

CREATE TABLE `log` (
  `userName_fk` varchar(100) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `fallYear_fk` varchar(5) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `totalDistance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `log`
--

INSERT INTO `log` (`userName_fk`, `fallYear_fk`, `totalDistance`) VALUES
('ande_andr', '2015', 23),
('ande_andr', '2016', 55),
('ande_rønn', '2015', 942),
('ande_rønn', '2016', 0),
('andr_stee', '2015', 440),
('andr_stee', '2016', 379),
('anna_næss', '2015', 3),
('anna_næss', '2016', 3),
('arne_anto', '2015', 32),
('arne_anto', '2016', 99),
('arne_inge', '2015', 1),
('arne_inge', '2016', 2),
('astr_amun', '2015', 961),
('astr_amun', '2016', 761),
('astr_sven', '2015', 1),
('astr_sven', '2016', 3),
('bent_håla', '2015', 19),
('bent_håla', '2016', 62),
('bent_svee', '2015', 125),
('bent_svee', '2016', 0),
('beri_hans', '2015', 448),
('beri_hans', '2016', 374),
('bjør_ali', '2015', 47),
('bjør_ali', '2016', 47),
('bjør_rønn', '2015', 33),
('bjør_rønn', '2016', 56),
('bjør_sand', '2015', 460),
('bjør_sand', '2016', 449),
('bjør_aase', '2015', 121),
('bjør_aase', '2016', 116),
('bror_kals', '2015', 0),
('bror_kals', '2016', 202),
('bror_﻿mos', '2015', 0),
('bror_﻿mos', '2016', 243),
('cami_erik', '2015', 1),
('cami_erik', '2016', 1),
('dani_hamm', '2015', 33),
('dani_hamm', '2016', 61),
('eina_nygå', '2015', 31),
('eina_nygå', '2016', 68),
('elis_ruud', '2015', 341),
('elis_ruud', '2016', 368),
('elle_wiik', '2015', 12),
('elle_wiik', '2016', 35),
('erik_haal', '2015', 122),
('erik_haal', '2016', 143),
('erik_lien', '2015', 1),
('erik_lien', '2016', 0),
('erik_pete', '2015', 581),
('erik_pete', '2016', 0),
('espe_egel', '2015', 519),
('espe_egel', '2016', 556),
('espe_haal', '2015', 1),
('espe_haal', '2016', 2),
('eva_kvam', '2015', 28),
('eva_kvam', '2016', 89),
('fred_lien', '2015', 113),
('fred_lien', '2016', 122),
('frod_mads', '2015', 1),
('frod_mads', '2016', 2),
('frod_rønn', '2015', 237),
('frod_rønn', '2016', 0),
('geir_birk', '2015', 69),
('geir_birk', '2016', 71),
('geir_herm', '2015', 891),
('geir_herm', '2016', 789),
('gerd_svee', '2015', 173),
('gerd_svee', '2016', 196),
('gunn_berg', '2015', 2),
('gunn_berg', '2016', 2),
('guri_nord', '2015', 0),
('guri_nord', '2016', 17),
('﻿hal_﻿mos', '2015', 0),
('﻿hal_﻿mos', '2016', 3),
('hann_stei', '2015', 0),
('hann_stei', '2016', 14),
('hans_foss', '2015', 240),
('hans_foss', '2016', 276),
('hans_løke', '2015', 3),
('hans_løke', '2016', 1),
('hara_bakk', '2015', 7),
('hara_bakk', '2016', 16),
('heid_dani', '2015', 3),
('heid_dani', '2016', 3),
('helg_brei', '2015', 27),
('helg_brei', '2016', 74),
('helg_toll', '2015', 9),
('helg_toll', '2016', 0),
('henr_bern', '2015', 799),
('henr_bern', '2016', 0),
('henr_dale', '2015', 2),
('henr_dale', '2016', 2),
('henr_lore', '2015', 1),
('henr_lore', '2016', 1),
('hild_hass', '2015', 2),
('hild_hass', '2016', 1),
('håko_jens', '2015', 778),
('håko_jens', '2016', 804),
('ida_mykl', '2015', 666),
('ida_mykl', '2016', 614),
('idar_kals', '2015', 0),
('idar_kals', '2016', 101),
('idar_kals1', '2015', 0),
('idar_kals1', '2016', 1308),
('inge_simo', '2015', 3),
('inge_simo', '2016', 2),
('inge_thor', '2015', 194),
('inge_thor', '2016', 220),
('ingr_edva', '2015', 294),
('ingr_edva', '2016', 309),
('﻿jan_tang', '2015', 2),
('﻿jan_tang', '2016', 4),
('juli_ande', '2015', 20),
('juli_ande', '2016', 34),
('kari_thor', '2015', 261),
('kari_thor', '2016', 233),
('kjel_fjel', '2015', 1),
('kjel_fjel', '2016', 2),
('knut_bye', '2015', 2),
('knut_bye', '2016', 0),
('kris_even', '2015', 586),
('kris_even', '2016', 0),
('kris_hass', '2015', 4),
('kris_hass', '2016', 11),
('kris_hass1', '2015', 391),
('kris_hass1', '2016', 334),
('lind_lore', '2015', 578),
('lind_lore', '2016', 551),
('liv_khan', '2015', 178),
('liv_khan', '2016', 183),
('magn_sand', '2015', 200),
('magn_sand', '2016', 166),
('mari_bye', '2015', 362),
('mari_bye', '2016', 0),
('mari_dahl', '2015', 576),
('mari_dahl', '2016', 492),
('mari_eile', '2015', 18),
('mari_eile', '2016', 18),
('mari_stra', '2015', 41),
('mari_stra', '2016', 35),
('mart_halv', '2015', 63),
('mart_halv', '2016', 50),
('mona_lie', '2015', 7),
('mona_lie', '2016', 12),
('mort_iver', '2015', 2),
('mort_iver', '2016', 4),
('nils_bakk', '2015', 36),
('nils_bakk', '2016', 93),
('nils_knud', '2015', 4),
('nils_knud', '2016', 2),
('odd_moha', '2015', 352),
('odd_moha', '2016', 0),
('olav_bråt', '2015', 17),
('olav_bråt', '2016', 19),
('olav_eike', '2015', 2),
('olav_eike', '2016', 2),
('olav_hell', '2015', 1),
('olav_hell', '2016', 0),
('olav_lien', '2015', 408),
('olav_lien', '2016', 423),
('ole_borg', '2015', 311),
('ole_borg', '2016', 314),
('reid_hamr', '2015', 2),
('reid_hamr', '2016', 3),
('rolf_wiik', '2015', 749),
('rolf_wiik', '2016', 632),
('rune_haga', '2015', 228),
('rune_haga', '2016', 248),
('﻿rut_﻿mos', '2015', 0),
('﻿rut_﻿mos', '2016', 1237),
('﻿rut_nord', '2015', 0),
('﻿rut_nord', '2016', 368),
('sara_okst', '2015', 0),
('sara_okst', '2016', 5),
('silj_mykl', '2015', 1),
('silj_mykl', '2016', 2),
('sive_nord', '2015', 0),
('sive_nord', '2016', 1),
('solv_solb', '2015', 2),
('solv_solb', '2016', 1),
('stia_andr', '2015', 8),
('stia_andr', '2016', 9),
('stia_haug', '2015', 412),
('stia_haug', '2016', 443),
('stia_henr', '2015', 62),
('stia_henr', '2016', 49),
('terj_mort', '2015', 119),
('terj_mort', '2016', 95),
('thom_inge', '2015', 15),
('thom_inge', '2016', 26),
('tom_bråt', '2015', 1),
('tom_bråt', '2016', 1),
('tom_bøe', '2015', 176),
('tom_bøe', '2016', 194),
('tom_jako', '2015', 18),
('tom_jako', '2016', 33),
('tor_dale', '2015', 408),
('tor_dale', '2016', 0),
('tore_gulb', '2015', 375),
('tore_gulb', '2016', 342),
('tore_svee', '2015', 1156),
('tore_svee', '2016', 0),
('tove_moe', '2015', 321),
('tove_moe', '2016', 352),
('trin_kals', '2015', 0),
('trin_kals', '2016', 22),
('tron_kris', '2015', 3),
('tron_kris', '2016', 5),
('tron_moen', '2015', 8),
('tron_moen', '2016', 17),
('øyst_lore', '2015', 13),
('øyst_lore', '2016', 47),
('øyst_sæth', '2015', 831),
('øyst_sæth', '2016', 631),
('øyst_aase', '2015', 2),
('øyst_aase', '2016', 1),
('øyvi_hell', '2015', 950),
('øyvi_hell', '2016', 869),
('øyvi_jens', '2015', 3),
('øyvi_jens', '2016', 2),
('øyvi_kvam', '2015', 18),
('øyvi_kvam', '2016', 0),
('øyvi_vike', '2015', 20),
('øyvi_vike', '2016', 52);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `season`
--

CREATE TABLE `season` (
  `fallYear` varchar(5) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `season`
--

INSERT INTO `season` (`fallYear`) VALUES
('2015'),
('2016');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skiers`
--

CREATE TABLE `skiers` (
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `fName` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `lName` varchar(60) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `bYear` int(11) NOT NULL,
  `clubId` varchar(50) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dataark for tabell `skiers`
--

INSERT INTO `skiers` (`userName`, `fName`, `lName`, `bYear`, `clubId`) VALUES
('ande_andr', 'Anders', 'Andresen', 2004, 'skiklubben'),
('ande_rønn', 'Anders', 'Rønning', 2001, 'lhmr-ski'),
('andr_stee', 'Andreas', 'Steen', 2001, 'asker-ski'),
('anna_næss', 'Anna', 'Næss', 2005, 'skiklubben'),
('arne_anto', 'Arne', 'Antonsen', 2005, 'skiklubben'),
('arne_inge', 'Arne', 'Ingebrigtsen', 2005, 'skiklubben'),
('astr_amun', 'Astrid', 'Amundsen', 2001, 'lhmr-ski'),
('astr_sven', 'Astrid', 'Svendsen', 2008, 'skiklubben'),
('bent_håla', 'Bente', 'Håland', 2009, 'skiklubben'),
('bent_svee', 'Bente', 'Sveen', 2003, 'asker-ski'),
('beri_hans', 'Berit', 'Hanssen', 2003, 'asker-ski'),
('bjør_ali', 'Bjørn', 'Ali', 2008, 'asker-ski'),
('bjør_rønn', 'Bjørg', 'Rønningen', 2009, 'lhmr-ski'),
('bjør_sand', 'Bjørn', 'Sandvik', 1997, 'lhmr-ski'),
('bjør_aase', 'Bjørn', 'Aasen', 2006, 'asker-ski'),
('bror_kals', 'Bror', 'Kalstad', 2006, NULL),
('bror_﻿mos', 'Bror', '﻿Mostuen', 2005, 'skiklubben'),
('cami_erik', 'Camilla', 'Eriksen', 2005, 'vindil'),
('dani_hamm', 'Daniel', 'Hammer', 2000, 'lhmr-ski'),
('eina_nygå', 'Einar', 'Nygård', 2009, 'skiklubben'),
('elis_ruud', 'Elisabeth', 'Ruud', 2003, 'skiklubben'),
('elle_wiik', 'Ellen', 'Wiik', 2004, 'lhmr-ski'),
('erik_haal', 'Erik', 'Haaland', 2007, 'lhmr-ski'),
('erik_lien', 'Erik', 'Lien', 2008, 'vindil'),
('erik_pete', 'Erik', 'Petersen', 2002, 'vindil'),
('espe_egel', 'Espen', 'Egeland', 2005, 'skiklubben'),
('espe_haal', 'Espen', 'Haaland', 2004, 'lhmr-ski'),
('eva_kvam', 'Eva', 'Kvam', 2000, 'skiklubben'),
('fred_lien', 'Fredrik', 'Lien', 2000, 'asker-ski'),
('frod_mads', 'Frode', 'Madsen', 2008, 'skiklubben'),
('frod_rønn', 'Frode', 'Rønningen', 2005, 'lhmr-ski'),
('geir_birk', 'Geir', 'Birkeland', 2010, 'skiklubben'),
('geir_herm', 'Geir', 'Hermansen', 2003, 'skiklubben'),
('gerd_svee', 'Gerd', 'Sveen', 2001, 'lhmr-ski'),
('gunn_berg', 'Gunnar', 'Berge', 2009, 'vindil'),
('guri_nord', 'Guri', 'Nordli', 2003, 'skiklubben'),
('﻿hal_﻿mos', '﻿Halvor', '﻿Mostuen', 2009, 'asker-ski'),
('hann_stei', 'Hanno', 'Steiro', 2005, 'lhmr-ski'),
('hans_foss', 'Hans', 'Foss', 1998, 'lhmr-ski'),
('hans_løke', 'Hans', 'Løken', 2005, 'skiklubben'),
('hara_bakk', 'Harald', 'Bakken', 2002, 'lhmr-ski'),
('heid_dani', 'Heidi', 'Danielsen', 2005, 'asker-ski'),
('helg_brei', 'Helge', 'Breivik', 2006, 'skiklubben'),
('helg_toll', 'Helge', 'Tollefsen', 2003, 'skiklubben'),
('henr_bern', 'Henrik', 'Berntsen', 2003, 'asker-ski'),
('henr_dale', 'Henrik', 'Dalen', 2005, NULL),
('henr_lore', 'Henrik', 'Lorentzen', 2006, 'vindil'),
('hild_hass', 'Hilde', 'Hassan', 2007, 'lhmr-ski'),
('håko_jens', 'Håkon', 'Jensen', 2005, 'lhmr-ski'),
('ida_mykl', 'Ida', 'Myklebust', 2001, 'skiklubben'),
('idar_kals', 'Idar', 'Kalstad', 2007, 'skiklubben'),
('idar_kals1', 'Idar', 'Kalstad', 2002, 'vindil'),
('inge_simo', 'Inger', 'Simonsen', 2004, 'asker-ski'),
('inge_thor', 'Inger', 'Thorsen', 2006, NULL),
('ingr_edva', 'Ingrid', 'Edvardsen', 2001, 'skiklubben'),
('﻿jan_tang', '﻿Jan', 'Tangen', 2007, NULL),
('juli_ande', 'Julie', 'Andersson', 2003, 'skiklubben'),
('kari_thor', 'Karin', 'Thorsen', 2002, 'skiklubben'),
('kjel_fjel', 'Kjell', 'Fjeld', 2004, 'skiklubben'),
('knut_bye', 'Knut', 'Bye', 2006, 'lhmr-ski'),
('kris_even', 'Kristian', 'Evensen', 2004, 'skiklubben'),
('kris_hass', 'Kristin', 'Hassan', 2003, 'skiklubben'),
('kris_hass1', 'Kristian', 'Hassan', 2004, 'lhmr-ski'),
('lind_lore', 'Linda', 'Lorentzen', 2004, 'lhmr-ski'),
('liv_khan', 'Liv', 'Khan', 2006, 'asker-ski'),
('magn_sand', 'Magnus', 'Sande', 2003, 'asker-ski'),
('mari_bye', 'Marit', 'Bye', 2003, NULL),
('mari_dahl', 'Marit', 'Dahl', 2004, 'lhmr-ski'),
('mari_eile', 'Marius', 'Eilertsen', 2000, 'lhmr-ski'),
('mari_stra', 'Marius', 'Strand', 2005, 'skiklubben'),
('mart_halv', 'Martin', 'Halvorsen', 2002, 'vindil'),
('mona_lie', 'Mona', 'Lie', 2004, 'skiklubben'),
('mort_iver', 'Morten', 'Iversen', 2003, 'skiklubben'),
('nils_bakk', 'Nils', 'Bakke', 2003, 'lhmr-ski'),
('nils_knud', 'Nils', 'Knudsen', 2006, 'skiklubben'),
('odd_moha', 'Odd', 'Mohamed', 2005, 'skiklubben'),
('olav_bråt', 'Olav', 'Bråthen', 2000, NULL),
('olav_eike', 'Olav', 'Eikeland', 2008, 'lhmr-ski'),
('olav_hell', 'Olav', 'Helle', 2007, 'skiklubben'),
('olav_lien', 'Olav', 'Lien', 2002, 'asker-ski'),
('ole_borg', 'Ole', 'Borge', 2002, 'lhmr-ski'),
('reid_hamr', 'Reidun', 'Hamre', 2008, 'skiklubben'),
('rolf_wiik', 'Rolf', 'Wiik', 2002, 'skiklubben'),
('rune_haga', 'Rune', 'Haga', 2005, 'asker-ski'),
('﻿rut_﻿mos', '﻿Ruth', '﻿Mostuen', 2002, 'vindil'),
('﻿rut_nord', '﻿Ruth', 'Nordli', 2006, 'skiklubben'),
('sara_okst', 'Sarah', 'Okstad', 2003, 'asker-ski'),
('silj_mykl', 'Silje', 'Myklebust', 2007, 'asker-ski'),
('sive_nord', 'Sivert', 'Nordli', 2009, 'skiklubben'),
('solv_solb', 'Solveig', 'Solbakken', 2004, 'asker-ski'),
('stia_andr', 'Stian', 'Andreassen', 2004, 'vindil'),
('stia_haug', 'Stian', 'Haugland', 2002, 'skiklubben'),
('stia_henr', 'Stian', 'Henriksen', 2001, 'vindil'),
('terj_mort', 'Terje', 'Mortensen', 2003, 'skiklubben'),
('thom_inge', 'Thomas', 'Ingebrigtsen', 2006, 'vindil'),
('tom_bråt', 'Tom', 'Bråthen', 2008, 'vindil'),
('tom_bøe', 'Tom', 'Bøe', 2008, 'vindil'),
('tom_jako', 'Tom', 'Jakobsen', 2002, 'skiklubben'),
('tor_dale', 'Tor', 'Dalen', 2005, 'skiklubben'),
('tore_gulb', 'Tore', 'Gulbrandsen', 2005, 'lhmr-ski'),
('tore_svee', 'Tore', 'Sveen', 2001, 'skiklubben'),
('tove_moe', 'Tove', 'Moe', 2002, 'asker-ski'),
('trin_kals', 'Trine', 'Kalstad', 2009, 'lhmr-ski'),
('tron_kris', 'Trond', 'Kristensen', 2006, 'skiklubben'),
('tron_moen', 'Trond', 'Moen', 2004, 'vindil'),
('øyst_lore', 'Øystein', 'Lorentzen', 2004, 'skiklubben'),
('øyst_sæth', 'Øystein', 'Sæther', 2000, 'vindil'),
('øyst_aase', 'Øystein', 'Aasen', 2007, 'skiklubben'),
('øyvi_hell', 'Øyvind', 'Helle', 2000, 'asker-ski'),
('øyvi_jens', 'Øyvind', 'Jenssen', 1999, 'skiklubben'),
('øyvi_kvam', 'Øyvind', 'Kvam', 2000, 'asker-ski'),
('øyvi_vike', 'Øyvind', 'Viken', 2004, 'asker-ski');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`clubId`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`userName_fk`,`fallYear_fk`),
  ADD KEY `fallYear_fk` (`fallYear_fk`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`fallYear`);

--
-- Indexes for table `skiers`
--
ALTER TABLE `skiers`
  ADD PRIMARY KEY (`userName`),
  ADD KEY `fKtest` (`clubId`);

--
-- Begrensninger for dumpede tabeller
--

--
-- Begrensninger for tabell `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`userName_fk`) REFERENCES `skiers` (`userName`),
  ADD CONSTRAINT `log_ibfk_2` FOREIGN KEY (`fallYear_fk`) REFERENCES `season` (`fallYear`);

--
-- Begrensninger for tabell `skiers`
--
ALTER TABLE `skiers`
  ADD CONSTRAINT `skiers_ibfk_1` FOREIGN KEY (`clubId`) REFERENCES `clubs` (`clubId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
