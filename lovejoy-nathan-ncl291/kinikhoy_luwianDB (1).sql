-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2016 at 07:40 PM
-- Server version: 5.5.52-cll
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinikhoy_luwianDB`
--

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `divine_names_table`
--

CREATE TABLE `divine_names_table` (
  `divine_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `divine_name_normalized` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `divine_name_notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divine_names_table`
--

INSERT INTO `divine_names_table` (`divine_name`, `divine_name_normalized`, `divine_name_notes`) VALUES
('(DEUS.TONITRUS)tara/i-hu-za-sa', 'Tarhunzas', NULL),
('(DEUS)hi-pa-tu', 'Hepat', NULL),
('(DEUS)kar-hu-ha-sa', 'Karhuhas', NULL),
('(DEUS)ku+AVIS', 'Kubaba', NULL),
('(DEUS)ku+AVIS-pa-pa-sa', 'Kubaba', NULL),
('(DEUS)pa-ha-la-ti-i-sa3', 'Ba\'alatis', NULL),
('(DEUS)pa-ha-la-ti-ia', 'Ba\'alatis', NULL),
('(DEUS)pa-ha-la-ti-sa3', 'Ba\'alatis', NULL),
('(DEUS)pa2?+ra/i-ta5', 'Parata(?)', NULL),
('(DEUS)ta-mu-ki-na', 'Tamukina', NULL),
('(DEUS)tu-ta-ia-sa', 'Tutayas', NULL),
('(MANUS+MANUS)pa-ha-la-X-X', 'Ba\'alatis', 'See (Hawkins 2000, 410) for interpretation'),
('DEUS.BONUS-ma', 'Kuparma', NULL),
('DEUS.CERVUS2+RA/I-ti-ia-sa', 'Runtiyas', NULL),
('DEUS.LUNA-sa', 'Moon-God', ''),
('DEUS.PES2', 'Ea', NULL),
('DEUS.REGIO-ni-sa (MAGNUS.DOMINA)ha-su-sa5+ra/i-sa', 'Divine Queen of the Land', NULL),
('DEUS.REGIO-ni-sa-na MAGNUS.FEMINA-sa5+ra/i-i', 'Divine Queen of the Land', NULL),
('DEUS.REGIO-ni-si (MAGNUS.DOMINA)ha-su-sa5+ra/i-sa', 'Divine Queen of the Land', NULL),
('DEUS.REGIO-ni-si-i (DOMINA)ha-su-sa5+ra/i-sa', 'Divine Queen of the Land', NULL),
('DEUS.SARMA', 'Sharumma', NULL),
('DEUS.SOL', 'Sun-God', NULL),
('DEUS.TONITRUS', 'Tarhunzas', NULL),
('DEUS.TONITRUS-hu-ti', 'Tarhunzas', NULL),
('DEUS.TONITRUS-sa', 'Tarhunzas', NULL),
('DEUS.TONITRUS-ti-i', 'Tarhunzas', NULL),
('DEUS.VITIS-ti-pa+ra/i-ia-si', 'Tipariyas', NULL),
('sa3+US-ka', 'Sauska', '"likely...an attestation of the Empire Period writing of the goddess Sauska" (Hawkins 2000, 308)');

-- --------------------------------------------------------

--
-- Table structure for table `drawings_table`
--

CREATE TABLE `drawings_table` (
  `drawing_file_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inscription_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawing_author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drawing_date` date DEFAULT NULL,
  `drawing_use_authorization` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drawings_table`
--

INSERT INTO `drawings_table` (`drawing_file_name`, `inscription_name`, `drawing_author`, `drawing_date`, `drawing_use_authorization`) VALUES
('DARENDE copy', 'DARENDE', 'J. D. Hawkins', '1987-01-01', 'no'),
('KARKAMISa4b_drw.jpg', 'KARKAMIS_a4b', 'Hawkins', NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `editions_table`
--

CREATE TABLE `editions_table` (
  `edition_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition_pages` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition_type` enum('edition_partial','edition_full') COLLATE utf8mb4_unicode_ci NOT NULL,
  `inscription_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `editions_table`
--

INSERT INTO `editions_table` (`edition_name`, `edition_pages`, `edition_type`, `inscription_name`) VALUES
(' Gelb, HHM (1939), nos. 54-58, p. 39 f, pls. LXXXV', NULL, 'edition_partial', 'TELL_TAYINAT_2'),
('Bossert 1932', 'pp. 61-3', 'edition_full', 'HAMA 1'),
('Bossert 1932', 'pp. 61-3', 'edition_full', 'HAMA 2'),
('Bossert 1932', 'pp. 61-3', 'edition_full', 'HAMA 3'),
('Bossert 1952', 'pp. 111', 'edition_full', 'RESTAN'),
('Bossert, AfO 17 (1954-56)', 'pp. 347-353', 'edition_full', 'DARENDE'),
('Gelb 1931', 'pp. 68f.', 'edition_full', 'HAMA 1'),
('Gelb 1931', 'pp. 68f.', 'edition_full', 'HAMA 2'),
('Gelb 1931', 'pp. 68f.', 'edition_full', 'HAMA 3'),
('Gelb 1939', 'pp. 31, pl. XLVII, nos. 30-2', 'edition_full', 'JISR_EL_HADID_frags._1-3'),
('Gelb 1939', 'pp. 39 f, pl. LXXXV, nos. 54-58', 'edition_partial', 'TELL_TAYINAT_2'),
('Gelb 1939', 'pp. 40, pl. XCIII, no. 60', 'edition_full', 'TULEIL_1'),
('Gelb 1939', 'pp. 40, pl. XCIV, no. 61', 'edition_full', 'TULEIL_2'),
('Hawkins 1980', 'pp. 219 f.', 'edition_full', 'SHEIZAR'),
('Hawkins 2000', 'pp. 386-7, pls. 207-8', 'edition_full', 'AFRIN'),
('Hawkins 2000', 'pp. 385-6, pl. 206', 'edition_partial', 'AIN DARA'),
('Hawkins 2000', 'pp. 385, pl. 205', 'edition_partial', 'AZAZ'),
('Hawkins 2000', 'pp. 391-4, pl. 209-10', 'edition_full', 'BABYLON 1'),
('Hawkins 2000', 'pp. 394-6, pl. 211', 'edition_partial', 'BABYLON 2'),
('Hawkins 2000', 'pp. 396-397; pl. 212', 'edition_full', 'BABYLON 3'),
('Hawkins 2000', 'pp. 411-4, pl. 221', 'edition_full', 'HAMA 1'),
('Hawkins 2000', 'pp. 411-4, pl. 221', 'edition_full', 'HAMA 2'),
('Hawkins 2000', 'pp. 411-4, pl. 222', 'edition_full', 'HAMA 3'),
('Hawkins 2000', 'pp. 403-6, pl. 213', 'edition_full', 'HAMA 4'),
('Hawkins 2000', 'pp. 406-7, pls. 215-6', 'edition_full', 'HAMA 5'),
('Hawkins 2000', 'pp. 412-4, pl. 223', 'edition_partial', 'HAMA 6'),
('Hawkins 2000', 'pp. 412-4, pl. 224', 'edition_full', 'HAMA 7'),
('Hawkins 2000', 'pp. 409-10, pl. 214', 'edition_full', 'HAMA 8'),
('Hawkins 2000', 'pp. 410-11, pls. 219-20', 'edition_full', 'HAMA 9'),
('Hawkins 2000', 'pp. 408-9, pl. 218', 'edition_full', 'HINES'),
('Hawkins 2000', 'pp. 378-80, pl. 199', 'edition_partial', 'JISR_EL_HADID_frags._1-3'),
('Hawkins 2000', 'pp. 383-4, pl. 203-4', 'edition_full', 'KIRÇOĞLU'),
('Hawkins 2000', 'pp. 415-9, pls. 225-6', 'edition_partial', 'MEHARDE'),
('Hawkins 2000', 'pp. 407-8', 'edition_partial', 'RESTAN'),
('Hawkins 2000', 'pp. 416-9, pls. 227-8', 'edition_full', 'SHEIZAR'),
('Hawkins 2000', 'pp. 366, pl. 189-92', 'edition_full', 'TELL_TAYINAT_1'),
('Hawkins 2000', 'pp. 369-71, pl. 193', 'edition_full', 'TELL_TAYINAT_2'),
('Hawkins 2000', 'pp. 381-2, pl. 200', 'edition_partial', 'TULEIL_1'),
('Hawkins 2000', 'pp. 382-3, pls. 201-2', 'edition_partial', 'TULEIL_2'),
('Hawkins, corpus I/1 (2000) ', 'pp. 80-82, plate 1', 'edition_full', 'KARKAMIS_a4b'),
('Hawkins, corpus I/1 (2000)', 'pp. 306-307, plates 14', 'edition_full', 'MALATYA 5'),
('Hawkins, corpus I/1 (2000) ', 'pp. 307-308, plates 14', 'edition_full', 'MALATYA 6'),
('Hrozny 1934', 'pp. 297-300', 'edition_full', 'HAMA 1'),
('Hrozny 1934', 'pp. 297-300', 'edition_full', 'HAMA 2'),
('Hrozny 1934', 'pp. 297-300', 'edition_full', 'HAMA 3'),
('Hrozny 1934', 'pp. 301', 'edition_full', 'RESTAN'),
('Hrozny, IHH III (1937)', 'pp. 491-493', 'edition_full', 'DARENDE'),
('Hrozny, IHH III (1937) ', 'p. 496', 'edition_partial', 'MALATYA 5'),
('Hrozny, IHH III (1937)', 'p. 497', 'edition_partial', 'MALATYA 6'),
('Meriggi 1933', 'pp. 261-4', 'edition_full', 'HAMA 1'),
('Meriggi 1933', 'pp. 261-4', 'edition_full', 'HAMA 2'),
('Meriggi 1933', 'pp. 261-4', 'edition_full', 'HAMA 3'),
('Meriggi 1933', 'pp. 264-9', 'edition_full', 'HAMA 4'),
('Meriggi 1933', 'pp. 255-8, no. 4', 'edition_full', 'RESTAN'),
('Meriggi 1934', 'pp. 89f, no. 7', 'edition_full', 'BABYLON 2'),
('Meriggi 1934', 'pp. 37 and 49-50', 'edition_full', 'HAMA 4'),
('Meriggi 1967', 'pp. 10 and 36f, nos. 1a and 12', 'edition_full', 'BABYLON 2'),
('Meriggi 1967', 'pp. 10-11', 'edition_full', 'BABYLON 3'),
('Meriggi 1967', 'pp. 17-19, no. 8', 'edition_full', 'HAMA 1'),
('Meriggi 1967', 'pp. 17-19, no. 8', 'edition_full', 'HAMA 2'),
('Meriggi 1967', 'pp. 17-19, no. 8', 'edition_full', 'HAMA 3'),
('Meriggi 1967', 'pp. 13f, no. 5', 'edition_full', 'RESTAN'),
('Meriggi 1975', 'pp. 245-9, pl. XLV, no. 312', 'edition_full', 'HAMA 4'),
('Meriggi 1975', 'pp. 249-51, pl. XLV, no. 313', 'edition_full', 'HAMA 5'),
('Meriggi 1975', 'pp. 251, no. 314', 'edition_full', 'HAMA 9'),
('Meriggi 1975', 'p. 254, pp. XLVI, no. 320', 'edition_full', 'HINES'),
('Meriggi 1975', 'pp. 251-254, pl. XLVI, no. 316', 'edition_partial', 'MEHARDE'),
('Meriggi 1975', 'pp. 224, no. 293', 'edition_full', 'TELL_TAYINAT_1'),
('Meriggi 1975', 'pp. 238, no. 302', 'edition_full', 'TELL_TAYINAT_fragment_VIII.51, 52'),
('Meriggi, Manuale II/2 (1975)', 'no. 98, pp. 34-36', 'edition_full', 'DARENDE'),
('Meriggi, Manuale II/2 (1975)', 'no. 109, p. 53', 'edition_partial', 'MALATYA 5'),
('Meriggi, Manuale II/2 (1975)', 'no. 110, p. 54', 'edition_partial', 'MALATYA 6'),
('Meriggi, manuale II/3 (1975)', 'no. 163, pp. 325-327', 'edition_full', 'KARKAMIS_a4b'),
('Meriggi, MV4.eG39/\\ (1934), no. 7, p. 89 f', 'won\'t delete', 'edition_full', 'BABYLON 2'),
('Meriggi, MVAeG 39/1 (1934)', 'p. 29 f.', 'edition_full', 'DARENDE'),
('Neumann 1965', 'pp. 333-42', 'edition_full', 'BABYLON 2'),
('Payne 2010', 'pp.45=47', 'edition_full', 'BABYLON 3');

-- --------------------------------------------------------

--
-- Table structure for table `geographic_names_table`
--

CREATE TABLE `geographic_names_table` (
  `geographic_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geographic_name_normalized` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `geographic_name_note` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geographic_names_table`
--

INSERT INTO `geographic_names_table` (`geographic_name`, `geographic_name_normalized`, `geographic_name_note`) VALUES
('(*218)ku-su-na-la-zi', 'Kusuna', '/li/ adjectival suffix; /anzi/ plural ending; \'Kusunites\''),
('CORNU+RA/I-ti', 'Sura(?)', 'Tentatively associated with Urartu; see Hawkins (2000, 81)'),
('ha-ma-ia+ra/i', 'Hamayara', NULL),
('hara/i-na-wa/i-ni-i-sa', 'Haran', '/wani/ adjectival suffix; \'Haranean\''),
('hu+ra/i-pa-ta3-wa/i-ni-sa', 'Hurpata', 'Followed by FLUMEN.REGIO-ta3-i-sa \'river-land\', thus "Hurpata river-land"'),
('i-ma-tu-wa/i-ni', 'Hamath', '/wani/ adjectival suffix; \'Hamathite\''),
('i-ma-tu-wa/i-ni-i-sa', 'Hamath', '/wani/ adjectival suffix; \'Hamathite\''),
('i-ma-tu2-wa/i-ni', 'Hamath', '/wani/ adjectival suffix; \'Hamathite\''),
('ka+ra/i-ka-mi-sa3', 'Karkamis', NULL),
('la-ka-wa/i-ni-sa3', 'Laka', '/wani/ adjectival suffix; \'Lakean\'; followed by FLUMEN.REGIO-ta3-i-sa3 \'river-land\', thus "(people of) the Laka river-land"'),
('la-pa+ra/i-na-wa/i-ni-sa', 'Labarna', '/wani/ adjectival suffix; preceded by (MONS) \'Mount\', and followed by FLUMEN.REGIO-ta3-i-sa3 \'river-land\', thus "(the people of the Mount) Labarna river-land"; Hawkins suggests Lebanon as a possibility (2000, 413)'),
('MANUSx-tu-ma-ni-i-na', '(-)tumani', 'The sign denoted as MANUSx most closely resembles PONERE, but no known phonetic value exists for that sign.'),
('MAx-LIx-zi', 'Malatya', 'Hawkins normalizes \'Malizi\' (2000, 305); Payne normalizes \'Malatya\' under signs *109 and *125* (2014, 169, 170)'),
('mu-sa-ni-pa-wa/i-ni-sa3', 'Musanipa', '/wani/ adjectival suffix, \'Musanipean\'; followed by FLUMEN.REGIO-ta3-i-sa3 \'river-land\', thus "(the people of) the Musanipa river-land"'),
('ni-ki-ma-sa', 'Nikima', NULL),
('TONITRUS.HALPA-pa-ni', 'Halpa', 'The fomr is a geographic adjective (or ethnikon), built with the /wani/ adjectival suffix'),
('TONITRUS.HALPA-pa-wa/i-ni-zi', 'Halab', '/wani/ adjectival suffix; /nzi/ plural ending; \'Halabeans\''),
('TONITRUS.HALPA-pa-wa/i-ni2', 'Halab', '/wani/ adjectival suffix; \'Halabean\''),
('TONITRUS.HALPA-pa-wa/i-ni2-sa', 'Halpa', 'Form is a geopgraphic adjective (or ethnickon), built with the /wani/ adjectival suffix'),
('tu2-ha-ia-ta-sa', 'Tuhayata', NULL),
('wa/i-la-sa3-ti-ni-si', 'W/Palastina', NULL),
('wa/i-la-sa3-ti-ni-za-sa', 'W/Palastina', '/za/ suffix results in an geographic adjective, perhaps an ethnonym; /la/ is also read as /ta4/');

-- --------------------------------------------------------

--
-- Table structure for table `inscriptions_divine_names_table`
--

CREATE TABLE `inscriptions_divine_names_table` (
  `inscription_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divine_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `divine_epithet` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inscriptions_divine_names_table`
--

INSERT INTO `inscriptions_divine_names_table` (`inscription_name`, `divine_name`, `divine_epithet`) VALUES
('AFRIN', 'DEUS.TONITRUS', NULL),
('BABYLON 1', 'DEUS.TONITRUS-sa', 'TONITRUS.HALPA-pa-wa/i-ni2-sa'),
('BABYLON 1', 'DEUS.TONITRUS-ti-i', 'TONITRUS.HALPA-pa-wa/i-ni2'),
('BABYLON 2', '(DEUS)kar-hu-ha-sa', NULL),
('BABYLON 2', '(DEUS)ku+AVIS', 'won\'t delete'),
('BABYLON 2', '(DEUS)ku+AVIS-pa-pa-sa', NULL),
('BABYLON 2', 'DEUS.TONITRUS-ti-i', NULL),
('BABYLON 3', 'DEUS.TONITRUS-hu-ti', 'TONITRUS.HALPA-pa-ni'),
('DARENDE', '(DEUS)hi-pa-tu', 'URBS-MI-na-li'),
('DARENDE', 'DEUS.SARMA', NULL),
('HAMA 4', '(DEUS.TONITRUS)tara/i-hu-za-sa', NULL),
('HAMA 4', '(DEUS)pa-ha-la-ti-i-sa3', NULL),
('HAMA 4', '(DEUS)pa-ha-la-ti-ia', NULL),
('HAMA 4', '(DEUS)pa-ha-la-ti-sa3', NULL),
('HAMA 5', 'DEUS.TONITRUS-sa', NULL),
('HAMA 8', '(MANUS+MANUS)pa-ha-la-X-X', NULL),
('JISR_EL_HADID_frags._1-3', '(DEUS)tu-ta-ia-sa', NULL),
('KARKAMIS_a4b', '(DEUS)ku+AVIS', NULL),
('KARKAMIS_a4b', 'DEUS.TONITRUS', NULL),
('KIRÇOĞLU', 'DEUS.REGIO-ni-sa-na MAGNUS.FEMINA-sa5+ra/i-i', NULL),
('MALATYA 5', '(DEUS)pa2?+ra/i-ta5', 'REX-ta2'),
('MALATYA 6', 'sa3+US-ka', NULL),
('MEHARDE', 'DEUS.REGIO-ni-sa (MAGNUS.DOMINA)ha-su-sa5+ra/i-sa', NULL),
('MEHARDE', 'DEUS.REGIO-ni-si (MAGNUS.DOMINA)ha-su-sa5+ra/i-sa', NULL),
('RESTAN', '(DEUS)pa-ha-la-ti-ia', NULL),
('SHEIZAR', 'DEUS.REGIO-ni-si-i (DOMINA)ha-su-sa5+ra/i-sa', NULL),
('TELL_TAYINAT_2', '(DEUS)ta-mu-ki-na', NULL),
('TELL_TAYINAT_2', 'DEUS.BONUS-ma', NULL),
('TELL_TAYINAT_2', 'DEUS.CERVUS2+RA/I-ti-ia-sa', NULL),
('TELL_TAYINAT_2', 'DEUS.PES2', 'REX-ti-i-sa'),
('TELL_TAYINAT_2', 'DEUS.SOL', NULL),
('TELL_TAYINAT_2', 'DEUS.TONITRUS', NULL),
('TELL_TAYINAT_2', 'DEUS.VITIS-ti-pa+ra/i-ia-si', NULL),
('TELL_TAYINAT_fragment_VIII.51, 52', 'DEUS.SOL', NULL),
('TULEIL_2', '(DEUS)ku+AVIS', NULL),
('TULEIL_2', 'DEUS.LUNA-sa', 'hara/i-na-wa/i-ni-i-sa(URBS)');

-- --------------------------------------------------------

--
-- Table structure for table `inscriptions_geographic_names_table`
--

CREATE TABLE `inscriptions_geographic_names_table` (
  `inscription_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geographic_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geographic_determinative` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inscriptions_geographic_names_table`
--

INSERT INTO `inscriptions_geographic_names_table` (`inscription_name`, `geographic_name`, `geographic_determinative`) VALUES
('BABYLON 1', 'TONITRUS.HALPA-pa-wa/i-ni2', ''),
('BABYLON 1', 'TONITRUS.HALPA-pa-wa/i-ni2-sa', ''),
('BABYLON 3', 'TONITRUS.HALPA-pa-ni', ''),
('DARENDE', 'MANUSx-tu-ma-ni-i-na', 'URBS'),
('DARENDE', 'MAx-LIx-zi', 'URBS'),
('HAMA 1', 'hu+ra/i-pa-ta3-wa/i-ni-sa', 'REGIO'),
('HAMA 1', 'TONITRUS.HALPA-pa-wa/i-ni-zi', 'REGIO'),
('HAMA 2', 'i-ma-tu2-wa/i-ni', 'REGIO'),
('HAMA 2', 'la-ka-wa/i-ni-sa3', 'REGIO'),
('HAMA 2', 'ni-ki-ma-sa', 'REGIO'),
('HAMA 3', 'i-ma-tu2-wa/i-ni', 'REGIO'),
('HAMA 3', 'mu-sa-ni-pa-wa/i-ni-sa3', 'REGIO'),
('HAMA 4', 'i-ma-tu-wa/i-ni', 'REGIO'),
('HAMA 6', '(*218)ku-su-na-la-zi', 'REGIO'),
('HAMA 6', 'i-ma-tu2-wa/i-ni', 'REGIO'),
('HAMA 7', 'ha-ma-ia+ra/i', 'REGIO'),
('HAMA 7', 'i-ma-tu-wa/i-ni', 'REGIO'),
('HAMA 7', 'la-pa+ra/i-na-wa/i-ni-sa', 'MONS'),
('HAMA 7', 'tu2-ha-ia-ta-sa', 'REGIO'),
('HAMA 8', 'i-ma-tu-wa/i-ni-i-sa', 'REGIO'),
('HINES', 'i-ma-tu-wa/i-ni', 'REGIO'),
('KARKAMIS_a4b', 'CORNU+RA/I-ti', 'REGIO'),
('MEHARDE', 'wa/i-la-sa3-ti-ni-za-sa', 'REGIO'),
('RESTAN', 'i-ma-tu2-wa/i-ni', 'REGIO'),
('SHEIZAR', 'wa/i-la-sa3-ti-ni-si', 'REGIO'),
('TELL_TAYINAT_1', 'wa/i-la-sa3-ti-ni-za-sa', 'REGIO'),
('TULEIL_2', 'hara/i-na-wa/i-ni-i-sa', 'URBS');

-- --------------------------------------------------------

--
-- Table structure for table `inscriptions_personal_names_table`
--

CREATE TABLE `inscriptions_personal_names_table` (
  `inscription_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_name_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inscriptions_personal_names_table`
--

INSERT INTO `inscriptions_personal_names_table` (`inscription_name`, `personal_name`, `personal_name_title`) VALUES
('BABYLON 1', 'a2-na-si-na', 'FEMINA-ti-i-na'),
('BABYLON 1', 'la-PRAE-VIR/la-sa', '(IUDEX)tara/i-wa/i-ni2-sa CAPUT-ti-i-sa'),
('BABYLON 3', 'ru2-ti-ia-sa', ''),
('DARENDE', 'AVIS2', 'REGIO.DOMINUS'),
('DARENDE', 'AVIS2-wa/i-ta2-sa5', 'REX'),
('DARENDE', 'PUGNUS-mi-li', ''),
('HAMA 1', 'MAGNUS+ra/i-ta3-mi-sa', ''),
('HAMA 1', 'u+ra/i-hi-li-na-sa', ''),
('HAMA 2', 'MAGNUS+ra/i-ta3-mi-sa', 'REX'),
('HAMA 2', 'u+ra/i-hi-li-na-sa', ''),
('HAMA 3', 'MAGNUS+ra/i-ta3-mi-sa', 'REX'),
('HAMA 3', 'u+ra/i-hi-li-na-sa', ''),
('HAMA 4', 'PRAE-ta2-sa', ''),
('HAMA 4', 'u+ra/i-hi-li-na', 'REX'),
('HAMA 6', 'MAGNUS+ra/i-ta3-mi-sa', 'REX'),
('HAMA 6', 'u+ra/i-hi-li-na-sa', ''),
('HAMA 7', 'MAGNUS+ra/i-ta3-mi-sa', 'REX'),
('HAMA 7', 'u+ra/i-hi-li-na-sa', ''),
('HAMA 8', 'PRAE-ta2-sa', ''),
('HAMA 8', 'u+ra/i-hi-li-na', 'REX-ti-sa'),
('HAMA 9', 'u+ra/i-hi-la-na', 'REX'),
('KARKAMIS_a4b', 'AVIS-nu-*466', ''),
('KARKAMIS_a4b', 'MAGNUS.TONITRUS', 'MAGNUS.REX'),
('KARKAMIS_a4b', 'su-hi-sa', 'SACERDOS'),
('MALATYA 5', 'PUGNUS-mi-li', 'REX.*462'),
('MALATYA 6', 'sa3+US-ka', ''),
('MALATYA 6', 'tu-wa/i-ti', 'REX.INFANS'),
('MEHARDE', 'a2-SCALPRUM-za-sa', 'BONUS2.SCRIBA-la/i/u-sa'),
('MEHARDE', 'ta-i-ta-sa', 'REX-ti-sa'),
('RESTAN', 'PRAE-ta2-sa', ''),
('RESTAN', 'u+ra/i-hi-li-na', 'REX'),
('SHEIZAR', 'ku-pa-pi-ia-sa', 'FEMINA-na-ti2-sa'),
('SHEIZAR', 'LOCUS-ti-*273-wa/i-sa', 'BONUS2.SCRIBA-la-sa'),
('SHEIZAR', 'ta-i-ta-si', 'HEROS'),
('TELL_TAYINAT_1', 'TONITRUS.HALPA-pa-ru2-ti-ia-sa', '');

-- --------------------------------------------------------

--
-- Table structure for table `inscriptions_signs_table`
--

CREATE TABLE `inscriptions_signs_table` (
  `inscription_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_laroche_number` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_variant` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monumental_attestation_number` int(11) NOT NULL,
  `cursive_attestation_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inscriptions_signs_table`
--

INSERT INTO `inscriptions_signs_table` (`inscription_name`, `sign_laroche_number`, `sign_variant`, `monumental_attestation_number`, `cursive_attestation_number`) VALUES
('BABYLON 3', '*439', '439_3Bb', 0, 1),
('DARENDE', '*439', '439_1a-r', 0, 4),
('DARENDE', '*439', '439_1a-s', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `inscriptions_table`
--

CREATE TABLE `inscriptions_table` (
  `inscription_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inscription_description` longtext COLLATE utf8mb4_unicode_ci,
  `inscription_region` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inscription_site` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inscription_conservation_location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inscription_conservation_state` enum('poor','avarage','good') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chronology_upper` int(11) DEFAULT NULL,
  `chronology_lower` int(11) DEFAULT NULL,
  `inscription_chronology_reliability` enum('high','medium','low') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inscription_chronology_notes` longtext COLLATE utf8mb4_unicode_ci,
  `not_hieroglyphic_reliefs_presence` enum('yes','no','unknown') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `not_hieroglyphic_reliefs_description` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inscriptions_table`
--

INSERT INTO `inscriptions_table` (`inscription_name`, `inscription_description`, `inscription_region`, `inscription_site`, `inscription_conservation_location`, `inscription_conservation_state`, `chronology_upper`, `chronology_lower`, `inscription_chronology_reliability`, `inscription_chronology_notes`, `not_hieroglyphic_reliefs_presence`, `not_hieroglyphic_reliefs_description`) VALUES
('AFRIN', '"Fragment of stele, top and bottom destroyed, front, left side and reverse preserved, right side also destroyed, taking with it an indeterminable amount from the right edge of the obverse and left edge of the reverse. Obverse and reverse form the wide sides of the monument, and the left and missing right sides the narrow. The front (A) preserves remains of relief sculpture, apparently the short fringed kilt such as would be worn by a Storm-God figure. This indicates that the preserved fragment constitutes the middle section of the monument, which seems to have been an ordinary Storm-God stele with right-facing figure. Inscription·, left side (B) and reverse (C) preserve parts of 3 lines of inscription (11. 1 and 3  sinistroverse, 1. 2 dextroverse), which no doubt also continued on the lost right side (D ) ; only the lower part of 1. 1 survives, but 1. 2 is preserved to its full height for most of its surviving length, as is 1. 3 on side Β though on side C only the upper part of its right end survives.\r\n\r\nDimensions: preserved ht., 0.36m.; preserved w., 0.61 m.; th., 0.25 m.; line h t , 0.27 m." (Hawkins 2000, 386)', 'Northern Levant and Aleppo', 'Afrin', 'Fragment of stele, stored in Ain Dara excavation h', 'poor', 900, 700, 'low', 'Uncertain', NULL, NULL),
('AIN DARA', '"Lower part of sculptured block bearing on its long side the legs of a lion striding to the right and on the adjoining front narrow side the head of the animal as a protome (details destroyed). On the rear narrow side is the lower part of a male figure facing right, wearing a short bordered tunic and boots with upturned toes and a sword at the waist. This figure doubtless represented the Storm-God. Behind the figure, between it and the edge of the block, 6 signs of a Hier, inscription are preserved, sinistroverse, arranged according to space available in a vertical column, broken at the top and bottom. How long the inscription may have been and where it could have begun cannot be guessed. It could have continued on a lost block adjoining the present one on the left. The block itself with its protome and profile lion must have  originally formed the right-hand jamb of a monumental\r\ndoor.\r\n\r\nDimensions: preserved ht., 1.18m.; w., 1.13m.; th., 0.44 m." (Hawkins 2000, 385)', 'Northern Levant and Aleppo', 'Ain Dara', 'Sculptured block, remained in situ where found at ', 'avarage', NULL, NULL, NULL, NULL, NULL, NULL),
('AZAZ', '"Corner fragment of stone monument of indeterminate form bearing on 2 adjacent faces parts of 2 lines of inscription, 1. 1  dextroverse, 1. 2 sinistroverse.\r\n\r\nDimensions: preserved ht., 0.36m.; preserved w.(A), 0.16 m.; (B), 0.34m.; line ht., not fully preserved, c. 0.24 m." (Hawkins 2000, 385)', 'Northern Levant and Aleppo', '\'Azaz', 'Fragment, National Syrian Museum, Aleppo, no numbe', 'avarage', 900, 800, 'low', NULL, NULL, NULL),
('BABYLON 1', 'Reverse: 7-line inscription, beginning (unusually) upper left, running dextroverse across entire reverse, continuing boustrophedon and terminating just after beginning of 1. 7. (Hawkins 2000, 391)', 'Northern Levant and Aleppo', 'Babylon', 'Stele, Ancient Oriental Museum, Istanbul, no. 7816', 'good', 950, 850, 'low', 'Sculptural stylistic criteria only', 'yes', 'Complete, round-topped stele, flat obverse, curved reverse. Obverse : standard Storm-God figure, facing right, bearded, with long, curled pigtail, wearing horned helmet, short, short-sleeved, belted, fringed tunic with sword at waist and boots with upturned toes, holding in left hand raised in front, a trident thunderbolt, and in right hand raised behind an axe.\r\n\r\nDimensions: (stele) ht., 1.28m.; w., 0.53m.; th., 0.35 m.; (inscription) 1., 0.90 m.; line ht., 0.12 m. (Hawkins 2000, 391)'),
('BABYLON 2', '"Stone (basalt) bowl with pedestal base, and deep groove cut around circumference of outer rim. Below this a 1-line sinistroverse inscription completely encircles the outer body of the bowl. The starting point of this circular inscription is not obvious and must be determined on contextual and epigraphic grounds.\r\n\r\nDimensions: ht. (with pedestal), 0.23m.; external diam., 0.33 m. ; external circumference, 1.03 m." (Hawkins 2000, 394)', 'Northern Levant and Aleppo', 'Babylon', 'Stone bowl, British Museum, London, no. 125004', 'good', 800, 700, 'low', 'Uncertain', NULL, NULL),
('BABYLON 3', '"Two rim and two base fragments of large stone bowl. The body of the bowl was fluted all round and the rim plain with a more prominent band surmounting a recessed band. A 1-line sinistroverse inscription is placed around a stretch of the vertical face\r\nof the rim so that the upper row of signs is on the prominent band and the lower on the recessed. Between the first (Andrae) and second (Koldewey) publications the bowl was restored and, in particular, the two inscribed rim fragments joined (contrary to the statement in first publication), so the inscription is almost complete.\r\nDimensions: (bowl) diam., 0.66m.; depth (internal), 0.67 m.; (inscription), ht. 0.07 m.; 1. 0.41 m." (Hawkins 2000, 396)', 'Northern Levant and Aleppo', 'Babylon', 'Vorderasiatisches Museum Berlin', 'avarage', 800, 700, 'medium', 'Hawkins 2000: 900-700; Payne 2010: 800-700', NULL, NULL),
('DARENDE', '"Reverse (C): 6-line inscription, beginning upper right immediately behind raised right arm of figure on side B, running sinistroverse along 1. 1 and continuing boustrophedon, terminating with one word on 1. 6. "(Hawkins 2000, 304)', 'Malatya', 'Darende', 'Anatolian Civilizations Museum, Ankara: museum no.', 'poor', 1100, 900, 'low', 'Hawkins argues the author to be the same individual as the "Arnuwantis the grandson" on ÎSPEKÇUR side C, and his grandfather appears to be the brother of the author of KÖTÜKALE and GÜRÜN (same genealogy). See ÎSPEKÇÛR and GÜRÜN, Dates.', 'yes', '"Small, 4-sided, round-topped, tapering stele, obverse/reverse (A, C) wider than sides (B, D).\r\nObverse (A): goddess Hebat of the City, represented as figure facing left, wearing high polos, long robes, and shoes with upturned toes, seated on high-backed, crossed-legged chair with lions\' feet(P), and footstool under feet, holding bowl up to lips in right hand, and lituus(P) in left hand; in front of her there is an altar with food offerings, and she is identified by epigraphs, "Hebat" (twice, in front of and behind head), "of the City" (behind chair). Right side (D): god Sarruma facing left, beardless, with hair falling down back in long pigtail, wearing long, fringed, belted robe, and shoes with upturned toes, holding bowl up to lips in right hand, and lituus(?) in left hand, standing on couchant lion; he is identified by the epigraph "Sarruma" placed behind the skirt of his robe.\r\nLeft side (B ) : figure facing right towards the two gods, similar in appearance and accoutrements to Sarruma, also standing on couchant lion, holding double-axe (or hammer) in right hand raised behind him, and in left hand a jug from which he pours a libation into a 2-handled, footed bowl in front of him; the epigraph in a circle in front of his face ... represents his name as a king of Malatya; the figure, while standing on a lion (thus dead and deified, "in the presence of the gods"(?)), serves as the introductory amu, "I (am)", to the inscription.\r\n\r\nDimensions: ht., 0.79 m.; max. w., 0.30 m.; max. th., 0.20 m.; line ht., 0.08 m." (Hawkins 2000, 304)'),
('HAMA 1', 'Fragment of building block bearing 3-line inscription, beginning upper right corner and running sinistroverse, continuing boustrophedon. Left side of inscription lost, 6 words missing from 11. 1—2, 1. 3 ends at break; blank space below 1. 3." (Hawkins 2000, 411)', 'Northern Levant and Aleppo', 'Hama', 'Istanbul, Ancient Oriental Museum, no. 7688', 'avarage', 840, 800, NULL, 'Hawkins dates to generation after Urhilina from HAMA 4 (2000, 411)', NULL, NULL),
('HAMA 2', '"face split from oblong building block, bearing 3-line inscription, beginning upper right corner and running sinistroverse, continuing boustrophedon, ending 1. 3 middle; blank space below 1. 3." (Hawkins 2000, 411)', 'Northern Levant and Aleppo', 'Hama', 'Istanbul, Ancient Oriental Museum, no. 7690', 'good', 840, 800, NULL, 'Hawkins dates to generation after Urhilina from HAMA 4 (2000, 411)', NULL, NULL),
('HAMA 3', '"face split from oblong building block (for original form without dimensions, see Wright, loc. cit. below, Publication, pl. II), bearing 2-line inscription beginning in top right corner, running sinistroverse, continuing boustrophedon, ending at left edge; large blank space below 1. 2." (Hawkins 2000, 411)', 'Northern Levant and Aleppo', 'Hama', 'Istanbul, Ancient Oriental Museum, no. 7689', 'good', 840, 800, NULL, 'Hawkins dates to generation after Urhilina from HAMA 4 (2000, 411)', NULL, NULL),
('HAMA 4', 'Orthostat block from portal, bearing on wide face (A) a 5-line inscription, the top 4 lines of which align with a 4-line inscription on its narrow face (B). The sequence of reading is peculiar (see Fig., p. 404) : beginning in the top right corner of A, 1. 1 ran sinistroverse, continuing directly on an element now lost, returning boustrophedon along 11. 2 — 3, and again continuing on the missing element. Instead of returning along A 1. 4 (sinistroverse like 1. 3), the text recommenced on B, top left corner, and ran dextroverse, continuing boustrophedon down Β 11. 1—4, from which it continued directly along A 1. 4, which presumably continued on the missing element and returned boustrophedon along A 1. 5. The first half of the latter has however been erased at an unknown date and the last half terminates the inscription just before the end of the line.\r\n\r\nDimensions : ht., 0.73 m.; w. (side A), 0.90 m.; th. (side B), 0.37 m.; line ht., 0.10 m. (Hawkins 2000, 403)', 'Northern Levant and Aleppo', 'Hama', 'Istanbul, Ancient Oriental Museum, no. 7692', 'avarage', 860, 840, NULL, '"Urhilina king of Hamath was correctly identified by Thompson (Archaeologia 64 (1912), p. 11 f.) with Irhuleni the Hamathite named by Shalmaneser III in the years 853, 849, 848 and 845 B.C." (Hawkins 2000, 404)', NULL, NULL),
('HAMA 5', '"Left side of stele or orthostat bearing on upper part remains of 4-line inscription, alternately sinistroverse-dextroverse, thus preserving 1. 1 end + 1. 2 beginning [...], 1. 3 end + 1. 4 beginning [...].\r\n\r\nDimensions: ht., 1.35 m.; preserved w., 0.40 m.; th. 0.60 m.; inscription, ht. 0.55 m., preserved w., c. 0.20 m." (Hawkins 2000, 406)', 'Northern Levant and Aleppo', 'Hama', 'Hama Museum', NULL, 860, 840, NULL, 'Hawkins dates contemporary to HAMA 4 (2000, 407), referring to: "Urhilina king of Hamath was correctly identified by Thompson (Archaeologia 64 (1912), p. 11 f.) with Irhuleni the Hamathite named by Shalmaneser III in the years 853, 849, 848 and 845 B.C." (Hawkins 2000, 404)', NULL, NULL),
('HAMA 6', 'An oblong building block bearing on its end a 2-line inscription. It begins in the top right corner and run sinistroverse, continuing boustrophedon, and ending l. 2 right end. "The blocks preserve the original form of HAMA 2 — 3 before they were trimmed, and their inscriptions are closely parallel.\r\n\r\nDimensions (inscriptions only): (6) ht., 0.24m.; w., 0.52 m.; Une ht., 0.10-0.12 m." (Hawkins 2000, 412)', 'Northern Levant and Aleppo', 'Hama', 'Hama Museum', 'good', 840, 800, NULL, 'Hawkins dates to generation after Urhilina from HAMA 4 (2000, 412)', NULL, NULL),
('HAMA 7', 'An oblong building block bearing on its end a 3-line inscription. It begins in the top right corner and run sinistroverse, continuing boustrophedon, and ending early in l. 3. "The blocks preserve the original form of HAMA 2 — 3 before they were\r\ntrimmed, and their inscriptions are closely parallel.\r\n\r\nDimensions (inscriptions only): ht., 0.41 m.; w., 0.56 m.; line ht., 0.10-0.11 m." (Hawkins 2000, 412)', 'Northern Levant and Aleppo', 'Hama', 'Hama Museum', 'good', 840, 800, NULL, 'Hawkins dates to generation after Urhilina from HAMA 4 (2000, 412)', NULL, NULL),
('HAMA 8', '"Stele apparently unfinished, known from photograph only, details of execution lacking. The stele has a 3-line inscription breaking off unfinished in the middle of the 3rd line, with the space for the rest of that and a further line demarcated in outline. It begins upper right, running sinistroverse and continuing boustrophedon." (Hawkins 2000, 409)', 'Northern Levant and Aleppo', 'Hama', NULL, NULL, 860, 840, NULL, 'Hawkins dates contemporary to HAMA 4 (2000, 410), referring to: "Urhilina king of Hamath was correctly identified by Thompson (Archaeologia 64 (1912), p. 11 f.) with Irhuleni the Hamathite named by Shalmaneser III in the years 853, 849, 848 and 845 B.C." (Hawkins 2000, 404)', NULL, NULL),
('HAMA 9', '"Fragments of shell (designations b—l from Publication) : b, rim fragment, inscription on right side of convex face; c, rim fragment, inscription on concave face; d, complete left end of piece, inscription on broken right edge of convex face; f, fragment\r\ninscription on concave face; h, rim fragment, inscription on concave face; i, rim fragment, inscription on concave face; l, fragment, inscription on concave face. Complete example (BM 134325): shell carved into hemispherical cup, ledge at upper inner end, perforation drilled through top of dome; inscription placed on concave face near upper right edge.\r\n\r\nDimensions: b, 6.2 X 2.8 cm.; c, 4.8 X 1.6 cm.; d, 6.5 X 4.7 cm.; f, 5 . 3 x 2 . 7 cm.; h, 3 . 3 x 1 . 9 cm.; i, 6.5 Χ 2.4 cm.; l, 2.2 X 2.5 cm.; BM 134325, 7.0 X 5.8 cm." (Hawkins 2000, 410)', 'Northern Levant and Aleppo', 'Hama', 'British Museum nos. 133016, 133018, 133011, 133015', 'good', 860, 840, NULL, 'Hawkins dates contemporary to HAMA 4 (2000, 411), referring to: "Urhilina king of Hamath was correctly identified by Thompson (Archaeologia 64 (1912), p. 11 f.) with Irhuleni the Hamathite named by Shalmaneser III in the years 853, 849, 848 and 845 B.C." (Hawkins 2000, 404)', NULL, NULL),
('HINES', '""... building stone... cut to a regular shape and has on one side a square hole for a dowel" (Jacobsen). One face bears remains of right side of 2-line inscription, 1. 1 running sinistroverse, 1. 2 continuing dextroverse.\r\n\r\nDimensions: c. 40 cm. wide (Jacobsen)." (Hawkins 2000, 408)', 'Northern Levant and Aleppo', 'Hines', NULL, NULL, 860, 840, NULL, 'Hawkins dates contemporary to HAMA 4 (2000, 409), referring to: "Urhilina king of Hamath was correctly identified by Thompson (Archaeologia 64 (1912), p. 11 f.) with Irhuleni the Hamathite named by Shalmaneser III in the years 853, 849, 848 and 845 B.C." (Hawkins 2000, 404)', NULL, NULL),
('JISR_EL_HADID_frags._1-3', '"The three fragments, each inscribed on one face only, do not join, but the line heights and appearance of the stone are consistent with the view that they may all be parts of a single monument.\r\nThe original form of the monument would have been that of a large stele or orthostat, not less than about 0.60 m. high and 0.70 m. wide, and about 0.17 — 0.21 m. thick, inscribed on one face only, introduced by a full length amu-figure.\r\n\r\nPreserved dimensions : (1 ) ht., 0.23 m.; w., 0.35 m.; th., 0.17m.; (2) ht, 0.24m.; w., 0.28m.; th., 0.21 m.; (3) ht., 0.24 m.; w., 0.33 m.; th., 0.13 m.; line ht. consistently c. 0.08 m." (Hawkins 2000, 378-9)', 'Northern Levant and Aleppo', 'Jisr el Hadid (Dermir Köprü)', 'Three fragments, Oriental Institute, Chicago, nos.', 'avarage', 900, 700, 'low', 'uncertain', NULL, NULL),
('KARKAMIS_a4b', 'Stele of black basalt, bearing, obverse top, an elaborate winged disc; below, an 8-line inscription. Below the inscription is an uninscribed space. Excavated in-situ before 1913 standing in the courtyard of the Temple of the Storm God.    ', 'Karkemis', 'Karkemis', 'Anatolia Civilization Museum - Ankara', 'poor', 1100, 900, 'medium', 'The identification of MAGNUS.TONITRUS with the MAGNUS.TONITRUS-tá/ta- (KARKAMIS A11b+c,§§4,30)seems likely, and of Suhis (§6) with the great-grandfather of Katuwas also possible. This would give a date 3-4 generation earlier than Kutuwas, i.e. probably 11th or 10th centuries B.C., though it is not certain that the stele is contemporary with the events which it narrates. (Hawkins, 2000). ', NULL, NULL),
('KIRÇOĞLU', '"Lower part of small statue, head and shoulders and much of left side missing, upper right side appears to preserve traces of right arm held close to body. The figure wears a long belted skirt with 4 pleats at the back, below which protrude the sandalled feet; above the skirt the flap of a jacket-like garment falls over the belt on the right side and probably the left also. The left side, front and right side of the skirt bear a 3-line inscription beginning on left side, upper right and running sinistroverse round to right side, left edge, returning boustrophedon along 1. 2 and concluding with 2 words on 1. 3. Damage to left side has carried off 2 — 3 words at the beginning, including name (title?) and patronym of the author.\r\n\r\nDimensions: preserved ht., 0.38m.; w., 0.25m.; th., 0.17 m.; line ht., 0.06 m." (Hawkins 2000, 383)', 'Northern Levant and Aleppo', 'Kırçoğlu', 'Statue, Vorderasiatisches Museum, Berlin, no. 3009', 'good', 750, 700, 'medium', 'Dated by sculpture, supported by cursive style of inscription', NULL, NULL),
('MALATYA 5', 'Corner orthostat with sculpture on right narrow side and sculpture and inscription on face. It forms a pair with the corner orthostat MALATYA 11 found in situ. Sculpture (right side): right-facing lion; (front): on left a god standing on stag, facing right, beardless, wearing pointed, horned hat, short, belted tunic, boots with upturned toes, holding in right had a bow over his shoulder, in left hand a 3-pronged object and the reins of the stag; in centre a bare-headed beardless figure facing left towards the stag, wearing a long, fringed garment, holding in right hand a jug, from which he pours a libation on to the ground, in left hand a lituus pointing back and downwards; behind this figure, a small bare-headed, beardless attendant facing left holds a goat. Inscriptions: above the head of the stag in front of god, a 5-sign group, and in front of the man and above his head, a 5-sign group; both inscriptions are epigraphs identifying the figures. The relief, subsequently designated Relief G, was found together with Reliefs H (uninscribed) and I (MALATYA 6) reportedly at Arslantepe on 15 January 1907. \r\nDimensions: ht., 0.48 m.; w., 0.86 m.\r\nCondition: fair.\r\nScript: (god\'s group) relief; (king\'s group) name, relief; titles, incised.\r\nSign forms: monumental\r\n', 'Malatya', 'Arslantepe', 'Anatolian Civilizations Museum, Ankara,', '', 1100, 900, 'low', 'Unreliability in dating from attestations of personal names has caused this orthostat to be dated by stylistic criteria. Scholars are generally agreed on placing it early: Orthmann designates the style Malatya (, the equivalent of the Suhis-Katuwas style in Karkamis. Genge places it more precisely in the period 915/900 B.C. Now, however, it would seem that, even if the author was not PUGNUS-mili I or II of the House of Kuzi-Tesub, he is likely to have been not far removed from that genealogy and from the sculptures ISPEKCUR and DARENDE. This will require a much higher date to the Lion Gate sculpture than has been recently envisaged, perhaps 11th or early 10th centuries B.C.', NULL, NULL),
('MALATYA 6', 'Orthostat with sculpture and inscription on front face. Sculpture: on right, a 2-winged goddess, facing left, wearing pointed, horned hat, long robe cut away in front to leave right leg bare from knee, and shoes with upturned toes, holding in right hand held out before her a broken object, in left hand an axe over shoulder before her a broken object, in left hand an axe over shoulder, stands with either foot on a bird; in front of her, facing right, a female figure wearing polos with long veil and long robe, left hand raised before her, holding in right hand a jug from which she pours a libation into a 2-handled bowl on the ground; behind this figure, a small beardless attendant facing right holds a goat. Inscriptions: in front of goddess a 3-signed damaged group, behind lady a 5-sign group; both inscriptions are epigraphs identifying the figures. The relief designated Relief I was found together with Reliefs G (MALATYA 5) and H.\r\nDimensions: ht., 0.48 m.; w., 0.73 m.\r\nCondition: poor.\r\nScript: relief\r\nSign forms: monumental.', 'Malatya', 'Arslantepe', 'Anatolian Civilizations Museum, Ankara, no. 12248 ', 'poor', 1100, 900, 'low', 'The princess is presumably wife or daughter of PUGNUS-mili, for whose uncertain date see MALATYA 5. ', NULL, NULL),
('MEHARDE', '"Right side (A), upper and lower fragments : inscription begins in upper right corner running sinistroverse, continuing boustrophedon for 7 complete lines and beginning of an 8th, dextroverse (upper fragment), of which the lower, dextroverse, part is preserved at the top of the lower fragment, continuing boustrophedon for a complete 9th line, and breaking off with the upper part of 10th, dextroverse, line, aligned with the bottom of the sculptured panel on the obverse. The loss of the lower right corner has carried away an area which could have held 2 further lines corresponding to the 2 at the bottom of the obverse. It seems likely that a lost, sinistroverse l. 11 continued directly round the corner on the 1st line of the obverse, but this is not directly demonstrable, especially in view of the obscurity of that line. Similarly it is uncertain whether the dextroverse l. 2 of the obverse continued round the corner back on to a lost 1. 12 of the right side, or stopped at its own right end to continue on the upper left side (see Commentary for further consideration). Left side (C), upper and lower fragments: the text begins at the upper right corner in midsentence (thus continued from previous text), and runs sinistroverse, continuing boustrophedon for 9 almost completely preserved lines (the break between the upper and lower fragment has destroyed only the lower part of 1. 6). Below the sinistroverse 1. 9, there is space for a further line which could have been lost by flaking of the surface, but the sense continues satisfactorily on the reverse, suggesting that this area was never inscribed (see further, Commentary). Reverse (side D): 3 lines of inscription, aligned with side C 11. 1—3, apparently continuing directly from side C 1. 9, beginning upper\r\nright and running sinistroverse, continuing boustrophedon to end 3rd line, lower left; remainder of side D uninscribed." (Hawkins 2000, 415)', 'Northern Levant and Aleppo', 'Meharde', 'Stele, Aleppo Museum, no. 5051', 'avarage', 900, 700, 'low', '"Uncertain...script appears archaic but may be archaizing." (Hawkins 2000, 416)', 'yes', '"Obverse (side B), upper fragment·, female figure, facing front, preserved to shins, face destroyed, hair dressed in Hathor volute, wearing long dress, holding up in either hand a conical object. On her left is a small figure facing right, also clad in long dress; and above, an indistinct object, perhaps a winged disc as identified by Orthmann. Lower fragment : at bottom of frame, a couchant lion facing right, in the middle of his back a pair of human feet, frontally rendered, protrude from the hem of an ankle-length robe, and on his head stand another smaller pair, facing right. The space below the sculpture is occupied by 2 lines of inscription, sinistroverse-dextroverse; from the bottom of the piece protrudes the tenon to fix it in a morticed base. The lower right corner of the piece is lost.\r\n...\r\nDimensions: preserved ht., 1.20m. (upper fragment) -I- 0.76 m. (lower fragment), total, c. 2.00 m. without the base tenon; w., 0.73 m.; th., 0.33 m.; line ht., 0.10-0.15 m." (Hawkins 2000, 415)'),
('QAL AT EL MUQID', '"Round-topped stele bearing on upper part of front a 2-line inscription in an incised panel. The inscription, like RESTAN, begins in upper right corner, running sinistroverse, continuing boustrophedon, and ending on 1. 2, right end.\r\n\r\nDimensions : ht., 1.17 m.; w., 0.71 m.; th., 0.38 m.; line ht., 0.11 m." (Hawkins 2000, 408)', 'Northern Levant and Aleppo', 'Apamea', 'National Syrian Museum, Aleppo, no. M 6526', 'good', 860, 840, NULL, 'Hawkins dates contemporary to HAMA 4 (2000, 408), referring to: "Urhilina king of Hamath was correctly identified by Thompson (Archaeologia 64 (1912), p. 11 f.) with Irhuleni the Hamathite named by Shalmaneser III in the years 853, 849, 848 and 845 B.C." (Hawkins 2000, 404)', NULL, NULL),
('RESTAN', '"Originally a round-topped stele bearing on upper part of front a 2-line inscription in incised panel. When found, the stele had been split vertically into 2 halves and the round top broken away. The entire uninscribed lower part of the stele has since been trimmed off. The inscription begins in top right corner, and runs 11. 1—2, sinistroverse continuing boustropbedon, and ending 1. 2, right end.\r\n\r\nDimensions: orig. ht., 2.0 m.; total w., 0.59 m.; th., 0.28 m.; line ht., 0.11 m." (Hawkins 2000, 407)', 'Northern Levant and Aleppo', 'Hama', 'Paris, Louvre AO 4539A', 'avarage', 860, 840, NULL, 'Hawkins dates contemporary to HAMA 4 (2000, 408), referring to: "Urhilina king of Hamath was correctly identified by Thompson (Archaeologia 64 (1912), p. 11 f.) with Irhuleni the Hamathite named by Shalmaneser III in the years 853, 849, 848 and 845 B.C." (Hawkins 2000, 404)', NULL, NULL),
('SHEIZAR', '"Reverse and sides : 7-line inscription, beginning on side A (left, as viewed from front), upper right, running sinistroverse across sides A, Β (reverse) and C (right side), continuing boustrophedon down stele, ending 1. 7, reverse, lower left (side C 1. 7 is uninscribed as is the remainder of side B; side A has two further lines (8 and 9) delineated but not inscribed). The break runs across the lower part of 1. 5, leaving the top of the line on the upper part, the bottom on the lower part." (Hawkins 2000, 416)', 'Northern Levant and Aleppo', 'Sheizar', 'Stele broken in two; upper part, Beirut Museum, lo', 'avarage', 900, 700, 'low', 'Uncertain', 'no', '"Round-topped stele broken in two; the lower part still has the tenon by which it would have been fixed in a lost base. Obverse : plain, undecorated, in contrast to MEHARDE.\r\n...\r\nDimensions: total ht. (without tenon), 1.35m.; w., 0.46 m.; th., 0.23 m.; line ht., 0.10 m." (Hawkins 2000, 416)'),
('TELL_TAYINAT_1', 'Fragmentary colossal statue, seated on throne: Fragments 1 and 2 both preserve parts of ornate, projecting capitals of two legs of the throne. Frag. 1 : below a preserved horizontal surface, 1. 1, with part of upper edge preserved, runs sinistroverse above projecting capital round 3 adjoining faces; 1. 2 runs dextroverse round same 3 faces jumping a double-volute flanked by tress-patterned bands which surmounts the front of the column; 11. 3 (sinistroverse) and 4 (dextroverse) are only preserved to right of column, but by analogy with frag. 2 would have continued to its left, and would have had a blank space representing a structural element of the throne below; above the upper horizontal surface, set back from the edge, there are traces of the beginning of a\r\nfurther vertical inscribed surface. Frag. 2\\ surmounting horizontal surface and upper part of 1. 1 not preserved but may be inferred from frag. 1; traces of lower part of 1. 1 may be seen running sinistroverse above double-volute with tress-patterned bands, to left of which a fragment of 1. 2 (dextroverse) is preserved; 11. 3 (sinistroverse) and 4 (dextroverse ) run round the fragment straddling the projecting capital. Fragments 3, 4 and 5 have been joined by Dornemann to form a section of a 5-line inscription preserved from a horizontal upper surface to an uninscribed blank space below and a horizontal lower surface set back from which are remains of a continuing vertical face, indicating that this was not an original base. LI. 1,3, and 5 are sinistroverse,11. 2 and 4 dextroverse; and on frag. 5 11. 4—5 seem to show traces of sculptural detail. Frag. 6 is a still unattached piece bearing remains of a dextroverse line, with a blank space below, turning under to a lower surface at right angles; projections from this look like the tops of further Hieroglyphs, which could suggest that the inscribed area on the adjoining face was originally a horizontal surface.\r\n\r\nDimensions: preserved ht., frag. 1, 0.48 m.; frag. 2, 0.64 m.; frags. 3 - 5 , 0.75 m.; frag. 6, 0.06 m.; line ht., average c. 0.11 m. throughout.  (Hawkins 2000)', 'Northern Levant and Aleppo', 'Tell Tayinat', 'Fragments, Oriental Institute, Chicago, excavation', 'good', 875, 825, 'low', 'Halparuntiyas (frag. 6 ) identified by Gelb with Qalparunda of Unqi attested in the inscriptions of Shalmaneser III in 857 and 853 B.C. This mid-9th century dating seems possible, but is by no means certain.  (Hawkins 2000)', NULL, NULL),
('TELL_TAYINAT_2', '"Fragmentary blocks; it is likely that TELL TAYINAT 2 was in its complete form a base for some other inscribed monument, a stele or perhaps a statue (note: "this statue", frag. 11 first line).\r\n\r\nDimensions: hard to estimate. Sides probably not less than about 0.8 m. each; height, minimum of 6 lines, probably not less than 0.45 m."  (Hawkins 2000, 368-9)', 'Northern Levant and Aleppo', 'Tell Tayinat', 'Twelve main fragments and others, Oriental Institu', 'avarage', 800, 700, 'medium', '"The archaeological context points to the deliberate destruction and dispersal of the monument, with a group of the fragments being buried in the foundation fill for Building II. This is most likely to have happened at the Assyrian capture of the city in 738 B.C., which provides a plausible terminus ante quem. The generally cursive sign forms would point more to an 8th century B.C. date than a 9th."  (Hawkins 2000, 369)', NULL, NULL),
('TELL_TAYINAT_fragment_VIII.51, 52', 'Three fragmentary lines of text', 'Northern Levant and Aleppo', 'Tell Tayinat', 'T 2898, 2899 Oriental Institute, Chicago', 'avarage', 800, 700, 'low', 'Hawkins (2000) hesitantly suggests a similar date to TELL TAYINAT 2', NULL, NULL),
('TULEIL_1', '"Fragment of black basalt from monument of indeterminate form, bearing parts of 3 lines of inscription (only 1. 2 preserved to full height), running dextroverse-sinistroverse-dextroverse. The sign-forms and line ht. resemble JISR EL HADID, and it is conceivable that it formed part of the same monument (note the proximity of Jisr el Hadid and Tuleil - Discovery).\r\n\r\nDimensions: preserved ht., 0.27m.; preserved w., 0.35 m.; th., 0.18 m.; line ht., 0.08 m." (Hawkins 2000, 381)', 'Northern Levant and Aleppo', 'Tuleil', 'Fragment, Oriental Institute, Chicago, no. A 23430', 'avarage', 900, 700, 'low', 'Uncertain', NULL, NULL),
('TULEIL_2', '"Building block bearing 4-line inscription, introduced by full-height ruler figure facing right, beardless, with hair falling in bunch on nape, wearing long, fringed garment, carrying staff in left hand and pointing towards face with right hand in gesture expressing "I am ...". Of the inscription 1. 1, somewhat higher than 11. 2 —4, begins behind the figure\'s head and runs sinistroverse, continuing boustrophedon along 11. 2 — 4, ending lower right behind the figure\'s feet. L. 1 is very unusual, in that it consists mainly of a procession of animal and human figures. It is not clear whether these could represent writing and should be read.\r\n\r\nDimensions : ht., 0.40 m.; w., 0.87 m.; th., 0.23 m.; line ht., 0.07-0.08 m."  (Hawkins 2000, 382)', 'Northern Levant and Aleppo', 'Tuleil', 'Oriental Institute, Chicago, no. A 23431', 'poor', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_names_table`
--

CREATE TABLE `personal_names_table` (
  `personal_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `personal_name_normalized` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_name_note` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_names_table`
--

INSERT INTO `personal_names_table` (`personal_name`, `personal_name_normalized`, `personal_name_note`) VALUES
('a2-na-si-na', 'Anasis', 'Alternatively read Anas with genitive ending'),
('a2-SCALPRUM-za-sa', 'Ahuzas', 'reading of SCALPRUM as \'hu\' is tentative (Hawkins 2000, 419)'),
('AVIS-nu-*466', 'Arnu-', 'Hawkins suggests a reading where *466 = \'(wa)ti\' to provide \'Arnuwantis\', but the reading is uncertain (2000, 81)'),
('AVIS2', 'Arnuwantis', NULL),
('AVIS2-wa/i-ta2-sa5', 'Arnuwantis', NULL),
('ku-pa-pi-ia-sa', 'Kupapiyas', NULL),
('la-PRAE-VIR/la-sa', 'Laparizitis', 'Reading is uncertain'),
('LOCUS-ti-*273-wa/i-sa', 'Pedantimuwas', NULL),
('MAGNUS.TONITRUS', 'Ura-Tarhunzas', NULL),
('MAGNUS+ra/i-ta3-mi-sa', 'Uratamis', NULL),
('PRAE-ta2-sa', 'Paritas', NULL),
('PUGNUS-mi-li', NULL, NULL),
('ru2-ti-ia-sa', 'Runtiyas', 'ru2 read logographically as CERVUS2'),
('sa3+US-ka', NULL, NULL),
('su-hi-sa', 'Suhis', NULL),
('ta-i-ta-sa', 'Taitas', NULL),
('ta-i-ta-si', 'Taitas', NULL),
('TONITRUS.HALPA-pa-ru2-ti-ia-sa', 'Halparuntiyas', 'ru2 also read logographically as CERVUS2'),
('tu-wa/i-ti', NULL, NULL),
('u+ra/i-hi-la-na', 'Urhilina', 'Alternatively normalized as Urhilana (Hawkins 2000, 411)'),
('u+ra/i-hi-li-na', 'Urhilina', NULL),
('u+ra/i-hi-li-na-sa', 'Urhilina', NULL),
('x-pa VIR-ti-sa', NULL, NULL),
('x-pa-VIR-ti-sa', 'x-pa-zitis', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photos_table`
--

CREATE TABLE `photos_table` (
  `photo_file_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inscription_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photo_author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `photo_date` date DEFAULT NULL,
  `photo_use_authorization` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos_table`
--

INSERT INTO `photos_table` (`photo_file_name`, `inscription_name`, `photo_author`, `photo_date`, `photo_use_authorization`) VALUES
('DARENDE_photo.pdf', 'DARENDE', 'J. D. Hawkins', '1899-12-31', 'no'),
('KARKAMISa4b.jpg', 'KARKAMIS_a4b', 'Hawkins', NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `regions_table`
--

CREATE TABLE `regions_table` (
  `region_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions_table`
--

INSERT INTO `regions_table` (`region_name`, `region_description`) VALUES
('Cilicia', NULL),
('Karkemis', 'Upper Euphrates, area corresponding to the Kingdom of Karkemish '),
('Kummuh', NULL),
('Malatya', 'Upper Euphrates, area corresponding to the Kingdom of Melid'),
('Maraş', NULL),
('Mazuwari', NULL),
('Northern Levant', NULL),
('Northern Levant and Aleppo', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `search_view_1`
--
CREATE TABLE `search_view_1` (
`inscription_name` varchar(50)
,`sign_laroche_number` varchar(6)
,`sign_variant` varchar(20)
,`monumental_attestation_number` int(11)
,`cursive_attestation_number` int(11)
,`chronology_upper` int(11)
,`chronology_lower` int(11)
,`inscription_chronology_reliability` enum('high','medium','low')
,`inscription_region` varchar(50)
,`inscription_site` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `signs_table`
--

CREATE TABLE `signs_table` (
  `ord` int(3) DEFAULT NULL,
  `sign_laroche_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sign_transliteration` varchar(346) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign_notes` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign_drawing_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signs_table`
--

INSERT INTO `signs_table` (`ord`, `sign_laroche_number`, `sign_transliteration`, `sign_notes`, `sign_drawing_file`) VALUES
(1, '*1 ', 'EGO', '(*487?)', ''),
(10, '*10', 'CAPUT', '', ''),
(10, '*10*', 'CAPUT+SCALPRUM', '', ''),
(100, '*100 ', 'ASINUS; ta', '(*116)', ''),
(101, '*101', 'ASINUS2', '', ''),
(102, '*102', 'CERVUS / a) CERVUS,  b) CERVUS2; ru?', '', ''),
(103, '*103', 'CERVUS2 / CERVUS3; ru?', '', ''),
(104, '*104', 'GAZELLA / a) CAPRA,b) CAPRA2, c) CAPRA2A; s?",\r\n105,*105,BOS / a) BOS b) BOS2; U,\r\n106,*106,--,\r\n107,*107 ,a) BOS+MI, b) BOS.MI, c) BOS2.MI; mu', '(*167)', ''),
(108, '*108', 'CORNU; su?', '', ''),
(109, '*109', 'VITELLUS (MAx in MAx LIx-zi, ?Malatya?)', '', ''),
(11, '*11', '--', '', ''),
(110, '*110', 'Ma', '', ''),
(111, '*111 ', 'a) OVIS, b) OVIS2 (=*518?)', '(*518?)', ''),
(112, '*112', 'LINGERE; za4', '', ''),
(113, '*113', 's. *26', '', ''),
(114, '*114', '#NOME?', '', ''),
(115, '*115 ', 'LEPUS; tapa / a) LEPUS,b) LEPUS2', '(*124)', ''),
(116, '*116', 'Es. *100', '', ''),
(117, '*117', '--', '', ''),
(118, '*118', '--', '', ''),
(119, '*119', 's. *246', '', ''),
(12, '*12', 'STATUA', '', ''),
(120, '*120', 'GRYLLUS', '', ''),
(121, '*121', 'SPHINX', '', ''),
(122, '*122', '--', '', ''),
(123, '*123', '--', '', ''),
(124, '*124', 's. *115b', '', ''),
(125, '*125 ', 'l?,"(*126', ' *457(1))', ''),
(125, '*125*', 'UNGULA; (LIx in MAx LIx-zi, ?Malatya?)', '', ''),
(126, '*126 ', 's. *125', '(*457(1))', ''),
(127, '*127', '[decoration only]', '', ''),
(128, '*128', 'AVIS; zi4', '', ''),
(129, '*129', '--', '', ''),
(13, '*13', 'E, s. *14', '', ''),
(130, '*130', 'AVIS3', '', ''),
(131, '*131', 'EAVIS5', '', ''),
(132, '*132', 'AVIS2', '', ''),
(133, '*133 ', 'AQUILA (AVIS4); ara/i', '(*134)', ''),
(134, '*134', 'ara/i, s. *133', '', ''),
(135, '*135', 'EAVISx', '', ''),
(136, '*136', 's. *43', '', ''),
(137, '*137', 'ELIBATIO', '', ''),
(138, '*138', 'PISCIS', '', ''),
(139, '*139', '--', '', ''),
(14, '*14 ', 'PRAE; pari', '(*13)', ''),
(140, '*140', '--', '', ''),
(141, '*141', '--', '', ''),
(142, '*142', '--', '', ''),
(143, '*143', 's. *214', '', ''),
(144, '*144', '--', '', ''),
(145, '*145', '--', '', ''),
(146, '*146', '--', '', ''),
(147, '*147', '--', '', ''),
(148, '*148', 'EIANUS', '', ''),
(149, '*149', '--', '', ''),
(15, '*15', 'DOMINA', '', ''),
(150, '*150', '--', '', ''),
(151, '*151', 'ETELIPINU', '', ''),
(152, '*152', '--', '', ''),
(153, '*153', 'nu', '', ''),
(154, '*154', '--', '', ''),
(155, '*155', '--', '', ''),
(156, '*156', '--', '', ''),
(157, '*157', '--', '', ''),
(158, '*158', '--', '', ''),
(159, '*159', '--', '', ''),
(16, '*16', 'MAGNUS.DOMINA', '', ''),
(160, '*160', 'VITIS; Ewi', '', ''),
(161, '*161', '--', '', ''),
(162, '*162', '--', '', ''),
(163, '*163', '--', '', ''),
(164, '*164', '--', '', ''),
(165, '*165 ', 'BONUS; w?/', '(*320)', ''),
(166, '*166', 'w?/', '', ''),
(167, '*167', 's. *107', '', ''),
(168, '*168', 's. *329', '', ''),
(169, '*169', 's. *382', '', ''),
(17, '*17', 'REX', '', ''),
(170, '*170', 's. *73', '', ''),
(171, '*171', '--', '', ''),
(172, '*172', 'ta5/i5 or l?/', '', ''),
(173, '*173', 'EHASTARIUS', '', ''),
(174, '*174', 'si', '', ''),
(175, '*175', 'LINGUA; la', '', ''),
(176, '*176', 'LA+LA', '', ''),
(177, '*177', 'ELINGUA+CLAVUS', '', ''),
(178, '*178', 'la+ra+a ', '', ''),
(179, '*179 ', 'HORDEUM; hwix', '(*453, *454)', ''),
(18, '*18', 'MAGNUS.REX', '', ''),
(180, '*180', '--', '', ''),
(181, '*181', 'PANIS; HALA; pax', '', ''),
(182, '*182', 'CAELUM', '', ''),
(183, '*183', 's. *423', '', ''),
(184, '*184', '--', '', ''),
(185, '*185', '--', '', ''),
(186, '*186', 'E, s. *445', '', ''),
(187, '*187', '--', '', ''),
(188, '*188', '--', '', ''),
(189, '*189', '--', '', ''),
(19, '*19', '?', '', ''),
(190, '*190', 'SOL2', '', ''),
(191, '*191 ', 'SOL', '(*465, *467)', ''),
(192, '*192', 'ORIENS', '', ''),
(193, '*193', 'LUNA', '', ''),
(194, '*194', '--', '', ''),
(195, '*195', '--', '', ''),
(196, '*196', 'EHATTI; h?,\r', NULL, ''),
(197, '*197', 'EHATTI+li; H?+LI', '', ''),
(198, '*198', '--', '', ''),
(199, '*199', 'TONITRUS', '', ''),
(2, '*2', 'EGO2', '', ''),
(20, '*20', '(LITUUS)? / LITUUS+?, LITUUS+?",\r\n21,*21,HEROS,\r\n22,*22,LOQUI,\r\n23,*23,LIS(?),\r\n24,*24,LIS,\r\n25,*25,OCULUS,\r\n26,*26 ,FRONS,(*113)\r\n27,*27,LIBARE,\r\n28,*28,FORTIS,\r\n29,*29,ET?, t?",\r\n30,*30,--,\r\n31,*31 ,LIGARE (PUGNUS+PUGNUS),\r\n32,*32,BRACCHIUM,\r\n33,*33,--,\r\n34,*34,POST,\r\n35,*35,na,\r\n36,*36,LITUUS+na,\r\n37,*37,--,\r\n38,*38,--,\r\n39,*39 ,PUGNUS,(*40,', NULL, ''),
(200, '*200', 'FULGUR', '', ''),
(201, '*201  ', 'TERRA, LOCUS, wa/i6', '', ''),
(202, '*202', 'a) VIA+TERRA. SCALPRUM, b) VIA+TERRA+ SCALPRUM, c) E(DEUS)VIA+TERRA', '', ''),
(203, '*203', '--', '', ''),
(204, '*204', 'wa/i5', '', ''),
(205, '*205', '--', '', ''),
(206, '*206', '--', '', ''),
(207, '*207 ', 'MONS / a) MONS, b) MONS2; wa/i4', '(*4)', ''),
(207, '*207*', 'ELEO+MONS.TU+LEO', '', ''),
(208, '*208', '--', '', ''),
(209, '*209', 'i (Ei(a)) ', '', ''),
(210, '*210', 'Ia', '', ''),
(211, '*211', '--', '', ''),
(212, '*212 ', 'FLUMEN', '(*213)', ''),
(213, '*213', 's. *212', '', ''),
(214, '*214 ', 'N?,(*143)', NULL, ''),
(215, '*215', 'a) FONS; b) ha', '', ''),
(216, '*216', 'a) FINES, ARHA b) (FINES+ha =) ARHA c) E*216', '', ''),
(217, '*217', '--', '', ''),
(218, '*218', '--', '', ''),
(219, '*219', '--', '', ''),
(220, '*220', '--', '', ''),
(221, '*221 ', 'VIA', '(*76, *222)', ''),
(222, '*222', 's. *221', '', ''),
(223, '*223', 'sa6', '', ''),
(224, '*224', 'ha?/ pa?', '', ''),
(225, '*225', 'URBS', '', ''),
(226, '*226', 'EI?UWA(URBS)', '', ''),
(227, '*227', 'a) URBS+RA/I-li  b) URBS+li; URBS-li', '', ''),
(228, '*228 ', 'REGIO; tu4', '(*230)', ''),
(229, '*229', 'M?.REGIO', '', ''),
(230, '*230', 'REGIO; tu4', '', ''),
(231, '*231 ', 'CASTRUM', '(*232, *233)', ''),
(232, '*232', 's. *231', '', ''),
(233, '*233', 's. *231', '', ''),
(234, '*234', '--', '', ''),
(235, '*235', 'TURRIS?', '', ''),
(236, '*236', 'MURUS?', '', ''),
(237, '*237 ', 'PORTA', '(*238)', ''),
(238, '*238', 's. *237', '', ''),
(239, '*239', 'PORTA2', '', ''),
(240, '*240', '--', '', ''),
(241, '*241', 'ki4  /  kix', '', ''),
(242, '*242', 's. *432', '', ''),
(243, '*243', 'CUBITUM', '', ''),
(244, '*244', 'AEDIFICIUM', '', ''),
(245, '*245 ', 'VACUUS (AEDIFICIUM+MINUS)', '(*359(2))', ''),
(246, '*246 ', 'AEDIFICARE (AEDIFICIUM.PONERE)', '(*119)', ''),
(247, '*247', 'DOMUS', '', ''),
(248, '*248', 'DELERE (DOMUS+MINUS)', '', ''),
(249, '*249', 'DEUS.DOMUS', '', ''),
(250, '*250', 'EMAGNUS.DOMUS', '', ''),
(251, '*251', 'DOMUS+X', '', ''),
(252, '*252 ', 'DOMUS+SCALA', '(*253)', ''),
(253, '*253', 's. *252', '', ''),
(254, '*254', 'EEUNUCHUS2', '', ''),
(255, '*255 ', 'HORREUM?', '(*256)', ''),
(256, '*256', 's. *255', '', ''),
(257, '*257 ', 'ARGENTUM', '(*258, *260)', ''),
(258, '*258', 's. *257', '', ''),
(259, '*259', '--', '', ''),
(260, '*260', 's. *257', '', ''),
(261, '*261', '--', '', ''),
(262, '*262', '--', '', ''),
(263, '*263', '--', '', ''),
(264, '*264', 'PODIUM', '', ''),
(265, '*265', '--', '', ''),
(266, '*266', '#NOME?', '', ''),
(267, '*267', 'STELE (LAPIS+SCALPRUM)', '', ''),
(267, '*267*', 'LAPIS', '', ''),
(268, '*268', 'SCALPRUM', '', ''),
(269, '*269', 'EXERCITUS', '', ''),
(270, '*270', 'E, s. *70', '', ''),
(271, '*271', 'TAWANANNA', '', ''),
(272, '*272', 'SCUTUM', '', ''),
(273, '*273', '--', '', ''),
(274, '*274', '--', '', ''),
(275, '*275', '--', '', ''),
(276, '*276', 'EFRATER2', '', ''),
(277, '*277', 'IUSTITIA.LA, IUDEX.LA, *371.LA  /  IUDEX+la', '', ''),
(278, '*278', 'li', '', ''),
(279, '*279', '--', '', ''),
(280, '*280', 'MALLEUS; wa/i9', '', ''),
(281, '*281', 'ASCIA', '', ''),
(282, '*282', 'HAH(A)(?)', '', ''),
(283, '*283', 'TUZZI(?)', '', ''),
(284, '*284', 'TUZZI(?)', '', ''),
(285, '*285', 'Ezu(wa)?', '', ''),
(286, '*286', 'wa/i7', '', ''),
(287, '*287', 's. *399', '', ''),
(288, '*288', 'CURRUS', '', ''),
(289, '*289', 'EAURIGA', '', ''),
(290, '*290', 'hara/i', '', ''),
(291, '*291', 'l?,\r', NULL, ''),
(292, '*292', 'ROTA, EHALA/I', '', ''),
(293, '*293', '--', '', ''),
(294, '*294', 'THRONUS/MENSA', '', ''),
(294, '*294*', 'THRONUS/MENSA2  (= SARPA)', '', ''),
(295, '*295', 'SOL2.THRONUS/MENSA (*190.THRONUS)', '', ''),
(296, '*296 ', 'EMONS.MENSA / MONS.SARPA', '(*297?)', ''),
(297, '*297', 's. *296?', '', ''),
(298, '*298', 'THRONUS2', '', ''),
(299, '*299', 'SOLIUM; ? (+ *450 = i?),', NULL, ''),
(3, '*3', '--', '', ''),
(300, '*300', 'NEPOS ', '', ''),
(301, '*301', 'LECTUS', '', ''),
(302, '*302', 's. *399', '', ''),
(303, '*303', 'SARA/I; sara/i', '', ''),
(304, '*304', 'm?,\r', NULL, ''),
(305, '*305', 'FUSUS', '', ''),
(306, '*306', 'Eh?,\r', NULL, ''),
(307, '*307 ', 'hu', '(*342)', ''),
(308, '*308', '--', '', ''),
(309, '*309', 'CRUX', '', ''),
(310, '*310', '= *201?', '', ''),
(311, '*311', '--', '', ''),
(312, '*312', 'E, s. *313', '', ''),
(313, '*313 ', 'VIR; z?,(*312)', NULL, ''),
(314, '*314', 'log.; hax', '', ''),
(315, '*315', 'kar', '', ''),
(316, '*316', 'sa7', '', ''),
(317, '*317', '--', '', ''),
(318, '*318', 'ETE?UB; TASU(?)', '', ''),
(319, '*319 ', 'ta4/i4 or la/i ', '(*339, *416)', ''),
(320, '*320', 'E, s. *165', '', ''),
(321, '*321', '--', '', ''),
(322, '*322 ', 'PURUS', '(*323)', ''),
(323, '*323', 's. *322', '', ''),
(324, '*324', '--', '', ''),
(325, '*325', 'tu?', '', ''),
(326, '*326', 'SCRIBA; t?', '', ''),
(327, '*327', 'SIGILLUM; sa5', '', ''),
(328, '*328', 'pu', '', ''),
(329, '*329', 'REL; kwi/a', '', ''),
(329, '*329*', 's. *508', '', ''),
(330, '*330', 'CAPERE+SCALPRUM', '', ''),
(331, '*331', 'AVUS', '', ''),
(332, '*332a', 'NEG', '', ''),
(332, '*332b', 'NEG2; n?,\r', NULL, ''),
(332, '*332c', 'NEG3', '', ''),
(333, '*333', '--', '', ''),
(334, '*334', 'pa', '', ''),
(335, '*335', 'z?,\r', NULL, ''),
(336, '*336', 'ANNUS (PITHOS. SCUTELLA / PITHOS); z?;*336+*450 = zax, *378+*336 = z?",\r\n337,*337,PITHOS,\r\n338,*338,CULTER,\r\n339,*339,s. *319,\r\n340,*340,ANNUS+ANNUS,\r\n341,*341,COR,\r\n342,*342,s. *307,\r\n343,*343,s. *337,\r\n344,*344,CONTRACTUS,\r\n345,*345 ,URCEUS,(*352, *353,*354, *519?)', NULL, ''),
(346, '*346', 'POCULUM', '', ''),
(347, '*347', 'Hu?', '', ''),
(348, '*348 ', 's. *349', '', ''),
(349, '*349 ', '--', '(*348)', ''),
(350, '*350', '--', '', ''),
(351, '*351', '--', '', ''),
(352, '*352', 'E, s. *345', '', ''),
(353, '*353', 'E, s. *345', '', ''),
(354, '*354', 'E, s. . *345', '', ''),
(355, '*355', 'SACERDOS', '', ''),
(356, '*356', '--', '', ''),
(357, '*357', '--', '', ''),
(358, '*358 ', 'DIES', '(*359(1))', ''),
(359, '*359(1)', 's. *358', '', ''),
(359, '*359(2)', 's. *245', '', ''),
(360, '*360', 'DEUS', '', ''),
(361, '*361', '--', '', ''),
(362, '*362', 'M?,\r', NULL, ''),
(363, '*363', 'MAGNUS, EUR / Eur', '', ''),
(364, '*364', 'a) u, b) mu', '', ''),
(365, '*365', '--', '', ''),
(366, '*366', 'OMNIS', '', ''),
(367, '*367', 'ETALA, TAL', '', ''),
(368, '*368', 'MALUS', '', ''),
(368, '*368*', 'MALUS2', '', ''),
(369, '*369', 'EVITA', '', ''),
(370, '*370', 'EBONUS2; su', '', ''),
(371, '*371', 'IUDEX, IUSTITIA; (*371+*383 = IUDEX+RA/I; tara/ix)', '', ''),
(372, '*372', 'ESACERDOS2', '', ''),
(373, '*373', '--', '', ''),
(374, '*374', '= *216?', '', ''),
(375, '*375', '--', '', ''),
(376, '*376', 'zi (Ezi/a)', '', ''),
(377, '*377', 'za', '', ''),
(378, '*378', 'LITUUS', '', ''),
(379, '*379', 'OCCIDENS; i?,\r', NULL, ''),
(380, '*380', 'UNUS; sa8; I [determinative of personal names] ', '', ''),
(381, '*381', 'MINUS', '', ''),
(381, '*381*', 'MORI (VIR2.MINUS)', '', ''),
(382, '*382 ', 'LIGNUM', '(*169)', ''),
(383, '*383', '+ra/i', '', ''),
(384, '*384', '?2?', '', ''),
(385, '*385', '?2?(?)', '', ''),
(386, '*386', 'EVIR2; |  [word divider]', '', ''),
(387, '*387', 'SERVUS; m?,\r', NULL, ''),
(388, '*388', '?3? ', '', ''),
(389, '*389', 'tara/i', '', ''),
(39, '*39*', 'PUGNUS+X', '', ''),
(390, '*390', 'DOMINUS', '', ''),
(391, '*391', '?4?; mi', '', ''),
(392, '*392', '?5?', '', ''),
(393, '*393 ', '?8?', '(*394?)', ''),
(394, '*394', '= *393?', '', ''),
(395, '*395', '?9?; nu?', '', ''),
(396, '*396', '--', '', ''),
(397, '*397', 'DECEM', '', ''),
(398, '*398', '--', '', ''),
(399, '*399 ', 'CENTUM', '(*287, *302)', ''),
(4, '*4', 'E MONS2, s. *207b ', '', ''),
(40, '*40', 's. *39', '', ''),
(400, '*400', 'MILLE', '', ''),
(401, '*401', 's. *477', '', ''),
(402, '*402', 'SCUTELLA; sa4', '', ''),
(403, '*403', '--', '', ''),
(404, '*404', 'ANIMAL', '', ''),
(405, '*405', '--', '', ''),
(406, '*406', '--', '', ''),
(407, '*407', '--', '', ''),
(408, '*408', 'E, s. *79', '', ''),
(409, '*409', '--', '', ''),
(41, '*41', 'CAPERE; t?,\r', NULL, ''),
(410, '*410', '?  ? [logogram markers]', '', ''),
(411, '*411', 'Ni', '', ''),
(412, '*412', 'Ru', '', ''),
(413, '*413', 'Hi', '', ''),
(414, '*414', 'Ehi', '', ''),
(415, '*415', 'Sa', '', ''),
(416, '*416', 'E, s. *319', '', ''),
(417, '*417', 'sax', '', ''),
(418, '*418', '*318+MI', '', ''),
(419, '*419 ', 'EURHI; RHOMBUS; m?,(*420)', NULL, ''),
(42, '*42', 'CAPERE2.CAPERE2, tax', '', ''),
(420, '*420', 's. *419', '', ''),
(421, '*421', 'EUS', '', ''),
(422, '*422', 'PANIS.SCUTELLA', '', ''),
(423, '*423 ', 'Ku', '(*183)', ''),
(424, '*424', '--', '', ''),
(425, '*425', '--', '', ''),
(426, '*426', '--', '', ''),
(427, '*427', '--', '', ''),
(428, '*428', '--', '', ''),
(429, '*429', 'TANA', '', ''),
(43, '*43 ', 'CAPERE2', '(*136)', ''),
(430, '*430', 'OMNIS2; pu?', '', ''),
(431, '*431', '--', '', ''),
(432, '*432 ', 'za5', '(*242)', ''),
(433, '*433', 'S?,\r', NULL, ''),
(434, '*434', 'Ka', '', ''),
(435, '*435', 'ax?', '', ''),
(436, '*436', '--', '', ''),
(437, '*437', '--', '', ''),
(438, '*438', 'EPASTOR', '', ''),
(439, '*439', 'wa/i', '', '439.jpg'),
(44, '*44', 's. *39 / *59?', '', ''),
(440, '*440', '--', '', ''),
(441, '*441', '--', '', ''),
(442, '*442', '--', '', ''),
(443, '*443', '--', '', ''),
(444, '*444', 's. *9', '', ''),
(445, '*445', 'la/i/u; Elu', '', ''),
(446, '*446', 'Ki', '', ''),
(447, '*447', '', '', ''),
(448, '*448', 'zu? (zax?)', '', ''),
(449, '*449', '--', '', ''),
(45, '*45', 'INFANS, FILIUS, FRATER', '', ''),
(45, '*45*', 'FILIA', '', ''),
(450, '*450', 'a, ? [space filler(?)]', '', ''),
(451, '*451', 'Ehur, HUR', '', ''),
(452, '*452', '--', '', ''),
(453, '*453', 's. *179', '', ''),
(454, '*454', 's. *179', '', ''),
(455, '*455', 'lax', '', ''),
(456, '*456', 's??,', NULL, ''),
(457, '*457(1)', 's. *125', '', ''),
(457, '*457(2)', '--', '', ''),
(458, '*458', '--', '', ''),
(459, '*459', '--', '', ''),
(46, '*46', 'REX.INFANS, REX.FILIUS', '', ''),
(46, '*46*', 'EREX.FILIA', '', ''),
(46, '*46**', 'EMAGNUS.FILIA', '', ''),
(460, '*460', '--', '', ''),
(461, '*461', '--', '', ''),
(462, '*462', 'max', '', ''),
(463, '*463', '--', '', ''),
(464, '*464', '--', '', ''),
(465, '*465', 's. *191', '', ''),
(466, '*466', '--', '', ''),
(467, '*467', 's. *191', '', ''),
(468, '*468', 's. *469', '', ''),
(469, '*469 ', '--', '(*468)', ''),
(47, '*47', '--', '', ''),
(470, '*470', '?12? (10+2)', '', ''),
(471, '*471', '--', '', ''),
(472, '*472', '--', '', ''),
(473, '*473', 's. *474', '', ''),
(474, '*474 ', 'EUNUCHUS', '(*473)', ''),
(475, '*475', '--', '', ''),
(476, '*476', '--', '', ''),
(477, '*477  ', 'FLAMMAE(?)', '(*401, *479)', ''),
(478, '*478', '--', '', ''),
(479, '*479', 's. *477', '', ''),
(48, '*48', '--', '', ''),
(480, '*480', '--', '', ''),
(481, '*481', '--', '', ''),
(482, '*482', '--', '', ''),
(483, '*483', '--', '', ''),
(484, '*484', '--', '', ''),
(485, '*485', '--', '', ''),
(486, '*486', 'FALX(?)', '', ''),
(487, '*487', 's. *1?', '', ''),
(488, '*488', 'T?,\r', NULL, ''),
(489, '*489', '--', '', ''),
(49, '*49', 'a-t? / a+t?,\r', NULL, ''),
(490, '*490', '--', '', ''),
(491, '*491', '--', '', ''),
(492, '*492', '--', '', ''),
(493, '*493', '--', '', ''),
(494, '*494', '--', '', ''),
(495, '*495', '--', '', ''),
(496, '*496', '--', '', ''),
(497, '*497', '--', '', ''),
(5, '*5', '--', '', ''),
(50, '*50', '--', '', ''),
(501, '*501', '--', '', ''),
(502, '*502', '--', '', ''),
(503, '*503', '--', '', ''),
(504, '*504', '--', '', ''),
(505, '*505', '--', '', ''),
(506, '*506', 'HANA', '', ''),
(507, '*507', '--', '', ''),
(508, '*508 ', 'CURRERE; HWI;hwi/a', '(*329*)', ''),
(509, '*509', '--', '', ''),
(51, '*51', 'PUGNUS.URBS', '', ''),
(510, '*510', '--', '', ''),
(511, '*511', '--', '', ''),
(512, '*512', '--', '', ''),
(513, '*513', '--', '', ''),
(514, '*514', '--', '', ''),
(515, '*515', '--', '', ''),
(516, '*516', '--', '', ''),
(517, '*517', '--', '', ''),
(518, '*518', 's. *111?', '', ''),
(519, '*519', 's. *345?', '', ''),
(52, '*52', 'MANUS.CULTER', '', ''),
(520, '*520', '--', '', ''),
(521, '*521', '--', '', ''),
(522, '*522', '--', '', ''),
(523, '*523', '--', '', ''),
(524, '*524', 'PROPHETA? (CORNU+CAPUT)', '', ''),
(525, '*525', 'PRINCEPS', '', ''),
(526, '*526', 'Et?,\r', NULL, ''),
(53, '*53', 'EENSIS, EMANUS+CULTER ', '', ''),
(54, '*54', '--', '', ''),
(55, '*55', 'En?,\r', NULL, ''),
(56, '*56', 'EINFRA, ESUB, Ek? ",\r\n57,*57 ,INFRA, SUB', '(*56)', ''),
(58, '*58', 'CUM', '', ''),
(59, '*59 ', 'MANUS', '(*44?, *60)', ''),
(6, '*6', 'ADORARE', '', ''),
(60, '*60', 's. *59', '', ''),
(61, '*61', 'MANUS+*218', '', ''),
(62, '*62 ', 'LONGUS (MANUS+MINUS)', '(*68)', ''),
(63, '*63', 's. *69', '', ''),
(64, '*64', 's. *69', '', ''),
(65, '*65', 'PONERE', '', ''),
(66, '*66 ', 'DARE; pi', '', ''),
(66, '*66*', 'EMANDARE (DARE.DARE)', '', ''),
(66, '*66**', 'EMANDARE2', '', ''),
(67, '*67', '--', '', ''),
(68, '*68', 's. *62', '', ''),
(69, '*69 ', 's. *59 (*60)', '(*63, *64)', ''),
(7, '*7', 'EDERE', '', ''),
(70, '*70 ', 'SUPER', '', ''),
(71, '*71', '--', '', ''),
(72, '*72', '--', '', ''),
(73, '*73 ', 'AUDIRE (AURIS+TU+MI)', '(*170)', ''),
(74, '*74', '--', '', ''),
(75, '*75', '--', '', ''),
(76, '*76', 's. *221', '', ''),
(77, '*77', '--', '', ''),
(78, '*78', 'ALA', '', ''),
(79, '*79 ', 'FEMINA, MATER', '(*408)', ''),
(8, '*8', 'BIBERE', '', ''),
(80, '*80 ', 'SARMA, SARMA2', '(*81)', ''),
(81, '*81', 's. *80', '', ''),
(82, '*82', 'CRUS; ta6', '', ''),
(83, '*83', 'CRUS+FLUMEN', '', ''),
(84, '*84', 'CRUS2; n?,\r', NULL, ''),
(85, '*85', 'GENUFLECTERE;         in TONITRUS.*85(-pa) = HALPA', '', ''),
(86, '*86 ', 'CRUS.CRUS', '(*87)', ''),
(87, '*87', 's. *86', '', ''),
(88, '*88', 'Etu', '', ''),
(89, '*89 ', 'tu', '', ''),
(9, '*9 ', 'AMPLECTI', '(*444)', ''),
(90, '*90', 'PES; ti', '', ''),
(91, '*91 ', 'PES.SCALA.ROTAE', '(*92, *94)', ''),
(92, '*92', 's. *91', '', ''),
(93, '*93', 'PES2', '', ''),
(94, '*94', 's. *91', '', ''),
(95, '*95', 'PES2.PES2', '', ''),
(96, '*96', 'PES2.PES', '', ''),
(97, '*97', 'a) LEO, BESTIA, b) LEO2', '', ''),
(98, '*98', 'a) CANIS, b) CANIS2 ', '', ''),
(99, '*99', 'EQUUS', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `signs_variants_table`
--

CREATE TABLE `signs_variants_table` (
  `sign_variant` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign_laroche_number` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign_paleographic_notes` mediumtext COLLATE utf8mb4_unicode_ci,
  `sign_drawing` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signs_variants_table`
--

INSERT INTO `signs_variants_table` (`sign_variant`, `sign_laroche_number`, `sign_paleographic_notes`, `sign_drawing`) VALUES
('439_1a-1x', '*439', '', 'wa24.jpg'),
('439_1a-r', '*439', '', '439_1ar.jpg'),
('439_1a-s', '*439', '', '439_1as.jpg'),
('439_2a-r', '*439', '', '439_2ar.jpg'),
('439_2a-s', '*439', '', '439_2as.jpg'),
('439_2a-s-x', '*439', '', 'wa2-5.jpg'),
('439_2b', '*439', '', 'wa11.jpg'),
('439_2bb', '*439', '', 'wa15.jpg'),
('439_2c', '*439', '', 'wa12.jpg'),
('439_2c-1x', '*439', '', 'wa26.jpg'),
('439_2e', '*439', '', 'wa33.jpg'),
('439_2f', '*439', '', 'wa13.jpg'),
('439_3Aa-s', '*439', '', 'wa17.jpg'),
('439_3Ab', '*439', '', 'wa18.jpg'),
('439_3Abb', '*439', '', 'wa20.jpg'),
('439_3Ac', '*439', '', 'wa3.jpg'),
('439_3Ad', '*439', '', 'wa34.jpg'),
('439_3Ae', '*439', '', 'wa35.jpg'),
('439_3Ba-s', '*439', '', 'wa19.jpg'),
('439_3Bb', '*439', '', 'wa21.jpg'),
('439_3Bc', '*439', '', 'wa36.jpg'),
('439_3Be', '*439', '', 'wa37.jpg'),
('439_3Bf', '*439', '', 'wa14.jpg'),
('439_3Ca-s', '*439', '', 'wa23.jpg'),
('439_3Cb', '*439', '', 'wa22.jpg'),
('439_3Cc', '*439', '', 'wa39.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sites_table`
--

CREATE TABLE `sites_table` (
  `site_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_coordinate_north` float DEFAULT NULL,
  `site_coordinate_east` float DEFAULT NULL,
  `site_elevation` float DEFAULT NULL,
  `site_location_accuracy` enum('high','medium','low') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites_table`
--

INSERT INTO `sites_table` (`site_name`, `site_type`, `site_coordinate_north`, `site_coordinate_east`, `site_elevation`, `site_location_accuracy`, `map`) VALUES
('\'Azaz', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Afrin', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Ain Dara', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Aleppo', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Apamea', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Arslantepe', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Babylon', 'settlement', 32, 44, NULL, 'medium', '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Darende', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Hama', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Hines', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Jisr el Hadid (Dermir Köprü)', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Karkemis', 'city', 36.8297, 38.015, 367, 'high', '{"center":[36.82946544169342,38.01675198078157],"zoom":12,"nextMarkerId":1,"markers":{"0":{"id":"0","position":[36.82979819609324,38.01543116569519]}}}'),
('KIRÇOĞLU', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Kırçoğlu', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Meharde', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Sheizar', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('Tell Tayinat', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}'),
('test', 'blah', 0, 0, 0, 'high', '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":1,"markers":{"0":{"id":"0","position":[48.98139370719447,123.74395370366983]}}}'),
('Tuleil', NULL, NULL, NULL, NULL, NULL, '{"center":[49.25,123.10000000000002],"zoom":8,"nextMarkerId":0,"markers":{}}');

-- --------------------------------------------------------

--
-- Structure for view `dataface__view_3b7e86042e161811fbba822185012864`
--
DROP TABLE IF EXISTS `dataface__view_3b7e86042e161811fbba822185012864`;
-- in use(#1142 - SHOW VIEW command denied to user 'kinikhoy_ahpal'@'localhost' for table 'dataface__view_3b7e86042e161811fbba822185012864')

-- --------------------------------------------------------

--
-- Structure for view `search_view_1`
--
DROP TABLE IF EXISTS `search_view_1`;
-- in use(#1142 - SHOW VIEW command denied to user 'kinikhoy_ahpal'@'localhost' for table 'search_view_1')

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataface__modules`
--
ALTER TABLE `dataface__modules`
  ADD PRIMARY KEY (`module_name`);

--
-- Indexes for table `dataface__mtimes`
--
ALTER TABLE `dataface__mtimes`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
  ADD PRIMARY KEY (`pref_id`),
  ADD KEY `username` (`username`),
  ADD KEY `table` (`table`),
  ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `dataface__record_mtimes`
--
ALTER TABLE `dataface__record_mtimes`
  ADD PRIMARY KEY (`recordhash`);

--
-- Indexes for table `divine_names_table`
--
ALTER TABLE `divine_names_table`
  ADD PRIMARY KEY (`divine_name`);

--
-- Indexes for table `drawings_table`
--
ALTER TABLE `drawings_table`
  ADD PRIMARY KEY (`drawing_file_name`),
  ADD KEY `inscription_name` (`inscription_name`);

--
-- Indexes for table `editions_table`
--
ALTER TABLE `editions_table`
  ADD PRIMARY KEY (`edition_name`,`inscription_name`),
  ADD KEY `inscription_name` (`inscription_name`);

--
-- Indexes for table `geographic_names_table`
--
ALTER TABLE `geographic_names_table`
  ADD PRIMARY KEY (`geographic_name`);

--
-- Indexes for table `inscriptions_divine_names_table`
--
ALTER TABLE `inscriptions_divine_names_table`
  ADD PRIMARY KEY (`inscription_name`,`divine_name`),
  ADD KEY `divinity_name` (`divine_name`);

--
-- Indexes for table `inscriptions_geographic_names_table`
--
ALTER TABLE `inscriptions_geographic_names_table`
  ADD PRIMARY KEY (`inscription_name`,`geographic_name`),
  ADD KEY `geographic_name` (`geographic_name`);

--
-- Indexes for table `inscriptions_personal_names_table`
--
ALTER TABLE `inscriptions_personal_names_table`
  ADD PRIMARY KEY (`inscription_name`,`personal_name`),
  ADD KEY `personal_name` (`personal_name`);

--
-- Indexes for table `inscriptions_signs_table`
--
ALTER TABLE `inscriptions_signs_table`
  ADD PRIMARY KEY (`inscription_name`,`sign_variant`),
  ADD KEY `sign_variant` (`sign_variant`);

--
-- Indexes for table `inscriptions_table`
--
ALTER TABLE `inscriptions_table`
  ADD PRIMARY KEY (`inscription_name`),
  ADD KEY `inscription_region` (`inscription_region`),
  ADD KEY `inscription_site` (`inscription_site`);

--
-- Indexes for table `personal_names_table`
--
ALTER TABLE `personal_names_table`
  ADD PRIMARY KEY (`personal_name`);

--
-- Indexes for table `photos_table`
--
ALTER TABLE `photos_table`
  ADD PRIMARY KEY (`photo_file_name`),
  ADD KEY `inscription_name` (`inscription_name`);

--
-- Indexes for table `regions_table`
--
ALTER TABLE `regions_table`
  ADD PRIMARY KEY (`region_name`);

--
-- Indexes for table `signs_table`
--
ALTER TABLE `signs_table`
  ADD PRIMARY KEY (`sign_laroche_number`);

--
-- Indexes for table `signs_variants_table`
--
ALTER TABLE `signs_variants_table`
  ADD PRIMARY KEY (`sign_variant`),
  ADD KEY `sign_laroche_number` (`sign_laroche_number`);

--
-- Indexes for table `sites_table`
--
ALTER TABLE `sites_table`
  ADD PRIMARY KEY (`site_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataface__preferences`
--
ALTER TABLE `dataface__preferences`
  MODIFY `pref_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `drawings_table`
--
ALTER TABLE `drawings_table`
  ADD CONSTRAINT `drawings_table_ibfk_1` FOREIGN KEY (`inscription_name`) REFERENCES `inscriptions_table` (`inscription_name`);

--
-- Constraints for table `editions_table`
--
ALTER TABLE `editions_table`
  ADD CONSTRAINT `editions_table_ibfk_1` FOREIGN KEY (`inscription_name`) REFERENCES `inscriptions_table` (`inscription_name`);

--
-- Constraints for table `inscriptions_divine_names_table`
--
ALTER TABLE `inscriptions_divine_names_table`
  ADD CONSTRAINT `inscriptions_divine_names_table_ibfk_1` FOREIGN KEY (`inscription_name`) REFERENCES `inscriptions_table` (`inscription_name`);

--
-- Constraints for table `inscriptions_geographic_names_table`
--
ALTER TABLE `inscriptions_geographic_names_table`
  ADD CONSTRAINT `inscriptions_geographic_names_table_ibfk_2` FOREIGN KEY (`geographic_name`) REFERENCES `geographic_names_table` (`geographic_name`),
  ADD CONSTRAINT `inscriptions_geographic_names_table_ibfk_1` FOREIGN KEY (`inscription_name`) REFERENCES `inscriptions_table` (`inscription_name`);

--
-- Constraints for table `inscriptions_personal_names_table`
--
ALTER TABLE `inscriptions_personal_names_table`
  ADD CONSTRAINT `inscriptions_personal_names_table_ibfk_2` FOREIGN KEY (`personal_name`) REFERENCES `personal_names_table` (`personal_name`),
  ADD CONSTRAINT `inscriptions_personal_names_table_ibfk_1` FOREIGN KEY (`inscription_name`) REFERENCES `inscriptions_table` (`inscription_name`);

--
-- Constraints for table `inscriptions_table`
--
ALTER TABLE `inscriptions_table`
  ADD CONSTRAINT `inscriptions_table_ibfk_1` FOREIGN KEY (`inscription_region`) REFERENCES `regions_table` (`region_name`),
  ADD CONSTRAINT `inscriptions_table_ibfk_2` FOREIGN KEY (`inscription_site`) REFERENCES `sites_table` (`site_name`);

--
-- Constraints for table `photos_table`
--
ALTER TABLE `photos_table`
  ADD CONSTRAINT `photos_table_ibfk_1` FOREIGN KEY (`inscription_name`) REFERENCES `inscriptions_table` (`inscription_name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
