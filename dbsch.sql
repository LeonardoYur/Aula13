-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/11/2024 às 02:05
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbsch`
--
CREATE DATABASE IF NOT EXISTS `dbsch` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbsch`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblchamados`
--

CREATE TABLE `tblchamados` (
  `id` int(11) NOT NULL,
  `criador` varchar(200) NOT NULL,
  `departamento` varchar(200) NOT NULL,
  `descricao` varchar(512) NOT NULL,
  `prioridade` int(11) NOT NULL,
  `responsavel` varchar(200) NOT NULL,
  `dataL` date NOT NULL,
  `horaL` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblchamados`
--

INSERT INTO `tblchamados` (`id`, `criador`, `departamento`, `descricao`, `prioridade`, `responsavel`, `dataL`, `horaL`) VALUES
(1, '', 'Contabilidade', 'Acabou o papel', 0, '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbldepartamentos`
--

CREATE TABLE `tbldepartamentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbldepartamentos`
--

INSERT INTO `tbldepartamentos` (`id`, `nome`) VALUES
(1, 'Contabilidade'),
(2, 'Adminstração');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `tecnico` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblusuarios`
--

INSERT INTO `tblusuarios` (`id`, `nome`, `tecnico`, `email`, `senha`) VALUES
(1, 'Administração', '0', '', ''),
(2, 'a', '0', 'a', 'a'),
(3, 'b', 'o', 'b', 'b'),
(4, 'c', 'on', 'c', 'c'),
(5, 'd', 'on', 'd', 'd'),
(6, 'e', 'on', 'e', 'e'),
(7, 'f', 'on', 'f', 'f'),
(8, 'g', 'on', 'g', 'g'),
(9, 'h', 'off', 'h', 'h'),
(10, 'h', 'off', 'h', 'h'),
(11, 'j', 'on', 'j', 'j'),
(12, 'i', 'false', 'i', 'i');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tblchamados`
--
ALTER TABLE `tblchamados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbldepartamentos`
--
ALTER TABLE `tbldepartamentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tblchamados`
--
ALTER TABLE `tblchamados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tbldepartamentos`
--
ALTER TABLE `tbldepartamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
