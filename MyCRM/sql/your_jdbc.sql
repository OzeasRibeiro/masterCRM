-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27-Jul-2017 às 16:36
-- Versão do servidor: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `your_jdbc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

CREATE TABLE IF NOT EXISTS `tbcliente` (
`id` int(11) NOT NULL,
  `nomeCompleto` varchar(50) COLLATE latin1_bin NOT NULL,
  `email` varchar(50) COLLATE latin1_bin NOT NULL,
  `cpf` varchar(14) COLLATE latin1_bin NOT NULL,
  `limiteCredito` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Extraindo dados da tabela `tbcliente`
--

INSERT INTO `tbcliente` (`id`, `nomeCompleto`, `email`, `cpf`, `limiteCredito`) VALUES
(1, 'Alexssander Siqueira', 'alex@gmail.com', '123.321.123-12', 0),
(2, 'João da Silva', 'silva@gmail.com', '456.654.456-45', 0),
(3, 'Marina Silva', 'marina@gmail.com', '031.199.619-14', 12.5),
(4, 'Benedito Gular', 'gular@gmail.com', '159.159.159-78', 2500),
(5, 'Benedito Gular', 'gular@gmail.com', '159.159.159-78', 2500),
(6, 'Caroline Sampaio', 'carol@gmail.com', '147.741.147-78', 120),
(7, 'Caroline Sampaio', 'carol@gmail.com', '147.741.147-78', 120),
(8, 'Caroline Sampaio', 'carol@gmail.com', '147.741.147-78', 120);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbcliente`
--
ALTER TABLE `tbcliente`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbcliente`
--
ALTER TABLE `tbcliente`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
