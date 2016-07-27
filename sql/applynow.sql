-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2016 at 07:35 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applynow`
--

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `ID` int(10) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Established` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Website` varchar(300) DEFAULT NULL,
  `Campus` varchar(100) DEFAULT NULL,
  `Postgraduates` varchar(100) DEFAULT NULL,
  `Undergraduates` varchar(100) DEFAULT NULL,
  `Students` varchar(100) DEFAULT NULL,
  `Administrative_staff` varchar(100) DEFAULT NULL,
  `Academic_staff` varchar(100) DEFAULT NULL,
  `Seal` varchar(100) DEFAULT NULL,
  `Image` varchar(300) DEFAULT NULL,
  `Endowment` varchar(100) DEFAULT NULL,
  `Sports` varchar(100) DEFAULT NULL,
  `Affiliations` varchar(100) DEFAULT NULL,
  `Sporting_affiliations` varchar(100) DEFAULT NULL,
  `Latin` varchar(100) DEFAULT NULL,
  `Former_names` varchar(100) DEFAULT NULL,
  `Chancellor` varchar(100) DEFAULT NULL,
  `Provost` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `President` varchar(100) DEFAULT NULL,
  `Motto` varchar(100) DEFAULT NULL,
  `Mascot` varchar(100) DEFAULT NULL,
  `Academic_affiliation` varchar(100) DEFAULT NULL,
  `Budget` varchar(100) DEFAULT NULL,
  `Motto_in English` varchar(100) DEFAULT NULL,
  `Newspaper` varchar(100) DEFAULT NULL,
  `Athletics` varchar(100) DEFAULT NULL,
  `Nickname` varchar(100) DEFAULT NULL,
  `Student_newspaper` varchar(100) DEFAULT NULL,
  `Affiliation` varchar(100) DEFAULT NULL,
  `Colors` varchar(100) DEFAULT NULL,
  `Doctoral_students` varchar(100) DEFAULT NULL,
  `Chairman` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`ID`, `Name`, `Established`, `Location`, `Type`, `Website`, `Campus`, `Postgraduates`, `Undergraduates`, `Students`, `Administrative_staff`, `Academic_staff`, `Seal`, `Image`, `Endowment`, `Sports`, `Affiliations`, `Sporting_affiliations`, `Latin`, `Former_names`, `Chancellor`, `Provost`, `Address`, `President`, `Motto`, `Mascot`, `Academic_affiliation`, `Budget`, `Motto_in English`, `Newspaper`, `Athletics`, `Nickname`, `Student_newspaper`, `Affiliation`, `Colors`, `Doctoral_students`, `Chairman`) VALUES
(1, 'Boston University', '1839', 'Boston, Massachusetts, U.S.', 'Private – Research', 'www.bu.edu', 'Urban2) ', '14,032 ', '16,512 ', '33,421 ', '9,974 ', '3,888', NULL, 'upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Boston_University_seal.svg/150px-Boston_University_seal.svg.png', '$1.644 billion ', NULL, 'AAUURAAICUMNAICUIAMSCU', NULL, ': Universitas Bostoniensis', NULL, NULL, 'Jean Morrison', NULL, 'Robert A. Brown', 'Learning, Virtue, Piety', 'Rhett the Boston Terrier', NULL, NULL, NULL, NULL, 'NCAA Division I – Patriot League, Hockey East', 'Terriers', NULL, NULL, 'Scarlet and white', NULL, NULL),
(2, 'Harvard University', '1636 ', 'Cambridge, Massachusetts, U.S.', 'Private research', 'www.harvard.edu', 'Urban', '14,500', '6,700', '21,000', NULL, '4,671', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/3/3a/Harvard_Wreath_Logo_1.svg/150px-Harvard_Wreath_Logo_1.svg.png', '$37.6 billion', NULL, 'NAICUAICUMAAUURA', NULL, ': Universitas Harvardiana', NULL, NULL, NULL, NULL, 'Drew Gilpin Faust', 'Veritas', NULL, NULL, NULL, 'Truth', NULL, 'NCAA Division I – Ivy League', 'Harvard Crimson', NULL, NULL, 'Crimson', NULL, NULL),
(3, 'Northeastern University', '1898 ', 'Boston, MA, 02115, USA42°20?20?N 71°05?25?W / 42.338889°N 71.090278°W / 42.338889; -71.090278Coordin', 'Private', 'northeastern.edu', 'Urban, 73 acres', '6,954 ', '17,990 ', '24,944 ', NULL, '1,660 ', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/f/f5/Northeastern-seal.svg/150px-Northeastern-seal.svg.png', '$729.4 million ', NULL, 'AICUMNAICUURA', NULL, NULL, NULL, NULL, NULL, NULL, 'Joseph Aoun', 'Lux, Veritas, Virtus ', 'Paws', NULL, NULL, 'Light, Truth, Courage', NULL, 'NCAA Division I – CAA, Hockey East, EARC', 'Huskies', NULL, NULL, '     Northeastern Red', NULL, NULL),
(4, 'Boston College', '1863', 'Chestnut Hill, Massachusetts, U.S.42°20?6.3?N 71°10?13.3?W / 42.335083°N 71.170361°W / 42.335083; -7', 'Private NonprofitResearch Coeducational', 'www.bc.edu', 'Suburban - 332.5 acres ', '4,400', '9,100', '14,100', '2,418', 'Total: 1,386', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/5/5b/Boston_College_Seal.svg/150px-Boston_College_Seal.svg.png', '$2.220 billion ', '29 varsity sports teams', 'AJCUNEASC568 GroupACCUAICUMNAICU', NULL, ': Collegium Bostoniense', NULL, NULL, NULL, NULL, 'Rev. William P. Leahy, S.J.', '???? ?????????? ', 'Baldwin the Eagle', NULL, NULL, 'Ever to Excel', 'The Heights', 'NCAA Division I – ACCHockey East', 'Eagles', NULL, 'Roman Catholic ', 'Maroon and Gold', NULL, NULL),
(5, 'University of Massachusetts Boston', '1852 Boston State College', 'Boston, Massachusetts, U.S.42°18?48?N 71°02?18?W / 42.313432°N 71.038445°W / 42.313432; -71.038445Co', 'Public', 'umb.edu', 'Urban, 175 acres ', '4,056', '12,700', '16,756', NULL, '800-900', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/c/ce/UMASSBOSTON_ID_blue.v2.png/150px-UMASSBOSTON_ID_blue.v2.png', '$78.9 million ', NULL, 'UMass SystemAPLUAAC&UAASCUUrban 13/GCUCUMU', NULL, NULL, NULL, 'J. Keith Motley, Ph.D.', 'Winston Langley, Ph.D.', NULL, 'Marty Meehan', NULL, 'Bobby Beacon', NULL, NULL, NULL, 'The Mass Media', 'NCAA Division III – Little East, ECAC East', 'Beacons', NULL, NULL, '     UMass Boston Blue', NULL, NULL),
(6, 'Suffolk University', '1906', 'Boston, Massachusetts, United States42°21?28?N 71°03?40?W / 42.3579°N 71.0610°W / 42.3579; -71.0610C', 'Private', 'www.suffolk.edu', 'UrbanBoston - Main Campus, Madrid', NULL, NULL, '10,192', '505', '963', ' of Suffolk University', 'upload.wikimedia.org/wikipedia/en/thumb/7/71/Suffolk_University.png/150px-Suffolk_University.png', 'US$ 208.4 million', NULL, 'AALS', NULL, NULL, NULL, NULL, NULL, NULL, 'Margaret McKenna', 'Honestas et Diligentia ', 'Ram', NULL, 'US$ 319.54 million ', NULL, NULL, 'NCAA Division III - GNAC, ECAC', 'Rams', 'The Suffolk Journal', NULL, '         ', NULL, NULL),
(7, 'Tufts University', '1852', 'Medford, Massachusetts, U.S.42°24?22?N 71°07?12?W / 42.406°N 71.120°W / 42.406; -71.120Coordinates: ', 'Private non-profit', 'www.tufts.edu', 'Urban, total 150 acres ', '5,499 ', '5,186 ', '10,685 ', NULL, '1,339 ', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/b/b1/Tufts_official_seal.svg/150px-Tufts_official_seal.svg.png', '$1.593 billion ', '29 varsity teams', 'URAAICUMNAICU', NULL, ': Universitas Tuftensis', 'Tufts College', NULL, 'David R. Harris', NULL, 'Anthony P. Monaco', 'Pax et Lux ', 'Jumbo the Elephant', NULL, NULL, 'Peace and Light', NULL, 'NCAA Division III – NESCAC', 'Jumbos', 'The Tufts Daily', NULL, 'Tufts Blue and brown          ', NULL, 'Peter R. Dolan'),
(8, 'Massachusetts Institute of Technology', 'April 10, 1861 ', 'Cambridge, Massachusetts, United States', 'PrivateLand grant', 'www.mit.edu', 'Urban, 168 acres ', '6,807', '4,512', '11,319', NULL, '1,021', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/4/44/MIT_Seal.svg/150px-MIT_Seal.svg.png', '$13.475 billion ', NULL, NULL, 'NCAA Division III – NEWMAC, NEFC,Pilgrim LeagueDivision I – EARC & EAWRC ', NULL, NULL, 'Cynthia Barnhart', 'Martin A. Schmidt', NULL, 'L. Rafael Reif', 'Mens et Manus ', 'Tim the Beaver', 'AAUAICUMAITUAPLUCOFHENAICU', NULL, 'Mind and Hand', 'The Tech', NULL, 'Engineers', NULL, NULL, 'Cardinal Red & Steel Gray', NULL, NULL),
(9, 'Bunker Hill Community College', '1973', 'Greater Boston, Massachusetts, US', 'Community', 'www.bhcc.mass.edu', 'Urban', NULL, NULL, '14,277 ', NULL, NULL, NULL, 'upload.wikimedia.org/wikipedia/commons/thumb/8/84/Bunker_Hill_College_main_entrance%2C_January_2010.JPG/220px-Bunker_Hill_College_main_entrance%2C_January_2010.JPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pam Y. Eddinger ', 'Learning for the Real World', 'Bulldog', NULL, NULL, NULL, NULL, NULL, 'BHCC', NULL, NULL, NULL, NULL, NULL),
(10, 'Lesley University', '1909', 'Cambridge, Massachusetts, U.S.', 'Private, coeducational', 'Lesley.edu', 'Urban 13.76 Acres', '7,768', '1,857', '9,625', NULL, NULL, NULL, 'upload.wikimedia.org/wikipedia/en/thumb/1/1b/Lesleyuniversity_crest.png/185px-Lesleyuniversity_crest.png', '$189.8 million', NULL, NULL, NULL, NULL, NULL, NULL, 'Selase Williams', NULL, 'Jeff A. Weiss', 'Perissem Ni Perstitissem ', NULL, NULL, NULL, 'I Had Perished Had I Not Persisted', NULL, 'NCAA Division IIINew England Collegiate Conference', 'Lynx', NULL, NULL, 'Green and White          ', NULL, NULL),
(11, 'Bentley University', '1917', 'Waltham, Massachusetts, U.S.', 'Private', 'www.bentley.edu', 'Suburban', '1,405', '4,157', '5,602', NULL, '484', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/1/15/Bentley_University_seal.svg/150px-Bentley_University_seal.svg.png', '$258 million', NULL, NULL, NULL, NULL, 'Bentley College', NULL, NULL, NULL, 'Gloria Cordes Larson', 'Paratus ', 'Flex the Falcon', NULL, NULL, 'Prepared', NULL, 'NCAA Division II', 'Falcons', NULL, NULL, 'Blue, White', '40', NULL),
(12, 'Cambridge College', '1971', 'Cambridge and Springfield, MA, USA', 'Private non-profit', 'cambridgecollege.edu', 'Urban', '5,375', '1,552', NULL, NULL, NULL, NULL, 'upload.wikimedia.org/wikipedia/en/thumb/b/bd/Cambridge_College_logo.svg/220px-Cambridge_College_logo.svg.png', '$11.1 million', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deborah Jackson', 'My Life. My College.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Blue & White          ', NULL, NULL),
(13, 'Brandeis University', 'October 20, 1948', 'Waltham, Massachusetts, U.S.', 'Private', 'www.brandeis.edu', 'Suburban, 235 acres ', '2,220', '3,588', NULL, '961 full-time, 216 part-time', '361 full-time, 150 part-time', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/e/ef/BrandeisUnivSeal.png/150px-BrandeisUnivSeal.png', '$915.1 million ', NULL, 'AAUNAICU', NULL, NULL, NULL, NULL, 'Lisa M.Lynch', NULL, 'Ronald D. Liebowitz', '??? ', 'Ollie the Owl ', NULL, NULL, 'Truth even unto its innermost parts', NULL, 'NCAA Division IIIUAA, ECAC', 'Judges', NULL, NULL, '     Blue      White', NULL, NULL),
(14, 'Simmons College', '1899', 'Boston, Massachusetts, U.S.', 'Private women''s Undergraduate, Co-educational Graduate', 'www.simmons.edu', 'Urban', '2,873 men and women', '2,060 women', NULL, NULL, '251 full-time/327 part-time', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/2/21/Simmons_College_Seal.svg/150px-Simmons_College_Seal.svg.png', NULL, NULL, 'Colleges of the Fenway', NULL, NULL, NULL, NULL, NULL, NULL, 'Helen Drinan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sharks', NULL, NULL, NULL, NULL, NULL),
(15, 'Emerson College', '1880', 'Boston, Massachusetts, U.S.42°21?06?N 71°03?58?W / 42.3518°N 71.0660°W / 42.3518; -71.0660', 'Private', 'www.emerson.edu', 'Urban', '837', '3,453', NULL, NULL, '576', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/4/41/Emerson_College_Shield-trans.png/150px-Emerson_College_Shield-trans.png', '$146 million', NULL, 'ProArts Consortium, New England Association of Schools and Colleges', NULL, NULL, 'Emerson College of Oratory ', NULL, NULL, NULL, 'M. Lee Pelton', 'Expression Necessary to Evolution', NULL, NULL, NULL, NULL, NULL, NULL, 'Lions', NULL, NULL, 'Royal Purple     ', NULL, NULL),
(16, 'Berklee College of Music', '1945', 'Boston, Massachusetts, United States', 'Private', 'berklee.edu', 'Urban', NULL, NULL, '4,490', NULL, '522', NULL, 'upload.wikimedia.org/wikipedia/en/thumb/e/e5/Official_Seal_of_the_Berklee_College_of_Music%2C_Boston%2C_MA%2C_USA.svg/200px-Official_Seal_of_the_Berklee_College_of_Music%2C_Boston%2C_MA%2C_USA.svg.png', '$321 million', NULL, 'NEASCProfessional Arts Consortium', NULL, NULL, 'Schillinger House', NULL, NULL, NULL, 'Roger H. Brown', 'Esse quam videri ', 'Mingus the Jazz Cat', NULL, NULL, 'To be, rather than to appear to be', NULL, NULL, NULL, NULL, NULL, 'Red and gray          ', NULL, NULL),
(17, 'Quincy College', '1958', 'Quincy, Massachusetts, United States42°15?11?N 71°00?11?W / 42.253005°N 71.003177°W / 42.253005; -71', 'Public', 'www.quincycollege.edu', 'Suburban', NULL, NULL, '4,505', NULL, NULL, ' of Quincy College', 'upload.wikimedia.org/wikipedia/en/e/e6/QuincyCollegeseal.png', NULL, NULL, NULL, NULL, NULL, 'College Courses, Inc. ', NULL, NULL, NULL, 'Peter H Tsaffaras', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'MCPHS University', 'December 8, 1823', NULL, 'Private Non-profit organization', 'www.mcphs.edu', 'Urban 9 acres ', NULL, NULL, '7,074', NULL, NULL, ' of MCPHS University', 'upload.wikimedia.org/wikipedia/en/8/81/MCPHS_school_logo.png', 'US $ 578 million', NULL, 'AICUMColleges of the FenwayNEASC', NULL, NULL, NULL, NULL, NULL, '179 Longwood Ave, Boston, MA 02115, Boston, Massachusetts,  United States42°20?12.9?N 71°6?5.2?W / 4', 'Charles F. Monahan, Jr.', NULL, 'Red the Cardinal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cardinal Red and White         ', NULL, NULL),
(19, 'Wentworth Institute of Technology', '1904', 'Boston, Massachusetts,  United States', 'Private', 'www.wit.edu', 'Urban, 35 acres ', NULL, '3,636 ', NULL, NULL, '134', NULL, 'upload.wikimedia.org/wikipedia/commons/8/86/Wentworth_wikipedia.jpg', 'US$ 81.9 Million ', NULL, 'AICUMColleges of the FenwayNAABNEASC', NULL, NULL, NULL, NULL, NULL, NULL, 'Zorica Pantic', 'Honesty, Energy, Economy, System', 'Leopard', NULL, NULL, NULL, NULL, 'Division III', NULL, NULL, NULL, 'Red, Yellow, and Black', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
