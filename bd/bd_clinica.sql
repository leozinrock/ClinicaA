-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 10-Set-2022 às 02:03
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Banco de dados: `clinicamedica`
--
-- --------------------------------------------------------
--
-- Estrutura da tabela `especialidade`
--



CREATE TABLE `Producao` (
                            `Id_producao` int(1)  NOT NULL,
                            `Nome_producao` varchar(100) NOT NULL,
                            `Descricao_sobre_a_producao` text DEFAULT NULL,
                            `Id_tipo` int(1) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `especialidade`
--
INSERT INTO `Producao` ( `Nome_producao`, `Descricao_sobre_a_producao`, `Id_tipo` ) VALUES
                                                                                        ('Sherlock Holmes', 'Filme baseado nos contos de Sir Arthur Doyle',1),
                                                                                        ( 'Friends', 'Uma serie que mostram a vida cotidiana de 4 amigos de Nova York ',2);


-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

CREATE TABLE `ProducaoTipo` (
                                `Id_tipo` int(11) NOT NULL,
                                `Nome_tipo` varchar(100) NOT NULL


) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `ProducaoTipo` (`Nome_tipo`) VALUES
                                             ('Filme'),
                                             ('Serie');


-- --------------------------------------------------------

-- Índices para tabelas despejadas
--

--
-- Índices para tabela `especialidade`
--
ALTER TABLE `Producao`
    ADD PRIMARY KEY (`Id_producao`);

--
-- Índices para tabela `medico`
--
ALTER TABLE `Producao`
    ADD PRIMARY KEY (`Id_producao`),
  ADD KEY `FK_ID_tipo` (`Id_tipo`);


-- AUTO_INCREMENT de tabelas despejadas

--
-- AUTO_INCREMENT de tabela `especialidade`
--
ALTER TABLE `Producao`
    MODIFY `Id_producao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `ProducaoTipo`
    MODIFY `Id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


--
-- Restrições para despejos de tabelas
--


--
-- Limitadores para a tabela `medico`
--
ALTER TABLE `Producao`
    ADD CONSTRAINT `FK_ID_tipo` FOREIGN KEY (`Id_tipo`) REFERENCES `ProducaoTipo` (`Id_tipo`);
COMMIT;

