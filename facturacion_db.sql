-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 13, 2026 at 04:44 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facturacion_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `correo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `zip` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `telefono1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `telefono2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `direccion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `correo`, `zip`, `telefono1`, `telefono2`, `pais`, `direccion`) VALUES
(1, 'Xavier Nieves modificadof', 'aliquet@semperetlacinia.com', '4732', '(109) 395-4876', '(921) 727-9594', 'Portugal', 'Apdo.:400-5437 Id C.'),
(2, 'Colton Hammond', 'mi@Cum.org', 'L87 3OA', '(538) 103-4528', '(911) 454-1033', 'Seychelles', 'Apdo.:229-2470 Maecenas Ctra.'),
(3, 'Louis Lindsey', 'Sed@Quisqueornare.co.uk', '59172', '(521) 820-6301', '(254) 532-4270', 'Åland Islands', '3689 Ultricies Carretera'),
(4, 'Alan Delaney', 'vitae.posuere.at@Nullamscelerisque.ca', '4057', '(215) 117-8663', '(912) 193-5150', 'Laos', 'Apartado núm.: 818, 2207 Pellentesque Avda.'),
(5, 'Jared Stevenson', 'vel@vestibulumneque.co.uk', '26804', '(873) 448-4105', '(965) 184-5363', 'Djibouti', '5476 Tincidunt Carretera'),
(6, 'Allen Lynch', 'at.augue@etultrices.edu', '36285', '(476) 860-8693', '(776) 941-3109', 'Hungary', 'Apartado núm.: 465, 9272 Mauris Calle'),
(7, 'Lester Barry', 'sollicitudin.orci.sem@CraspellentesqueSed.com', '671828', '(282) 444-9251', '(673) 293-0856', 'Armenia', 'Apartado núm.: 686, 6119 Egestas. Avda.'),
(8, 'Branden Baird', 'et.arcu@torquent.net', '64173', '(666) 169-8237', '(461) 873-8418', 'United States', 'Apdo.:535-1513 Ipsum. Calle'),
(9, 'Armando Guy', 'Nullam.suscipit.est@ornare.ca', '47019', '(530) 684-2294', '(302) 807-8893', 'Uruguay', '919-3998 Auctor, Avenida'),
(10, 'Demetrius Bartlett', 'suscipit.est@vulputateullamcorpermagna.ca', '45355', '(413) 781-6142', '(396) 416-4097', 'Malta', 'Apdo.:176-200 Curae; Carretera'),
(11, 'Marvin Maxwell', 'sit.amet.faucibus@nascetur.co.uk', '7227', '(967) 928-0575', '(429) 700-6860', 'San Marino', '224-9315 Ante Calle'),
(12, 'Honorato Mcneil', 'arcu.iaculis@lacus.net', '15654', '(700) 612-1791', '(445) 753-3196', 'Palau', 'Apdo.:117-8890 Varius Calle'),
(13, 'Tobias Parrish', 'enim.diam.vel@liberonecligula.co.uk', '6498', '(548) 605-5424', '(127) 280-3890', 'Congo, the Democratic Republic of the', 'Apartado núm.: 637, 7266 Fermentum Ctra.'),
(14, 'Coby Craig', 'risus.Duis.a@acmi.org', '1595', '(365) 917-1216', '(402) 805-0498', 'Congo (Brazzaville)', 'Apartado núm.: 995, 8906 Interdum. '),
(15, 'Roth Battle', 'adipiscing@ultricies.com', '679351', '(726) 184-6451', '(199) 481-9925', 'Yemen', '201-4037 Massa Carretera'),
(16, 'Thor Small', 'libero.Integer.in@gravida.net', '445844', '(313) 439-5245', '(944) 421-4508', 'Azerbaijan', '9465 Nunc C/'),
(17, 'Jerome Hughes', 'pulvinar.arcu@congueIn.org', '93335', '(836) 486-5737', '(407) 821-5897', 'Serbia', '4730 Ligula. Ctra.'),
(18, 'Jesse Key', 'euismod.est@Sedeu.org', '65559', '(335) 283-7669', '(259) 365-6713', 'Turks and Caicos Islands', 'Apdo.:464-5370 Imperdiet Calle'),
(19, 'Moses Greene', 'arcu.imperdiet.ullamcorper@loremauctorquis.net', '8738', '(753) 224-9095', '(315) 451-5303', 'Dominican Republic', 'Apartado núm.: 385, 6306 Nisi. '),
(20, 'Blaze Munoz', 'eget.ipsum.Donec@et.edu', '6384', '(672) 706-5401', '(553) 966-0145', 'Oman', '6136 Scelerisque Avenida'),
(21, 'Tyler Short', 'egestas@tempus.edu', '01133', '(413) 206-8223', '(791) 709-5841', 'Christmas Island', '9840 Cum Avenida'),
(22, 'Colton Stark', 'purus.sapien@ataugue.co.uk', '96961', '(740) 420-5977', '(672) 191-4684', 'Georgia', '852-5736 Vulputate C.'),
(23, 'Gray Pace', 'euismod.urna@massaSuspendisseeleifend.edu', '49720', '(650) 942-7280', '(617) 653-6106', 'South Georgia and The South Sandwich Islands', '511-7564 Eu Av.'),
(24, 'Hayes Gibson', 'velit.egestas.lacinia@tinciduntvehicularisus.ca', '513161', '(233) 594-1199', '(424) 876-2041', 'Aruba', '675-7610 Eu, C/'),
(25, 'Hunter Walters', 'amet.consectetuer@indolor.edu', '31169', '(293) 554-0807', '(754) 940-8643', 'Jersey', 'Apartado núm.: 872, 9974 Donec Avda.'),
(26, 'Benedict Snow', 'a.felis.ullamcorper@urna.edu', '478850', '(362) 531-0475', '(778) 226-3408', 'Gambia', '649-5399 Donec Avenida'),
(27, 'Abraham Fletcher', 'elit.pellentesque@nec.co.uk', 'UD5Y 1YH', '(919) 939-2854', '(564) 351-8683', 'Åland Islands', 'Apdo.:839-9597 Erat, '),
(28, 'Channing Parsons', 'mauris.eu.elit@Craspellentesque.net', '91755', '(478) 588-7189', '(379) 417-5743', 'Iran', 'Apartado núm.: 195, 9944 Vitae, '),
(29, 'Rigel Lynch', 'penatibus@lobortistellusjusto.edu', '66333-683', '(971) 312-3974', '(592) 747-9188', 'Kazakhstan', 'Apdo.:753-5396 Sit Avda.'),
(30, 'Jin Foley', 'Cras@fringillapurus.net', '12833', '(455) 118-6503', '(792) 405-5410', 'Viet Nam', '6307 Id, Carretera'),
(31, 'Chase Garrett', 'Praesent@idblanditat.edu', '218064', '(297) 696-2613', '(622) 234-0700', 'Timor-Leste', '5579 Lobortis, Avda.'),
(32, 'Dean Clayton', 'Pellentesque.ut@Sed.edu', '40426', '(591) 300-8291', '(743) 620-1907', 'Liberia', '4466 Accumsan C.'),
(33, 'Burke Bullock', 'blandit@temporbibendumDonec.org', '10797', '(826) 589-7856', '(372) 923-6409', 'Peru', 'Apdo.:241-6103 Enim Carretera'),
(34, 'Herman Frye', 'justo.Proin@ullamcorpermagna.ca', '33139', '(440) 442-2396', '(297) 606-8040', 'Ghana', 'Apartado núm.: 801, 6290 Scelerisque Carretera'),
(35, 'Addison Berg', 'egestas.nunc.sed@idante.edu', '9548', '(688) 500-6743', '(410) 516-8590', 'Tajikistan', 'Apartado núm.: 678, 6469 Ridiculus C.'),
(36, 'Gil Mendoza', 'lorem.eget@Sedneque.ca', '46150', '(452) 958-9540', '(386) 281-5017', 'New Zealand', 'Apdo.:873-1958 Nec, '),
(37, 'Solomon Durham', 'ultrices.Vivamus.rhoncus@facilisisvitae.com', '74834', '(189) 670-3549', '(630) 596-1045', 'Argentina', '3219 Fermentum Calle'),
(38, 'Abbot Noble', 'lectus.convallis@sollicitudincommodo.org', '30404', '(199) 518-7591', '(205) 115-4707', 'Uruguay', 'Apartado núm.: 913, 1674 Consectetuer Ctra.'),
(39, 'Peter Cunningham', 'vel.arcu.eu@metusfacilisis.com', '31473', '(409) 715-6903', '(206) 393-1046', 'Latvia', '5687 Luctus Avda.'),
(40, 'Igor Lang', 'dis.parturient@sitametultricies.org', '97-096', '(753) 309-6425', '(635) 794-4466', 'Cocos (Keeling) Islands', '999-5316 Nullam Carretera'),
(41, 'Travis Byrd', 'iaculis.quis@nibhvulputatemauris.org', '92-857', '(369) 155-5102', '(903) 375-4230', 'Belarus', '293-8785 Congue, '),
(42, 'Daniel Frederick', 'libero.at@ullamcorpermagnaSed.net', '3852', '(542) 810-1430', '(421) 667-6291', 'Costa Rica', '3522 Eleifend Carretera'),
(43, 'Byron Daniels', 'ornare.tortor.at@loremipsum.ca', '072364', '(489) 843-7880', '(397) 706-2632', 'Netherlands', 'Apdo.:388-1302 Mauris. C.'),
(44, 'Malachi Mcmillan', 'tortor.at.risus@sodalesnisimagna.com', '1604', '(366) 392-8063', '(165) 424-7238', 'Burundi', '1249 Metus Carretera'),
(45, 'Cameron Shannon', 'Proin.vel.nisl@necanteMaecenas.com', '91735', '(427) 249-3952', '(798) 958-9233', 'Lesotho', '240-3108 Suspendisse C.'),
(46, 'Joel Brady', 'dolor@vulputate.com', '96677-462', '(567) 498-9402', '(292) 568-8686', 'Antigua and Barbuda', 'Apdo.:297-8864 Phasellus Av.'),
(47, 'Akeem Morrison', 'mi.tempor.lorem@laciniaat.com', '6551', '(424) 930-6809', '(878) 865-6761', 'Brazil', '4973 Sagittis Av.'),
(48, 'Bert Castaneda', 'metus.eu.erat@ornarelectus.edu', '57680', '(402) 559-7644', '(319) 292-2700', 'Cayman Islands', 'Apartado núm.: 434, 2301 Praesent Carretera'),
(49, 'Burke Carpenter', 'Cras.vehicula.aliquet@Inscelerisque.com', '293110', '(961) 845-0005', '(842) 686-7135', 'Nigeria', 'Apartado núm.: 877, 616 Interdum C/'),
(50, 'Abdul Webster', 'lacus@diamSed.co.uk', '09968', '(992) 357-5193', '(410) 167-3336', 'Panama', '564-8100 Ultrices. C.'),
(51, 'Ira Heath', 'tincidunt.nibh@viverraMaecenasiaculis.net', '52373', '(694) 785-2325', '(858) 764-1079', 'Austria', '3393 Ligula Ctra.'),
(52, 'Forrest Burton', 'eget.ipsum@Nullafacilisis.net', '88830-266', '(422) 290-3442', '(837) 821-4389', 'Lebanon', 'Apartado núm.: 713, 7409 Libero C/'),
(53, 'Marvin Miranda', 'eleifend.nunc.risus@pede.org', '07532', '(153) 310-7570', '(397) 752-0560', 'Israel', 'Apartado núm.: 772, 581 Egestas. Ctra.'),
(54, 'Omar Collier', 'ligula.Aenean.euismod@sociisnatoquepenatibus.net', 'FQ1 3UN', '(119) 515-4856', '(870) 971-5536', 'Saint Helena, Ascension and Tristan da Cunha', '420-8039 Urna. Ctra.'),
(55, 'Castor Kaufman', 'ipsum.non.arcu@ante.edu', '4804', '(527) 389-2412', '(539) 775-2097', 'Mongolia', '299-1615 Nisi Av.'),
(56, 'Levi Herrera', 'habitant@vitaeerat.edu', '70004', '(816) 776-1121', '(376) 441-4781', 'Mauritius', '6217 Sed Avda.'),
(57, 'Beau Arnold', 'nibh@indolor.co.uk', '47685', '(434) 966-5945', '(584) 699-8641', 'Jordan', 'Apartado núm.: 251, 6134 Duis Calle'),
(58, 'Mason Underwood', 'pede.nec@odioauctor.net', '20233', '(500) 448-1668', '(602) 547-4938', 'Heard Island and Mcdonald Islands', 'Apartado núm.: 953, 5487 Sollicitudin Av.'),
(59, 'Lester Mosley', 'molestie.orci@libero.edu', '70001', '(926) 420-1675', '(858) 824-1037', 'Angola', '200-4185 Nec, Avda.'),
(60, 'Rogan Tate', 'aliquet@adipiscingelit.edu', 'J95 0OP', '(317) 466-6380', '(314) 374-8986', 'Czech Republic', '5036 Dolor C/'),
(61, 'Elton Hoover', 'pede@nec.co.uk', '9389', '(646) 667-8234', '(102) 715-8467', 'Korea, North', 'Apartado núm.: 992, 8771 Aliquam Ctra.'),
(62, 'Edan Lambert', 'risus.In.mi@massanon.ca', '1739', '(493) 301-5752', '(764) 364-7589', 'Qatar', '2355 Diam C/'),
(63, 'Hammett Wolfe', 'Donec.at@dolor.co.uk', '7116', '(842) 535-2730', '(839) 931-7541', 'Panama', '2422 Enim. '),
(64, 'Price Burch', 'enim.nec.tempus@sociisnatoquepenatibus.org', '2926', '(114) 407-5825', '(572) 670-0846', 'Brazil', 'Apdo.:806-7024 Non, Carretera'),
(65, 'Alan Kemp', 'massa@nequesed.edu', '784260', '(322) 415-0024', '(161) 149-2860', 'Kyrgyzstan', 'Apdo.:825-822 Odio Av.'),
(66, 'Tad Mccormick', 'et.netus@diamPellentesquehabitant.com', '95322', '(573) 602-8831', '(473) 201-1558', 'Saudi Arabia', '8193 Elit Carretera'),
(67, 'Ferris Dorsey', 'orci@AeneanmassaInteger.net', '74577', '(143) 293-2234', '(206) 964-3613', 'Luxembourg', 'Apartado núm.: 497, 861 Sed C.'),
(68, 'Bert Francis', 'ipsum@vestibulum.org', '0251MN', '(131) 670-5792', '(275) 447-5508', 'Colombia', 'Apartado núm.: 699, 6442 Laoreet, Av.'),
(69, 'Jelani Roach', 'tempus@Sednunc.edu', '7365', '(909) 291-6298', '(930) 960-5861', 'Martinique', '7810 Non, Avenida'),
(70, 'Herrod Rowe', 'consequat.purus.Maecenas@tempusnonlacinia.co.uk', 'N4C 7G6', '(428) 575-8311', '(490) 674-7902', 'Korea, South', 'Apdo.:628-2837 Dictum C/'),
(71, 'Marshall Allison', 'ac.mi@eratvolutpatNulla.net', '35409', '(768) 268-3931', '(605) 700-5387', 'Nigeria', 'Apdo.:787-5199 Habitant Calle'),
(72, 'Dale Wynn', 'aliquet.vel.vulputate@feugiattellus.co.uk', '40502-267', '(690) 701-0856', '(185) 694-5305', 'Switzerland', '3080 Vel '),
(73, 'Armando Madden', 'cursus@consequat.com', '47355-611', '(852) 287-4798', '(612) 218-0868', 'Iceland', 'Apdo.:531-1852 Ligula Carretera'),
(74, 'Carter Collins', 'enim@Integerin.ca', '363582', '(475) 995-3595', '(754) 194-4197', 'Jordan', 'Apdo.:531-9422 Varius. Carretera'),
(75, 'Malachi Booker', 'eget.tincidunt@nasceturridiculusmus.edu', '81635', '(823) 307-1234', '(158) 725-3218', 'Belgium', 'Apdo.:312-123 Risus. Ctra.'),
(76, 'Darius Simon', 'in.cursus@odioEtiam.net', '42591', '(402) 355-9427', '(589) 889-3840', 'Holy See (Vatican City State)', '9410 Urna C/'),
(77, 'Ulric Summers', 'et.magna.Praesent@Suspendisse.ca', '71806', '(593) 548-7509', '(837) 281-9055', 'Madagascar', '5661 Parturient Calle'),
(78, 'Oren Cole', 'in.faucibus@habitantmorbi.net', 'VX44 4TG', '(871) 638-6598', '(539) 965-4312', 'Azerbaijan', 'Apartado núm.: 641, 9609 Elit Calle'),
(79, 'Callum Lindsay', 'consectetuer.mauris.id@Maecenasornareegestas.edu', 'R52 9SB', '(380) 672-9811', '(842) 879-5313', 'Botswana', '5017 Vulputate, '),
(80, 'Chaney House', 'enim@ligula.ca', '57499', '(909) 497-0700', '(499) 400-2768', 'Equatorial Guinea', '8444 Magnis C.'),
(81, 'Brent Finch', 'libero.lacus@velmaurisInteger.edu', '71883', '(259) 527-1818', '(451) 307-3126', 'Belize', 'Apdo.:108-4396 Pede. '),
(82, 'Gannon Petersen', 'condimentum.Donec.at@imperdiet.org', '40316', '(290) 969-9067', '(401) 844-6659', 'French Southern Territories', '6274 Morbi Ctra.'),
(83, 'Jerry Delacruz', 'enim.Suspendisse@nibhvulputatemauris.edu', '316885', '(563) 968-8928', '(767) 388-7273', 'Denmark', 'Apartado núm.: 998, 5987 Euismod Av.'),
(84, 'Eaton Kirk', 'Cras.eget.nisi@Phasellus.co.uk', '8635', '(303) 457-3705', '(670) 341-3155', 'Iraq', 'Apdo.:406-9888 Purus Av.'),
(85, 'Neville Richardson', 'metus.facilisis.lorem@dignissimtemporarcu.edu', '4209', '(954) 114-6275', '(390) 933-0933', 'United Arab Emirates', '5996 Sem '),
(86, 'Nash Chan', 'Nulla.facilisis.Suspendisse@fringillacursuspurus.edu', '96768-388', '(954) 721-4887', '(185) 386-5741', 'Luxembourg', '1845 Sit Carretera'),
(87, 'Chandler Whitney', 'purus@cursuset.net', 'P4E 2SG', '(645) 120-9219', '(119) 382-4009', 'Macao', 'Apdo.:575-1868 Luctus Avenida'),
(88, 'Leo Bullock', 'Nunc@ametante.edu', '46279', '(184) 987-7320', '(210) 279-8086', 'Guam', '512-9933 Egestas C.'),
(89, 'Dante Rivers', 'a.purus.Duis@infelisNulla.net', '69279', '(805) 727-5115', '(904) 970-9575', 'Uzbekistan', '263-310 Duis Avda.'),
(90, 'Jack Ferrell', 'sem.ut.dolor@dolor.org', '26-496', '(725) 723-9362', '(144) 747-4999', 'Romania', 'Apartado núm.: 687, 6778 Feugiat Avda.'),
(91, 'Abel Mosley', 'egestas.Aliquam.nec@Fuscefeugiat.ca', '3238', '(457) 614-2258', '(499) 338-3030', 'Papua New Guinea', '7042 Sociis '),
(92, 'Otto Willis', 'elementum.at@eros.com', '79209', '(105) 634-2017', '(138) 471-7375', 'Iraq', 'Apartado núm.: 746, 5448 Auctor Carretera'),
(93, 'Armand Morgan', 'Fusce@molestiesodales.co.uk', '27731', '(831) 521-7337', '(656) 565-5113', 'Jamaica', '2617 Morbi Avenida'),
(94, 'Otto Valdez', 'lectus.a@Donec.co.uk', '03985', '(200) 586-6818', '(397) 677-0219', 'Japan', 'Apdo.:934-8391 Laoreet, Av.'),
(95, 'Logan Hansen', 'gravida.molestie@molestieSed.ca', '8828', '(954) 258-5034', '(518) 998-4801', 'Ecuador', 'Apdo.:239-9472 Hendrerit. C/'),
(96, 'Honorato Baxter', 'ac.metus.vitae@magnisdis.org', '747321', '(469) 588-7527', '(163) 860-3707', 'Argentina', 'Apartado núm.: 991, 938 Nullam C.'),
(97, 'Reece Goodwin', 'posuere@uteros.ca', '20015', '(864) 637-0161', '(599) 277-1651', 'Suriname', 'Apdo.:756-8631 Integer Av.'),
(98, 'Stephen Powell', 'pharetra@enimcommodohendrerit.org', '1039MP', '(824) 887-8847', '(977) 492-9901', 'Svalbard and Jan Mayen Islands', '8069 Consequat, Carretera'),
(99, 'Nigel Dyer', 'lorem.auctor@ipsum.ca', '075580', '(752) 154-8284', '(179) 460-5290', 'Samoa', '442-3296 Fusce C.'),
(100, 'Omar Burks', 'molestie.in.tempus@lacus.net', '11118', '(626) 427-1518', '(777) 289-7478', 'Estonia', '597-5827 Nam Ctra.'),
(101, 'Palmer William', 'Fusce.diam.nunc@eu.org', '5497', '(663) 944-3715', '(618) 746-5093', 'South Sudan', 'Apdo.:755-210 Rhoncus. Carretera'),
(102, 'Blake Rodriquez', 'pede.sagittis@Quisque.edu', '2284', '(644) 123-3705', '(159) 994-7743', 'Bhutan', '857 Interdum. Carretera'),
(103, 'Colby Barron', 'cubilia.Curae.Donec@bibendumfermentum.org', '5048', '(137) 229-3403', '(268) 762-1124', 'Cameroon', 'Apartado núm.: 593, 2810 Bibendum. Ctra.'),
(104, 'Brian Sawyer', 'quis.arcu.vel@adipiscing.com', '72-328', '(101) 375-3340', '(476) 384-5401', 'Wallis and Futuna', '255 Aliquam C/'),
(105, 'Guy Nielsen', 'laoreet.lectus.quis@nibhPhasellusnulla.com', '30717', '(690) 865-8481', '(226) 858-5259', 'Seychelles', 'Apartado núm.: 960, 967 Aliquam C.'),
(106, 'Logan Duran', 'at@ametconsectetueradipiscing.ca', '6693', '(290) 598-1326', '(602) 428-6365', 'Sri Lanka', 'Apartado núm.: 239, 7856 Sapien. Ctra.'),
(107, 'Dustin Tyler', 'amet@facilisismagna.co.uk', '127694', '(722) 379-3368', '(562) 174-5469', 'Isle of Man', 'Apartado núm.: 195, 8013 Est, Calle'),
(108, 'Robert Peters', 'ornare.egestas@Fuscefermentumfermentum.net', '41-797', '(997) 651-2075', '(229) 239-2207', 'Cyprus', 'Apartado núm.: 101, 194 Sed Avda.'),
(109, 'Fitzgerald Clements', 'eu.lacus.Quisque@augueporttitor.co.uk', '4414', '(881) 442-7306', '(607) 703-9652', 'Chile', 'Apartado núm.: 985, 1272 Luctus C/'),
(110, 'Rogan Guerrero', 'lacus@condimentumeget.ca', '5747', '(665) 731-4378', '(208) 496-1508', 'Guinea', 'Apdo.:642-5620 Dictum '),
(111, 'Bernard Rios', 'urna.et.arcu@venenatisa.com', '3291TZ', '(414) 974-9221', '(135) 421-5323', 'Greece', 'Apartado núm.: 190, 8623 Iaculis Calle'),
(112, 'Zephania Flores', 'sagittis@venenatisvel.ca', 'R8C 4C4', '(896) 259-9809', '(258) 268-3892', 'South Sudan', 'Apartado núm.: 351, 4597 Consequat C.'),
(113, 'Fletcher Preston', 'nec.mauris@dignissimMaecenas.ca', 'H9Z 2R1', '(311) 674-4985', '(721) 416-5128', 'Congo, the Democratic Republic of the', '534-6753 Id, Avenida'),
(114, 'Salvador Herrera', 'sociis.natoque.penatibus@eulacus.edu', '25844', '(759) 806-7013', '(210) 702-3839', 'Myanmar', '644-4550 Ac C/'),
(115, 'Dillon Anthony', 'diam.luctus@sagittisaugueeu.edu', 'Y9A 3A6', '(428) 658-5842', '(846) 434-4230', 'Canada', 'Apartado núm.: 257, 1412 Tempor Avenida'),
(116, 'Thaddeus Tillman', 'sem.vitae@eget.edu', '38196', '(707) 896-6538', '(714) 616-9392', 'Costa Rica', 'Apdo.:994-250 Urna Av.'),
(117, 'Charles Floyd', 'tristique.ac@erosturpisnon.com', '9081', '(898) 709-9859', '(900) 697-1529', 'Venezuela', '6821 Maecenas Avenida'),
(118, 'Daniel Bradley', 'scelerisque.scelerisque@sociis.ca', '83980', '(576) 186-3360', '(893) 268-2014', 'Nigeria', '362-9252 Risus. Avda.'),
(119, 'Cole Phillips', 'Cum.sociis.natoque@atnisiCum.org', '28637', '(190) 494-5212', '(513) 950-7790', 'Mongolia', '1845 Et Avenida'),
(120, 'Steven Fowler', 'sit@fringillaeuismodenim.com', '67581', '(199) 166-7243', '(857) 214-9823', 'Sweden', '7167 Eu C.'),
(121, 'Wyatt Collins', 'nec@egetodio.co.uk', '61605', '(827) 929-8810', '(872) 219-2983', 'Virgin Islands, British', '993-1943 Eget Avenida'),
(122, 'Barclay Cardenas', 'mauris.eu.elit@temporaugue.ca', '1827', '(370) 496-5760', '(469) 398-5570', 'Eritrea', 'Apartado núm.: 697, 1534 Tincidunt, Carretera'),
(123, 'Nicholas Wilkins', 'et@bibendumullamcorper.com', '88306', '(674) 926-7389', '(443) 549-0269', 'Bangladesh', 'Apdo.:990-8206 Ornare Avenida'),
(124, 'Troy Lopez', 'scelerisque.neque.Nullam@lectusjustoeu.org', '25251', '(657) 513-2881', '(469) 705-2512', 'Comoros', '5063 A Carretera'),
(125, 'Tucker Madden', 'est.vitae@erat.edu', '8326', '(899) 100-0334', '(212) 914-2332', 'Cape Verde', '4332 Posuere Carretera'),
(126, 'Hayes Lester', 'scelerisque.sed@sapienCras.org', '13183-446', '(813) 696-8011', '(190) 422-8136', 'Guernsey', '592-8394 Euismod Av.'),
(127, 'Armand Phelps', 'Aliquam.vulputate@at.co.uk', '32723', '(541) 348-5277', '(720) 946-2298', 'Mauritius', 'Apdo.:989-130 Urna Ctra.'),
(128, 'Cruz Warner', 'cursus.Integer@tortoratrisus.com', '50801', '(774) 903-5056', '(725) 351-8408', 'Western Sahara', '711-3028 Lorem Avda.'),
(129, 'Brady Gray', 'augue@semperet.co.uk', '6473', '(484) 767-4139', '(648) 615-4478', 'Togo', '668-6338 Turpis Av.'),
(130, 'Avram Hammond', 'vel@odioPhasellusat.org', '78-478', '(841) 343-1206', '(632) 119-5269', 'Guadeloupe', '8041 Justo C.'),
(131, 'Amery Mercado', 'montes.nascetur.ridiculus@massaQuisque.net', '49288', '(661) 549-7088', '(969) 754-3244', 'Seychelles', 'Apdo.:392-3978 Donec C.'),
(132, 'Robert Parsons', 'odio@fringillaDonecfeugiat.org', '23428', '(869) 228-0822', '(602) 592-0281', 'Dominican Republic', '388-7460 Nisi Carretera'),
(133, 'Rafael Whitaker', 'fermentum.arcu.Vestibulum@Integeraliquamadipiscing.edu', '119128', '(324) 271-5584', '(721) 209-3897', 'Marshall Islands', 'Apartado núm.: 291, 3177 Tellus C.'),
(134, 'Salvador Mccarty', 'magna.Sed.eu@velarcu.co.uk', 'G5 3ZB', '(682) 889-0249', '(557) 454-9532', 'Svalbard and Jan Mayen Islands', 'Apartado núm.: 226, 3938 Consequat C.'),
(135, 'Colby Mcfadden', 'sit.amet.consectetuer@arcu.co.uk', '4119', '(950) 617-9255', '(783) 341-7261', 'Aruba', 'Apdo.:300-1663 Nec Avenida'),
(136, 'Ivor Smith', 'Fusce.diam.nunc@Cras.edu', '0665QU', '(483) 376-1478', '(841) 501-4577', 'Eritrea', '123-7532 Fringilla Calle'),
(137, 'Cedric Cote', 'a.scelerisque.sed@Sedegetlacus.edu', '8041WY', '(783) 438-6349', '(879) 792-5774', 'Montenegro', '613-7734 Vestibulum, C/'),
(138, 'Keane Simmons', 'fringilla.purus@maurisIntegersem.org', '6352', '(720) 677-0448', '(333) 406-8856', 'India', 'Apdo.:578-4576 Ut Avda.'),
(139, 'Ryan Glover', 'Cras.interdum.Nunc@elitelit.ca', '72996', '(448) 196-0717', '(463) 287-9103', 'Swaziland', 'Apdo.:284-1944 Vel, Avenida'),
(140, 'Brennan Langley', 'sit.amet.nulla@elitelit.co.uk', '18023', '(893) 401-6748', '(167) 784-4363', 'Bulgaria', '3072 Nunc. Ctra.'),
(141, 'Craig Shaffer', 'tellus@felis.edu', '343002', '(314) 790-3399', '(485) 211-9496', 'Greenland', '2528 Non, Calle'),
(142, 'Joshua Nixon', 'nisl.sem@feugiatnec.com', '36643', '(607) 879-8420', '(594) 966-3671', 'Mozambique', 'Apartado núm.: 608, 6903 Diam. Ctra.'),
(143, 'Valentine Conner', 'tincidunt.nibh.Phasellus@fringillaornareplacerat.org', '471595', '(471) 997-2647', '(497) 686-7945', 'Guyana', 'Apartado núm.: 400, 8449 A C.'),
(144, 'Jerry Vaughan', 'adipiscing.non@eu.net', '10411', '(322) 593-5497', '(374) 539-5320', 'China', 'Apartado núm.: 802, 3216 Turpis Avenida'),
(145, 'Sebastian Slater', 'egestas.Aliquam@ataugueid.co.uk', 'X5S 0E7', '(985) 558-8163', '(358) 616-0762', 'Christmas Island', '440-9696 Eleifend, C.'),
(146, 'Richard Burke', 'erat@tinciduntduiaugue.org', '67669-269', '(402) 901-8877', '(550) 503-8994', 'Madagascar', 'Apartado núm.: 520, 6958 Tortor. Avenida'),
(147, 'Simon Cotton', 'eget@anteMaecenasmi.ca', 'CO8 1UL', '(701) 663-9880', '(664) 331-6665', 'Faroe Islands', '7660 Ut Av.'),
(148, 'Ross Merritt', 'sed.libero.Proin@eleifendCrassed.co.uk', '50193', '(609) 409-3725', '(327) 745-4823', 'Yemen', 'Apartado núm.: 254, 215 Non, C.'),
(149, 'Uriel May', 'Nam@risusodioauctor.net', '875156', '(326) 550-8004', '(685) 925-2689', 'Mexico', 'Apartado núm.: 523, 795 Vitae, Avda.'),
(150, 'Cairo Mayer', 'malesuada.augue@estNunc.com', '258665', '(409) 351-4818', '(285) 331-8198', 'Morocco', 'Apartado núm.: 710, 2657 Eu Avenida'),
(151, 'Berk Lynn', 'mi@purus.ca', '34348', '(860) 536-3202', '(443) 324-3911', 'Belarus', 'Apdo.:235-4661 Fusce Avenida'),
(152, 'Francis Giles', 'a.magna@gravidanuncsed.com', '3466BW', '(233) 112-7287', '(668) 446-3358', 'Sudan', 'Apdo.:732-4501 Aptent '),
(153, 'Lyle Odonnell', 'nec@commodohendrerit.co.uk', '91805', '(833) 492-6334', '(271) 863-6994', 'Hungary', 'Apartado núm.: 509, 6600 Lorem, C/'),
(154, 'Jin Saunders', 'est.Nunc.laoreet@aceleifend.co.uk', '02977', '(402) 217-4818', '(711) 317-1819', 'Indonesia', '2274 Lacinia. Carretera'),
(155, 'Brendan Flores', 'lacinia.vitae.sodales@Uttincidunt.net', '866962', '(586) 520-7975', '(211) 606-7411', 'Uganda', 'Apartado núm.: 624, 3586 Montes, Calle'),
(156, 'Ferdinand Peters', 'ultricies.ligula@dictum.ca', '39739', '(941) 853-0495', '(519) 683-0675', 'Austria', '451-3005 Tristique C/'),
(157, 'Arsenio Mckinney', 'justo.Proin@utpellentesqueeget.net', 'WQ01 7UO', '(949) 232-1173', '(883) 962-3089', 'Heard Island and Mcdonald Islands', '2372 In Ctra.'),
(158, 'Vaughan Cote', 'Nam@atauctor.edu', '58869', '(819) 601-9230', '(806) 586-6930', 'Luxembourg', '1094 Nisl '),
(159, 'Colby Banks', 'tellus@tortorIntegeraliquam.ca', '36938', '(398) 365-4766', '(590) 835-7921', 'Cambodia', 'Apdo.:730-5281 Dolor Calle'),
(160, 'Dorian Pierce', 'Ut.nec.urna@vestibulumneque.com', 'PU70 0QK', '(732) 206-3646', '(160) 272-4323', 'Nauru', '9944 Massa Avenida'),
(161, 'Cade Dean', 'augue.id@Inscelerisquescelerisque.com', '11452', '(662) 665-2976', '(662) 642-8604', 'Suriname', 'Apdo.:415-3495 Cum Avda.'),
(162, 'Travis Delacruz', 'euismod.urna@suscipitnonummyFusce.com', '61806', '(743) 165-7138', '(192) 431-5322', 'Belize', 'Apartado núm.: 462, 2799 In Ctra.'),
(163, 'Clarke Rosa', 'Maecenas.libero.est@Aliquamvulputate.ca', '51102', '(317) 593-8506', '(755) 343-0083', 'Puerto Rico', 'Apartado núm.: 626, 4250 Ante '),
(164, 'Omar Buckner', 'sapien.gravida.non@dolor.edu', '490261', '(711) 280-9586', '(946) 700-1916', 'Syria', 'Apdo.:374-2668 At, Avda.'),
(165, 'Quinlan Barber', 'nec.diam.Duis@semperpretium.edu', '42205', '(495) 923-8691', '(801) 918-5444', 'Svalbard and Jan Mayen Islands', '211-5453 Duis '),
(166, 'Nero Mays', 'lorem@pedeCum.com', 'R5W 9A6', '(583) 336-6690', '(674) 883-6325', 'Luxembourg', 'Apdo.:132-9269 Aliquam Av.'),
(167, 'Walker Harvey', 'quam.dignissim.pharetra@convallisdolorQuisque.ca', '801583', '(578) 987-3940', '(493) 176-2232', 'Uzbekistan', 'Apdo.:802-5829 Blandit. Ctra.'),
(168, 'Zane Best', 'dictum.Phasellus.in@condimentumDonec.org', '37498', '(435) 846-2756', '(701) 307-1958', 'Grenada', 'Apdo.:245-6606 Est '),
(169, 'Vincent Rosario', 'sociis.natoque.penatibus@lectusrutrum.edu', '04-344', '(600) 418-7562', '(534) 492-9443', 'Korea, South', 'Apdo.:162-1355 Pellentesque Ctra.'),
(170, 'Malachi Hull', 'orci.lacus@molestietortornibh.net', '78498', '(502) 349-6735', '(552) 309-9611', 'Venezuela', 'Apdo.:550-9402 Sed Avenida'),
(171, 'Ira Roy', 'Curabitur.egestas@Etiamgravida.edu', '19240', '(644) 780-1838', '(780) 295-6557', 'Aruba', 'Apdo.:457-226 Vivamus Calle'),
(172, 'Drew Casey', 'orci.Ut@nequeSedeget.com', '1332PI', '(802) 434-3313', '(507) 614-8819', 'Slovakia', '4142 Sem Avda.'),
(173, 'Lester Hodge', 'mauris.erat.eget@ac.co.uk', '101512', '(267) 853-1150', '(626) 324-8986', 'Sint Maarten', '412-4494 Mauris Avda.'),
(174, 'Ciaran Calderon', 'nunc.In@porttitor.com', '0705FW', '(454) 927-2580', '(786) 597-5781', 'Afghanistan', '407-9826 Vitae C/'),
(175, 'Hashim Ballard', 'odio@per.com', '5756', '(478) 877-3897', '(506) 327-4779', 'Afghanistan', 'Apartado núm.: 171, 4980 In Ctra.'),
(176, 'Ishmael Rivers', 'nunc@Proinvel.net', '30938', '(190) 941-9675', '(305) 626-8120', 'Micronesia', '4035 Sit Av.'),
(177, 'Declan Lyons', 'ornare.lectus@ullamcorpermagna.com', 'XH9 8KS', '(891) 458-8544', '(822) 239-6354', 'Lesotho', '595-9935 Sit Ctra.'),
(178, 'Tyrone Norman', 'nisl.arcu.iaculis@risus.org', 'E3C 0Y1', '(959) 863-5958', '(396) 724-3679', 'Malawi', 'Apartado núm.: 965, 8978 Magna, C/'),
(179, 'Cedric Knapp', 'cursus.non.egestas@etmagnisdis.ca', '28044', '(517) 242-9631', '(511) 942-9022', 'Afghanistan', 'Apdo.:619-394 Ante. Av.'),
(180, 'Byron Russo', 'a@miDuisrisus.com', '72171', '(323) 185-9852', '(536) 847-5183', 'Gambia', 'Apdo.:610-3351 Urna Ctra.'),
(181, 'Reece Blackwell', 'nulla.vulputate.dui@auguescelerisque.org', '658120', '(115) 334-9378', '(288) 393-1889', 'Samoa', 'Apdo.:687-9153 Ligula Calle'),
(182, 'Christopher Harrell', 'sed.est@laoreetlectusquis.com', 'KG0 9OO', '(783) 732-2383', '(760) 596-8065', 'Bermuda', 'Apartado núm.: 840, 8010 Erat. '),
(183, 'Abbot Brewer', 'dui.nec.tempus@ac.com', '08-513', '(185) 531-5718', '(601) 523-3532', 'Saint Barthélemy', 'Apartado núm.: 186, 8857 Ipsum Carretera'),
(184, 'Jason Mcknight', 'nec@libero.edu', '94562', '(377) 703-0816', '(306) 683-6019', 'Peru', '7718 Odio. Avenida'),
(185, 'Marshall Cole', 'feugiat.non@lobortisnisinibh.co.uk', '597840', '(537) 635-5914', '(862) 512-7489', 'Belgium', '241-851 Ipsum Avenida'),
(186, 'Timothy Velazquez', 'Donec.feugiat@amet.ca', '2601', '(528) 912-5962', '(248) 185-1925', 'Papua New Guinea', '975-999 Feugiat '),
(187, 'Sean Morgan', 'amet.faucibus.ut@imperdietornareIn.ca', '76462', '(996) 354-0114', '(173) 464-1782', 'Nigeria', 'Apartado núm.: 184, 6362 Lacinia Av.'),
(188, 'Guy Farley', 'dapibus.gravida@odiotristiquepharetra.net', '53043-138', '(204) 807-9971', '(747) 526-1176', 'Pitcairn Islands', 'Apartado núm.: 446, 3399 Donec Carretera'),
(189, 'Ryder Rodriquez', 'Nulla@interdumenim.edu', '570498', '(811) 202-8063', '(259) 435-1933', 'Grenada', 'Apartado núm.: 614, 9810 Tempor Avenida'),
(190, 'Vladimir Schmidt', 'eu@et.edu', '572223', '(926) 774-9640', '(449) 238-6276', 'Haiti', '459-5347 Lorem '),
(191, 'Ian Noble', 'odio.vel@Donecnibhenim.org', '71836', '(724) 277-2774', '(710) 386-4398', 'Mozambique', '9561 Risus. C/'),
(192, 'David Nolan', 'faucibus.ut@eratvelpede.co.uk', '30702', '(563) 415-6053', '(377) 825-9347', 'Eritrea', 'Apartado núm.: 394, 5727 Ante. Av.'),
(193, 'Akeem Randall', 'sagittis.augue.eu@facilisis.net', '30401', '(652) 104-2796', '(745) 751-1530', 'Armenia', '7526 Vestibulum Avda.'),
(194, 'Gary Roy', 'mollis@mifringilla.ca', '04367-144', '(628) 579-4340', '(319) 455-6257', 'Ecuador', '2883 Ligula C.'),
(195, 'Marshall Hayes', 'mus.Proin.vel@nequeInornare.net', '12931', '(740) 853-9434', '(953) 711-9781', 'Slovenia', '396-4516 Semper Ctra.'),
(196, 'Uriah Franks', 'faucibus@in.co.uk', '5978QN', '(428) 388-0467', '(341) 595-9068', 'Dominican Republic', '7042 Nostra, Ctra.'),
(197, 'Perry Nguyen', 'sapien@velmauris.net', '18-332', '(713) 569-1073', '(352) 589-6793', 'France', '891 Ante. Avda.'),
(198, 'Evan Mccormick', 'arcu.iaculis@Proinnon.co.uk', '39-241', '(710) 172-0193', '(233) 761-7474', 'Tanzania', '295-3912 Tortor. Avenida'),
(199, 'Emery Howard', 'Ut.semper.pretium@necurnaet.net', '32-395', '(399) 659-0236', '(539) 605-7885', 'Gabon', '4757 Tempus, Carretera'),
(200, 'Clayton Graves', 'est.ac@liberomauris.org', 'T7J 4W6', '(471) 665-6250', '(463) 536-1780', 'Maldives', 'Apdo.:259-7733 Sed, Avenida'),
(216, 'yuioyuioyuio', 'yuioyuio', NULL, NULL, NULL, NULL, NULL),
(217, 'ghjgjhghj', 'ghjghj', NULL, NULL, NULL, NULL, NULL),
(218, 'hjkhjk', 'hjk', NULL, NULL, NULL, NULL, NULL),
(219, 'h', 'kkj', NULL, NULL, NULL, NULL, NULL),
(220, 'bbn', 'ggg', NULL, NULL, NULL, NULL, NULL),
(221, 'hg', 'ghj', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
CREATE TABLE IF NOT EXISTS `facturas` (
  `numero_factura` int NOT NULL AUTO_INCREMENT,
  `fecha_solicitado` date NOT NULL,
  `monto` decimal(12,2) NOT NULL DEFAULT '0.00',
  `impuesto` decimal(12,2) NOT NULL DEFAULT '0.00',
  `monto_neto` decimal(12,2) NOT NULL,
  `estado` varchar(15) NOT NULL,
  `comentario` text,
  `cliente_id` int NOT NULL,
  PRIMARY KEY (`numero_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facturas_detalle`
--

DROP TABLE IF EXISTS `facturas_detalle`;
CREATE TABLE IF NOT EXISTS `facturas_detalle` (
  `numero_factura` int NOT NULL,
  `producto_id` varchar(15) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `producto_id` int NOT NULL AUTO_INCREMENT,
  `producto` varchar(70) NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  PRIMARY KEY (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`producto_id`, `producto`, `precio_compra`, `precio_venta`) VALUES
(1, 'TAJO DE RES', 50.00, 80.00),
(2, 'BISTEC DE RES', 40.00, 70.00),
(3, 'COSTILLA DE RES', 40.00, 70.00),
(4, 'COLA DE RES', 30.00, 50.00),
(5, 'CARNE MOLIDA', 30.00, 60.00),
(6, 'CARNE PARA ASAR', 30.00, 40.00),
(7, 'CHULETA DE RES', 40.00, 60.00),
(8, 'LECHE NATURAL DE VACA', 10.00, 20.00),
(9, 'LECHE DESLACTOSADA FLUIDA', 25.00, 30.00),
(10, 'NATILLA', 5.00, 10.00),
(11, 'QUESO NORMAL BLANCO', 10.00, 14.00),
(12, 'HUEVO DE GALLINA', 20.00, 34.00),
(13, 'PAPAS', 1.00, 3.00),
(14, 'AJOS', 1.00, 2.00),
(15, 'BROCOLI', 2.00, 5.00),
(16, 'ZANAHORIAS', 1.00, 3.00),
(17, 'PEPINOS', 1.00, 4.00),
(18, 'REMOLACHAS', 3.00, 5.00),
(19, 'CHILE DULCE', 1.00, 3.00),
(20, 'YUCA', 2.00, 4.00),
(21, 'CAMOTE', 2.00, 3.00),
(22, 'COCOS SECOS', 3.00, 5.00),
(23, 'COCO RALLADO', 4.00, 6.00),
(24, 'PLATANO VERDE', 1.00, 2.00),
(25, 'PLATANO MADURO', 1.00, 2.00),
(26, 'MANGO VERDE', 1.00, 2.00),
(27, 'MANGO MADURO', 1.00, 2.00),
(28, 'GUAYABA', 1.00, 3.00),
(29, 'NANCE', 1.00, 4.00),
(30, 'PIMIENTA MOLIDA', 1.00, 2.00),
(31, 'FRIJOL NEGRO', 1.34, 2.50),
(32, 'TRIGO', 1.10, 2.20),
(33, 'MAIZ BLANCO', 1.50, 2.50),
(34, 'MANTECA DE CERDO', 1.20, 2.00),
(35, 'CHORIZO CRIOLLO', 5.50, 6.50),
(36, 'AZUCAR', 1.50, 3.50),
(37, 'JUGO DE NARANJA', 2.30, 5.00),
(38, 'CHICHARRONES DE CERDO', 4.20, 6.30),
(39, 'JUGO DE TORONJA', 2.00, 5.00),
(40, 'BISCOCHOS', 2.00, 3.00),
(41, 'QUESADILLAS', 3.00, 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `contrasena` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ultimoacceso` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `codigo`, `nombre`, `contrasena`, `ultimoacceso`) VALUES
(1, '123', 'adrian', '$2a$07$32kAmb7Q0SPZnRWbXrwjR.sTuZeR14DhHHKqlYHtIJI3vvvLk3ct6', '2026-04-12 22:48:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
