-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 12, 2023 at 12:31 PM
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
(2, 'Arathana Hospital', 'Coimbatore'),
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
(113, 'THENKASI GOVERNMENT HOSPITAL', 'THENKASI');

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
(2, 'Aditya Birla Capital Health Insurance', 'add1', 'add2', 'g1233', NULL),
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
(36, 'CHOLA MS GENERAL INSURANCE COMPANY', NULL, NULL, NULL, NULL),
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
  `incentive` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `intimations`
--

INSERT INTO `intimations` (`id`, `vendor`, `pname`, `age`, `sex`, `doa`, `dod`, `doi`, `opno`, `ipno`, `hosp_details`, `triggers`, `claimno`, `insurance_tpa`, `policy_type`, `doj`, `claim_type`, `case_type`, `fees`, `mrd`, `transportation`, `created`, `created_by`, `updated`, `updated_by`, `gicsid`, `invoice`, `incentive`) VALUES
(2, '4', 'TEST', '25', 'Male', '1641427200', '1651795200', '1646524800', '98768549876', '458746464', '2', '545646465464', '45687989746352146584', '8', 'Individual', '', 'MPA', 'Accident', '50000', '10000', '1000', '1683122199', 'admin', NULL, NULL, 'GICS1683122199_2', 0, NULL),
(45, '2', 'Xxx', '12', 'Male', '1687132800', '1687219200', '1687132800', 'Hdhdjdj', '6788', '4', 'Hjdkdk', 'Hdjjddk', '7', 'Individual', '1687305600', 'MPA', 'Accident', '', '', '', '1687276882', 'admin', NULL, NULL, 'GICS1687276882_45', 0, NULL),
(74, '8', 'MRS.B.GAYATRI', '43', 'Female', '1692921600', '1693094400', '1692835200', '000', '000', '103', '1. Genuinity of claim, Suspicious/ fraudulent . 2. Get all Investigation reports , 3. Get all ICPs, 4. Rule out PED 5. Complete Medical & surgical history ,6. Crosscheck all indoor case papers, admission history sheet, and Discharge summary, 7. Crosscheck all previous treatment records including First Consultation papers.,', '4000079720', '35', 'Individual', '1662940800', 'Cashless', 'PED', '1200', '0', '0', '1693094400', 'admin', NULL, NULL, 'GICS1692875052_74', 1, '0'),
(75, '8', 'MR.LIKITH REDDY', '17', 'Male', '1693094400', '1693440000', '1693180800', '00000', '00000', '104', 'Genuinity', '4000080920', '35', 'Individual', '1688428800', 'Cashless', 'Genuinity', '1200', '0', '0', '1693180800', 'admin', NULL, NULL, 'GICS1693190764_75', 1, '0'),
(76, '8', 'MRS.DEVI', '39', 'Female', '1684108800', '1684713600', '1692835200', 'C101.23.00207917', 'IP248469', '105', 'Provider is The Cancer Institute, also known as the Adyar Cancer Institute, is a non-profit cancer treatment and research centre based in Chennai, as first year policy assigning CI verify for ND and PED, verify for ND and PED', '4000068721', '35', 'Individual', '1666137600', 'Reimbursement', 'PED', '2500', '0', '0', '1693526400', 'admin', NULL, NULL, 'GICS1693203021_76', 1, '500'),
(77, '8', 'MRS.SATHYA ', '36', 'Female', '1688947200', '1688947200', '1693180800', '347157', 'IP/01230710/006', '106', 'Genuinity as Higher bill amount for cataract / PED', '4000075170', '35', 'Individual', '1609459200', 'Reimbursement', 'PED', '2500', '0', '0', '1693440000', 'admin', NULL, NULL, 'GICS1693209598_77', 1, '500'),
(78, '8', 'MRS.SANTHIYA', '28', 'Female', '1689724800', '1689897600', '1693180800', '1936687', 'H14457', '23', 'early claim need to rule out ped and nd need past treatment records', '4000078741', '35', 'Individual', '1679270400', 'Reimbursement', 'PED', '2500', '460', '0', '1693526400', 'admin', NULL, NULL, 'GICS1693227326_78', 1, '500'),
(79, '8', 'MR.VIDYUTH', '29', 'Male', '1688428800', '1688688000', '1693267200', '138850', '23-1540', '107', 'High value reimbursement claims, Large Claim amount,Reimbursement claim from a network hospital, claim inception and admission is on same day high suspected fraud', '4000080692', '35', 'Individual', '1688428800', 'Reimbursement', 'Accident', '2500', '0', '0', '1693612800', 'admin', NULL, NULL, 'GICS1693380611_79', 1, '500'),
(80, '8', 'MR.MANIKANDAN', '34', 'Male', '1674172800', '1675036800', '1693353600', '324587', 'IP2211489', '94', 'Collect MLC,,Vicinity check / Alcohol consumption / Genuinity', '4000078972', '35', 'Individual', '1671840000', 'Reimbursement', 'Accident', '2500', '0', '0', '1694131200', 'admin', NULL, NULL, 'GICS1693381913_80', 1, '500'),
(81, '8', 'MR.THARACHAND', '40', 'Male', '1689638400', '1690243200', '1693353600', 'CM230000342401', 'IP0000064121', '108', 'Policy since 12-05-2023, single member policy, CAD, DM recently detected, suspicious as very close proximity and claiming more than SI, kindly investigate,Check for PED if any and get the diabetes exact duration', '4000080551', '35', 'Individual', '1683849600', 'Reimbursement', 'PED', '2500', '500', '0', '1693958400', 'admin', NULL, NULL, 'GICS1693383033_81', 1, '500'),
(82, '8', 'MR.UMAPATHY', '34', 'Male', '1690588800', '1690934400', '1693526400', '235833', '83658', '109', 'Collect First Hospitalization documents and other hospitalization  documents  to r/o Alcoholic intoxication', '4210001367A', '35', 'Corporate', '1609459200', 'PA', 'Accident', '2500', '0', '550', '1693612800', 'admin', NULL, NULL, 'GICS1693555991_82', 1, '500'),
(83, '8', 'MRS.SARASWATHY', '47', 'Female', '1685923200', '1686182400', '1693958400', '0000', '0000', '110', 'Genuinity / Alcohol consumption', '0822483590A', '35', 'Corporate', '1577836800', 'PA', 'Accident', '2500', '0', '300', '1694131200', 'admin', NULL, NULL, 'GICS1694166771_83', 1, '500'),
(84, '8', 'MR.NAGARAJAN', '0', 'Male', '1694044800', '1694390400', '1694131200', '0000', '00000', '65', 'PED / ND if any / Genuinity', '4000084365', '35', 'Individual', '1681430400', 'Cashless', 'PED', '1200', '0', '0', '1694217600', 'admin', NULL, NULL, 'GICS1694193823_84', 1, '0'),
(85, '8', 'MRS.NAGA SINDHUJADEVI', '30', 'Female', '1686009600', '1686268800', '1694304000', 'PNA/232/99', 'PNA/232/99', '111', 'Please investigate the case for genuinity / Hospital registration certificate /  no of beds / Inflation of bills', '4000081683', '35', 'Individual', '1577836800', 'Reimbursement', 'Genuinity', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1694413632_85', 0, '0'),
(86, '8', 'MRS.NAVEENA PRIYA', '30', 'Female', '1691020800', '1691107200', '1694304000', '0292251', 'IPB202311110', '61', 'Genuinity / PED / 24 Hours hospitalization', '4000082148', '35', 'Individual', '1649894400', 'Reimbursement', 'PED', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1694414216_86', 0, '0'),
(87, '8', 'MR.NARAYANASAMY', '63', 'Male', '1672272000', '1672272000', '1694390400', '0000', '0000', '112', 'Genuinity / Alcohol consumption at the time of accident', '0822537818A', '35', 'Corporate', '1640995200', 'PA', 'Accident', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1694415866_87', 0, '0'),
(88, '8', 'MR.LAKSHMANAN', '44', 'Male', '1686009600', '1686009600', '1694390400', '0000', '0000', '113', 'Genuinity / Alcohol consumption at the time of accident', '4210002781', '35', 'Individual', '1577836800', 'PA', 'Accident', '0', '0', '0', '', 'admin', NULL, NULL, 'GICS1694416655_88', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `intimations_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_no`, `intimations_id`) VALUES
(1, '0001/2023-24', '57'),
(2, '0002/2023-24', '59'),
(3, '0003/2023-24', '60'),
(4, '0004/2023-24', '74'),
(5, '0005/2023-24', '75'),
(6, '0006/2023-24', '77'),
(7, '0007/2023-24', '78'),
(8, '0008/2023-24', '76'),
(9, '0009/2023-24', '79'),
(10, '0010/2023-24', '82'),
(11, '0011/2023-24', '81'),
(12, '0012/2023-24', '80'),
(13, '0013/2023-24', '83'),
(14, '0014/2023-24', '84');

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
(3, 'SR Associates'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `intimations`
--
ALTER TABLE `intimations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
