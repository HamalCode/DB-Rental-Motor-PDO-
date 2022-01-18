-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 12:52 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rentalmotor`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_motor`
--

CREATE TABLE `t_motor` (
  `id_motor` char(1) NOT NULL,
  `nrn_motor` char(50) NOT NULL,
  `inc_motor` char(50) NOT NULL,
  `obs_motor` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_motor`
--

INSERT INTO `t_motor` (`id_motor`, `nrn_motor`, `inc_motor`, `obs_motor`) VALUES
('1', 'Beat 125', 'Honda', 'Diak'),
('2', 'Jupitr MX', 'Yamaha', 'Diak'),
('3', 'Revo', 'Honda', 'Diak'),
('4', 'Kawasaky KLX', 'Honda', 'Diak');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
