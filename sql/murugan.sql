-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2023 at 05:56 PM
-- Server version: 10.5.18-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `murugan`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `pan` varchar(100) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `ifsc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `pan`, `gstin`, `hsn`, `description`, `bank`, `branch`, `accno`, `ifsc`) VALUES
(1, 'Global Insurance Claim Solutions', 'CSGPM9592R', '33CSGPM9592R1ZN', '997133', 'Insurance Claim Investigation', 'HDFC BANK', 'Sundarapuram Branch', '50200081267432', 'HDFC0003643');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hname` varchar(500) DEFAULT NULL,
  `hplace` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hname`, `hplace`) VALUES
(1, 'Annai Nursing Home', 'Coimbatore'),
(2, 'Arathana Hospital', 'Pollachi'),
(3, 'Arokiya Hospital', 'Coimbatore'),
(4, 'Arun Urology Hospital', 'Coimbatore'),
(5, 'Bethel Hospital Pvt. Ltd.', 'Coimbatore'),
(6, 'Bhagirathi Hospital', 'Coimbatore'),
(7, 'BRJ Ortho Centre & MAK Hospital', 'Coimbatore'),
(8, 'Dr Muthu\'s hospital - Singanallur', 'Coimbatore'),
(9, 'Dr SG Rajarathnam Hospital', 'Coimbatore'),
(10, 'Elce Clinics', 'Coimbatore'),
(11, 'Ellen Hospital', 'Coimbatore'),
(12, 'Endoscopic & Laparoscopic Center Of Excellence', 'Coimbatore'),
(13, 'G Kuppuswamy Naidu Memorial Hospital', 'Coimbatore'),
(14, 'G. Kuppuswamy Naidu Memorial Hospital', 'Coimbatore'),
(15, 'Ganga Medical Centre and Hospitals Pvt. Ltd.', 'Coimbatore'),
(16, 'Geethasree Hospitals', 'Coimbatore'),
(17, 'Gem Hospital and Research Center Pvt. Ltd.', 'Coimbatore'),
(18, 'H S Hospital', 'Coimbatore'),
(19, 'Iswarya Fertility Centre', 'Coimbatore'),
(20, 'K G Hospital', 'Coimbatore'),
(21, 'K.G. Hospital', 'Coimbatore'),
(22, 'Kalpana Medical Centre Pvt. Ltd.', 'Coimbatore'),
(23, 'Kovai Medical Center And Hospital', 'Coimbatore'),
(24, 'Kovai Medical Center and Hospital Ltd.', 'Coimbatore'),
(25, 'Kovai Medical Centre and Hospital', 'Coimbatore'),
(26, 'KPS Hospitals Pvt. Ltd.', 'Coimbatore'),
(27, 'KTVR Group Hospital', 'Coimbatore'),
(28, 'KTVR MEDICAL', 'Coimbatore'),
(29, 'Kurinji Hospital', 'Coimbatore'),
(30, 'Maruthi Hospital, Riya Fertility and Women Centre', 'Coimbatore'),
(31, 'Mathi Hospital', 'Coimbatore'),
(32, 'MCV ENT Trust Hospital', 'Coimbatore'),
(33, 'MEDWIN Hospital', 'Coimbatore'),
(34, 'N M Hospital', 'Coimbatore'),
(35, 'N.A Hospital', 'Coimbatore'),
(36, 'Pavithra Medical Centre', 'Coimbatore'),
(37, 'Ponnaiah Hospital', 'Coimbatore'),
(38, 'Pristyn Care - Coimbatore', 'Coimbatore'),
(39, 'Pristyn Care - Peelamedu', 'Coimbatore'),
(40, 'PSG Hospitals', 'Coimbatore'),
(41, 'R R Hospital', 'Coimbatore'),
(42, 'R.Vijay\'s Ear,Nose,Throat Specialty centre', 'Coimbatore'),
(43, 'Rajah Hospital', 'Coimbatore'),
(44, 'Ramvel Hospital', 'Coimbatore'),
(45, 'Rao Hospital', 'Coimbatore'),
(46, 'Richmond Hospital', 'Coimbatore'),
(47, 'Sheela Hospital', 'Coimbatore'),
(48, 'SMF Hospitals', 'Coimbatore'),
(49, 'Sree Abirami Hospital Pvt. Ltd.', 'Coimbatore'),
(50, 'Sri Bala Medical Centre and Hospital', 'Coimbatore'),
(51, 'Sri Guru Hospital Pvt. Ltd.', 'Coimbatore'),
(52, 'Sri Lakshmi Medical Centre and Hospital', 'Coimbatore'),
(53, 'Sri Ramakrishna Hospital', 'Coimbatore'),
(54, 'Sri Reshmika Hospital', 'Coimbatore'),
(55, 'Tejas Cosmetic Surgery Center', 'Coimbatore'),
(56, 'V G Hospital', 'Coimbatore'),
(57, 'Vela Hospital', 'Coimbatore'),
(58, 'VGM Hospital', 'Coimbatore'),
(60, 'RIO CHILDRENS HOSPITAL', 'MADURAI'),
(61, 'ROYAL CARE SUPER SPECIALITY HOSPITAL', 'COIMBATORE'),
(62, 'ASN HOSPITAL', 'TIRUPUR'),
(63, 'SRI GOKULAM SPECIALITY HOSPITAL', 'SALEM'),
(64, 'KONGUNAD HOSPITAL', 'COIMBATORE'),
(65, 'MEENAKSHI MISSION HOSPITAL', 'MADURAI'),
(66, 'SRI RAMACHANDRA MEDICAL CENTRE', 'CHENNAI'),
(67, 'SREE JAYAM ORTHO AND MULTISPECIALITY HOSPITAL', 'MALLUR,SALEM'),
(68, 'VEENA HOSPITAL', 'NASIYANUR, ERODE'),
(69, 'Prashanth Super Speciality Hospital', 'Chennai'),
(70, 'NG HOSPITAL', 'COIMBATORE'),
(71, 'Gunam Multispeciality Hospital', 'Hosur'),
(72, 'BE WELL HOSPITAL', 'PONDICHERRY'),
(73, 'LAKSHMI GASTRO CARE AND LAPAROSCOPY HOSPITAL', 'MADURAI'),
(74, 'KL MULTI SPECIALITY HOSPITAL', 'CHENNAI'),
(75, 'SHANTHI HOSPITAL', 'CHENNAI'),
(76, 'SIMS HOSPITAL', 'CHENNAI'),
(77, 'CHRISTIAN MEDICAL COLLEGE AND HOSPITAL', 'VELLORE'),
(78, 'LOTUS HOSPITAL', 'ERODE'),
(79, 'APOLLO SPECIALITY HOSPITAL', 'CHENNAI'),
(80, 'ROTARY MARGARET SIDNEY HOSPITAL', 'CHENNAI'),
(81, 'DR.KAMAKSHI MEMORIAL HOSPITAL', 'CHENNAI'),
(82, 'KLARITI EYE CARE', 'CHENNAI'),
(83, 'CHETTINAD SUPER SPECIALITY HOSPITAL', 'CHENNAI'),
(84, 'APOLLO SPECIALITY HOSPITAL', 'TRICHY'),
(87, 'SRI NARAYANI HOSPITAL AND RESEARCH CENTRE', 'VELLORE'),
(88, 'SAKTHI HOSPITAL', 'METTUPALAYAM'),
(89, 'VENKATESHWARA HOSPITALS', 'TIRUNELVELI'),
(90, 'RAMS MULTISPECIALITY CENTRE', 'TIRUPUR'),
(91, 'KRISHNA HOSPITAL', 'THIRUCHENGODE'),
(92, 'SREE VIJAY HOSPITAL', 'MANALMELKUDI'),
(93, 'The Arya Vaidhya Chikitsalayam and Research Institute', 'Ramanathapuram, Coimbatore'),
(94, 'DHARAN HOSPITAL', 'SALEM'),
(95, 'RAHAVENDAR HOSPITAL', 'MADURAI'),
(96, 'PK HOSPITAL', 'THANJAVUR'),
(97, 'HANNAH JOSEPH HOSPITAL', 'MADURAI'),
(98, 'ABIRAMI KIDNEY CARE', 'ERODE'),
(99, 'KMCH SPECIALITY HOSPITAL', 'ERODE'),
(100, 'AVN AROKYA AYURVEDIC HOSPITAL', 'MADURAI'),
(101, 'WESTMED HOSPITAL', 'PUDUCHERRY'),
(102, 'AG PADMAVATHY HOSPITAL', 'PUDUCHERRY'),
(103, 'EAST COAST HOSPITAL', 'PONDICHERRY'),
(104, 'KAUVERY HOSPITAL', 'HOSUR'),
(105, 'ADAYAR CANCER INSTITUTE', 'CHENNAI'),
(106, 'RAJAN EYE CARE HOSPITAL', 'CHENNAI'),
(107, 'VENKATESWARA HOSPITAL', 'CHENNAI'),
(108, 'KAUVERY HOSPITAL', 'CHENNAI'),
(109, 'SUDHA HOSPITAL', 'ERODE'),
(110, 'CHENGALPET MEDICAL COLLEGE AND HOSPITAL', 'CHENGALPET'),
(111, 'SAAM HOSPITAL', 'MADURAI'),
(112, 'ARUPPUKOTTAI GOVERNMENT HOSPITAL', 'ARUPPUKOTTAI'),
(113, 'THENKASI GOVERNMENT HOSPITAL', 'THENKASI'),
(114, 'SHRI HOSPITAL', 'SALEM'),
(115, 'VELAMMAL MEDICAL COLLEGE AND HOSPITAL', 'MADURAI'),
(116, 'MAHATHMA GANDHI MEMORIAL GOVERNMENT MEDICAL COLLEGE & HOSPITAL', 'TRICHY'),
(117, 'HCA FLORIDA BRANDON HOSPITAL', 'UNITED STATES'),
(118, 'ERODE MEDICAL COLLEGE & HOSPITAL', 'ERODE'),
(119, 'NA', 'NA'),
(120, 'DR.JEYASEKHARAN HOSPITAL & NURSING HOME', 'NAGERCOIL'),
(121, 'GOVERNMENT MEDICAL COLLEGE AND HOSPITAL', 'DINDUGUL'),
(122, 'ORTHO-ONE ORTHOPAEDIC SPECIALITY HOSPITAL', 'COIMBATORE'),
(123, 'NARAYANA VAIDYAR AURVEDIC CHIKITSALAYAM', 'Chittilamchery'),
(124, 'ANP NURSING HOME', 'THONDAMUTHUR, COIMBATORE'),
(125, 'MADHURANTHAGAM GOVERNMENT HOSPITAL', 'MADHURANTHAGAM'),
(126, 'KIMS HOSPITAL', 'TRIVANDRUM'),
(127, 'POONTHOTTAM AYUVEDASRAM', 'PALAKKAD'),
(128, 'CNS HOSPITAL', 'TIRUPUR'),
(129, 'STANELY MEDICAL COLLEGE AND HOSPITAL', 'CHENNAI'),
(130, 'COIMBATORE MEDICAL COLLEGE AND HOSPITAL', 'COIMBATORE'),
(131, 'ST.ISABELS HOSPITAL', 'CHENNAI'),
(132, 'CM BEST HOSPITAL', 'NAMAKKAL'),
(133, 'KAUVERY HOSPITAL ', 'SALEM'),
(134, 'SHIFA HOSPITALS', 'TIRUNELVELI'),
(135, 'G.M.K.M.C HOSPITAL', 'SALEM'),
(136, 'PALANI GOVERNMENT HOSPITAL', 'PALANI'),
(137, 'SUBAM HOSPITAL', 'HARUR'),
(138, 'DHARMAPURI MEDICAL COLLEGE AND HOSPITAL', 'DHARMAPURI'),
(139, 'DENKANIKOTTAI GOVERNMENT HOSPITAL', 'DENKANIKOTTAI'),
(140, 'MGM HEALTH CARE ', 'CHENNAI'),
(141, 'DHARAPURAM GH', 'DHARAPURAM'),
(142, 'KARUR GOVERNEMNT MEDICAL COLLEGE AND  HOSPITAL', 'KARUR'),
(143, 'JESUS VINEYARD HOSPITAL', 'MADURAI'),
(144, 'TIRUNELVELI MEDICAL COLEGE AND HOSPITAL', 'TIRUNELVELI'),
(145, 'K R HEALTH CARE LIMITED', 'COIMBATORE'),
(146, 'GOVERNMENT MEDICAL COLLEGE AND HOSPITAL', 'NAMAKKAL'),
(147, 'KODUMUDI GOVERNMENT HOSPITAL', 'KODUMUDI'),
(148, 'AROGYA HOSPITAL', 'RAMANATHAPURAM'),
(149, 'THIRUVARUR MEDICAL COLLEGE AND HOSPITAL', 'THIRUVARUR'),
(150, 'DR.KUMAR SPECIALITY HOSPITAL', 'CHENNAI'),
(151, 'KRISHNA SPECIALITY HOSPITAL', 'COIMBATORE'),
(152, 'KODAIKANAL GOVERNMENT HOSPITAL', 'KODAIKANAL'),
(153, 'Thiraviam Orthopaedic Hospital', 'NAGERCOIL'),
(154, 'SREE SARAN MEDICAL CENTRE', 'TIRUPUR'),
(155, 'AMC SUPER SPECIALITY HOSPITAL', 'TIRUPUR'),
(156, 'GERI CARE HOSPITAL ', 'CHENNAI'),
(157, 'Christudas Orthopedic Specialty Hospital', 'CHENNAI'),
(158, 'APOLLO HOSPITAL', 'MADURAI'),
(159, 'DISTRICT HEAD QUARTERS HOSPITAL', 'MANAPARAI'),
(160, 'GOVT HEAD QUARTERS HOSPITAL', 'PERAMBALUR'),
(161, 'GOVERNMENT MEDICAL COLLEGE AND HOSPITAL', 'VILLUPURAM'),
(162, 'ST MARYS HOSPITAL', 'SALEM'),
(163, 'NRP HOSPITAL', 'COIMBATORE'),
(164, 'ILAKKUVANAR MENTAL HEALTH CENTRE', 'MADURAI'),
(165, 'RELA INSTITUTE AND MEDICAL CENTRE', 'CHENNAI'),
(166, 'RV HOSPITAL', 'PALLIPALAYAM'),
(167, 'MARUTHI HOSPITAL', 'TRICHY'),
(168, 'MAAYA SPECIALITY HOSPITAL', 'COIMBTORE'),
(169, 'DEVAKI SPECIALITY HOSPITAL', 'MADURAI'),
(170, 'RASIPURAM GOVERNMENT HOSPITAL', 'RASIPURAM'),
(171, 'NEHA HOSPITAL', 'GOPI'),
(172, 'SANJAY HOSPITAL', 'PALANI'),
(173, 'GOVERNMENT RAJAJI HOSPITAL', 'MADURAI'),
(174, 'SINDHIA ORTHO CLINIC', 'POLLACHI'),
(175, 'GUNASEKARAN HOSPITALS', 'CHENNAI'),
(176, 'PRANAYA SPECIALITY HOSPITAL', 'THENI'),
(177, 'MUTHU HOSPITAL', 'CHENNAI'),
(178, 'THIRU SENTHIL ANDAVAR HOSPITAL', 'MADURAI'),
(179, 'VIJAYA HOSPITAL', 'CHENNAI'),
(180, 'SREE KUMARAN HOSPITAL', 'ODDANCHATRAM'),
(181, 'ARAVIND EYE HOSPITAL', 'COIMBATORE'),
(185, 'MADRAS MEDICAL MISSION HOSPITAL', 'CHENNAI'),
(186, 'GOWRI NURSING HOME', 'MADURAI'),
(187, 'VEDANAYAGAM HOSPITAL', 'COIMBATORE'),
(188, 'SHREE HEALTH CARE', 'CHENNAI'),
(189, 'AINU HOSPITAL', 'CHENNAI'),
(190, 'ABHI SK HOSPITAL', 'GOPICHETTIPALAYAM'),
(191, 'BE WELL HOSPITAL', 'CHENNAI'),
(192, 'SUNDARAM MEDICAL FOUNDATION', 'CHENNAI'),
(193, 'KAUVERY HOSPITAL', 'TRICHY'),
(194, 'BILLROTH HOSPITALS', 'CHENNAI'),
(195, 'HELIOS HOSPITAL', 'CHENNAI'),
(196, 'SENDAMANGALAM GOVERNMENT HOSPITAL', 'SENDAMANGALAM'),
(197, 'MIOT HOSPITAL', 'CHENNAI'),
(198, 'VELLORE GOVERNMENT MEDICAL COLLEGE AND HOSPITAL', 'VELLORE'),
(199, 'SREE MOOKAMBIKA INSTITUTE OF MEDICAL SCIENCES', 'KULASEKHARAM'),
(200, 'AYANAVARAM HOSPITAL', 'CHENNAI'),
(201, 'HOLY CROSS HOSPITAL', 'NAGERCOIL'),
(202, 'BHARATH SUPER SPECIALITY HOSPITAL', 'CHENNAI'),
(203, 'TIRUPUR MEDICAL COLLEGE AND HOSPITAL', 'TIRUPUR'),
(204, 'METTUPALAYAM GOVERNMENT HOSPITAL', 'METTUPALAYAM'),
(205, 'THARUNIKA WOMENS HOSPITAL', 'CHENNAI'),
(206, 'MEENAKSHI MEDICAL COLLEGE AND HOSPITAL', 'KANCHIPURAM'),
(207, 'SRI BALAJI HOSPITAL', 'CHENNAI'),
(208, 'MAHALAKSHMI HOSPITAL', 'CHENNAI'),
(209, 'MEERA HOSPITAL', 'HOSUR'),
(210, 'KASIRAM HOSPITAL', 'CHENNAI'),
(211, 'RPS HOSPITAL', 'SALEM'),
(212, 'DEEPAN HOSPITAL', 'TRICHY'),
(213, 'SUPREME SPECIALITY HOSPITAL', 'CHENNAI'),
(214, 'AGARWAL EYE HOSPITAL', 'SALEM'),
(215, 'SHEPHERD NURSING HOME', 'CHENNAI'),
(216, 'MANNARKAD NURSING HOME', 'MANNARKAD'),
(217, 'DEVAKOTTAI GOVERNMENT HOSPITAL', 'DEVAKOTTAI'),
(218, 'DR.VIJAY HOSPITAL', 'CHENNAI'),
(219, 'MASONIC MEDICAL CENTRE FOR CHILDREN', 'COIMBATORE'),
(220, 'NEW LIFE HOSPITAL', 'TUTICORIN'),
(221, 'KIRUBA HOSPITAL', 'SALEM'),
(222, 'CARE AKPS HOSPITAL', 'VIRUDHUNAGAR'),
(223, 'SRI ACHAMMAL HOSPITAL', 'ARUPPUKOTTAI'),
(224, 'VENKATESWARA HOSPITAL', 'THAMMAMPATTI'),
(225, 'PEACE HEALTH CENTRE', 'TIRUNELVELI'),
(226, 'NEURO FOUNDATION', 'SALEM'),
(227, 'AMBATTUR GOVERNMENT HOSPITAL', 'AMBATTUR'),
(228, 'EDAPPADI GOVERNMENT HOSPITAL', 'EDAPPADI'),
(229, 'SAI FERTILITY CENTRE AND HOSPITAL', 'CHENGALPET'),
(230, 'GJS MULTISPECIALITY HOSPITAL', 'CHENNAI'),
(231, 'NALAM HOSPITAL', 'COIMBATORE'),
(232, 'REX ORTHO HOSPITAL', 'COIMBATORE'),
(233, 'MANIPAL HOSPITAL', 'SALEM'),
(234, 'SRI KUMARAN MEDICAL CENTRE', 'TIRUPUR'),
(235, 'JIPMER HOSPITAL', 'PONDICHERRY'),
(236, 'AMBUR GOVERNMENT HOSPITAL', 'AMBUR'),
(237, 'BE WELL HOSPITAL', 'PUTHUKOTTAI'),
(238, 'SRI BALAJI HOSPITALS', 'CHENNAI'),
(239, 'SRI CHANDRASEKARA HOSPITAL', 'HOSUR'),
(240, 'MALLIKA HOSPITAL', 'ANTHIYUR'),
(241, 'GITANJALI MEDICAL CENTRE', 'TRICHY'),
(242, 'APOLLO KH HOSPITAL', 'RANIPET'),
(243, 'GEETHA RAGUNATH HOSPITAL', 'ATTUR'),
(244, 'RUDRATSHA DIABETES CENTRE AND HOSPITAL', 'COIMBATORE'),
(245, 'PREETHI HOSPITALS', 'MADURAI'),
(246, 'APPASAMY HOSPITALS', 'CHENNAI'),
(247, 'HEM HOSPITAL', 'COIMBATORE'),
(248, 'CITY MEDICAL CENTRE', 'TRICHY'),
(249, 'LEO ORTHO CARE HOSPITAL', 'COIMBATORE'),
(250, 'VEL HOSPITAL', 'PALANI'),
(251, 'ARAVIND EYE HOSPITAL', 'TIRUNELVELI'),
(252, 'SREE RENGA HOSPITAL', 'CHENGALPATTU'),
(253, 'CUDDALORE SPECIALITY HOSPITAL', 'CUDDALORE'),
(254, 'THANJAVUR MEDICAL COLLEGE AND HOSPITAL', 'THANJAVUR'),
(255, 'THE EYE FOUNDATION', 'TIRUPUR'),
(256, 'ONE CARE MEDICAL CENTRE', 'COIMBATORE'),
(257, 'KANCHI KAMAKODI CHILD TRUST', 'CHENNAI'),
(258, 'BHARATH HOSPITAL', 'ERODE'),
(259, 'MOHAN DIABETES SPECIALITUES CENTRE', 'CHENNAI'),
(260, 'SURYA HOSPITAL', 'COIMBATORE'),
(261, 'SIVA SHANTHA MOTHER AND CHILD HEALTH CENTRE', 'COIMBATORE'),
(262, 'JANET NURSING HOME', 'TRICHY'),
(263, 'PALLAVA HOSPITAL', 'CHENNAI'),
(264, 'SREEDHAREEYAM AYURVEDIC EYE HOSPITAL', 'ERNAKULAM'),
(265, 'NAJATH HOSPITAL', 'ALUVA'),
(266, 'MOSCM MISSION HOSPITAL', 'THRISSUR'),
(267, 'CM SPECIALITY HOSPITAL', 'NAMAKKAL'),
(268, 'CHILD JESUS HOSPITAL', 'TRICHY');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` int(11) NOT NULL,
  `iname` varchar(500) DEFAULT NULL,
  `address1` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `gstin` varchar(100) DEFAULT NULL,
  `gst_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`id`, `iname`, `address1`, `address2`, `gstin`, `gst_type`) VALUES
(1, 'Alankit Insurance TPA Limited', NULL, NULL, NULL, NULL),
(2, 'Aditya Birla Health Insurance Company', 'add1', 'add2', 'g1233', 'IGST'),
(4, 'Bajaj Allianz General Insurance Co Ltd', NULL, NULL, NULL, NULL),
(6, 'E-MEDITEK Insurance TPA Limited', NULL, NULL, NULL, NULL),
(7, 'Family Health Plan Insurance TPA Limited', NULL, NULL, NULL, NULL),
(8, 'Future Generali India Insurance Company Limited', NULL, NULL, NULL, NULL),
(9, 'Good Health Insurance TPA Limited', NULL, NULL, NULL, NULL),
(10, 'HDFC ERGO General Insurance Company Ltd', NULL, NULL, NULL, NULL),
(11, 'Health India Insurance TPAServices Pvt. Ltd', NULL, NULL, NULL, NULL),
(12, 'Health Insurance TPA of India Ltd', NULL, NULL, NULL, NULL),
(13, 'Heritage Health Insurance TPA Pvt. Ltd', NULL, NULL, NULL, NULL),
(14, 'ICICI Lomabard Health Care', NULL, NULL, NULL, NULL),
(15, 'IFFCO TOKIO GENERAL INSURANCE CO. LTD.', NULL, NULL, NULL, NULL),
(16, 'Max Bupa Health Insurance Company', NULL, NULL, NULL, NULL),
(17, 'MDIndia Healthcare Services (TPA) Pvt. Ltd.', NULL, NULL, NULL, NULL),
(18, 'MDI-TNEHS', NULL, NULL, NULL, NULL),
(19, 'Medi Assist Insurance TPA Pvt. Ltd', NULL, NULL, NULL, NULL),
(20, 'Medicare Insurance TPA Services (India) Pvt. Ltd.', NULL, NULL, NULL, NULL),
(21, 'MedSave Health Insurance TPA Limited', NULL, NULL, NULL, NULL),
(22, 'Paramount Health Services (TPA) Private Limited', NULL, NULL, NULL, NULL),
(23, 'Park Mediclaim TPA insurance Company Pvt. Ltd', NULL, NULL, NULL, NULL),
(24, 'Raksha Health Insurance TPA Pvt.Ltd', NULL, NULL, NULL, NULL),
(25, 'Reliance General Insurance Co. Ltd', NULL, NULL, NULL, NULL),
(26, 'Religare Health Insuarnce Co.Ltd', NULL, NULL, NULL, NULL),
(27, 'Safeway Insurance TPA Pvt Ltd', NULL, NULL, NULL, NULL),
(28, 'Star Health and Allied Insurance Co. Ltd(Chennai)', NULL, NULL, NULL, NULL),
(29, 'UnitedHealthcare Parekh Insurance TPA Private Limited', NULL, NULL, NULL, NULL),
(30, 'Universal Sompo General Insurance Co.Ltd', NULL, NULL, NULL, NULL),
(31, 'Vidal Healthcare Services Pvt Ltd', NULL, NULL, NULL, NULL),
(34, 'SathishKumar Kaviyarasu', NULL, NULL, NULL, NULL),
(35, 'TATA AIG General Insurance Company Limited', '15th Floor, Tower A, Peninsula Business Park, GK Marg', 'Lower Parel, Mumbai - 400013', '27AABCT3518Q1ZW', 'IGST'),
(36, 'CHOLA MS GENERAL INSURANCE COMPANY LIMITED', 'New No-2, OLD NO -234, DARE HOUSE, 2ND FLOOR, ', 'N.S.C BOSE ROAD, PARRYS, CHENNAI-600001', '33AABCC6633K1ZQ', 'CGST & SGST'),
(37, 'ICICI PRULIFE INS', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `intimations`
--

CREATE TABLE `intimations` (
  `id` int(11) NOT NULL,
  `vendor` varchar(100) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `doa` varchar(100) DEFAULT NULL,
  `dod` varchar(100) DEFAULT NULL,
  `doi` varchar(100) DEFAULT NULL,
  `opno` varchar(100) DEFAULT NULL,
  `ipno` varchar(100) DEFAULT NULL,
  `hosp_details` varchar(100) DEFAULT NULL,
  `triggers` varchar(5000) DEFAULT NULL,
  `claimno` varchar(100) DEFAULT NULL,
  `insurance_tpa` varchar(100) DEFAULT NULL,
  `policy_type` varchar(100) DEFAULT NULL,
  `doj` varchar(100) DEFAULT NULL,
  `claim_type` varchar(100) DEFAULT NULL,
  `case_type` varchar(100) DEFAULT NULL,
  `fees` varchar(100) DEFAULT NULL,
  `mrd` varchar(100) DEFAULT NULL,
  `transportation` varchar(100) DEFAULT NULL,
  `created` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `gicsid` varchar(100) DEFAULT NULL,
  `invoice` int(5) NOT NULL DEFAULT 0,
  `incentive` varchar(100) DEFAULT NULL,
  `payment` varchar(500) DEFAULT NULL,
  `paid_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `intimations`
--

INSERT INTO `intimations` (`id`, `vendor`, `pname`, `age`, `sex`, `doa`, `dod`, `doi`, `opno`, `ipno`, `hosp_details`, `triggers`, `claimno`, `insurance_tpa`, `policy_type`, `doj`, `claim_type`, `case_type`, `fees`, `mrd`, `transportation`, `created`, `created_by`, `updated`, `updated_by`, `gicsid`, `invoice`, `incentive`, `payment`, `paid_date`) VALUES
(74, '8', 'MRS.B.GAYATRI', '43', 'Female', '1692921600', '1693094400', '1692835200', '000', '000', '103', '1. Genuinity of claim, Suspicious/ fraudulent . 2. Get all Investigation reports , 3. Get all ICPs, 4. Rule out PED 5. Complete Medical & surgical history ,6. Crosscheck all indoor case papers, admission history sheet, and Discharge summary, 7. Crosscheck all previous treatment records including First Consultation papers.,', '4000079720', '35', 'Individual', '1662940800', 'Cashless', 'PED', '1200', '0', '0', '1693094400', 'admin', NULL, NULL, 'GICS1692875052_74', 1, '0', '325502985GN00231', '1694476800'),
(75, '8', 'MR.LIKITH REDDY', '17', 'Male', '1693094400', '1693440000', '1693180800', '00000', '00000', '104', 'Genuinity', '4000080920', '35', 'Individual', '1688428800', 'Cashless', 'Genuinity', '1200', '0', '0', '1693180800', 'admin', NULL, NULL, 'GICS1693190764_75', 1, '0', '325602138GN00202', '1694563200'),
(76, '8', 'MRS.DEVI', '39', 'Female', '1684108800', '1684713600', '1692835200', 'C101.23.00207917', 'IP248469', '105', 'Provider is The Cancer Institute, also known as the Adyar Cancer Institute, is a non-profit cancer treatment and research centre based in Chennai, as first year policy assigning CI verify for ND and PED, verify for ND and PED', '4000068721', '35', 'Individual', '1666137600', 'Reimbursement', 'PED', '2500', '0', '0', '1693526400', 'admin', NULL, NULL, 'GICS1693203021_76', 1, '500', '325200604GN00295 ', '1694131200'),
(77, '8', 'MRS.SATHYA ', '36', 'Female', '1688947200', '1688947200', '1693180800', '347157', 'IP/01230710/006', '106', 'Genuinity as Higher bill amount for cataract / PED', '4000075170', '35', 'Individual', '1609459200', 'Reimbursement', 'PED', '2500', '0', '0', '1693440000', 'admin', NULL, NULL, 'GICS1693209598_77', 1, '500', '325200621GN00083', '1694217600'),
(78, '8', 'MRS.SANTHIYA', '28', 'Female', '1689724800', '1689897600', '1693180800', '1936687', 'H14457', '23', 'early claim need to rule out ped and nd need past treatment records', '4000078741', '35', 'Individual', '1679270400', 'Reimbursement', 'PED', '2500', '460', '0', '1693526400', 'admin', NULL, NULL, 'GICS1693227326_78', 1, '500', '326301765GN00367', '1695168000'),
(79, '8', 'MR.VIDYUTH', '29', 'Male', '1688428800', '1688688000', '1693267200', '138850', '23-1540', '107', 'High value reimbursement claims, Large Claim amount,Reimbursement claim from a network hospital, claim inception and admission is on same day high suspected fraud', '4000080692', '35', 'Individual', '1688428800', 'Reimbursement', 'Accident', '2500', '0', '0', '1693612800', 'admin', NULL, NULL, 'GICS1693380611_79', 1, '500', NULL, NULL),
(80, '8', 'MR.MANIKANDAN', '34', 'Male', '1674172800', '1675036800', '1693353600', '324587', 'IP2211489', '94', 'Collect MLC,,Vicinity check / Alcohol consumption / Genuinity', '4000078972', '35', 'Individual', '1671840000', 'Reimbursement', 'Accident', '2500', '0', '0', '1694131200', 'admin', NULL, NULL, 'GICS1693381913_80', 1, '500', '326302449GN00869', '1695168000'),
(81, '8', 'MR.THARACHAND', '40', 'Male', '1689638400', '1690243200', '1693353600', 'CM230000342401', 'IP0000064121', '108', 'Policy since 12-05-2023, single member policy, CAD, DM recently detected, suspicious as very close proximity and claiming more than SI, kindly investigate,Check for PED if any and get the diabetes exact duration', '4000080551', '35', 'Individual', '1683849600', 'Reimbursement', 'PED', '2500', '500', '0', '1693958400', 'admin', NULL, NULL, 'GICS1693383033_81', 1, '500', '326302449GN00867', '1695168000'),
(82, '8', 'MR.UMAPATHY', '34', 'Male', '1690588800', '1690934400', '1693526400', '235833', '83658', '109', 'Collect First Hospitalization documents and other hospitalization  documents  to r/o Alcoholic intoxication', '4210001367A', '35', 'Corporate', '1609459200', 'PA', 'Accident', '2500', '0', '550', '1693612800', 'admin', NULL, NULL, 'GICS1693555991_82', 1, '500', NULL, NULL),
(83, '8', 'MRS.SARASWATHY', '47', 'Female', '1685923200', '1686182400', '1693958400', '0000', '0000', '110', 'Genuinity / Alcohol consumption', '0822483590A', '35', 'Corporate', '1577836800', 'PA', 'Accident', '2500', '0', '300', '1694131200', 'admin', NULL, NULL, 'GICS1694166771_83', 1, '500', '329602394GN00229', '1698019200'),
(84, '8', 'MR.NAGARAJAN', '0', 'Male', '1694044800', '1694390400', '1694131200', '0000', '00000', '65', 'PED / ND if any / Genuinity', '4000084635', '35', 'Individual', '1681430400', 'Cashless', 'PED', '1200', '0', '0', '1694217600', 'admin', NULL, NULL, 'GICS1694193823_84', 1, '0', '', ''),
(85, '8', 'MRS.NAGA SINDHUJADEVI', '30', 'Female', '1686009600', '1686268800', '1694304000', 'PNA/232/99', 'PNA/232/99', '111', 'Please investigate the case for genuinity / Hospital registration certificate /  no of beds / Inflation of bills', '4000081683', '35', 'Individual', '1577836800', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1694649600', 'admin', NULL, NULL, 'GICS1694413632_85', 1, '500', '326302449GN00868', '1695168000'),
(86, '8', 'MRS.NAVEENA PRIYA', '30', 'Female', '1691020800', '1691107200', '1694304000', '0292251', 'IPB202311110', '61', 'Genuinity / PED / 24 Hours hospitalization', '4000082148', '35', 'Individual', '1649894400', 'Reimbursement', 'PED', '2500', '0', '0', '1695168000', 'admin', NULL, NULL, 'GICS1694414216_86', 1, '500', '', ''),
(87, '8', 'MR.NARAYANASAMY', '63', 'Male', '1672272000', '1672272000', '1694390400', '0000', '0000', '112', 'Genuinity / Alcohol consumption at the time of accident', '0822537818A', '35', 'Corporate', '1640995200', 'PA', 'Accident', '4500', '150', '400', '1694736000', 'admin', NULL, NULL, 'GICS1694415866_87', 1, '500', '', ''),
(88, '8', 'MR.LAKSHMANAN', '44', 'Male', '1686009600', '1686009600', '1694390400', '0000', '0000', '113', 'Genuinity / Alcohol consumption at the time of accident', '4210002781', '35', 'Individual', '1577836800', 'PA', 'Accident', '2500', '0', '520', '1695081600', 'admin', NULL, NULL, 'GICS1694416655_88', 1, '500', '332601579GN00337', '1700611200'),
(89, '8', 'MR.MADHAV MAHESHWARI', '17', 'Male', '1694563200', '1694822400', '1694563200', '0000', '0000', '79', 'Please investigate the case for PED of current ailment and collect all previous documents', '4000086682', '35', 'Individual', '1680825600', 'Cashless', 'Accident', '1200', '0', '0', '1694649600', 'admin', NULL, NULL, 'GICS1694615608_89', 1, '0', '327202388GN00317', '1695945600'),
(90, '8', 'MR.KUMARESAN', '42', 'Male', '1687219200', '1687219200', '1694476800', '000', '000', '64', 'Please investigate the case for PED of CA, ALL CKD', '0822498218A', '35', 'Individual', '1577836800', 'Reimbursement', 'PED', '2500', '0', '0', '1695081600', 'admin', NULL, NULL, 'GICS1694671632_90', 1, '500', '331402883GN00362 ', '1699574400'),
(91, '8', 'MRS.PASUMATHI', '56', 'Female', '1694822400', '1695168000', '1694649600', '0000', '0000', '114', 'Kindly investigate regarding any past medical and surgical history to rule out PED/ND', '4000086060', '35', 'Individual', '1684195200', 'Cashless', 'PED', '1200', '0', '0', '1694649600', 'admin', NULL, NULL, 'GICS1694677895_91', 1, '0', '327202103GN00269', '1695945600'),
(92, '8', 'MRS.MALA', '54', 'Female', '1695254400', '1695686400', '1694649600', '0000', '0000', '79', 'FIRST CLAIM -- HIGH VALUE CHANCE OF PED/ND', '4000087088', '35', 'Individual', '1676592000', 'Cashless', 'PED', '1200', '0', '0', '1694736000', 'admin', NULL, NULL, 'GICS1694756193_92', 1, '0', '327202388GN00318', '1695945600'),
(93, '8', 'MRS.MUTHUSELVI', '39', 'Female', '1694995200', '1695254400', '1695081600', '00000', '00000', '5', 'PID: 31/03/2023,no portbaility, no loading applicable,,admitted with c/o fracture distal radius, slip amd fall, kindly investigate the exact circumstances of injury,substance abuse during the incidence,MLC/FIR,any masking of the incidence and claim genuinity, any past medical and surgical history to rule out PED/ND and to validate admission in this case', '4000088042', '35', 'Individual', '1680220800', 'Cashless', 'Accident', '1200', '0', '0', '1695081600', 'admin', NULL, NULL, 'GICS1695101965_93', 1, '0', '327602091GN00488', '1696291200'),
(94, '8', 'MRS.SUMATHI', '56', 'Female', '1688860800', '1690243200', '1694822400', '2303240189', '202307070002', '115', 'Early claim Late Claim notification Large Claim amount High value reimbursement claims Claim amount close to Sum insured Chronic illness case in first year Suspected PED Kindly investigate and rule out PED and ND,Kindly collect complete past treatment records related to DM HTN & Vicinity check', '4000085693', '35', 'Individual', '1677456000', 'Reimbursement', 'PED', '2500', '300', '0', '1695254400', 'admin', NULL, NULL, 'GICS1695102508_94', 1, '500', '327703347GN00395', '1696377600'),
(95, '8', 'MRS.MARY KALITA', '58', 'Female', '1695081600', '1695340800', '1695168000', 'AC01.0002555186', '00000', '79', 'known case of multiple myeloma on chemo, rule out exact duration of same , suspecting ND of same , rule out other associated illness if any ,known case of multiple myeloma on chemo, rule out exact duration of same , suspecting ND of same , rule out other associated illness if any', '4000088924', '35', 'Individual', '1652400000', 'Cashless', 'PED', '1200', '0', '0', '1695254400', 'admin', NULL, NULL, 'GICS1695270259_95', 1, '0', '327300400GN00229', '1696032000'),
(96, '8', 'MR.RADHAKRISHNAN', '50', 'Male', '1666137600', '1666137600', '1695168000', '0000', '0000', '116', 'Genuinity / Alcohol consumption at the time of accident', '0822558883A', '35', 'Corporate', '1577836800', 'PA', 'Accident', '4500', '0', '0', '1695600000', 'admin', NULL, NULL, 'GICS1695270989_96', 1, '500', '', ''),
(97, '8', 'MRS.RADHA JUSTIN', '57', 'Female', '1667520000', '1667520000', '1695340800', '0000', '00000', '110', 'Genuinity / Drug abuse / Suicidal attempt if any / murder Etc.,', '0822346279A ', '35', 'Individual', '1666051200', 'PA', 'Accident', '2500', '0', '350', '1695686400', 'admin', NULL, NULL, 'GICS1695367091_97', 1, '500', '329602394GN00230', '1698019200'),
(98, '8', 'MR.NARAYANASAMY', '69', 'Male', '1687478400', '1688342400', '1695340800', 'H001301135', '00', '117', 'PED / ND if any', '4200008984', '35', 'Individual', '1686096000', 'Reimbursement', 'PED', '2500', '0', '0', '1695686400', 'admin', NULL, NULL, 'GICS1695472875_98', 1, '500', '', ''),
(99, '8', 'MR.THAVAMANI', '61', 'Male', '1695427200', '1697500800', '1695427200', 'AC10.0000065062', '00000', '79', 'Genuinity / Impersonation', '4000090247', '35', 'Corporate', '1577836800', 'Cashless', 'Genuinity', '1200', '0', '0', '1695513600', 'admin', NULL, NULL, 'GICS1695487171_99', 1, '0', '327602186GN00079', '1696291200'),
(100, '8', 'MRS.ANU SHARMA', '33', 'Female', '1695427200', '1695600000', '1695427200', '00000', '00000', '79', 'PED / ND of present ailment', '4000090237', '35', 'Individual', '1691366400', 'Cashless', 'PED', '1200', '0', '0', '1695513600', 'admin', NULL, NULL, 'GICS1695487359_100', 1, '0', '', ''),
(102, '8', 'MR.SMARAK RATH', '27', 'Male', '1689552000', '1690156800', '1695513600', 'AC01.0005072115', 'CMHIP406423', '79', 'kindly if ped found refer with prescription ,member statement', '4000083318', '35', 'Individual', '1623024000', 'Reimbursement', 'PED', '2500', '0', '0', '1695772800', 'admin', NULL, NULL, 'GICS1695542011_102', 1, '500', '333203613GN00663', '1701129600'),
(103, '8', 'MR.SURESH', '43', 'Male', '1691366400', '1692144000', '1695513600', 'A819682', '202321778', '53', 'Verify ND and PED for Diabetes Mellitus, Hypertension, Dyslipidemia and Coronary artery Disease', '4000088820', '35', 'Individual', '1689984000', 'Reimbursement', 'PED', '2500', '100', '0', '1695945600', 'admin', NULL, NULL, 'GICS1695627298_103', 1, '500', '333903730GN00649', '1701734400'),
(104, '8', 'MR.BALAMURUGAN', '49', 'Male', '1682812800', '1682812800', '1695686400', '13686', '0000', '118', 'PED / ND of CAD / CVA / SHTN / Seizure disorder Etc.,', '0822436720A', '35', 'Individual', '1535500800', 'PA', 'PED', '2500', '0', '500', '1696464000', 'admin', NULL, NULL, 'GICS1695719095_104', 1, '500', '329201777GN00500', '1697673600'),
(105, '8', 'MR.GNANAVEL NARAYANASAMY', '63', 'Male', '1684713600', '1684713600', '1695686400', '000', '000', '119', 'Genuinity / Confirm whether death due to accident or Natural cause', '4210002623A ', '35', 'Individual', '1577836800', 'PA', 'Accident', '2500', '0', '700', '1696291200', 'admin', NULL, NULL, 'GICS1695727552_105', 1, '500', '', ''),
(106, '8', 'MISS.ABINAYA', '27', 'Female', '1695600000', '1695859200', '1695772800', '000', '0000', '120', '1st yar policy, admitted for management of bronchitis. Please check exact duration of bronchial asthma.', '4000090961', '35', 'Individual', '1672012800', 'Cashless', 'PED', '1200', '0', '0', '1695772800', 'admin', NULL, NULL, 'GICS1695802133_106', 1, '0', '327802484GN00155', '1696464000'),
(107, '8', 'MR.VENGADESAN', '31', 'Male', '1682726400', '1682726400', '1695686400', '0000', '0000', '121', 'Genuinity / Alcohol consumptions / Suicidal attempt if any', '4210003437A', '35', 'Individual', '1663200000', 'PA', 'Accident', '2500', '0', '450', '1695945600', 'admin', NULL, NULL, 'GICS1695805612_107', 1, '500', '', ''),
(108, '8', 'MR.PRATHIBAN', '36', 'Male', '1694217600', '1694390400', '1695945600', '1227286', 'IP-23-1017077`', '122', '1st year policy, check for PED/ND, Genuinity', '2892003276', '36', 'Individual', '1665014400', 'Reimbursement', 'Accident', '2500', '350', '0', '1696377600', 'admin', NULL, NULL, 'GICS1695974655_108', 1, '250', '', ''),
(109, '8', 'MRS.USHA NAIR', '58', 'Female', '1691712000', '1692316800', '1695945600', '1025', '0', '123', '1st year policy, Check for PED / ND / Genuinity', '2876152250', '36', 'Individual', '1691280000', 'Reimbursement', 'PED', '2500', '0', '0', '1696291200', 'admin', NULL, NULL, 'GICS1695990230_109', 1, '250', '', ''),
(110, '8', 'MR.RATHINASAMY', '53', 'Male', '1695859200', '1696291200', '1696032000', '0000', '0000', '124', '1st year Policy, Check for any PED/NDC, Check for Genuinity of claim', '2846002433', '36', 'Individual', '1679529600', 'Cashless', 'PED', '750', '0', '0', '1696032000', 'admin', NULL, NULL, 'GICS1696063231_110', 1, '250', 'IN1ON23100301OKQ ', '1696291200'),
(111, '8', 'MR.KARTHIC', '36', 'Male', '1692144000', '1692144000', '1695859200', '0000', '0000', '125', 'Genuinity / Alcohol consumption at the time of accident Etc', '4210002320A', '35', 'Corporate', '1672531200', 'PA', 'Accident', '4500', '0', '400', '1696377600', 'admin', NULL, NULL, 'GICS1696402329_111', 1, '500', '', ''),
(112, '8', 'MR.KPT NAIR', '69', 'Male', '1691539200', '1692316800', '1696377600', '1024', '1024', '123', '2nd year Policy, please check for PED / ND / Genuinity', '2876152248', '36', 'Individual', '1659744000', 'Reimbursement', 'PED', '2500', '0', '0', '1696377600', 'admin', NULL, NULL, 'GICS1696409315_112', 1, '250', '', ''),
(113, '8', 'MR.RAJAN', '39', 'Male', '1691539200', '1692230400', '1695859200', '009117922', '000', '126', 'Genuinity / Alcohol consumption / Check for exact diasability status', '0822568588A', '35', 'Corporate', '1577836800', 'PA', 'Accident', '4500', '0', '500', '1696550400', 'admin', NULL, NULL, 'GICS1696416606_113', 1, '500', '', ''),
(114, '8', 'MRS.PADMAVATHI', '50', 'Female', '1691798400', '1692057600', '1696377600', '000', '23733', '34', '3rd year policy, check for any PED/NDC, Check for Genuinity of claim', '2890053469', '36', 'Individual', '1604275200', 'Reimbursement', 'PED', '2500', '0', '0', '1696464000', 'admin', NULL, NULL, 'GICS1696417295_114', 1, '250', '', ''),
(115, '8', 'MR.ANANDH', '53', 'Male', '1685491200', '1686787200', '1696377600', '1123058180', '2023011725', '15', 'Daily cash benefit policy, Check for admission confirmation from hospital', '2883048959', '36', 'Corporate', '1577836800', 'Reimbursement', 'Genuinity', '1000', '0', '0', '1696464000', 'admin', NULL, NULL, 'GICS1696429740_115', 1, '250', '', ''),
(116, '8', 'SELVI.PRAIYADHARSHINI', '11', 'Female', '1690329600', '1691452800', '1696377600', '21681', '21681', '127', '2nd year Policy, Ayurvedic hospital, Check for Genuinity of claim, Check for any PED/NDC.', '2890053687', '36', 'Individual', '1627430400', 'Reimbursement', 'PED', '2500', '0', '0', '1696982400', 'admin', NULL, NULL, 'GICS1696429953_116', 1, '250', '', ''),
(117, '8', 'MR.DAS THAGEER SHERIF', '30', 'Male', '1696291200', '1696550400', '1696464000', '0000', '0000', '128', '26 /9 /23, SME policy, admission for accidental injury , kindly validate admission genuineness.,', '4000093457', '35', 'Corporate', '1695686400', 'Cashless', 'Accident', '1200', '0', '0', '1696464000', 'admin', NULL, NULL, 'GICS1696495431_117', 1, '0', '331800359GN00149', '1699920000'),
(118, '8', 'MR.NAZIM FAROOQ', '38', 'Male', '1685318400', '1686441600', '1696464000', '0000', '000', '129', 'Genuinity / Alcohol consumption at the time of accident / Suicidal if any', '4210003501A', '35', 'Individual', '1674086400', 'PA', 'Accident', '2500', '0', '400', '1697500800', 'admin', NULL, NULL, 'GICS1696504357_118', 1, '500', '', ''),
(119, '8', 'MR.RAJENDRAN', '33', 'Male', '1689206400', '1689206400', '1696464000', '0000', '000', '130', 'Genuinity / Alcohol consumption at the time of accident / Suicidal if any / Financial crisis', '4210001913A', '35', 'Individual', '1672531200', 'PA', 'Accident', '2500', '0', '300', '1697673600', 'admin', NULL, NULL, 'GICS1696504572_119', 1, '500', '', ''),
(120, '8', 'BABY.DHAYAZHINI S ', '1', 'Female', '1696291200', '1696636800', '1696550400', '0000', '0000', '131', '3rd year Policy, check for any PED/NDC, Check for genuinity of claim', '2890053779', '36', 'Individual', '1605744000', 'Cashless', 'PED', '750', '0', '0', '1696550400', 'admin', NULL, NULL, 'GICS1696573284_120', 1, '250', '', ''),
(121, '8', 'MR.RANJITHKUMAR', '27', 'Male', '1694131200', '1694390400', '1696550400', 'P001989', '12781', '132', '1st year Policy, Check for any PED/NDC, Check for Genuinity of claim', '2846002468', '36', 'Individual', '1690243200', 'Reimbursement', 'Accident', '2500', '0', '0', '1696809600', 'admin', NULL, NULL, 'GICS1696667473_121', 1, '250', '', ''),
(122, '8', 'MR.PRABAKARAN', '58', 'Male', '1693180800', '1693958400', '1696550400', '112236', 'IP0000028938', '133', '1st year Policy, Check for any PED/NDC, Check for Genuinity of claim', '2890053210', '36', 'Individual', '1687737600', 'Reimbursement', 'PED', '2500', '0', '0', '1696982400', 'admin', NULL, NULL, 'GICS1696668903_122', 1, '250', '', ''),
(123, '8', 'MR.INBARASU', '35', 'Male', '1690848000', '1691798400', '1696636800', '00000', '0000', '130', 'Daily cash benifit policy, check for genuinity', '2883049172', '36', 'Corporate', '1672531200', 'Reimbursement', 'PED', '1000', '0', '0', '1696809600', 'admin', NULL, NULL, 'GICS1696675039_123', 1, '250', '', ''),
(124, '8', 'MR.SAMPATHKUMAR', '29', 'Male', '1693958400', '1694390400', '1696636800', '269231', 'A83161', '99', '1st year Policy, Check for any PED/NDC, Check for Genuinity of claim', '2846002547', '36', 'Individual', '1673395200', 'Reimbursement', 'PED', '2500', '0', '0', '1696896000', 'admin', NULL, NULL, 'GICS1696685258_124', 1, '250', '', '1696896000'),
(125, '8', 'MRS.USHA KUMARI', '48', 'Female', '1696636800', '1696896000', '1696636800', '8089', '0000', '134', 'One month old policy, admission for Coronary artery disease, kindly provide details regarding any past history to rule out ND/PED.,', '4000094964', '35', 'Individual', '1693699200', 'Cashless', 'PED', '1200', '0', '0', '1696723200', 'admin', NULL, NULL, 'GICS1696688270_125', 1, '0', '329201777GN00497', '1697673600'),
(126, '8', 'MR.VARADHARAJAN', '57', 'Male', '1676160000', '1676937600', '1696809600', '0000', '0000', '135', 'Genuinity / Alcohol consumption at the time of accident', '0822478635A', '35', 'Individual', '1672531200', 'PA', 'Accident', '2000', '0', '600', '1697500800', 'admin', NULL, NULL, 'GICS1696870129_126', 1, '500', '', ''),
(127, '8', 'MR.RAVI SHANKAR', '36', 'Male', '1681257600', '1681776000', '1696809600', 'AC01.0004899376', 'CMHIP395445', '79', 'PED / Genuinity', '0822393934B', '35', 'Individual', '1540166400', 'Critical Illness', 'PED', '4500', '900', '0', '1697846400', 'admin', NULL, NULL, 'GICS1696870309_127', 1, '500', '', ''),
(128, '8', 'MRS.SEETHALAKSHMI', '43', 'Female', '1682726400', '1682726400', '1696809600', '0000', '000', '136', 'Genuinity / Alcohol consumption at the time of accident', '2884006862', '36', 'Corporate', '1663718400', 'PA', 'Accident', '2500', '0', '0', '1697328000', 'admin', NULL, NULL, 'GICS1696870503_128', 1, '500', '', ''),
(129, '8', 'MRS.BANDANA DAS', '34', 'Female', '1696896000', '1697328000', '1696896000', '0000', '0000', '79', 'PED / ND if any', '4000095599', '35', 'Individual', '1695686400', 'Cashless', 'PED', '1200', '0', '0', '1696896000', 'admin', NULL, NULL, 'GICS1696926207_129', 1, '0', '331800359GN00148', '1699920000'),
(130, '8', 'MR.ANTONYMELBAN S', '39', 'Male', '1696982400', '1697241600', '1696896000', '0000', '00000', '79', 'Fresh policy , admission for management of medial meniscus tear, rule out injury details , rule out any substance intake at the time of injury or PED', '4000095873', '35', 'Individual', '1676505600', 'Cashless', 'Accident', '1200', '0', '0', '1696982400', 'admin', NULL, NULL, 'GICS1696947806_130', 1, '0', '330002163GN01021', '1698364800'),
(131, '8', 'MRS.SUMATHI', '53', 'Female', '1690761600', '1690848000', '1696896000', '202300628', '202300628', '137', 'Genuinity / ND of DM', '4000073098', '35', 'Individual', '1667001600', 'Reimbursement', 'PED', '2500', '0', '0', '1697760000', 'admin', NULL, NULL, 'GICS1696948153_131', 1, '500', '', ''),
(132, '8', 'MR.RAJESH  J', '38', 'Male', '1696896000', '1697068800', '1696982400', '0000', '0000', '95', 'PED for ACS / ND if any / Genuinity', '4000096126', '35', 'Individual', '1667174400', 'Cashless', 'PED', '1200', '0', '0', '1696982400', 'admin', NULL, NULL, 'GICS1697009960_132', 1, '0', '329201777GN00496', '1697673600'),
(133, '8', 'MR.SANKAR', '23', 'Male', '1665878400', '1665878400', '1696982400', '0000', '0000', '139', 'Genuinity / Alcohol consumption at the time of accident', '2884006878', '36', 'Corporate', '1657584000', 'PA', 'Accident', '2500', '0', '0', '1697587200', 'admin', NULL, NULL, 'GICS1697020823_133', 1, '500', '', ''),
(134, '8', 'MRS.VISALAKSHI BALAKUMAR', '55', 'Female', '1696896000', '1697155200', '1696982400', '0000', '0000', '140', 'Policy since 12/08/2022, kindly verify duration of CA, PED/ND', '4000096362', '35', 'Individual', '1660262400', 'Cashless', 'PED', '1200', '0', '0', '1697068800', 'admin', NULL, NULL, 'GICS1697035347_134', 1, '0', '', ''),
(135, '8', 'MR.SENTHIL KUMAR', '40', 'Male', '1678579200', '1678579200', '1697068800', '000', '000', '141', 'Genuinity / Alcohol consumption at the time of accident', '0822435908', '35', 'Individual', '1670803200', 'PA', 'Accident', '2000', '0', '500', '1697328000', 'admin', NULL, NULL, 'GICS1697108386_135', 1, '500', '', ''),
(136, '8', 'MR.POOVARASAN', '28', 'Male', '1667347200', '1689552000', '1696982400', '0000', '0000', '141', 'Genuinity / Alcohol consumption at the time of accident', '0822530218', '35', 'Corporate', '1640995200', 'PA', 'Accident', '4500', '0', '500', '1698192000', 'admin', NULL, NULL, 'GICS1697124565_136', 1, '500', '', ''),
(137, '8', 'MR.KANNAN', '41', 'Male', '1686182400', '1686182400', '1697155200', '0000', '0000', '142', 'Genuinity / Alcohol consumption at the time of accident', '22-23-2895487', '36', 'Individual', '1672704000', 'PA', 'Accident', '2500', '0', '0', '1697673600', 'admin', NULL, NULL, 'GICS1697178352_137', 1, '500', '', ''),
(138, '8', 'MRS.ANU LAVANYA', '41', 'Female', '1682035200', '1682208000', '1697155200', '000', '000', '143', 'Genuinity / PED / ND If any ', '4000095786', '35', 'Individual', '1577836800', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1697414400', 'admin', NULL, NULL, 'GICS1697179681_138', 1, '500', '', ''),
(139, '8', 'MR.VARADHARAJAN', '56', 'Male', '1696896000', '1697328000', '1697241600', '000', '0000', '23', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890054564', '36', 'Individual', '1667865600', 'Cashless', 'Accident', '750', '0', '0', '1697241600', 'admin', NULL, NULL, 'GICS1697285127_139', 1, '250', '', ''),
(140, '8', 'MR.SATHISH', '30', 'Male', '1691193600', '1692662400', '1697155200', '000', '7127', '141', 'Genuinity', '2883049663', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '1000', '0', '0', '1697673600', 'admin', NULL, NULL, 'GICS1697366137_140', 1, '250', '', ''),
(141, '8', 'MR.MANJEESH KUMAR', '48', 'Male', '1693785600', '1694131200', '1697500800', '0000', '00000', '144', 'Genuinity / Alcohol consumption at the time of accident', '0822561877A', '35', 'Corporate', '1672531200', 'PA', 'Accident', '2500', '0', '450', '1697587200', 'admin', NULL, NULL, 'GICS1697552492_141', 1, '500', '331701693GN00055', '1699833600'),
(142, '8', 'MRS.AMIRTHA GOWRI', '59', 'Female', '1695081600', '1695081600', '1697587200', '17758', '23006798', '94', '3rd year Policy, Check for any PED/NDC, Check for Genuinity of claim', '2876154667', '36', 'Individual', '1631664000', 'Reimbursement', 'PED', '2500', '0', '0', '1697673600', 'admin', NULL, NULL, 'GICS1697618435_142', 1, '250', '', ''),
(143, '8', 'MRS.AMUTHA', '35', 'Female', '1697587200', '1697760000', '1697587200', '0000', '0000', '145', 'Genuinity', '4000099145', '35', 'Individual', '1694649600', 'Cashless', 'Genuinity', '1200', '0', '0', '1697673600', 'admin', NULL, NULL, 'GICS1697639799_143', 1, '0', '330001990GN00213', '1698364800'),
(144, '8', 'BABY.C.S.NIVEDITHA', '3', 'Female', '1697587200', '1697760000', '1697673600', '0000', '0000', '13', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876155905', '36', 'Individual', '1681948800', 'Cashless', 'PED', '750', '0', '0', '1697673600', 'admin', NULL, NULL, 'GICS1697692513_144', 1, '250', '', ''),
(145, '8', 'MRS.BAMA VENKATARAMANAN', '53', 'Female', '1692748800', '1692921600', '1697760000', 'CI01.23.00212427', 'IP256528', '105', '4th year Policy, Check for any PED/NDC, Check for genuinity of claim', '2876154695', '36', 'Individual', '1584576000', 'Reimbursement', 'PED', '2500', '0', '0', '1697932800', 'admin', NULL, NULL, 'GICS1697780485_145', 1, '250', '', ''),
(146, '8', 'MR.KARTHIKEYAN', '37', 'Male', '1690416000', '1690502400', '1697673600', '0000', '0000', '130', 'Genuinity / Alcohol consumption at the time of accident / Suicidal if any / Financial crisis', '2839005801', '36', 'Corporate', '1672531200', 'PA', 'Accident', '2500', '0', '0', '1698192000', 'admin', NULL, NULL, 'GICS1697784185_146', 1, '500', '', ''),
(147, '8', 'MR.VARATHARAJAN', '53', 'Male', '1691884800', '1692057600', '1697673600', '0000', '0000', '146', 'Genuinity / Alcohol consumption at the time of accident', '2884006991', '36', 'Individual', '1647043200', 'PA', 'Accident', '2500', '0', '0', '1698278400', 'admin', NULL, NULL, 'GICS1697784411_147', 1, '500', '', ''),
(148, '8', 'MR.MEGANATHAN', '54', 'Male', '1694822400', '1694822400', '1697673600', '000', '0000', '147', 'Genuinity / Alcohol consumption at the time of accident', '0822591459', '35', 'Individual', '1669766400', 'PA', 'Accident', '4500', '0', '450', '1698192000', 'admin', NULL, NULL, 'GICS1697784751_148', 1, '500', '', ''),
(149, '8', 'MRS.BHAGAVATHI', '58', 'Female', '1697328000', '1697760000', '1697760000', '2311919', '2310165', '148', 'Genuinity', '4000098243', '35', 'Individual', '1653523200', 'Cashless', 'Genuinity', '1200', '0', '0', '1697846400', 'admin', NULL, NULL, 'GICS1697796548_149', 1, '0', '330601956GN00117', '1698883200'),
(150, '8', 'MR.ANBUKUMAR', '50', 'Male', '1697587200', '1698364800', '1697846400', '0000', '0000', '109', 'PED / ND of present ailment', '4000100303', '35', 'Individual', '1609459200', 'Cashless', 'PED', '1200', '0', '0', '1697932800', 'admin', NULL, NULL, 'GICS1697909839_150', 1, '0', '', ''),
(151, '8', 'MRS.VIMALA', '42', 'Female', '1697673600', '1697932800', '1697846400', '0000', '00000', '140', 'Genuinity / PED / ND if any', '2890055068', '36', 'Individual', '1688688000', 'Cashless', 'Genuinity', '750', '0', '0', '1697932800', 'admin', NULL, NULL, 'GICS1697910747_151', 1, '250', '', ''),
(152, '8', 'MR.JEGADEESBABU', '45', 'Male', '1645660800', '1646265600', '1697760000', '0000', '0000', '149', 'Genuinity / Alcohol consumption at the time of accident / Suicidal if any / Financial crisis', '0822286816', '35', 'Individual', '1620864000', 'PA', 'Accident', '2000', '0', '500', '1698624000', 'admin', NULL, NULL, 'GICS1697986462_152', 1, '500', '', ''),
(153, '8', 'MR.CHANDRASEKAR', '23', 'Male', '1693958400', '1694390400', '1698019200', 'CE669', '54448', '110', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876155948', '36', 'Individual', '1688169600', 'Reimbursement', 'Accident', '2500', '0', '0', '1698105600', 'admin', NULL, NULL, 'GICS1698049628_153', 1, '250', '', ''),
(154, '8', 'MR.SENGKATHIR', '26', 'Male', '1677888000', '1678665600', '1697846400', 'GHSC00078131', 'IP/5194', '150', 'Genuinity', '0822602043', '35', 'Individual', '1663286400', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1699056000', 'admin', NULL, NULL, 'GICS1698210623_154', 1, '500', '', ''),
(155, '8', 'MR.NAVEENKUMAR', '19', 'Male', '1691798400', '1693526400', '1698105600', '0000', '0000', '130', 'Genuinity / Alcohol consumption at the time of accident', '2839005806', '36', 'Corporate', '1685404800', 'PA', 'Accident', '2500', '0', '0', '1698537600', 'admin', NULL, NULL, 'GICS1698211528_155', 1, '500', '', ''),
(156, '8', 'MR.SIVAGANESH', '44', 'Male', '1685577600', '1685577600', '1698105600', '0000', '0000', '130', 'Genuinity / Alcohol consumption at the time of accident', '2884006994', '36', 'Corporate', '1664496000', 'PA', 'Accident', '2500', '0', '0', '1698278400', 'admin', NULL, NULL, 'GICS1698211710_156', 1, '500', '', ''),
(157, '8', 'MRS.SUNDARAKALA', '52', 'Female', '1698451200', '1699315200', '1698192000', '2210/436', '0000', '100', 'policy since 22/11/2022, kindly verify duration of OA, Ankylosing spondylitis', '4000101285', '35', 'Individual', '1669075200', 'Cashless', 'PED', '1200', '0', '0', '1698278400', 'admin', NULL, NULL, 'GICS1698248056_157', 1, '0', '331101175GN00292', '1699315200'),
(158, '8', 'MR.PALANISAMY', '62', 'Male', '1687996800', '1688169600', '1698278400', 'KSH-35716', '601', '151', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876155304', '36', 'Individual', '1679875200', 'Reimbursement', 'PED', '2500', '0', '0', '1698537600', 'admin', NULL, NULL, 'GICS1698323445_158', 1, '250', '', ''),
(159, '8', 'MR.SUBBIAH', '40', 'Male', '1692057600', '1692057600', '1698278400', '0000', '0000', '152', 'Genuinity / Alcohol consumption at the time of accident', '2884007025 / 2884007026', '36', 'Individual', '1672531200', 'PA', 'Accident', '2500', '0', '500', '1698883200', 'admin', NULL, NULL, 'GICS1698325209_159', 1, '500', '', ''),
(160, '8', 'MR.HARIHARASUDHAN', '28', 'Male', '1698192000', '1698364800', '1698364800', '1962934', 'H30769', '23', 'Genuinity / PED / ND If any', '4000101719', '35', 'Individual', '1683158400', 'Cashless', 'PED', '1200', '0', '0', '1698364800', 'admin', NULL, NULL, 'GICS1698427868_160', 1, '0', '', ''),
(161, '8', 'MRS.MUTHULAKSHMI', '58', 'Female', '1698364800', '1698624000', '1698364800', '0000', '0000', '153', 'Genuinity / PED / ND of DM', '4000101939', '35', 'Individual', '1679011200', 'Cashless', 'PED', '1200', '0', '0', '1698451200', 'admin', NULL, NULL, 'GICS1698429326_161', 1, '0', '330800185GN00092', '1699056000'),
(162, '8', 'MR.KUMARESAN', '52', 'Male', '1698192000', '1698537600', '1698364800', '1969327', 'H30747', '23', '4th year Policy, Check for any PED/NDC, Check for genuinity of claim.', '2892003466', '36', 'Individual', '1593216000', 'Cashless', 'PED', '750', '0', '0', '1698451200', 'admin', NULL, NULL, 'GICS1698430352_162', 1, '250', '', ''),
(163, '8', 'MISS.VINYALAKSHMI', '5', 'Female', '1695945600', '1696118400', '1698364800', 'AHA1.0000281980', 'AYNIP95921', '79', '4th year Policy, Check for any PED/NDC, Check for genuinity of claim', '2890055461', '36', 'Individual', '1572739200', 'Reimbursement', 'Genuinity', '2500', '310', '0', '1698796800', 'admin', NULL, NULL, 'GICS1698468772_163', 1, '250', '', ''),
(164, '8', 'MR.MURALIKRISHNAN', '38', 'Male', '1698364800', '1698537600', '1698451200', '365970', '23/3101', '154', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890055685', '36', 'Individual', '1673395200', 'Cashless', 'Genuinity', '750', '0', '0', '1698537600', 'admin', NULL, NULL, 'GICS1698505999_164', 1, '250', '', ''),
(165, '8', 'MR.NAVANEETHAKRISHNAN', '21', 'Male', '1690934400', '1690934400', '1698624000', '0000', '000', '130', 'Genuinity / Alcohol consumption at the time of accident', '4210001417', '35', 'Corporate', '1672531200', 'PA', 'Accident', '2500', '0', '300', '1698710400', 'admin', NULL, NULL, 'GICS1698651539_165', 1, '500', '', ''),
(166, '8', 'BABY.RITHISH ABHINAV', '3', 'Male', '1695513600', '1695686400', '1698710400', '95280', 'IP23002005', '155', '3rd year Policy, Check for any other PED/NDC, Check for any congenital ailments', '2890055628', '36', 'Individual', '1604620800', 'Reimbursement', 'PED', '2500', '0', '0', '1698883200', 'admin', NULL, NULL, 'GICS1698741959_166', 1, '250', '', ''),
(167, '8', 'MRS.KALA ROY', '48', 'Female', '1698710400', '1698883200', '1698883200', 'GC0510639', 'IPGC052324-1135', '156', 'Genuinity / PED/ND of DM ', '4000103969', '35', 'Individual', '1679961600', 'Cashless', 'PED', '1200', '0', '0', '1698883200', 'admin', NULL, NULL, 'GICS1698924117_167', 1, '0', '331402883GN00360', '1699574400'),
(168, '8', 'MRS.ANNAKILI', '47', 'Female', '1698796800', '1699056000', '1698969600', '300578', 'IP23/0003198', '154', '2nd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2864029847', '36', 'Individual', '1645142400', 'Cashless', 'PED', '750', '0', '0', '1698969600', 'admin', NULL, NULL, 'GICS1698999112_168', 1, '250', '', ''),
(169, '8', 'MR.RAJA PAULRAJ', '37', 'Male', '1695427200', '1695427200', '1698710400', 'OP175928', '000', '2', 'Genuinity / Alcohol consumption at the time of accident', '4210003505', '35', 'Individual', '1568592000', 'Reimbursement', 'Accident', '2500', '0', '0', '1699920000', 'admin', NULL, NULL, 'GICS1699084664_169', 1, '0', '', ''),
(170, '8', 'MRS.MADHURA', '20', 'Female', '1698969600', '1699142400', '1699056000', '0000', '0000', '157', 'Genuinity / PED/ND if any', '4000104681', '35', 'Individual', '1672531200', 'Cashless', 'Genuinity', '1200', '0', '0', '1699056000', 'admin', NULL, NULL, 'GICS1699090983_170', 1, '0', '331701808GN00444', '1699833600'),
(171, '8', 'MR.MAHADEVAN', '60', 'Male', '1699142400', '1699315200', '1699056000', '0000', '0000', '158', 'Genuinity / PED and ND of carcinoima rectum and ND if any', '4000104853', '35', 'Individual', '1659225600', 'Cashless', 'PED', '1200', '0', '0', '1699142400', 'admin', NULL, NULL, 'GICS1699113152_171', 1, '0', '331402532GN00219', '1699574400'),
(172, '8', 'MR.VIGNESH KARTHICK', '37', 'Male', '1698883200', '1699228800', '1699056000', '1972045', 'IPH32219', '23', 'Genuinity / PED of rpesent ailment', '4000104855', '35', 'Individual', '1696032000', 'Cashless', 'PED', '1200', '0', '0', '1699142400', 'admin', NULL, NULL, 'GICS1699113660_172', 1, '0', '331701685GN00769', '1699833600'),
(173, '8', 'MR.PRABHU SUNDAR', '38', 'Male', '1698883200', '1699315200', '1699142400', '0000', '0000', '66', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876158149', '36', 'Individual', '1672272000', 'Cashless', 'Accident', '750', '0', '0', '1699142400', 'admin', NULL, NULL, 'GICS1699169154_173', 1, '250', '', ''),
(174, '8', 'MR.GANESHKUMAR', '35', 'Male', '1688515200', '1688515200', '1698969600', '0000', '0000', '159', 'Genuinity / Alcohol consumption at the time of accident', '2884007056', '36', 'Individual', '1672531200', 'PA', 'Accident', '2500', '0', '0', '1699574400', 'admin', NULL, NULL, 'GICS1699171860_174', 1, '500', '', ''),
(175, '8', 'MR.AZHAGURAJ', '42', 'Male', '1694217600', '1694217600', '1698969600', '0000', '000', '160', 'Genuinity / Alcohol consumption at the time of accident', '2884007076', '36', 'Individual', '1672531200', 'PA', 'Accident', '2500', '0', '0', '1699401600', 'admin', NULL, NULL, 'GICS1699172067_175', 1, '500', '', ''),
(176, '8', 'MR.RUTHRAMURTHY', '50', 'Male', '1699228800', '1699488000', '1699228800', '00000', 'I23057528', '40', '4th year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876158317', '36', 'Individual', '1581465600', 'Cashless', 'PED', '750', '0', '0', '1699228800', 'admin', NULL, NULL, 'GICS1699265941_176', 1, '250', '', ''),
(177, '8', 'MAST.AADHAV', '3', 'Male', '1699142400', '1699401600', '1699228800', '0303598', '000', '61', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890056444', '36', 'Individual', '1615852800', 'Cashless', 'Genuinity', '750', '0', '0', '1699228800', 'admin', NULL, NULL, 'GICS1699266872_177', 1, '250', '', ''),
(178, '8', 'MR.VISHNU', '30', 'Male', '1688169600', '1688169600', '1699228800', '000', '000', '161', 'Genuinity / Alcohol consumption at the time of accident', '4210001222', '35', 'Corporate', '1672531200', 'PA', 'Accident', '4500', '0', '400', '1699833600', 'admin', NULL, NULL, 'GICS1699288374_178', 1, '500', '', ''),
(179, '8', 'MR.VIJAYAPRAKASH', '39', 'Male', '1694649600', '1696896000', '1699228800', 'A826542', '202325679', '53', 'Genuinity / PED / NDs if any', '4000104919', '35', 'Individual', '1597276800', 'Reimbursement', 'PED', '2500', '0', '0', '1699833600', 'admin', NULL, NULL, 'GICS1699288645_179', 1, '500', '', ''),
(180, '8', 'MR.GOVINDARAJ', '43', 'Male', '1694563200', '1695600000', '1699228800', '49371', '23001857', '162', 'Genuinity', '2883051995', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '1000', '0', '0', '1699315200', 'admin', NULL, NULL, 'GICS1699289563_180', 1, '250', '', ''),
(181, '8', 'MR.GOVINDARAJ', '43', 'Male', '1694217600', '1694563200', '1699228800', '49371', '23001857', '162', 'Genuinity', '2883052005', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '1000', '0', '0', '1699315200', 'admin', NULL, NULL, 'GICS1699289694_181', 1, '250', '', ''),
(182, '8', 'MR.PRABHUKUMAR', '60', 'Male', '1699228800', '1699488000', '1699315200', '27345', '311004-78', '163', 'Check ped,non disclosure ,genuinity,past  docs', '1212385140390', '2', 'Individual', '1659830400', 'Cashless', 'Accident', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1699337010_182', 0, '0', '', ''),
(183, '8', 'MRS.MALARVIZHI', '57', 'Female', '1694217600', '1695168000', '1699228800', '000', '000', '164', 'Check for ped,nd,past records,verify all aspects', '1222385138170', '2', 'Individual', '1686873600', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1699339294_183', 0, '800', '', ''),
(184, '8', 'MR.SUDHAGER', '64', 'Male', '1699401600', '1699747200', '1699315200', '00000', '00000', '165', '3rd year Policy, Check for any PED/NDC, Check for genuinity of claim', '2876158575', '36', 'Individual', '1617753600', 'Cashless', 'PED', '750', '0', '0', '1699401600', 'admin', NULL, NULL, 'GICS1699369368_184', 1, '250', '', ''),
(185, '8', 'MRS.PUSHPAVENI', '66', 'Female', '1694908800', '1695427200', '1699315200', 'A825847', '202325912', '53', 'Genuinity / PED / Non disclosures if any', '4000102012', '35', 'Individual', '1672963200', 'Reimbursement', 'PED', '2500', '0', '0', '1699833600', 'admin', NULL, NULL, 'GICS1699370929_185', 1, '500', '', ''),
(186, '8', 'MRS.CHANDRA', '75', 'Female', '1699315200', '1700352000', '1699488000', '00000', '0000', '65', 'Genuinity / PED / ND if any', '4000105600', '35', 'Individual', '1609459200', 'Cashless', 'PED', '1200', '0', '0', '1699574400', 'admin', NULL, NULL, 'GICS1699502324_186', 1, '0', '', ''),
(187, '8', 'MR.GOWTHAM', '21', 'Male', '1699401600', '1699833600', '1699574400', '0000', '0000', '163', '3rd year Policy, Check for any PED/NDC, Check for genuinity of claim', '2890056719', '36', 'Individual', '1614902400', 'Cashless', 'Genuinity', '750', '0', '0', '1699574400', 'admin', NULL, NULL, 'GICS1699602131_187', 1, '250', '', ''),
(188, '8', 'MR.PRAWIN', '21', 'Male', '1699401600', '1699660800', '1699574400', '0000', '0000', '166', 'Genuinity / PED / ND if any', '1112385142097', '2', 'Individual', '1689120000', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1699605355_188', 0, '0', '', ''),
(189, '8', 'MISS.ROYCE ROY CHETTAKAD', '16', 'Female', '1699315200', '1699747200', '1699574400', '0', '0', '15', '9th year policy, Check for any congenital ailment related to Scoliosis,', '2892003542', '36', 'Individual', '1416614400', 'Cashless', 'PED', '750', '0', '0', '1699574400', 'admin', NULL, NULL, 'GICS1699611374_189', 1, '250', '', ''),
(190, '8', 'MR.SATHEESH KUMAR', '47', 'Male', '1699401600', '1699747200', '1699574400', '000', '0000', '167', '1st year policy withus admitted for management of age- patient is a k/c/o hypertension and diabetes- kindly ruleout ped/nd.', '4000106552', '35', 'Individual', '1693958400', 'Cashless', 'PED', '1200', '0', '0', '1699574400', 'admin', NULL, NULL, 'GICS1699621004_190', 1, '0', '334102451GN00123', '1701907200'),
(191, '8', 'MAST.ASHWANTH', '8', 'Male', '1698624000', '1698710400', '1699574400', 'A834577', '202330555', '53', 'Corporate policy, check for employee-employer relationship, Check for genuinity of claim', '2825191512', '36', 'Corporate', '1686873600', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1699660800', 'admin', NULL, NULL, 'GICS1699626463_191', 1, '500', '', ''),
(192, '8', 'MAST.YUKESH', '16', 'Male', '1699488000', '1699833600', '1699660800', '0000', '23390/23', '168', 'Genuinity / PED / ND if any', '1112385142757', '2', 'Individual', '1677888000', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1699689693_192', 0, '0', '', ''),
(193, '8', 'MRS.CHITRA', '43', 'Female', '1697414400', '1697587200', '1699401600', '10129559', 'I202307210', '17', 'Genuinity / PED / ND if any', '1122385139973', '2', 'Individual', '1625184000', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1699707845_193', 0, '1000', '', ''),
(194, '8', 'MR.SURESHKUMAR', '41', 'Male', '1699574400', '1699920000', '1699660800', '0000', '0000', '169', 'Genuinity / PED / ND if any', '4000106662', '35', 'Individual', '1674000000', 'Cashless', 'PED', '1200', '0', '0', '1699833600', 'admin', NULL, NULL, 'GICS1699710035_194', 1, '0', '', ''),
(195, '8', 'MR.NITHEESH', '26', 'Male', '1696896000', '1697414400', '1699488000', '0300286', 'IPB202314506', '61', '4th year Policy, Check for any PED/NDC, Check for genuinity of claim', '2890056154', '36', 'Individual', '1593907200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1700006400', 'admin', NULL, NULL, 'GICS1699881185_195', 1, '250', '', ''),
(196, '8', 'MR.BOOPATHI', '35', 'Male', '1567987200', '1694908800', '1699833600', '000', '000', '170', 'Genuinity / Alcohol consumption at the time of accident', '0821743765', '35', 'Individual', '1553126400', 'PA', 'Accident', '2000', '0', '600', '1700092800', 'admin', NULL, NULL, 'GICS1699882323_196', 1, '500', '', ''),
(197, '8', 'MRS.SARANYA', '29', 'Female', '1696550400', '1696723200', '1699488000', '000', 'IP8750', '171', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2846003099', '36', 'Individual', '1680739200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1700006400', 'admin', NULL, NULL, 'GICS1699888690_197', 1, '250', '', ''),
(198, '8', 'MR.BALASUBRAMANIAM', '59', 'Male', '1699833600', '1700265600', '1699920000', '0000', '0000', '132', 'Genuinity / PED / NDs if any', '4000107315', '35', 'Individual', '1690588800', 'Cashless', 'PED', '1200', '0', '0', '1699920000', 'admin', NULL, NULL, 'GICS1699955459_198', 1, '0', '334102451GN00124', '1701907200'),
(199, '8', 'MRS.SUDHA', '47', 'Female', '1699660800', '1700006400', '1699920000', '000', '000', '172', '1st year Policy, Check for any PED/NDC, Check for Genuinity of claim.', '2846003204', '36', 'Individual', '1669766400', 'Cashless', 'Accident', '750', '0', '0', '1699920000', 'admin', NULL, NULL, 'GICS1699956345_199', 1, '250', '', ''),
(200, '8', 'MRS.CHITRA', '38', 'Female', '1696464000', '1696896000', '1699920000', '0000', '25389', '34', 'Kindly investigate to rule out ped / nd of double depression with somatic symptoms with DM', '4000106930', '35', 'Individual', '1673308800', 'Reimbursement', 'PED', '2500', '0', '0', '1700265600', 'admin', NULL, NULL, 'GICS1699970834_200', 1, '500', '', ''),
(201, '8', 'MR.MAHESHKUMAR', '41', 'Male', '1695254400', '1695254400', '1699920000', '0000', '0000', '130', 'Genuinity / Alcohol consumption at the time of accident', '2884007135', '36', 'Individual', '1660780800', 'PA', 'Accident', '2500', '0', '0', '1700524800', 'admin', NULL, NULL, 'GICS1700028423_201', 1, '500', '', ''),
(202, '8', 'MR.NARASIMHAN', '53', 'Male', '1686787200', '1687564800', '1699574400', '1123941', '817238', '65', 'Genuinity / Alcohol consumption at the time of accident / Nature of death', '4210002850', '35', 'Individual', '1648771200', 'PA', 'Accident', '2000', '750', '0', '1700784000', 'admin', NULL, NULL, 'GICS1700028988_202', 1, '500', '', ''),
(203, '8', 'MR.AYYANAR', '49', 'Male', '1695254400', '1695600000', '1699574400', '0000', '0000', '173', 'Genuinity / Alcohol consumption at the time of accident', '0822607366', '35', 'Individual', '1669075200', 'PA', 'Accident', '2000', '0', '500', '1700092800', 'admin', NULL, NULL, 'GICS1700029840_203', 1, '500', '', ''),
(204, '8', 'MRS.USHAKUMARI', '52', 'Female', '1696636800', '1696809600', '1699660800', '2324/008089', '2324/002472', '134', 'Genuinity / PED / ND if any', '4000106754', '35', 'Individual', '1693699200', 'Reimbursement', 'PED', '2500', '0', '0', '1700265600', 'admin', NULL, NULL, 'GICS1700030013_204', 1, '500', '', ''),
(205, '8', 'MR.RAVI', '53', 'Male', '1697673600', '1697760000', '1699401600', '259291', 'IP2308183', '94', 'Genuinity / PED / ND if any', '4000104269', '35', 'Individual', '1642896000', 'Reimbursement', 'PED', '2500', '0', '0', '1700092800', 'admin', NULL, NULL, 'GICS1700030268_205', 1, '500', '', ''),
(206, '8', 'MRS.AMRITA SHARMA DAS', '33', 'Female', '1699920000', '1700179200', '1700006400', '0000', '00000', '79', 'Genuinity / PED / ND if any', '1112385143372', '2', 'Individual', '1645488000', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700041271_206', 0, '0', '', ''),
(207, '8', 'MR.AJITH PRASAD SAHU', '40', 'Male', '1699660800', '1700265600', '1700006400', '654219P', '654219P', '77', 'Genuinity / Etiologiy of present ailment of pancreatitis', '1212385143546', '2', 'Individual', '1652140800', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700045957_207', 0, '0', '', ''),
(208, '8', 'MRS.JANSI RANI', '38', 'Female', '1696723200', '1697155200', '1700006400', '4085', '2409', '109', 'Check ped,nd, case of fibroid uterus,3 year policy ,please check past medical records', '1122385141475', '2', 'Individual', '1620864000', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700047451_208', 0, '800', '', ''),
(209, '8', 'MR.BALAN', '36', 'Male', '1696377600', '1696550400', '1700092800', '00', '000', '174', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890056793', '36', 'Individual', '1635465600', 'Reimbursement', 'Accident', '2500', '0', '0', '1700611200', 'admin', NULL, NULL, 'GICS1700116194_209', 1, '250', '', ''),
(210, '8', 'MRS.PRIYADHARSHINI', '38', 'Female', '1699833600', '1700179200', '1700092800', '0000', '0000', '175', 'GenuCorporate policy, Checkfor employee- employer relationship, collect employee id card and payslip and check for genuinity of claim', '2825191913', '36', 'Corporate', '1680134400', 'Cashless', 'Genuinity', '750', '0', '0', '1700179200', 'admin', NULL, NULL, 'GICS1700145575_210', 1, '250', '', ''),
(211, '8', 'MR.DHARANISH', '27', 'Male', '1699920000', '1700265600', '1700092800', '0000', '00000', '23', 'Fresh policy, case of traumatic chest injury, rule out injury details, rule out any substance intake at the time of injury or PED', '4000108380', '35', 'Individual', '1696809600', 'Cashless', 'Accident', '1200', '0', '0', '1700179200', 'admin', NULL, NULL, 'GICS1700189196_211', 1, '0', '334802017GN00823', '1702512000'),
(212, '8', 'MRS.SARADHA', '61', 'Female', '1698624000', '1699142400', '1700179200', '68144', '23000748', '61', 'Check ped,nd,past treatment records', '1222385143996', '2', 'Individual', '1662336000', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700211228_212', 0, '1000', '', ''),
(213, '8', 'MRS.BHUVANESHWARI', '60', 'Female', '1697500800', '1697673600', '1700092800', '000', '1005', '176', 'Check ped,nd,bills,mode of payment proof, googletimeline, past treatment records', '1222385142644', '2', 'Individual', '1658188800', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700212435_213', 0, '0', '', ''),
(214, '8', 'MRS.VASUKI', '53', 'Female', '1691798400', '1692057600', '1700179200', '123471', '462', '177', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876158119', '36', 'Individual', '1677110400', 'Reimbursement', 'PED', '2500', '0', '0', '1700265600', 'admin', NULL, NULL, 'GICS1700216166_214', 1, '250', '', '');
INSERT INTO `intimations` (`id`, `vendor`, `pname`, `age`, `sex`, `doa`, `dod`, `doi`, `opno`, `ipno`, `hosp_details`, `triggers`, `claimno`, `insurance_tpa`, `policy_type`, `doj`, `claim_type`, `case_type`, `fees`, `mrd`, `transportation`, `created`, `created_by`, `updated`, `updated_by`, `gicsid`, `invoice`, `incentive`, `payment`, `paid_date`) VALUES
(215, '8', 'MR.PRAJIT', '18', 'Male', '1693785600', '1693958400', '1700179200', '10103207', 'IP202306038', '17', 'Renal calculi claim, check for ped ,nd', '1122385141697', '2', 'Individual', '1584662400', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700217570_215', 0, '0', '', ''),
(216, '8', 'MRS.ARCHANA', '22', 'Female', '1697760000', '1698364800', '1700179200', '000', '729', '178', 'Genuinity / Suicidal if any / PED / NDs', '1122385141973', '2', 'Individual', '1684195200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700218747_216', 0, '0', '', ''),
(217, '8', 'MR.PUGALENTHI', '24', 'Male', '1692748800', '1694131200', '1700179200', '0000', '000', '15', 'Genuinity / Alcohol consumption at the time of accident / Nature of disability', '4210005464', '35', 'Individual', '1672617600', 'PA', 'Accident', '2500', '1000', '500', '1700956800', 'admin', NULL, NULL, 'GICS1700219035_217', 1, '500', '', ''),
(218, '8', 'MR.MAYILVAGANAM', '54', 'Male', '1692403200', '1693785600', '1700092800', '2073721', '6464/2023', '179', 'Genuinity / PED / NDs', '1122385139719', '2', 'Individual', '1550880000', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700236281_218', 0, '0', '', ''),
(219, '8', 'MR.BOOPATHI RAJA', '25', 'Male', '1700179200', '1700438400', '1700265600', 'B02280', '00000', '180', '2nd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890057344', '36', 'Individual', '1649203200', 'Cashless', 'Genuinity', '750', '0', '0', '1700265600', 'admin', NULL, NULL, 'GICS1700290372_219', 1, '250', '', ''),
(220, '8', 'MR.GOPAL', '37', 'Male', '1700092800', '1700438400', '1700438400', '1070958', '000', '13', 'Pt kco gerd, check ped,nd,past treatment records,hospital not providing docs', '1112385145721', '2', 'Individual', '1620864000', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700459713_220', 0, '0', '', ''),
(221, '8', 'MISS.SOWMIYA', '20', 'Female', '1697414400', '1697673600', '1700265600', '0020899648', '00', '181', '2nd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876158475', '36', 'Individual', '1665878400', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1700611200', 'admin', NULL, NULL, 'GICS1700461449_221', 1, '250', '', ''),
(222, '8', 'MRS.SRIVARSHINI', '50', 'Female', '1696550400', '1698019200', '1700352000', '2023100608594', '1P206102023', '93', 'Check ped,nd / Op to ip conversion,bills,mode of payment, x-rays and supporting docs', '1122385143863 ', '2', 'Individual', '1629849600', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700462795_222', 0, '0', '', ''),
(223, '8', 'MR.NATARAJ', '51', 'Male', '1698192000', '1698451200', '1700352000', '716540', '744009', '13', 'Cardiac ailment Pt has done tmt before policy inception and pt kco htn befor  policy inception.get strong evidence of ped,nd', '1122385143148', '2', 'Individual', '1579737600', 'Reimbursement', 'PED', '2500', '130', '0', '', 'admin', NULL, NULL, 'GICS1700463500_223', 0, '0', '', ''),
(224, '8', 'MR.RAMACHANDRAN', '71', 'Male', '1690243200', '1691366400', '1700352000', 'HV-2307-MDU-387', 'HV-2307-MDU-IP-108', '100', 'Genuinity / PED / NDs if any', '1122385127810', '2', 'Individual', '1582070400', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700470491_224', 0, '0', '', ''),
(225, '8', 'MR.MATHEW', '59', 'Male', '1698710400', '1698969600', '1700352000', '20161118439G', '202310310028', '185', 'Verify all aspects and get strong evidence of ped,nd', '1222385143565', '2', 'Individual', '1563926400', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700471073_225', 0, '0', '', ''),
(226, '8', 'MR.CHELLAPANDI', '39', 'Male', '1697760000', '1698192000', '1700352000', '0000', '12035', '186', 'Check ped,nd,past medical records', '1222385142193', '2', 'Individual', '1675036800', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700472377_226', 0, '0', '', ''),
(227, '8', 'MRS.SASIKALA', '50', 'Female', '1694390400', '1694563200', '1700352000', '29/3953', '64217', '187', 'Investigate for genuinity,ped related to htn.', '1222310122227', '2', 'Individual', '1610928000', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700473046_227', 0, '0', '', ''),
(228, '8', 'MR.SOMASUNDARAM', '49', 'Male', '1695427200', '1695600000', '1700352000', '0000', '2309002', '188', 'Kindly investigate in depth for PED, MRI s/o ? carcinoma', '1122385125687', '2', 'Individual', '1595030400', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700473503_228', 0, '0', '', ''),
(229, '8', 'MR.SUDHARSHAN SINGH BANSAL', '40', 'Male', '1700179200', '1700697600', '1700265600', '0000', '00000', '77', 'Ped of dm alone disclosed,8lak claim, check for any non diaclosure ,cva claim', '1112385145229', '2', 'Individual', '1658966400', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700474071_229', 0, '1200', '', ''),
(230, '8', 'MR.MOORTHY', '65', 'Male', '1698019200', '1698537600', '1700438400', '349848', 'IP/23008421', '94', 'Corporate policy, Checkfor employee- employer relationship, collect employee id card and payslip and check for genuinity of claim', '2825191750', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1700611200', 'admin', NULL, NULL, 'GICS1700475627_230', 1, '250', '', ''),
(231, '8', 'MR.VARADHARAJAN', '53', 'Male', '1691884800', '1692057600', '1700265600', '0000', '000', '146', 'Genuinity / Alcohol consumption at the time of accident', '2884007183', '36', 'Individual', '1656028800', 'PA', 'Accident', '2500', '0', '0', '1700697600', 'admin', NULL, NULL, 'GICS1700476041_231', 1, '500', '', ''),
(232, '8', 'MR.SARAVANAN', '45', 'Male', '1697155200', '1697155200', '1700438400', '0000', '0000', '142', 'Genuinity / Alcohol consumption at the time of accident', '2884007200', '36', 'Individual', '1689984000', 'PA', 'Accident', '2500', '0', '0', '1700956800', 'admin', NULL, NULL, 'GICS1700494029_232', 1, '500', '', ''),
(233, '8', 'MR.PARTHASARATHY', '68', 'Male', '1700438400', '1700697600', '1700438400', '0000', '0000', '189', '6th year Policy, Check for genuinity of claim, Check for any bill inflation', '2876159954', '36', 'Individual', '1540857600', 'Cashless', 'PED', '750', '0', '0', '1700524800', 'admin', NULL, NULL, 'GICS1700495650_233', 1, '250', '', ''),
(234, '8', 'MRS.SHALINI SINHA', '24', 'Female', '1700438400', '1700784000', '1700438400', '0000', '0000', '77', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2892003596', '36', 'Individual', '1631145600', 'Cashless', 'PED', '750', '0', '0', '1700524800', 'admin', NULL, NULL, 'GICS1700496492_234', 1, '250', '', ''),
(235, '8', 'MR.THIRUMOORTHY', '55', 'Male', '1700352000', '1700611200', '1700524800', 'ASKH/23/215788', '73843', '190', 'Genuinity / PED / ND if any', '2846003308', '36', 'Individual', '1672185600', 'Cashless', 'PED', '750', '0', '0', '1700524800', 'admin', NULL, NULL, 'GICS1700559226_235', 1, '250', '', ''),
(236, '8', 'MR.RAMESH', '42', 'Male', '1700438400', '1700784000', '1700524800', '20220711103', '0000', '185', 'Policy copy attached,cardiac ailment, check ped,nd', '1212385146172', '2', 'Individual', '1665360000', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700563217_236', 0, '0', '', ''),
(237, '8', 'MR.RAMACHANDIRAN', '63', 'Male', '1700611200', '1700956800', '1700524800', '122676', '00000', '192', 'Check ped,nd, varicose vein claim', '1212385146215', '2', 'Individual', '1605052800', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700577952_237', 0, '0', '', ''),
(238, '8', 'MR.DHANAPAL', '39', 'Male', '1700697600', '1700956800', '1700524800', '1123090794', '0000', '15', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876160057', '36', 'Individual', '1677628800', 'Cashless', 'Accident', '750', '0', '0', '1700611200', 'admin', NULL, NULL, 'GICS1700628154_238', 1, '250', '', ''),
(239, '8', 'MRS.LAVANYA', '37', 'Female', '1700438400', '1700697600', '1700524800', '14262', '5003', '191', 'Corporate policy check for Genuinity of claim', '2825192399', '36', 'Corporate', '1672531200', 'Cashless', 'Genuinity', '750', '0', '0', '1700611200', 'admin', NULL, NULL, 'GICS1700628647_239', 1, '250', '', ''),
(240, '8', 'BABY OF PRIYANKA', '0', 'Male', '1696896000', '1697068800', '1700524800', 'A826104', '202328530', '53', '2nd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890057157', '36', 'Individual', '1646352000', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1700784000', 'admin', NULL, NULL, 'GICS1700628845_240', 1, '250', '', ''),
(241, '8', 'BABY.ADHITYA', '2', 'Male', '1700438400', '1700870400', '1700611200', '486327', '000', '193', 'Child.febrile seizure claim, check ped,nd', '1112385146876', '2', 'Individual', '1650412800', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700638992_241', 0, '0', '', ''),
(242, '8', 'MR.SUVABRATA MUKHERJEE', '38', 'Male', '1700524800', '1700784000', '1700611200', '200722', '000', '140', 'Genuinity / PED / ND if any', '1112385146868', '2', 'Individual', '1677715200', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700639512_242', 0, '0', '', ''),
(243, '8', 'MR.VIJAY ANAND', '33', 'Male', '1700524800', '1700870400', '1700611200', '70180738', '20231121008', '194', 'Admission for dehydration,pt cholesterol level increased,  check ped,nd,op to ip conversion, check electrolyte level,sodium level , please verify admission justified or not', '1112385146948', '2', 'Individual', '1687305600', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700644590_243', 0, '0', '', ''),
(244, '8', 'MR.MOORTHY', '57', 'Male', '1700611200', '1700956800', '1700611200', '0000', '000', '195', 'Genuinity / PED / ND if any', '2890057649', '36', 'Individual', '1549065600', 'Cashless', 'PED', '750', '0', '0', '1700611200', 'admin', NULL, NULL, 'GICS1700652451_244', 1, '250', '', ''),
(245, '8', 'MR.SUDHAGAR', '42', 'Male', '1694044800', '1694044800', '1700611200', '000', '000', '196', 'Genuinity / Alcohol consumption at the time of accident', '2839005869', '36', 'Corporate', '1672531200', 'PA', 'Accident', '2500', '0', '0', '1701302400', 'admin', NULL, NULL, 'GICS1700669820_245', 1, '500', '', ''),
(246, '8', 'BABY.MAHISH', '3', 'Male', '1699228800', '1699833600', '1700611200', '756418', '231108605', '197', 'Genuinity / PED / Congenital ', '1222385146309', '2', 'Individual', '1692316800', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700670111_246', 0, '0', '', ''),
(247, '8', 'MR.PRABAKARAN ', '33', 'Male', '1697414400', '1697500800', '1700611200', '27062294839', '24084', '58', 'Genuinity / Employement verification / Etiologiy of pancreatitis', '1222385140748', '2', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700670984_247', 0, '0', '', ''),
(248, '8', 'MR.SIVAKUMAR', '37', 'Male', '1696291200', '1696464000', '1700611200', '0000', '0000', '135', 'Genuinity / Alcohol consumption at the time of accident', '2884007222', '36', 'Individual', '1669334400', 'PA', 'Accident', '2500', '0', '0', '1701475200', 'admin', NULL, NULL, 'GICS1700671590_248', 1, '500', '', ''),
(249, '8', 'MRS.MEERA MUKHERJEE', '62', 'Female', '1690156800', '1691452800', '1700524800', '875314J', 'AA44423', '77', 'Genuinity / PED / ND if any', '1122385145346', '2', 'Individual', '1616976000', 'Reimbursement', 'PED', '1500', '584', '0', '', 'admin', NULL, NULL, 'GICS1700731933_249', 0, '0', '', ''),
(250, '8', 'MR.MURUGESAN', '58', 'Male', '1700352000', '1700870400', '1700697600', '1234400', '746260', '13', 'Check ped,nd', '1212385147030', '2', 'Individual', '1680566400', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700737834_250', 0, '0', '', ''),
(251, '8', 'MR.VIJAY ANAND', '33', 'Male', '1700524800', '1701129600', '1700697600', '000', '000', '194', 'Genuinity / PED / ND if any', '1112385146948-2', '2', 'Individual', '1687305600', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1700751422_251', 0, '0', '', ''),
(252, '8', 'MR.RAJ MAGIBAN', '17', 'Male', '1699228800', '1701129600', '1700697600', '23R031965', '000', '77', 'Genuinity / PED / ND if any', '1212385147302', '2', 'Individual', '1631491200', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700751573_252', 0, '0', '', ''),
(253, '8', 'MR.PARASURAMAN', '58', 'Male', '1657238400', '1659139200', '1700697600', '000', '000', '198', 'Genuinity / Alcohol consumption at the time of accident', '0822633516', '35', 'Corporate', '1672531200', 'PA', 'Accident', '4500', '0', '0', '1701648000', 'admin', NULL, NULL, 'GICS1700751784_253', 1, '500', '', ''),
(254, '8', 'BABY.AATHIKESH J NAIR', '3', 'Male', '1698019200', '1698364800', '1700524800', '231023/0050', '231023/0012', '199', '3 year old child fracture claim within 1 month, check ped,nd', '1122385144439', '2', 'Individual', '1695686400', 'Reimbursement', 'Accident', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700752379_254', 0, '0', '', ''),
(255, '8', 'MR.HARIKUMAR', '34', 'Male', '1697587200', '1698624000', '1700524800', 'KMC231000317', 'IP2300941', '22', 'Genuinity / PED / ND / Etiology of present ailment', '1122385144089', '2', 'Individual', '1674777600', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700753028_255', 0, '1000', '', ''),
(256, '8', 'MR.KAMESH', '44', 'Male', '1696636800', '1696809600', '1700524800', '000', '226', '200', 'Check genuinity,ped,nd, pt kco dm', '1122385141315', '2', 'Individual', '1558051200', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700754043_256', 0, '0', '', ''),
(257, '8', 'MR.JOHN CLARIBEL', '57', 'Female', '1690761600', '1692144000', '1700438400', '090993', '3571/23', '201', 'Please investigate the case for PED of CA', '4000106347', '35', 'Individual', '1673913600', 'Reimbursement', 'PED', '2500', '0', '0', '1701475200', 'admin', NULL, NULL, 'GICS1700754633_257', 1, '500', '', ''),
(258, '8', 'MRS.SARASWATHY', '69', 'Female', '1701129600', '1701302400', '1700784000', '202308070215', '00000', '20', 'Genuinity / PED / ND if any', '1112385147984', '2', 'Individual', '1582761600', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700808823_258', 0, '0', '', ''),
(259, '8', 'MR.SHALINJITH', '39', 'Male', '1699142400', '1699228800', '1700524800', '1123111040', '2023024466', '15', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890057337', '36', 'Individual', '1623110400', 'Reimbursement', 'Accident', '2500', '1000', '0', '1701043200', 'admin', NULL, NULL, 'GICS1700812162_259', 1, '250', '', ''),
(260, '8', 'MRS.ANUVARSHIKA', '41', 'Female', '1700524800', '1700956800', '1700784000', '0000', '0000', '202', 'check all aspects and need for ip admission', '1212385147501', '2', 'Individual', '1645056000', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1700812706_260', 0, '0', '', ''),
(261, '8', 'MR.VIJAYA BALAJI', '33', 'Male', '1700956800', '1701302400', '1700784000', '00000', '00000', '191', 'Please investgate  the case PED', '4000110794', '35', 'Individual', '1671667200', 'Cashless', 'Accident', '1200', '0', '0', '1700870400', 'admin', NULL, NULL, 'GICS1700895261_261', 1, '0', '333801972GN00534', '1701648000'),
(262, '8', 'MR.ARUMUGAM', '44', 'Male', '1701043200', '1701302400', '1700870400', '0000', '0000', '7', 'Genuinity / PED / Alcohol consumption at the time of accident', '4000111210', '35', 'Individual', '1698019200', 'Cashless', 'Accident', '1200', '0', '0', '1700956800', 'admin', NULL, NULL, 'GICS1700923418_262', 1, '0', '333902390GN00853', '1701734400'),
(263, '8', 'MAST.BHARANIKUMAR', '10', 'Male', '1690761600', '1690761600', '1700870400', '0000', '000', '203', 'Genuinity / Alcohol consumption at the time of accident', '2839005872', '36', 'Corporate', '1672531200', 'PA', 'Accident', '2500', '0', '0', '1701216000', 'admin', NULL, NULL, 'GICS1700926480_263', 1, '500', '', ''),
(264, '8', 'MR.MANIKANDAN', '40', 'Male', '1672358400', '1672358400', '1700870400', '0000', '000', '204', 'Genuinity / Alcohol consumption at the time of accident / Suicidal if any / Financial crisis', '0822389176', '35', 'Individual', '1529625600', 'PA', 'Accident', '2500', '0', '500', '1701475200', 'admin', NULL, NULL, 'GICS1700926751_264', 1, '500', '', ''),
(265, '8', 'MRS.RATHIKA', '39', 'Female', '1694217600', '1694304000', '1700784000', 'TWC0075', '000', '205', 'Check indication for procedure, diagnostic procedure ,infertility related procedure or not to be established', '1222385128014', '2', 'Corporate', '1672185600', 'Reimbursement', 'Infertility', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700927024_265', 0, '0', '', ''),
(266, '8', 'MR.RAMADOSS', '34', 'Male', '1697155200', '1697846400', '1700784000', '898532', '37637/23', '206', 'Genuinity / Alcohol consumption at the time of accident', '4000110237', '35', 'Individual', '1673481600', 'Reimbursement', 'Accident', '2500', '0', '0', '1702339200', 'admin', NULL, NULL, 'GICS1700927760_266', 1, '0', '', ''),
(267, '8', 'MR.DINESH KUMAR', '28', 'Male', '1696118400', '1696118400', '1700697600', '20233071', '000', '207', 'Check ped,nd,past medical records, case of ibd', '1122385132951', '2', 'Individual', '1614038400', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1700928058_267', 0, '0', '', ''),
(268, '8', 'MRS.AMBIKA', '39', 'Female', '1697414400', '1697760000', '1700870400', '000', '000', '41', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890057058', '36', 'Individual', '1631145600', 'Reimbursement', 'PED', '2500', '0', '0', '1701216000', 'admin', NULL, NULL, 'GICS1700928398_268', 1, '250', '', ''),
(269, '8', 'BABY.NIVEDITHA', '3', 'Female', '1697587200', '1697760000', '1700870400', '1230004', '743468', '13', '1st year Policy, Check for any PED/NDC, Check for Genuinity of claim', '2876158905', '36', 'Individual', '1681948800', 'Reimbursement', 'PED', '2500', '130', '0', '1701302400', 'admin', NULL, NULL, 'GICS1700929379_269', 1, '250', '', ''),
(270, '8', 'MR.NATARAJAN', '69', 'Male', '1698192000', '1698624000', '1700870400', '55100', 'IP/23/10/7377', '208', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876159813', '36', 'Individual', '1626480000', 'Reimbursement', 'PED', '2500', '0', '0', '1701302400', 'admin', NULL, NULL, 'GICS1700929684_270', 1, '250', '', ''),
(271, '8', 'MRS.VAISHALI', '30', 'Female', '1693008000', '1693872000', '1700870400', '11306', 'IP23000674', '209', '4th year Policy, Check for any PED/NDC, Check for genuinity of claim', '2890054158', '36', 'Individual', '1583884800', 'Reimbursement', 'PED', '2500', '0', '0', '1701388800', 'admin', NULL, NULL, 'GICS1700930571_271', 1, '250', '', ''),
(272, '8', 'MAST.HARISH', '6', 'Male', '1699401600', '1699747200', '1700870400', 'O23087326', 'I23057986', '40', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2846003302', '36', 'Individual', '1686873600', 'Reimbursement', 'Genuinity', '2500', '100', '0', '1701388800', 'admin', NULL, NULL, 'GICS1700930898_272', 1, '250', '', ''),
(273, '8', 'MR.NATARAJAN', '69', 'Male', '1698105600', '1698105600', '1700870400', '000', '231017', '210', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876159627', '36', 'Individual', '1626480000', 'Reimbursement', 'PED', '2500', '0', '0', '1701302400', 'admin', NULL, NULL, 'GICS1700931278_273', 1, '250', '', ''),
(274, '8', 'MR.SAKTHIVEL', '42', 'Male', '1695427200', '1697155200', '1700870400', '0298255', 'IPB202313619', '61', '2nd year Policy, Check for Genuinity of claim. Check for any alcoholic withdrawal claim,  Check for any PED/NDC, Check for any bill inflation', '2864030047', '36', 'Individual', '1552694400', 'Reimbursement', 'PED', '2500', '0', '0', '1701388800', 'admin', NULL, NULL, 'GICS1700931912_274', 1, '250', '', ''),
(275, '8', 'MR.MOHANRAJ', '52', 'Male', '1698278400', '1698364800', '1700870400', '30417', '591', '211', '2nd year Policy, Check for Genuinity of claim. Check for any alcoholic withdrawal claim,  Check for any PED/NDC, Check for any bill inflation', '2876159630', '36', 'Individual', '1661731200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1701043200', 'admin', NULL, NULL, 'GICS1700932750_275', 1, '250', '', ''),
(276, '8', 'MRS.SUMATHI', '45', 'Female', '1699315200', '1699574400', '1700870400', 'DH56548', '000', '212', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2890057770', '36', 'Individual', '1614556800', 'Reimbursement', 'PED', '2500', '0', '0', '1701302400', 'admin', NULL, NULL, 'GICS1700933090_276', 1, '250', '', ''),
(277, '8', 'MR.KRISHNAMOORTHY', '55', 'Male', '1700784000', '1701043200', '1700870400', '63721', '6394', '72', 'Check detail narration , MLC, MR, alcohol intoixcaiton and any other non disclosure', '4000111200 ', '35', 'Individual', '1677974400', 'Cashless', 'Accident', '1200', '0', '0', '1700956800', 'admin', NULL, NULL, 'GICS1700933448_277', 1, '0', '', ''),
(278, '8', 'MR.KALISWARAN', '36', 'Male', '1700870400', '1701129600', '1701043200', '35548', '50004', '213', 'Genuinity / Alcohol consumption at the time of accident / PED / ND if any', '1112385149080', '2', 'Individual', '1613606400', 'Cashless', 'Accident', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701065616_278', 0, '0', '', ''),
(279, '8', 'MR.RAMESH', '55', 'Male', '1668643200', '1668643200', '1700956800', '0000', '000', '110', 'Genuinity / Alcohol consumption at the time of accident', '0822633893', '35', 'Individual', '1643673600', 'PA', 'Accident', '2500', '0', '400', '1701561600', 'admin', NULL, NULL, 'GICS1701070229_279', 1, '500', '', ''),
(280, '8', 'MR.ARULKUMARAN', '17', 'Male', '1684886400', '1685145600', '1700956800', '17112299610', '22746', '58', 'Chrons disease, get ped,nd ', '1122385070488', '2', 'Individual', '1668729600', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701070903_280', 0, '0', '', ''),
(281, '8', 'MR.THIRUMURUGAN', '58', 'Male', '1698796800', '1698796800', '1700956800', 'SLM/160668/23', 'AEH-IPD-1270094', '214', 'Genuinity / PED / ND if any', '1122385147319', '2', 'Individual', '1580774400', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701071438_281', 0, '0', '', ''),
(282, '8', 'MRS.CHANDRA', '56', 'Female', '1697846400', '1697932800', '1701043200', '25234', '22765', '215', 'Non disclosure fo DM or any other PED / ND', '1122385147751', '2', 'Individual', '1646697600', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701073234_282', 0, '0', '', ''),
(283, '8', 'MR.JAFAR ALI', '54', 'Male', '1696291200', '1696550400', '1701043200', 'ASM1.0000352074', 'MMHIP117103', '158', 'Non disclosure of HTN / PED', '1222385147960', '2', 'Individual', '1610150400', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701074642_283', 0, '0', '', ''),
(284, '8', 'MRS.SHARMILA', '47', 'Female', '1697846400', '1698019200', '1701043200', '152100', '1802/23', '216', '3rd year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876160529', '36', 'Individual', '1613260800', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1701302400', 'admin', NULL, NULL, 'GICS1701076174_284', 1, '250', '', ''),
(285, '8', 'MR.NATARAJAN', '56', 'Male', '1699920000', '1700265600', '1701043200', '1181796', '745772', '13', 'Please investigate the case for Ped of psychiatric syndrome', '4000110846', '35', 'Individual', '1636070400', 'Reimbursement', 'PED', '2500', '130', '0', '1701561600', 'admin', NULL, NULL, 'GICS1701084851_285', 1, '500', '', ''),
(286, '8', 'MR.SAKTHI', '45', 'Male', '1699833600', '1699833600', '1701043200', '0000', '0000', '217', 'Genuinity / Alcohol consumption at the time of accident', '4210005773', '35', 'Individual', '1694649600', 'PA', 'Accident', '2500', '0', '500', '1701820800', 'admin', NULL, NULL, 'GICS1701086408_286', 1, '500', '', ''),
(287, '8', 'MR.LOURD SAMY', '50', 'Male', '1698278400', '1698451200', '1701043200', '202310_536', '1192', '218', 'Genuinity / PED / ND if any', '1222310122470', '2', 'Individual', '1577318400', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701087656_287', 0, '0', '', ''),
(288, '8', 'SELVI.KAVINYA', '10', 'Female', '1700956800', '1701216000', '1701129600', '275786', '0000', '219', '4th year Policy, Check for any PED/NDC, Check for genuinity of claim', '2890058006', '36', 'Individual', '1590796800', 'Cashless', 'PED', '750', '0', '0', '1701129600', 'admin', NULL, NULL, 'GICS1701156314_288', 1, '250', '', ''),
(289, '8', 'MR.RAJA', '42', 'Male', '1693008000', '1693180800', '1701129600', '0000', '0000', '173', 'Genuinity / Alcohol consumption at the time of accident', '4210002797', '35', 'Individual', '1616544000', 'PA', 'Accident', '2500', '300', '0', '1702339200', 'admin', NULL, NULL, 'GICS1701192192_289', 1, '500', '', ''),
(290, '8', 'MRS.LATHA', '63', 'Female', '1696291200', '1696636800', '1701129600', '9000195937', '902310036019', '140', 'Genuinity / PED / ND if any', '1122385147434', '2', 'Individual', '1591401600', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701192361_290', 0, '0', '', ''),
(291, '8', 'BABY.KARNIK KASHYAP', '0', 'Male', '1701129600', '1701216000', '1701129600', 'AB83838', '0000', '77', 'Check ped,nd ,past claim records,ped', '1212385149494', '2', 'Individual', '1690588800', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701192664_291', 0, '0', '', ''),
(292, '8', 'MR.SUSHANT AJITSARIA', '46', 'Male', '1700956800', '1701302400', '1701129600', '483063P', '000', '77', 'Genuinity / PED / ND if any', '1112385149505', '2', 'Individual', '1638576000', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701192846_292', 0, '0', '', ''),
(293, '8', 'MR.ROSHAN LAL AGARWAL', '60', 'Male', '1700956800', '1701302400', '1701129600', '1123074497', '2023026025', '15', 'Check all aspects of ped,nd', '1112385149341', '2', 'Individual', '1626739200', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701193086_293', 0, '0', '', ''),
(294, '8', 'MRS.PRINCESS', '59', 'Female', '1697155200', '1699574400', '1700956800', '14714', '417', '220', 'Check PED/ND of DM / SHT / Arthritis Etc.,', '1122385146997', '2', 'Individual', '1673827200', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701193639_294', 0, '0', '', ''),
(295, '8', 'MR.VIGNESH KARTHICK', '37', 'Male', '1698883200', '1699315200', '1701216000', '1972045', 'H32219', '24', 'Please investigate the case for PED of current ailment, collect all OPD consultation paper', '4000110099', '35', 'Individual', '1696032000', 'Reimbursement', 'Genuinity', '2500', '460', '0', '1702080000', 'admin', NULL, NULL, 'GICS1701239631_295', 1, '500', '', ''),
(296, '8', 'MR.GANESAN', '66', 'Male', '1699315200', '1699833600', '1701216000', 'ASM1.0000684096', 'MMHIP118428', '158', 'PED / ND of HTH , DM and psoriasis', '4000110040', '35', 'Individual', '1656374400', 'Reimbursement', 'PED', '2500', '0', '0', '1701907200', 'admin', NULL, NULL, 'GICS1701240734_296', 1, '500', '', ''),
(297, '8', 'MR.NIRMALKUMAR', '30', 'Male', '1701043200', '1701302400', '1701216000', '000', '0000', '221', '3rd year Policy, Check for any PED/NDC, Check for genuinity of claim', '2890058134', '36', 'Individual', '1702684800', 'Cashless', 'Genuinity', '750', '0', '0', '1701216000', 'admin', NULL, NULL, 'GICS1701242136_297', 1, '250', '', ''),
(298, '8', 'MRS.PRIYADHARSHINI', '31', 'Female', '1700870400', '1701302400', '1701216000', '0000', '0000', '222', 'Corporate policy, check for employee-employer relationship', '2825192887', '36', 'Corporate', '1672531200', 'Cashless', 'Genuinity', '750', '0', '0', '1701216000', 'admin', NULL, NULL, 'GICS1701263872_298', 1, '250', '', ''),
(299, '8', 'MR.ARUNKUMAR', '24', 'Male', '1698105600', '1698451200', '1701216000', '0000', '0000', '223', 'Corporate policy, check for employee-employer relationship', '2825192956', '36', 'Corporate', '1689465600', 'Reimbursement', 'Accident', '2500', '0', '0', '1701302400', 'admin', NULL, NULL, 'GICS1701328427_299', 1, '250', '', ''),
(300, '8', 'MR.PARTHIBAN', '28', 'Male', '1701043200', '-61412428800', '1701302400', 'AD55702', '00000', '77', 'Genuinity / Alcohol consumption at the time of accident / PED / ND if any', '6112385150168', '2', 'Individual', '1606780800', 'Cashless', 'Accident', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701343233_300', 0, '0', '', ''),
(301, '8', 'MRS.JANAKI RAJA', '34', 'Female', '1682467200', '1683417600', '1700870400', '000', '000', '224', 'Daily cash benefit policy, Check for admission confirmation from hospital', '2883054015', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '1000', '0', '0', '1701302400', 'admin', NULL, NULL, 'GICS1701349725_301', 1, '250', '', ''),
(302, '8', 'MRS.KAVITHARANI', '51', 'Female', '1701388800', '1701648000', '1701302400', 'O23080806', '00000', '40', 'PED / ND if any', '1212385150227 ', '2', 'Individual', '1605052800', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701355711_302', 0, '0', '', ''),
(303, '8', 'MR.GEORGE DHAYA', '26', 'Male', '1701216000', '1701648000', '1701302400', 'PHC49', '0000', '225', 'PED / ND if any', '1112385150599', '2', 'Individual', '1679529600', 'Cashless', 'Accident', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701356188_303', 0, '0', '', ''),
(304, '8', 'MRS.LATHA', '48', 'Female', '1699920000', '1700006400', '1701216000', '1233654', '745754', '13', 'Genuinity / PED / ND if any', '1122385149008', '2', 'Individual', '1606694400', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701407152_304', 0, '0', '', ''),
(305, '8', 'MR.BASUVARASU', '53', 'Male', '1697760000', '1698192000', '1701129600', '253824', '1883/23-24', '226', '1st year Policy, Check for Genuinity of claim. Check for any PED/NDC, Check for any bill inflation', '2876160841', '36', 'Individual', '1684368000', 'Reimbursement', 'PED', '2500', '0', '0', '1701734400', 'admin', NULL, NULL, 'GICS1701409621_305', 1, '250', '', ''),
(306, '8', 'MR.WINIFRED THANARAJ', '69', 'Male', '1698105600', '1698192000', '1701129600', 'A346602', '202329898', '53', 'Genuinity / PED / ND if any', '2864030034', '36', 'Individual', '1422576000', 'Reimbursement', 'PED', '2500', '0', '0', '1701734400', 'admin', NULL, NULL, 'GICS1701410848_306', 1, '250', '', ''),
(307, '8', 'MRS.BEENA', '51', 'Female', '1701648000', '1701648000', '1701388800', 'AC01.0003709986', '000000', '79', 'Check for PED / ND if any', '1212385150967', '2', 'Individual', '1571097600', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701442543_307', 0, '0', '', ''),
(308, '8', 'MRS.RIMA SINHA', '34', 'Female', '1696896000', '1697155200', '1698451200', 'AC01.0004565902', 'CMHIP417113', '79', '4th year Policy, Check for any PED/NDC, Check for genuinity of claim', '2890057654', '36', 'Individual', '1597622400', 'Reimbursement', 'Genuinity', '2500', '400', '0', '1702425600', 'admin', NULL, NULL, 'GICS1701447132_308', 1, '0', '', ''),
(309, '8', 'MR.MAHENDRAN', '43', 'Male', '1690848000', '1690848000', '1701216000', '0000', '000', '203', 'Genuinity / Alcohol consumption at the time of accident', '2839005891', '36', 'Corporate', '1672531200', 'PA', 'Accident', '2500', '0', '0', '1701388800', 'admin', NULL, NULL, 'GICS1701450950_309', 1, '500', '', ''),
(310, '8', 'MR.SATHEESHKUAMR', '47', 'Male', '1699401600', '1699660800', '-55101168000', '127930', 'I2655', '167', 'PED / ND if any', '4000109095', '35', 'Individual', '1693958400', 'Reimbursement', 'PED', '2500', '0', '0', '1701907200', 'admin', NULL, NULL, 'GICS1701453088_310', 1, '500', '', ''),
(311, '8', 'MAST.JAI DHARSHAN', '13', 'Male', '1689033600', '1689465600', '1701388800', '611', '000', '178', 'Check for Genuinely, prolong stay and any PED-NDC', '1222385148410', '2', 'Individual', '1609027200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701453350_311', 0, '0', '', ''),
(312, '8', 'MRS.DEVAMMA', '55', 'Female', '1699574400', '1699660800', '1701388800', 'AMB-5835', 'IP004992', '191', 'PED / ND if any', '1222385149700', '2', 'Individual', '1672531200', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701453910_312', 0, '0', '', ''),
(313, '8', 'MR.SENTHIL NAGARAJAN', '37', 'Male', '1698796800', '1698796800', '1701388800', '0000', '0000', '236', 'Genuinity / Alcohol consumption at the time of accident / Suicidal if any ', '2823008639', '36', 'Corporate', '1672531200', 'PA', 'Accident', '2500', '0', '0', '1701820800', 'admin', NULL, NULL, 'GICS1701454145_313', 1, '500', '', ''),
(314, '8', 'MR.SATHEESHKUMAR', '26', 'Male', '1694563200', '1694563200', '1701475200', '0000', '000', '228', 'Genuinity / Alcohol consumption at the time of accident', '22-23-2895587', '36', 'Individual', '1679356800', 'PA', 'Accident', '2500', '0', '0', '1701820800', 'admin', NULL, NULL, 'GICS1701495255_314', 1, '500', '', ''),
(315, '8', 'MR.GOKULAKRISHNAN', '30', 'Male', '1696809600', '1697500800', '1701475200', '0012148112', '000', '181', 'Genuinity / PED / ND if any', '1122385149432', '2', 'Individual', '1633478400', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701495678_315', 0, '0', '', ''),
(316, '8', 'MR.AWADH KISHOR SINGH', '59', 'Male', '1701302400', '1701820800', '1701475200', 'AB68816', '0000', '77', '5th year policy, check for any PED/NDC, Check for genuinity of claim', '2876161306', '36', 'Individual', '1568332800', 'Cashless', 'PED', '750', '0', '0', '1701475200', 'admin', NULL, NULL, 'GICS1701497638_316', 1, '250', '', ''),
(317, '8', 'MRS.MEENA PURUSHOTHAMAN', '65', 'Female', '1700179200', '1700438400', '1701475200', '109574', '3415/2023', '229', 'Check genuinity,ped,nd,', '1122385150192', '2', 'Individual', '1697414400', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701498396_317', 0, '0', '', ''),
(318, '8', 'MR.GOKUL', '31', 'Male', '1698278400', '1699660800', '1701475200', '1123105998', '2023023663', '15', 'Genuinity / Alcohol consumption at the time of accident / PED / ND if any', '1222310122475', '2', 'Individual', '1689120000', 'Reimbursement', 'Accident', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701499251_318', 0, '0', '', ''),
(319, '8', 'MRS.BANUMATHY', '38', 'Female', '1693958400', '1695772800', '1701475200', '0000', '0000', '146', 'Genuinity', '2883054322', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1701734400', 'admin', NULL, NULL, 'GICS1701501495_319', 1, '250', '', ''),
(320, '8', 'BABY.GOKULA KANNAN', '3', 'Male', '1698278400', '1701129600', '1701475200', '2GJS202305244', 'IPP2300873', '230', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2846003401', '36', 'Individual', '1679529600', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1702252800', 'admin', NULL, NULL, 'GICS1701504704_320', 1, '250', '', ''),
(321, '8', 'MR.DARSAN', '21', 'Male', '1698883200', '1699228800', '1701475200', '0303296', 'IPB202315689', '61', '7th year Policy, Check for etiology of current ailment, Check for exact duration of ailments, check for any bill inflation', '2864030085', '36', 'Individual', '1483056000', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1701648000', 'admin', NULL, NULL, 'GICS1701505714_321', 1, '250', '', ''),
(322, '8', 'MISS.KIRITHIKA', '17', 'Female', '1698451200', '1698624000', '1701475200', '000', '1938', '231', '3rd year Policy, check for any PED/NDC, Check for genuinity of claim.', '2890058232', '36', 'Individual', '1625097600', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1701820800', 'admin', NULL, NULL, 'GICS1701506367_322', 1, '250', '', ''),
(323, '8', 'MRS.KANNIKAI MARY', '38', 'Female', '1698451200', '1698624000', '1701475200', '0000', '1937', '231', '3rd year Policy, check for any PED/NDC, Check for genuinity of claim.', '2890058242', '36', 'Individual', '1625097600', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1701820800', 'admin', NULL, NULL, 'GICS1701506600_323', 1, '250', '', ''),
(324, '8', 'MR.KANDASAMY', '47', 'Male', '1697241600', '1697241600', '-55101081600', '288919', '83812', '99', '2nd year Policy, check for any PED/NDC, Check for genunity of claim', '2890058195', '36', 'Individual', '1661472000', 'Reimbursement', 'PED', '2500', '0', '0', '1701734400', 'admin', NULL, NULL, 'GICS1701507101_324', 1, '250', '', ''),
(325, '8', 'MR.RAMESH', '55', 'Male', '1701216000', '1701561600', '1701475200', '0000', '0000', '79', 'PED / ND if any', '4000113372', '35', 'Individual', '1577836800', 'Cashless', 'PED', '1200', '0', '0', '1701475200', 'admin', NULL, NULL, 'GICS1701525366_325', 1, '0', '', ''),
(326, '8', 'MRS.RAJESWARI', '54', 'Female', '1697328000', '1697932800', '1701475200', '000', '13008-23', '232', 'Genuinity / PED / ND if any', '1222385150349', '2', 'Individual', '1658448000', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701526462_326', 0, '0', '', ''),
(327, '8', 'MR.RAVICHANDRAN', '54', 'Female', '1701216000', '1701561600', '1701475200', 'A48025', '0000', '25', 'Genuinity / PED / ND if any', '1112385151028', '2', 'Individual', '1593475200', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701527254_327', 0, '0', '', ''),
(328, '8', 'MRS.DHANALAKSHMI', '64', 'Female', '1701129600', '1701561600', '1701475200', '00000', '00000', '233', 'Genuinity / PED / ND if any', '1112385151028', '2', 'Individual', '1680220800', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701528085_328', 0, '0', '', ''),
(329, '8', 'MR.PALANIVEL', '62', 'Male', '1701388800', '1701648000', '1701475200', '782025', 'H37220', '23', 'Genuinity / PED / ND if any', '1112385151454', '2', 'Individual', '1661904000', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701528392_329', 0, '0', '', ''),
(330, '8', 'MR.KARTHICK REDDY CHEVURU', '40', 'Male', '1701216000', '1701820800', '1701561600', 'AC01.0003069037', 'CMHIP422653', '79', 'Genuinity / PED / ND if any', '1112385151463', '2', 'Individual', '1671062400', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701583107_330', 0, '0', '', ''),
(332, '8', 'MR.BALAKRISHNAN', '23', 'Male', '1697155200', '1697587200', '1701648000', '1965930', 'H28863', '23', 'Genuinity / PED / ND if any', '1122385148036', '2', 'Individual', '1604102400', 'Reimbursement', 'Genuinity', '2500', '460', '0', '', 'admin', NULL, NULL, 'GICS1701671533_332', 0, '0', '', ''),
(333, '8', 'MRS.ESWARI', '56', 'Female', '1698969600', '1699660800', '1701648000', 'RBH00011294', '1313884', '207', 'Genuinity / PED / ND if any', '1122385150627', '2', 'Individual', '1638748800', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701673859_333', 0, '0', '', ''),
(334, '8', 'MR.BHARAT KUMAR DUGAR', '40', 'Male', '1701734400', '1702166400', '1701734400', '0000', '00000', '15', 'Genuinity / PED / ND if any', '4000113500', '35', 'Individual', '1607904000', 'Cashless', 'PED', '1200', '0', '0', '1701820800', 'admin', NULL, NULL, 'GICS1701782207_334', 1, '0', '', ''),
(335, '8', 'MR.LAKSHMI NARAYANASHARMA', '32', 'Male', '1701561600', '1701907200', '1701820800', 'PDY-57847', 'PDY-IPB-SP-013822', '72', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2846003537', '36', 'Individual', '1678060800', 'Cashless', 'Genuinity', '750', '0', '0', '1701820800', 'admin', NULL, NULL, 'GICS1701841958_335', 1, '250', '', ''),
(336, '8', 'MR.SIVAGNANAM', '53', 'Male', '1701648000', '1701907200', '1701820800', '000', '0000', '234', 'Corporate policy, check for employee-employer relationship', '2825193594', '36', 'Corporate', '1672531200', 'Cashless', 'Genuinity', '750', '0', '0', '1701820800', 'admin', NULL, NULL, 'GICS1701846574_336', 1, '250', '', ''),
(337, '8', 'MR.SABAR ALI', '41', 'Male', '1694563200', '1697587200', '1701820800', '0000', '000', '235', 'Genuinity / Alcohol consumption at the time of accident', '2884007286', '36', 'Corporate', '1669593600', 'PA', 'Accident', '2500', '0', '0', '1702598400', 'admin', NULL, NULL, 'GICS1701849169_337', 1, '500', '', ''),
(338, '8', 'MRS.YUVA PRIYADHARSHINI', '39', 'Female', '1700179200', '1700438400', '1701820800', '070223102229', '0000', '58', 'Genuinity / PED / ND if any', '1122385151254', '2', 'Individual', '1680480000', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701876309_338', 0, '0', '', ''),
(339, '8', 'MAST.HASINTHAN', '10', 'Male', '1664150400', '1665014400', '1701820800', '112218', 'H2067', '167', 'Check all aspects,fracture claim, alcohol,mlc,fir , xrays prepost,fcp, initial assessment sheet,vivinity,spot verification all required', '1222385151546', '2', 'Individual', '1610409600', 'Reimbursement', 'Accident', '2500', '500', '0', '', 'admin', NULL, NULL, 'GICS1701879885_339', 0, '0', '', ''),
(340, '8', 'MRS.VASANTHI', '57', 'Female', '1695859200', '1696118400', '1701820800', 'PUD-64321', 'PUD-IP009142', '237', 'Need of hospitalization', '1222385138875', '2', 'Individual', '1672531200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701880344_340', 0, '0', '', ''),
(341, '8', 'MRS.MYTHILI', '66', 'Female', '1699056000', '1699660800', '1701820800', '230100178', '1884', '207', 'Genuinity / PED / ND if any', '1122385151349', '2', 'Individual', '1659052800', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1701880611_341', 0, '0', '', ''),
(342, '8', 'MR.RAM KRISHNA', '28', 'Male', '1699142400', '1699315200', '1701820800', '004167207', '0000', '126', 'Kindly check for ped and genuiness', '4000114027', '35', 'Individual', '1693526400', 'Reimbursement', 'PED', '2500', '0', '0', '1701907200', 'admin', NULL, NULL, 'GICS1701880870_342', 1, '500', '', ''),
(343, '8', 'MR.BIDHUL', '30', 'Male', '1701820800', '1702080000', '1701907200', '000', '000', '239', 'Corporate policy, check for any alcoholic influence at the time of injury', '2825193666', '36', 'Corporate', '1672531200', 'Cashless', 'Accident', '750', '0', '0', '1701907200', 'admin', NULL, NULL, 'GICS1701930671_343', 1, '250', '', ''),
(344, '8', 'MR.JAGANATHAN', '24', 'Male', '1686268800', '1687478400', '1701907200', '000', '000', '17', 'Daily cash benefit Policy, check for alcoholic etiology, Do both part', '2883054747', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1701907200', 'admin', NULL, NULL, 'GICS1701931252_344', 1, '250', '', ''),
(345, '8', 'MRS.REENA', '38', 'Female', '1695168000', '1696809600', '1701907200', '000', '0000', '240', 'Daily cash benefit policy, check for admission confirmation from hospital', '2883054601', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1701993600', 'admin', NULL, NULL, 'GICS1701936856_345', 1, '250', '', ''),
(346, '8', 'BABY.PRAKALYA', '1', 'Female', '1699228800', '1699401600', '1701907200', 'MR023852', '004216', '241', 'Genuinity / PED / ND if any', '4000110694', '35', 'Individual', '1691366400', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1702080000', 'admin', NULL, NULL, 'GICS1701951527_346', 1, '500', '', ''),
(347, '8', 'MRS.REVATHI', '46', 'Female', '1701820800', '1701907200', '1701907200', '00000', '0000', '242', 'Genuinity / PED / ND if any', '112385153555', '2', 'Individual', '1621555200', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1701956849_347', 0, '0', '', ''),
(348, '8', 'MR.MANI', '61', 'Male', '1697500800', '1698019200', '1701993600', '20231018659F', '20231070039', '185', '2nd year Policy, check for any PED/NDC, Check for genunity of claim', '2890058057', '36', 'Individual', '1688774400', 'Reimbursement', 'PED', '2500', '500', '0', '1702512000', 'admin', NULL, NULL, 'GICS1702012099_348', 1, '250', '', ''),
(349, '8', 'BABY.AAFIYA', '2', 'Female', '1701475200', '1701820800', '1701993600', '82367', '23002610', '243', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2890058632', '36', 'Individual', '1689292800', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1702425600', 'admin', NULL, NULL, 'GICS1702013403_349', 1, '250', '', ''),
(350, '8', 'MRS.KANCHANA', '50', 'Female', '1698969600', '1699142400', '1701907200', '000', 'RDC/2023-0069', '244', 'PED / ND if any', '1122385151925', '2', 'Individual', '1580428800', 'Reimbursement', 'PED', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1702014067_350', 0, '0', '', ''),
(351, '8', 'MR.SAKTHIVEL', '35', 'Male', '1686873600', '1688342400', '1701820800', '0000', '16137', '160', 'Daily cash benefit Policy, check for admission confirmation from hospital', '2883054690', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '1000', '0', '0', '1701993600', 'admin', NULL, NULL, 'GICS1702015436_351', 1, '250', '', ''),
(352, '8', 'MR.ANBUKUMAR', '45', 'Male', '1697587200', '1698624000', '1701993600', 'SH/23/233151', '87519', '109', 'Please check Ped of CKD ', '4000114498', '35', 'Individual', '1617753600', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702018744_352', 0, '0', '', ''),
(353, '8', 'MRS.MUTHUSARASWATHI', '42', 'Female', '1701907200', '1702166400', '1701993600', '0000', '0000', '197', 'Check exact duration of asthma, mentioned as 2-3 years', '1212385153935', '2', 'Individual', '1623974400', 'Cashless', 'Accident', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702020550_353', 0, '0', '', ''),
(354, '8', 'MR.ALBERT MARTIN', '56', 'Male', '1701907200', '1702166400', '1701993600', '0000', '0000', '33', 'Genuinity / PED / ND if any', '1212385153309', '2', 'Individual', '1698019200', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702023131_354', 0, '0', '', ''),
(355, '8', 'MR.SELVARAJ', '50', 'Male', '1691884800', '1691971200', '1701993600', '166462', '23002802', '245', 'Genuinity / PED / ND if any', '4000084877', '35', 'Individual', '1668729600', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702024076_355', 0, '0', '', ''),
(356, '8', 'MR.VENKATESAN', '42', 'Male', '1701907200', '1702080000', '1701993600', 'AD66551', '00000', '77', 'Check ped,nd,cardiac ailment', '1212385154230', '2', 'Individual', '1622764800', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702026213_356', 0, '0', '', ''),
(357, '8', 'MISS.SAKTHIPRIYA', '17', 'Female', '1694563200', '1694736000', '1701993600', 'AMB-13847', 'AMB-IP004867', '191', 'Genuinity / Need of hospitalization', '1122385152829', '2', 'Individual', '1674172800', 'Reimbursement', 'Genuinity', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1702032377_357', 0, '0', '', ''),
(358, '8', 'MR.MANOJ BABU', '19', 'Male', '1701993600', '1702425600', '1701993600', '1123121656', '00000', '15', 'Check ped,nd all aspects', '1212385154563', '2', 'Individual', '1633996800', 'Cashless', 'Accident', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702048530_358', 0, '0', '', ''),
(359, '8', 'MRS.BAGAVATHI', '58', 'Female', '1697328000', '1697760000', '1701907200', '00000', '2310165', '148', 'Do in-depth investigation and collect addition documents  Collect mode of payment , payment proof', '4000114950', '35', 'Individual', '1640995200', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702051166_359', 0, '0', '', ''),
(360, '8', 'MISS.WANIA AKHLAQUE', '13', 'Female', '1701820800', '1702080000', '1702080000', '12018173178', 'I102143', '165', 'Check ped,nd,liver disease claim, check ped,nd', '1112385154272', '2', 'Individual', '1627084800', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702135068_360', 0, '0', '', ''),
(361, '8', 'MR.ELUMALAI', '41', 'Male', '1696204800', '1696204800', '1702080000', '0000', '0000', '135', 'Genuinity / Alcohol consumption at the time of accident', '22-23-2884570', '36', 'Corporate', '1669852800', 'PA', 'Accident', '2500', '0', '0', '1702512000', 'admin', NULL, NULL, 'GICS1702136206_361', 1, '500', '', ''),
(362, '8', 'MR.MURALIDHARAN', '59', 'Male', '1702339200', '1702425600', '1702166400', '11385', '0000', '246', 'Please investigate the case for ND of DM , HTN, BA', '4000115390', '35', 'Individual', '1577836800', 'Cashless', 'PED', '1200', '0', '0', '1702166400', 'admin', NULL, NULL, 'GICS1702205517_362', 1, '0', '', ''),
(363, '8', 'MR.PALPANDI', '27', 'Male', '1656547200', '1656633600', '1702252800', '0000', '000', '121', 'Genuinity / Alcohol consumption at the time of accident', '0822653302', '35', 'Corporate', '1640995200', 'PA', 'Accident', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702274819_363', 0, '0', '', ''),
(364, '8', 'MR.SATHISH', '50', 'Male', '1698883200', '1699228800', '1702252800', '89470', '2302587', '8', 'Genuinity / Alcohol consumption at the time of accident', '1222385153697', '2', 'Corporate', '1672531200', 'Reimbursement', 'Accident', '2500', '0', '0', '', 'admin', NULL, NULL, 'GICS1702274981_364', 0, '0', '', '');
INSERT INTO `intimations` (`id`, `vendor`, `pname`, `age`, `sex`, `doa`, `dod`, `doi`, `opno`, `ipno`, `hosp_details`, `triggers`, `claimno`, `insurance_tpa`, `policy_type`, `doj`, `claim_type`, `case_type`, `fees`, `mrd`, `transportation`, `created`, `created_by`, `updated`, `updated_by`, `gicsid`, `invoice`, `incentive`, `payment`, `paid_date`) VALUES
(365, '8', 'MR.SATHISHKUMAR', '41', 'Male', '1701993600', '1702339200', '1702252800', '0000', '00000', '247', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2846003573', '36', 'Individual', '1677628800', 'Cashless', 'Genuinity', '750', '0', '0', '1702252800', 'admin', NULL, NULL, 'GICS1702275870_365', 1, '250', '', ''),
(366, '8', 'MR.KANNAN', '53', 'Male', '1698796800', '1698796800', '1702252800', '00000', '000', '173', 'Genuinity / Alcohol consumption at the time of accident', '2884007339', '36', 'Corporate', '1678665600', 'PA', 'Accident', '2500', '0', '0', '1702425600', 'admin', NULL, NULL, 'GICS1702276964_366', 1, '500', '', ''),
(367, '8', 'MRS.SARASWATHY', '48', 'Female', '1698710400', '1699056000', '1702252800', '0000', 'CMC 0582', '248', 'Check ped,nd,waitinf period,infertility related or not', '1122385152812', '2', 'Individual', '1660694400', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702277438_367', 0, '0', '', ''),
(368, '8', 'MRS.ZANNATHUR RAIHAN', '28', 'Female', '1701734400', '1701907200', '1702080000', '85627', '23002644', '243', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2890058710', '36', 'Individual', '1689292800', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1702425600', 'admin', NULL, NULL, 'GICS1702278774_368', 1, '250', '', ''),
(369, '8', 'SELVI.RIDDHI DOKANIA', '7', 'Female', '1702252800', '1702684800', '1702252800', '051014P', '0000', '77', 'PED / ND if any', '1112385154986', '2', 'Individual', '1635206400', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702279824_369', 0, '0', '', ''),
(370, '8', 'MRS.SOUNDARI', '49', 'Female', '1699920000', '1700006400', '1702252800', '9000199954', '14112301178', '140', 'Ca claim, check ped,nd,past medical records, histopath report needed', '1122385147170', '2', 'Individual', '1649635200', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702298498_370', 0, '0', '', ''),
(371, '8', 'MR.RAJASEKARAN', '44', 'Male', '1701388800', '1701820800', '1702252800', '2312010227', '902312017049', '115', 'Check ped,nd', '1122385154798', '2', 'Individual', '1681948800', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702298848_371', 0, '0', '', ''),
(372, '8', 'MR.DHANABAL', '39', 'Male', '1702252800', '1702512000', '1702339200', 'KNH-23-026255', '000', '64', 'Check ped,nd, cardiac ailment', '1112385155804', '2', 'Individual', '1573862400', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702364508_372', 0, '0', '', ''),
(373, '8', 'MR.VELUSAMY', '63', 'Male', '1702512000', '1702857600', '1702339200', '201904_163', '000', '249', 'Check ped,nd, hospital known for masking details', '1112385155597', '2', 'Individual', '1631577600', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702364894_373', 0, '0', '', ''),
(374, '8', 'MRS.JEEVA', '68', 'Female', '1699574400', '1699833600', '1702339200', '0000', 'P024955', '250', 'PED/ ND If any', '1212385155931', '2', 'Individual', '1653436800', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702367353_374', 0, '0', '', ''),
(375, '8', 'MR.GUHAN', '35', 'Male', '1702339200', '1702512000', '1702339200', '0000', '00000', '169', 'Genuinity / PED / ND if any', '4000116568', '35', 'Individual', '1672531200', 'Cashless', 'PED', '1200', '0', '0', '1702425600', 'admin', NULL, NULL, 'GICS1702382958_375', 1, '0', '', ''),
(376, '8', 'MR.RAJA', '56', 'Male', '1701216000', '1701388800', '1702339200', '2311005678', 'IPR0025788', '63', 'CHECK ND OF HTN ', '1122385154292 ', '2', 'Individual', '1661385600', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702401176_376', 0, '0', '', ''),
(377, '8', 'MRS.SOBHA', '56', 'Female', '1698969600', '1699142400', '1702339200', '0020583468', '440636', '251', 'Genuinity / PED / NDs if any', '1222385144022 ', '2', 'Individual', '1566950400', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702401485_377', 0, '0', '', ''),
(378, '8', 'MR.VENKAR RAMAN', '29', 'Male', '1700697600', '1700784000', '1702252800', '201719918', '66881', '252', 'CHECK ALL ASPECTS OF PED,ND, COSMETIC PURPOSE SURGERY', '1222385154460', '2', 'Individual', '1681862400', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702401853_378', 0, '0', '', ''),
(379, '8', 'MR.RAJALINGAM', '36', 'Male', '1699228800', '1700092800', '1702166400', 'CUDSH16001', 'IP/2023/11/1956', '253', 'Ckeck ped,nd', '1122385154232', '2', 'Individual', '1678752000', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702402181_379', 0, '0', '', ''),
(380, '8', 'MRS.VENNILA', '45', 'Female', '1686960000', '1689120000', '1702252800', '000', '000', '116', 'Genuinity', '2883055070', '36', 'Corporate', '1672531200', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1702598400', 'admin', NULL, NULL, 'GICS1702452149_380', 1, '250', '', ''),
(381, '8', 'MR.SIVARAJ', '38', 'Male', '1678665600', '1680652800', '1702425600', '0000', '000', '254', 'Genuinity / Alcohol consumption at the time of accident', '2883055235', '36', 'Corporate', '1672531200', 'Reimbursement', 'Accident', '2500', '0', '0', '1702598400', 'admin', NULL, NULL, 'GICS1702453072_381', 1, '250', '', ''),
(382, '8', 'MR.BALASUBRAMANIAM', '51', 'Male', '1701216000', '1702512000', '1702425600', '00000', '000', '79', 'Genuinity / PED / ND if any', '4000112632', '35', 'Individual', '1594598400', 'Cashless', 'Genuinity', '1200', '0', '0', '1702425600', 'admin', NULL, NULL, 'GICS1702472410_382', 1, '0', '', ''),
(383, '8', 'MR.SIVAKUMAR', '29', 'Male', '1702684800', '-61411132800', '1702425600', '0000', '000', '255', 'Eye power correction surgery,establish ped', '1112385156182', '2', 'Individual', '1621296000', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702480627_383', 0, '0', '', ''),
(384, '8', 'MR.SANTANU KUMAR MUND', '49', 'Male', '1702512000', '1702771200', '1702512000', 'AB55842', '00000', '77', 'Check ped,nd', '1112385157092', '2', 'Individual', '1602201600', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702534669_384', 0, '0', '', ''),
(385, '8', 'MR.ANANDAKUMAR', '43', 'Male', '1702339200', '1702598400', '1702512000', '00000', '0000', '128', 'Check ped,nd, pt cholesterol level is high', '1112385156649', '2', 'Individual', '1637712000', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702536865_385', 0, '0', '', ''),
(386, '8', 'MRS.SUDHA BOOPATHI', '50', 'Female', '1702684800', '1703116800', '1702512000', '0000', '000', '79', 'ARTHRITIS CLAIM, CHECK PED,ND', '1212385156872', '2', 'Individual', '1624492800', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702538202_386', 0, '0', '', ''),
(387, '8', 'MR.PRAKASHRAJ', '20', 'Male', '1693699200', '1693785600', '1702512000', '0000', '000', '173', 'Genuinity / Alcohol consumption at the time of accident', '2884007349', '36', 'Individual', '1691020800', 'PA', 'Accident', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702538522_387', 0, '0', '', ''),
(388, '8', 'MR.THIRUMOORTHY', '56', 'Male', '1700352000', '1700611200', '1702252800', 'ASKH/23/215788', '73843', '190', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2846003521', '36', 'Individual', '1672185600', 'Reimbursement', 'PED', '2500', '0', '0', '1702598400', 'admin', NULL, NULL, 'GICS1702543989_388', 1, '250', '', ''),
(389, '8', 'MR.MAHESHWARAN', '48', 'Male', '1702252800', '1702684800', '1702512000', '122093', '0000', '122', '1st year policy / PED, ND if any, Genuinity', '2846003636', '36', 'Individual', '1673568000', 'Cashless', 'PED', '750', '0', '0', '1702598400', 'admin', NULL, NULL, 'GICS1702562966_389', 1, '250', '', ''),
(390, '8', 'MRS.ALINE', '54', 'Female', '1701561600', '1702857600', '1702512000', '000', '000', '79', 'Cld claim, check ped,nd,alcohol related etiology', '1212310131938', '2', 'Individual', '1614384000', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702564854_390', 0, '0', '', ''),
(391, '8', 'BABY.TANYA', '1', 'Female', '1702339200', '1702684800', '1702512000', '20223839', 'SBH230966', '207', 'Genuinity / PED / ND if any', '2890059094', '36', 'Individual', '1607817600', 'Cashless', 'Genuinity', '750', '0', '0', '1702598400', 'admin', NULL, NULL, 'GICS1702568025_391', 1, '250', '', ''),
(392, '8', 'MR.SATHISH', '31', 'Male', '1702598400', '1702771200', '1702598400', '0000', '0000', '33', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2846003674', '36', 'Individual', '1671580800', 'Cashless', 'Genuinity', '750', '0', '0', '1702684800', 'admin', NULL, NULL, 'GICS1702627222_392', 1, '250', '', ''),
(393, '8', 'MR.KANNAPPAN', '57', 'Male', '1702425600', '1702771200', '1702598400', '0000', '0000', '79', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2846003656', '36', 'Individual', '1684454400', 'Cashless', 'PED', '750', '0', '0', '1702598400', 'admin', NULL, NULL, 'GICS1702637076_393', 1, '250', '', ''),
(394, '8', 'MAST.SHAYEESWARAN', '5', 'Male', '1702512000', '1702857600', '1702598400', '0000', '000', '257', 'Get ped, duration is 3 years,diagnosed in 2021', '1112385157386', '2', 'Individual', '1628812800', 'Cashless', 'Genuinity', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702642670_394', 0, '0', '', ''),
(395, '8', 'MR.MUNIRAJ', '42', 'Male', '1700092800', '1700265600', '1702598400', '0000', '2107', '258', '4th year Policy, check for any PED/NDC, Check for genunity of claim', '2890057239', '36', 'Individual', '1581206400', 'Reimbursement', 'Genuinity', '2500', '0', '0', '1702598400', 'admin', NULL, NULL, 'GICS1702644475_395', 1, '250', '', ''),
(396, '8', 'MRS.SOMASUNDARI', '52', 'Female', '1696809600', '1696982400', '1702598400', '000', '00', '259', 'Check ped,nd,ped dm disclosed', '1122385130266', '2', 'Individual', '1695859200', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702644932_396', 0, '0', '', ''),
(397, '8', 'MRS.SARANYA', '26', 'Female', '1702425600', '1702684800', '1702598400', '0000', '00000', '260', ' 2nd year policy admitted for management of fever-patient is a k/c/o seizures-kindly ruleout ped/nd', '4000117550', '35', 'Individual', '1640995200', 'Cashless', 'PED', '1200', '0', '0', '1702684800', 'admin', NULL, NULL, 'GICS1702657636_397', 1, '0', '', ''),
(398, '8', 'MAST..PRANESH', '14', 'Male', '1701129600', '1701475200', '1702684800', '0000', '140281', '261', '1st year Policy, Check for any PED/NDC, Check for any bill inflation', '2846003685', '36', 'Individual', '1672099200', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702716516_398', 0, '0', '', ''),
(399, '8', 'MRS.THILAGAKANI', '27', 'Female', '1692144000', '1692489600', '1702684800', '015184629', '00000', '262', 'Check for ped,nd, waiting period applicable', '1222385156387', '2', 'Individual', '1678147200', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702718353_399', 0, '0', '', ''),
(400, '8', 'MRS.GAYATHRI LAKSHMI', '44', 'Male', '1702080000', '1702166400', '1702684800', 'AHA1.0000306807', 'CMHIP423641', '79', 'Check ped,nd ,get fcp of htn, check for nd of htn', '1222385157022', '2', 'Individual', '1599609600', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702733147_400', 0, '0', '', ''),
(401, '8', 'MR.RAMACHANDRAN', '63', 'Male', '1700611200', '1700697600', '1702684800', '122676', 'IP/2023010022/2023', '192', 'Check ped,nd', '1222385156943', '2', 'Individual', '1604188800', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702735189_401', 0, '0', '', ''),
(402, '8', 'MR.KARTHIKEYAN', '51', 'Male', '1698019200', '1698278400', '1702512000', 'P207202', '1534/23', '263', 'Genuinity / PED / ND if any', '1122385153981', '2', 'Individual', '1663804800', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702736091_402', 0, '0', '', ''),
(403, '8', 'MRS.SHEMBAKAVALLI', '57', 'Female', '1694217600', '1695427200', '1702512000', 'S-1806-251', '0000', '264', 'Genuinity / PED / ND if any', '4000097681', '35', 'Individual', '1625356800', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702736704_403', 0, '0', '', ''),
(404, '8', 'MRS.FATHIMA THASNEEM', '20', 'Female', '1699488000', '1699920000', '1702425600', '12880', '45664', '265', 'Admission for gastritis, check opd to ip admission, need for ip admission, check reports,  check attendance,vicinity,googletimeline', '1122385153802', '2', 'Individual', '1564358400', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702737144_404', 0, '0', '', ''),
(405, '8', 'MRS.SHANITHA', '27', 'Female', '1697846400', '1698278400', '1702425600', '609086', '254835', '266', 'Check ped,nd, op to ip conversion, hospital known for op to ip conversion , check google time line,vicinity, check op register, check xray,', '1122385155633', '2', 'Individual', '1668470400', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702737740_405', 0, '0', '', ''),
(406, '8', 'MISS.FATHIMA NAZREEN', '12', 'Female', '1696636800', '1697241600', '1702425600', '1203593', 'IP2418936', '266', 'Pt kco recurrent lrti ,past claims denied on same reason, check for non disclosure ,op to ip conversion,medical  report', '1122385153432', '2', 'Individual', '1664755200', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702738124_406', 0, '0', '', ''),
(407, '8', 'MR.LAIJU VARGHEESE', '37', 'Male', '1702598400', '1702944000', '1702771200', '0000', '0000', '77', 'Genuinity / PED / NDs if any', '1212385157800', '2', 'Individual', '1677974400', 'Cashless', 'PED', '1200', '0', '0', '', 'admin', NULL, NULL, 'GICS1702797028_407', 0, '0', '', ''),
(408, '8', 'BABY.DHANSIKA', '6', 'Female', '1700524800', '1700697600', '1702771200', 'CMSH/23/58845', 'IP/23/689', '267', 'Genuinity', '4000117030', '35', 'Individual', '1696377600', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702828413_408', 0, '0', '', ''),
(409, '8', 'MR.BABU', '33', 'Male', '1700956800', '1701302400', '1702598400', '263214', 'IP22014228', '268', '5th year policy, check for any bill inflation, Check for genuinity of claim', '2890059044', '36', 'Individual', '1555977600', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702829044_409', 0, '0', '', ''),
(410, '8', 'MR.CHANDRAN', '57', 'Male', '1665100800', '1693180800', '1702771200', '44643', 'A11120', '97', 'Genuinity / Alcohol consumption at the time of accident', '0822644538', '35', 'Corporate', '1640995200', 'PA', 'Accident', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702829861_410', 0, '0', '', ''),
(411, '8', 'MR.KRISHNANMOORTHY', '22', 'Male', '1664928000', '1665273600', '1702425600', '000', '0000', '173', 'Genuinity / Alcohol consumption at the time of accident', '0822363315', '35', 'Individual', '1650499200', 'PA', 'Accident', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702830672_411', 0, '0', '', ''),
(412, '8', 'MR.ARJUNAN', '62', 'Male', '1679011200', '1680825600', '1702425600', '00000', '0000', '135', 'Genuinity / Alcohol consumption at the time of accident / Suicidal if any / Financial crisis', '4210006711', '35', 'Individual', '1665014400', 'PA', 'Accident', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1702831002_412', 0, '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `intimations_id` varchar(100) NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `bulk_status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_no`, `intimations_id`, `created_date`, `bulk_status`) VALUES
(1, '0001/2023-24', '57', NULL, 0),
(2, '0002/2023-24', '59', NULL, 0),
(3, '0003/2023-24', '60', NULL, 0),
(4, '0004/2023-24', '74', '1693094400', 0),
(5, '0005/2023-24', '75', '1693180800', 0),
(6, '0006/2023-24', '77', '1693440000', 0),
(7, '0007/2023-24', '78', '1693526400', 0),
(8, '0008/2023-24', '76', '1693526400', 0),
(9, '0009/2023-24', '79', '1693612800', 0),
(10, '0010/2023-24', '82', '1693612800', 0),
(11, '0011/2023-24', '81', '1693958400', 0),
(12, '0012/2023-24', '80', '1694131200', 0),
(13, '0013/2023-24', '83', '1694131200', 0),
(14, '0014/2023-24', '84', '1694217600', 0),
(15, '0015/2023-24', '89', '1694649600', 0),
(16, '0016/2023-24', '85', '1694649600', 0),
(17, '0017/2023-24', '91', '1694649600', 0),
(18, '0018/2023-24', '92', '1694736000', 0),
(19, '0019/2023-24', '87', '1694736000', 0),
(20, '0020/2023-24', '88', '1695081600', 0),
(21, '0021/2023-24', '93', '1695081600', 0),
(22, '0022/2023-24', '90', '1695081600', 0),
(23, '0023/2023-24', '86', '1695168000', 0),
(24, '0024/2023-24', '95', '1695254400', 0),
(25, '0025/2023-24', '94', '1695254400', 0),
(26, '0026/2023-24', '99', '1695513600', 0),
(27, '0027/2023-24', '100', '1695513600', 0),
(28, '0028/2023-24', '96', '1695600000', 0),
(29, '0029/2023-24', '98', '1695686400', 0),
(30, '0030/2023-24', '97', '1695686400', 0),
(31, '0031/2023-24', '102', '1695772800', 0),
(32, '0032/2023-24', '106', '1695772800', 0),
(33, '0033/2023-24', '107', '1695945600', 0),
(34, '0034/2023-24', '103', '1695945600', 0),
(35, '0035/2023-24', '110', '1696032000', 0),
(36, '0036/2023-24', '109', '1696291200', 0),
(37, '0037/2023-24', '105', '1696291200', 0),
(38, '0038/2023-24', '111', '1696377600', 0),
(39, '0039/2023-24', '112', '1696377600', 0),
(40, '0040/2023-24', '108', '1696377600', 0),
(41, '0041/2023-24', '115', '1696464000', 0),
(42, '0042/2023-24', '104', '1696464000', 0),
(43, '0043/2023-24', '117', '1696464000', 0),
(44, '0044/2023-24', '114', '1696464000', 0),
(45, '0045/2023-24', '120', '1696550400', 0),
(46, '0046/2023-24', '113', '1696550400', 0),
(47, '0047/2023-24', '125', '1696723200', 0),
(48, '0048/2023-24', '123', '1696809600', 0),
(49, '0049/2023-24', '121', '1696809600', 0),
(50, '0050/2023-24', '0', NULL, 0),
(51, '0051/2023-24', '129', '1696896000', 0),
(52, '0052/2023-24', '124', '1696896000', 0),
(53, '0053/2023-24', '116', '1696982400', 0),
(54, '0054/2023-24', '122', '1696982400', 0),
(55, '0055/2023-24', '130', '1696982400', 0),
(56, '0056/2023-24', '132', '1696982400', 0),
(57, '0057/2023-24', '134', '1697068800', 0),
(58, '0058/2023-24', '139', '1697241600', 0),
(59, '0059/2023-24', '128', '1697328000', 0),
(60, '0060/2023-24', '135', '1697328000', 0),
(61, '0061/2023-24', '138', '1697414400', 0),
(62, '0062/2023-24', '118', '1697500800', 0),
(63, '0063/2023-24', '126', '1697500800', 0),
(64, '0064/2023-24', '141', '1697587200', 0),
(65, '0065/2023-24', '133', '1697587200', 0),
(66, '0066/2023-24', '143', '1697673600', 0),
(67, '0067/2023-24', '119', '1697673600', 0),
(68, '0068/2023-24', '144', '1697673600', 0),
(69, '0069/2023-24', '142', '1697673600', 0),
(70, '0070/2023-24', '137', '1697673600', 0),
(71, '0071/2023-24', '140', '1697673600', 0),
(72, '0072/2023-24', '131', '1697760000', 0),
(73, '0073/2023-24', '149', '1697846400', 0),
(74, '0074/2023-24', '127', '1697846400', 0),
(75, '0075/2023-24', '151', '1697932800', 0),
(76, '0076/2023-24', '150', '1697932800', 0),
(77, '0077/2023-24', '145', '1697932800', 0),
(78, '0078/2023-24', '153', '1698105600', 0),
(79, '0079/2023-24', '136', '1698192000', 0),
(80, '0080/2023-24', '146', '1698192000', 0),
(81, '0081/2023-24', '148', '1698192000', 0),
(82, '0082/2023-24', '147', '1698278400', 0),
(83, '0083/2023-24', '156', '1698278400', 0),
(84, '0084/2023-24', '157', '1698278400', 0),
(85, '0085/2023-24', '160', '1698364800', 0),
(86, '0086/2023-24', '161', '1698451200', 0),
(87, '0087/2023-24', '162', '1698451200', 0),
(88, '0088/2023-24', '164', '1698537600', 0),
(89, '0089/2023-24', '158', '1698537600', 0),
(90, '0090/2023-24', '155', '1698537600', 0),
(91, '0091/2023-24', '152', '1698624000', 0),
(92, '0092/2023-24', '165', '1698710400', 0),
(93, '0093/2023-24', '163', '1698796800', 0),
(94, '0094/2023-24', '159', '1698883200', 0),
(95, '0095/2023-24', '166', '1698883200', 0),
(96, '0096/2023-24', '167', '1698883200', 0),
(97, '0097/2023-24', '168', '1698969600', 0),
(98, '0098/2023-24', '170', '1699056000', 0),
(99, '0099/2023-24', '154', '1699056000', 0),
(100, '0100/2023-24', '172', '1699142400', 0),
(101, '0101/2023-24', '171', '1699142400', 0),
(102, '0102/2023-24', '173', '1699142400', 0),
(103, '0103/2023-24', '176', '1699228800', 0),
(104, '0104/2023-24', '177', '1699228800', 0),
(105, '0105/2023-24', '181', '1699315200', 0),
(106, '0106/2023-24', '180', '1699315200', 0),
(107, '0107/2023-24', '184', '1699401600', 0),
(108, '0108/2023-24', '175', '1699401600', 0),
(109, '0109/2023-24', '174', '1699574400', 0),
(110, '0110/2023-24', '186', '1699574400', 0),
(111, '0111/2023-24', '187', '1699574400', 0),
(112, '0112/2023-24', '190', '1699574400', 0),
(113, '0113/2023-24', '189', '1699574400', 0),
(114, '0114/2023-24', '191', '1699660800', 0),
(115, '0115/2023-24', '194', '1699833600', 0),
(116, '0116/2023-24', '178', '1699833600', 0),
(117, '0117/2023-24', '185', '1699833600', 0),
(118, '0118/2023-24', '179', '1699833600', 0),
(119, '0119/2023-24', '198', '1699920000', 0),
(120, '0120/2023-24', '199', '1699920000', 0),
(121, '0121/2023-24', '169', '1699920000', 0),
(122, '0122/2023-24', '197', '1700006400', 0),
(123, '0123/2023-24', '195', '1700006400', 0),
(124, '0124/2023-24', '196', '1700092800', 0),
(125, '0125/2023-24', '205', '1700092800', 0),
(126, '0126/2023-24', '203', '1700092800', 0),
(127, '0127/2023-24', '211', '1700179200', 0),
(128, '0128/2023-24', '210', '1700179200', 0),
(129, '0129/2023-24', '214', '1700265600', 0),
(130, '0130/2023-24', '219', '1700265600', 0),
(131, '0131/2023-24', '200', '1700265600', 0),
(132, '0132/2023-24', '204', '1700265600', 0),
(133, '0133/2023-24', '233', '1700524800', 0),
(134, '0134/2023-24', '234', '1700524800', 0),
(135, '0135/2023-24', '201', '1700524800', 0),
(136, '0136/2023-24', '235', '1700524800', 0),
(137, '0137/2023-24', '238', '1700611200', 0),
(138, '0138/2023-24', '239', '1700611200', 0),
(139, '0139/2023-24', '209', '1700611200', 0),
(140, '0140/2023-24', '221', '1700611200', 0),
(141, '0141/2023-24', '244', '1700611200', 0),
(142, '0142/2023-24', '230', '1700611200', 0),
(143, '0143/2023-24', '231', '1700697600', 0),
(144, '0144/2023-24', '202', '1700784000', 0),
(145, '0145/2023-24', '240', '1700784000', 0),
(146, '0146/2023-24', '261', '1700870400', 0),
(147, '0147/2023-24', '217', '1700956800', 0),
(148, '0148/2023-24', '277', '1700956800', 0),
(149, '0149/2023-24', '232', '1700956800', 0),
(150, '0150/2023-24', '262', '1700956800', 0),
(151, '0151/2023-24', '276', '1701302400', 0),
(152, '0152/2023-24', '275', '1701043200', 0),
(153, '0153/2023-24', '259', '1701043200', 0),
(154, '0154/2023-24', '288', '1701129600', 0),
(155, '0155/2023-24', '298', '1701216000', 0),
(156, '0156/2023-24', '297', '1701216000', 0),
(157, '0157/2023-24', '268', '1701216000', 0),
(158, '0158/2023-24', '263', '1701216000', 0),
(159, '0159/2023-24', '245', '1701302400', 0),
(160, '0160/2023-24', '299', '1701302400', 0),
(161, '0161/2023-24', '301', '1701302400', 0),
(162, '0162/2023-24', '273', '1701302400', 0),
(163, '0163/2023-24', '270', '1701302400', 0),
(164, '0164/2023-24', '269', '1701302400', 0),
(165, '0165/2023-24', '284', '1701302400', 0),
(166, '0166/2023-24', '272', '1701388800', 0),
(167, '0167/2023-24', '271', '1701388800', 0),
(168, '0168/2023-24', '274', '1701388800', 0),
(169, '0169/2023-24', '309', '1701388800', 0),
(170, '0170/2023-24', '264', '1701475200', 0),
(171, '0171/2023-24', '325', '1701475200', 0),
(172, '0172/2023-24', '257', '1701475200', 0),
(173, '0173/2023-24', '248', '1701475200', 0),
(174, '0174/2023-24', '316', '1701475200', 0),
(175, '0175/2023-24', '279', '1701561600', 0),
(176, '0176/2023-24', '285', '1701561600', 0),
(177, '0177/2023-24', '253', '1701648000', 0),
(178, '0178/2023-24', '321', '1701648000', 0),
(179, '0179/2023-24', '305', '1701734400', 0),
(180, '0180/2023-24', '306', '1701734400', 0),
(181, '0181/2023-24', '319', '1701734400', 0),
(182, '0182/2023-24', '324', '1701734400', 0),
(183, '0183/2023-24', '334', '1701820800', 0),
(184, '0184/2023-24', '335', '1701820800', 0),
(185, '0185/2023-24', '336', '1701820800', 0),
(186, '0186/2023-24', '286', '1701820800', 0),
(187, '0187/2023-24', '322', '1701820800', 0),
(188, '0188/2023-24', '323', '1701820800', 0),
(189, '0189/2023-24', '313', '1701820800', 0),
(190, '0190/2023-24', '314', '1701820800', 0),
(191, '0191/2023-24', '296', '1701907200', 0),
(192, '0192/2023-24', '310', '1701907200', 0),
(193, '0193/2023-24', '343', '1701907200', 0),
(194, '0194/2023-24', '344', '1701907200', 0),
(195, '0195/2023-24', '342', '1701907200', 0),
(196, '0196/2023-24', '351', '1701993600', 0),
(197, '0197/2023-24', '345', '1701993600', 0),
(198, '0198/2023-24', '346', '1702080000', 0),
(199, '0199/2023-24', '295', '1702080000', 0),
(200, '0200/2023-24', '362', '1702166400', 0),
(201, '0201/2023-24', '365', '1702252800', 0),
(202, '0202/2023-24', '320', '1702252800', 0),
(203, '0203/2023-24', '266', '1702339200', 0),
(204, '0204/2023-24', '289', '1702339200', 0),
(205, '0205/2023-24', '375', '1702425600', 0),
(206, '0206/2023-24', '382', '1702425600', 0),
(207, '0207/2023-24', '366', '1702425600', 0),
(208, '0208/2023-24', '349', '1702425600', 0),
(209, '0209/2023-24', '308', '1702425600', 0),
(210, '0210/2023-24', '368', '1702425600', 0),
(211, '0211/2023-24', '361', '1702512000', 0),
(212, '0212/2023-24', '348', '1702512000', 0),
(213, '0213/2023-24', '389', '1702598400', 0),
(214, '0214/2023-24', '391', '1702598400', 0),
(215, '0215/2023-24', '388', '1702598400', 0),
(216, '0216/2023-24', '393', '1702598400', 0),
(217, '0217/2023-24', '380', '1702598400', 0),
(218, '0218/2023-24', '381', '1702598400', 0),
(219, '0219/2023-24', '395', '1702598400', 0),
(220, '0220/2023-24', '337', '1702598400', 0),
(221, '0221/2023-24', '397', '1702684800', 0),
(222, '0222/2023-24', '392', '1702684800', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `sname`, `designation`, `blood`, `contact`, `avatar`) VALUES
(3, 'Mr. N. Tharmaraj', 'Software Developer', 'O +ve', '9597671071', NULL),
(4, 'MRS.VENNILA', 'ADMIN-HEAD', 'A1 +VE', '9500457792', NULL),
(7, 'MR.GOVINDAN', 'FIELD OFFICER', 'O +ve', '+91-8072030190', NULL),
(8, 'MR.ARUMUGAM', 'FIELD OFFICER', 'O+ve', '+91-8489750512', NULL),
(9, 'MR.PRASANTH', 'FIELD OFFICER', 'A1 +ve', '+91-6374375335', NULL),
(10, 'MR.MUNIYAPPAN', 'FIELD OFFICER', 'B +ve', '+91-9629248813', NULL),
(11, 'MR.SUBIN', 'FIELD OFFICER', 'B +VE', '7871349361', NULL),
(13, 'MR.SETHURAMAKRISHNAN', 'FIELD OFFICER', 'B +VE', '9080363091', NULL),
(14, 'MR.SRINATH', 'FIELD OFFICER', 'O +ve', '8508508895', NULL),
(15, 'MR.FEROZ KHAN', 'FIELD OFFICER', 'O + VE', '9894841685', NULL),
(16, 'MR.RAMKUMAR', 'FIELD OFFICER', 'O +ve', ' 9994090343', NULL),
(17, 'MR.RAJARAM', 'FIELD OFFICER', 'A1B +ve', '7708934245', NULL),
(18, 'DR.R.SREE VARSHINEE', 'MANAGER - QUALITY CONTROL', 'B +ve', '9500099716', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `token`) VALUES
(1, 'murugan', 'admin123', 'admin', 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `vname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vname`) VALUES
(8, 'GLOBAL INSURANCE CLAIM SOLUTION');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intimations`
--
ALTER TABLE `intimations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `intimations`
--
ALTER TABLE `intimations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
