-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 03:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcaiwl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(10, '000', 12, 1, 'ExerciseID'),
(12, '000', 34, 1, 'BLOGID'),
(13, '0', 5, 1, 'STUDENTID');

-- --------------------------------------------------------

--
-- Table structure for table `tblexercise`
--

CREATE TABLE `tblexercise` (
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `ChoiceA` text NOT NULL,
  `ChoiceB` text NOT NULL,
  `ChoiceC` text NOT NULL,
  `ChoiceD` text NOT NULL,
  `Answer` varchar(90) NOT NULL,
  `ExercisesDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblexercise`
--

INSERT INTO `tblexercise` (`ExerciseID`, `LessonID`, `Question`, `ChoiceA`, `ChoiceB`, `ChoiceC`, `ChoiceD`, `Answer`, `ExercisesDate`) VALUES
(20180001, 6, 'What is the title of the video', 'My Father', 'My Mother', 'My Brother', 'My Sister', 'My Sister', '0000-00-00'),
(20180002, 6, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston', '0000-00-00'),
(20230003, 8, 'Software is defined as ___________', 'set of programs, documentation & configuration of data', 'set of programs', 'documentation and configuration of data', 'None of the mentioned', 'set of programs, documentation & configuration of data', '0000-00-00'),
(20230004, 8, 'CASE stands for', 'Computer-Aided Software Engineering', 'Control Aided Science and Engineering', 'Cost Aided System Experiments', 'None of the mentioned', 'Computer-Aided Software Engineering', '0000-00-00'),
(20230005, 9, 'The first layer is called the?', 'inner layer', 'outter layer', 'hidden layer', 'None of the mentioned', 'inner layer', '0000-00-00'),
(20230006, 9, 'RNNs stands for?', 'Receives neural networks', 'Report neural networks', 'Recording neural networks', 'Recurrent neural networks', 'Recurrent neural networks', '0000-00-00'),
(20230007, 10, 'Operations Research approach is ______________.', 'multi-disciplinary', 'scientific', 'intuitive', 'collect essential data', 'multi-disciplinary', '0000-00-00'),
(20230008, 10, 'A feasible solution to a linear programming problem ______________.', 'must satisfy all the constraints of the problem simultaneously', 'need not satisfy all of the constraints, only some of them', 'must be a corner point of the feasible region.', 'must optimize the value of the objective function', 'must satisfy all the constraints of the problem simultaneously', '0000-00-00'),
(20230009, 13, 'If there is no non-negative replacement ratio in solving a Linear Programming Problem then the solution is ______________.', 'feasible', 'bounded', 'unbounded', 'infinite', 'unbounded', '0000-00-00'),
(202300010, 12, 'Which of the following is true about model capacity (where model capacity means the ability of neural network to approximate complex functions) ?', 'As number of hidden layers increase, model capacity increases', 'As dropout ratio increases, model capacity increases', 'As learning rate increases, model capacity increases', 'None of these', 'As number of hidden layers increase, model capacity increases', '0000-00-00'),
(202300011, 11, ' _________ is not a fundamental activity for software processes in software development.', 'Evolution', 'Design and implementation', 'Validation', 'Verification', 'Verification', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbllesson`
--

CREATE TABLE `tbllesson` (
  `LessonID` int(11) NOT NULL,
  `LessonChapter` varchar(90) NOT NULL,
  `LessonTitle` varchar(90) NOT NULL,
  `FileLocation` text NOT NULL,
  `Category` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbllesson`
--

INSERT INTO `tbllesson` (`LessonID`, `LessonChapter`, `LessonTitle`, `FileLocation`, `Category`) VALUES
(8, 'Software Engineering', 'Software-Engineering-Ian-Sommerville', 'files/Software-Engineering-Ian-Sommerville(www.ebook-dl.com).pdf', 'Docs'),
(9, 'Deep Learning', 'Adaptive_Computation_and_Machine_Learning', 'files/Adaptive_Computation_and_Machine_Learnin.pdf', 'Docs'),
(10, 'Operations Research', 'Operations-Research-Theory-and-Applications-by-j.-k.-sharma-z-lib.org_', 'files/Operations-Research-Theory-and-Applications-by-j.-k.-sharma-z-lib.org_.pdf', 'Docs'),
(11, 'Software Engineering', 'Software-Introduction', 'files/Recording 2023-12-17 181618.mp4', 'Video'),
(12, 'Deep Learning', 'Deep Learning Introduction', 'files/Recording 2023-12-17 182048.mp4', 'Video'),
(13, 'Operations Research', 'Operations-Research-Introduction', 'files/Recording 2023-12-17 182351.mp4', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

CREATE TABLE `tblscore` (
  `ScoreID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `NoItems` int(11) NOT NULL DEFAULT 1,
  `Score` int(11) NOT NULL,
  `Submitted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblscore`
--

INSERT INTO `tblscore` (`ScoreID`, `LessonID`, `ExerciseID`, `StudentID`, `NoItems`, `Score`, `Submitted`) VALUES
(9, 6, 20180001, 1, 1, 1, 1),
(10, 6, 20180002, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `StudentID` int(11) NOT NULL,
  `Fname` varchar(90) NOT NULL,
  `Lname` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `MobileNo` varchar(90) NOT NULL,
  `STUDUSERNAME` varchar(90) NOT NULL,
  `STUDPASS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `Fname`, `Lname`, `Address`, `MobileNo`, `STUDUSERNAME`, `STUDPASS`) VALUES
(1, 'a', 'a', 'a', '21', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(2, 'sd', 'sad', 'sad', '231', 'a', 'a0f1490a20d0211c997b44bc357e1972deab8ae3'),
(4, 'Alia', 'Medhat', 'Alexandria', '01223568499', 'Alia', '11cefdcdc97938733303aa9ef5276cfda70013da');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentquestion`
--

CREATE TABLE `tblstudentquestion` (
  `SQID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Question` varchar(90) NOT NULL,
  `CA` varchar(90) NOT NULL,
  `CB` varchar(90) NOT NULL,
  `CC` varchar(90) NOT NULL,
  `CD` varchar(90) NOT NULL,
  `QA` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudentquestion`
--

INSERT INTO `tblstudentquestion` (`SQID`, `ExerciseID`, `LessonID`, `StudentID`, `Question`, `CA`, `CB`, `CC`, `CD`, `QA`) VALUES
(1, 20180002, 0, 1, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(2, 20180002, 0, 2, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(3, 20230003, 8, 1, 'Software is defined as ___________', 'set of programs, documentation & configuration of data', 'set of programs', 'documentation and configuration of data', 'None of the mentioned', 'set of programs, documentation & configuration of data'),
(4, 20230003, 8, 2, 'Software is defined as ___________', 'set of programs, documentation & configuration of data', 'set of programs', 'documentation and configuration of data', 'None of the mentioned', 'set of programs, documentation & configuration of data'),
(5, 20230003, 8, 3, 'Software is defined as ___________', 'set of programs, documentation & configuration of data', 'set of programs', 'documentation and configuration of data', 'None of the mentioned', 'set of programs, documentation & configuration of data'),
(6, 20230003, 8, 4, 'Software is defined as ___________', 'set of programs, documentation & configuration of data', 'set of programs', 'documentation and configuration of data', 'None of the mentioned', 'set of programs, documentation & configuration of data'),
(7, 20230004, 8, 1, 'CASE stands for', 'Computer-Aided Software Engineering', 'Control Aided Science and Engineering', 'Cost Aided System Experiments', 'None of the mentioned', 'Computer-Aided Software Engineering'),
(8, 20230004, 8, 2, 'CASE stands for', 'Computer-Aided Software Engineering', 'Control Aided Science and Engineering', 'Cost Aided System Experiments', 'None of the mentioned', 'Computer-Aided Software Engineering'),
(9, 20230004, 8, 4, 'CASE stands for', 'Computer-Aided Software Engineering', 'Control Aided Science and Engineering', 'Cost Aided System Experiments', 'None of the mentioned', 'Computer-Aided Software Engineering'),
(10, 20230005, 9, 1, 'The first layer is called the?', 'inner layer', 'outter layer', 'hidden layer', 'None of the mentioned', 'inner layer'),
(11, 20230005, 9, 2, 'The first layer is called the?', 'inner layer', 'outter layer', 'hidden layer', 'None of the mentioned', 'inner layer'),
(12, 20230005, 9, 4, 'The first layer is called the?', 'inner layer', 'outter layer', 'hidden layer', 'None of the mentioned', 'inner layer'),
(13, 20230006, 9, 1, 'RNNs stands for?', 'Receives neural networks', 'Report neural networks', 'Recording neural networks', 'Recurrent neural networks', 'Recurrent neural networks'),
(14, 20230006, 9, 2, 'RNNs stands for?', 'Receives neural networks', 'Report neural networks', 'Recording neural networks', 'Recurrent neural networks', 'Recurrent neural networks'),
(15, 20230006, 9, 4, 'RNNs stands for?', 'Receives neural networks', 'Report neural networks', 'Recording neural networks', 'Recurrent neural networks', 'Recurrent neural networks'),
(16, 20230007, 10, 1, 'Operations Research approach is ______________.', 'multi-disciplinary', 'scientific', 'intuitive', 'collect essential data', 'multi-disciplinary'),
(17, 20230007, 10, 2, 'Operations Research approach is ______________.', 'multi-disciplinary', 'scientific', 'intuitive', 'collect essential data', 'multi-disciplinary'),
(18, 20230007, 10, 4, 'Operations Research approach is ______________.', 'multi-disciplinary', 'scientific', 'intuitive', 'collect essential data', 'multi-disciplinary'),
(19, 20230008, 10, 1, 'A feasible solution to a linear programming problem ______________.', 'must satisfy all the constraints of the problem simultaneously', 'need not satisfy all of the constraints, only some of them', 'must be a corner point of the feasible region.', 'must optimize the value of the objective function', 'must satisfy all the constraints of the problem simultaneously'),
(20, 20230008, 10, 2, 'A feasible solution to a linear programming problem ______________.', 'must satisfy all the constraints of the problem simultaneously', 'need not satisfy all of the constraints, only some of them', 'must be a corner point of the feasible region.', 'must optimize the value of the objective function', 'must satisfy all the constraints of the problem simultaneously'),
(21, 20230008, 10, 4, 'A feasible solution to a linear programming problem ______________.', 'must satisfy all the constraints of the problem simultaneously', 'need not satisfy all of the constraints, only some of them', 'must be a corner point of the feasible region.', 'must optimize the value of the objective function', 'must satisfy all the constraints of the problem simultaneously'),
(22, 20230009, 13, 1, 'If there is no non-negative replacement ratio in solving a Linear Programming Problem then', 'feasible', 'bounded', 'unbounded', 'infinite', 'unbounded'),
(23, 20230009, 13, 2, 'If there is no non-negative replacement ratio in solving a Linear Programming Problem then', 'feasible', 'bounded', 'unbounded', 'infinite', 'unbounded'),
(24, 20230009, 13, 4, 'If there is no non-negative replacement ratio in solving a Linear Programming Problem then', 'feasible', 'bounded', 'unbounded', 'infinite', 'unbounded'),
(25, 202300010, 12, 1, 'Which of the following is true about model capacity (where model capacity means the abilit', 'As number of hidden layers increase, model capacity increases', 'As dropout ratio increases, model capacity increases', 'As learning rate increases, model capacity increases', 'None of these', 'As number of hidden layers increase, model capacity increases'),
(26, 202300010, 12, 2, 'Which of the following is true about model capacity (where model capacity means the abilit', 'As number of hidden layers increase, model capacity increases', 'As dropout ratio increases, model capacity increases', 'As learning rate increases, model capacity increases', 'None of these', 'As number of hidden layers increase, model capacity increases'),
(27, 202300010, 12, 4, 'Which of the following is true about model capacity (where model capacity means the abilit', 'As number of hidden layers increase, model capacity increases', 'As dropout ratio increases, model capacity increases', 'As learning rate increases, model capacity increases', 'None of these', 'As number of hidden layers increase, model capacity increases'),
(28, 202300011, 11, 1, ' _________ is not a fundamental activity for software processes in software development.', 'Evolution', 'Design and implementation', 'Validation', 'Verification', 'Verification'),
(29, 202300011, 11, 2, ' _________ is not a fundamental activity for software processes in software development.', 'Evolution', 'Design and implementation', 'Validation', 'Verification', 'Verification'),
(30, 202300011, 11, 4, ' _________ is not a fundamental activity for software processes in software development.', 'Evolution', 'Design and implementation', 'Validation', 'Verification', 'Verification');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` int(11) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `UEMAIL` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `NAME`, `UEMAIL`, `PASS`, `TYPE`) VALUES
(1, 'Janno Palacios', 'janobe', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(2, 'Malak Aref', 'malak', '37f2d21a02577fb0cb6406fe61ffcdacbf100666', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblexercise`
--
ALTER TABLE `tblexercise`
  ADD PRIMARY KEY (`ExerciseID`);

--
-- Indexes for table `tbllesson`
--
ALTER TABLE `tbllesson`
  ADD PRIMARY KEY (`LessonID`);

--
-- Indexes for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD PRIMARY KEY (`ScoreID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`StudentID`) USING BTREE;

--
-- Indexes for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  ADD PRIMARY KEY (`SQID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblexercise`
--
ALTER TABLE `tblexercise`
  MODIFY `ExerciseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202300012;

--
-- AUTO_INCREMENT for table `tbllesson`
--
ALTER TABLE `tbllesson`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblscore`
--
ALTER TABLE `tblscore`
  MODIFY `ScoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  MODIFY `SQID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
