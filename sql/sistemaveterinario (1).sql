-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 01-Jun-2018 às 19:54
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemaveterinario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alergia`
--

DROP TABLE IF EXISTS `alergia`;
CREATE TABLE IF NOT EXISTS `alergia` (
  `cod_alergia` int(11) NOT NULL AUTO_INCREMENT,
  `data_diagnostico` date DEFAULT NULL,
  `causa` varchar(45) DEFAULT NULL,
  `sintomas` varchar(45) DEFAULT NULL,
  `tratamento` varchar(45) DEFAULT NULL,
  `gravidade` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  PRIMARY KEY (`cod_alergia`),
  KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

DROP TABLE IF EXISTS `animal`;
CREATE TABLE IF NOT EXISTS `animal` (
  `cod_animal` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `nascimento` varchar(45) DEFAULT NULL,
  `raca` varchar(45) DEFAULT NULL,
  `condicao` varchar(45) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `cod_dono` int(11) NOT NULL,
  PRIMARY KEY (`cod_animal`),
  KEY `cod_dono` (`cod_dono`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`cod_animal`, `nome`, `tipo`, `sexo`, `nascimento`, `raca`, `condicao`, `cor`, `observacao`, `cod_dono`) VALUES
(1, 'rex', 'cao', 'macho', '12/18/18', 'poddle', NULL, 'branco', NULL, 10),
(2, 'rex', 'cao', 'macho', '12/18/18', 'poddle', NULL, 'branco', NULL, 9),
(3, 'reox', 'cao', 'macho', '12/18/18', 'poddle', NULL, 'branco', NULL, 10),
(4, 'Rex', 'cachorro', NULL, '1996-09-26', 'vira-lata', NULL, NULL, NULL, 28),
(9, 'Rex', 'cachorro', NULL, '1996-09-26', 'vira', NULL, NULL, NULL, 29),
(10, 'joel', 'salve', NULL, '4545-05-04', 'odskodsa', NULL, NULL, NULL, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cirurgia`
--

DROP TABLE IF EXISTS `cirurgia`;
CREATE TABLE IF NOT EXISTS `cirurgia` (
  `cod_cirurgia` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `data` varchar(45) DEFAULT NULL,
  `complicacoes` varchar(45) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `cuidados` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  PRIMARY KEY (`cod_cirurgia`),
  KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

DROP TABLE IF EXISTS `consulta`;
CREATE TABLE IF NOT EXISTS `consulta` (
  `cod_consulta` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(45) DEFAULT NULL,
  `data_ida` date DEFAULT NULL,
  `data_volta` date DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `diagnostico` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  PRIMARY KEY (`cod_consulta`),
  KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`cod_consulta`, `motivo`, `data_ida`, `data_volta`, `valor`, `diagnostico`, `observacao`, `cod_animal`) VALUES
(2, 'teste motivo', '1996-09-26', '1997-09-26', 1234, 'teste diagnostico', 'teste obs', 1),
(3, 'teste motivo 2', '1515-05-04', '1515-12-15', 1400, 'teste diag 2', 'ah sim ok', 1),
(4, 'motivo teste 3', '5255-02-25', '0525-02-25', 1000, 'motivo diag', '10000', 1),
(5, 'motivo 3', '1996-09-26', '1996-09-26', 100, 'teste dig', 'okok', 1),
(6, 'dsaoko', '1511-10-20', '2102-02-01', 100101, 'odksaodkaso', 'dksoadkosa', 1),
(9, 'Sim', '1996-09-26', '1996-08-25', 2992, 'sim', 'okk', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dono`
--

DROP TABLE IF EXISTS `dono`;
CREATE TABLE IF NOT EXISTS `dono` (
  `cod_dono` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_dono`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dono`
--

INSERT INTO `dono` (`cod_dono`, `nome`, `email`, `senha`) VALUES
(28, 'Leonardo Marco', 'leo26alves@yahoo.com.br', '258456ll'),
(29, 'leozin', 'leonardo@cokato.com.br', '258456ll');

-- --------------------------------------------------------

--
-- Estrutura da tabela `exames`
--

DROP TABLE IF EXISTS `exames`;
CREATE TABLE IF NOT EXISTS `exames` (
  `cod_exame` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  `diagnostico` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  PRIMARY KEY (`cod_exame`),
  KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `higiene`
--

DROP TABLE IF EXISTS `higiene`;
CREATE TABLE IF NOT EXISTS `higiene` (
  `cod_higiene` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  PRIMARY KEY (`cod_higiene`),
  KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
CREATE TABLE IF NOT EXISTS `medicamento` (
  `cod_medicamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `dosagem` varchar(45) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `repeticoes` int(11) DEFAULT NULL,
  `instrucao` varchar(45) DEFAULT NULL,
  `condicao` varchar(45) DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  PRIMARY KEY (`cod_medicamento`),
  KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

DROP TABLE IF EXISTS `medico`;
CREATE TABLE IF NOT EXISTS `medico` (
  `cod_medico` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `local` varchar(45) DEFAULT NULL,
  `crmv` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `cod_animal` int(10) DEFAULT NULL,
  PRIMARY KEY (`cod_medico`),
  UNIQUE KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pulgasvermifugos`
--

DROP TABLE IF EXISTS `pulgasvermifugos`;
CREATE TABLE IF NOT EXISTS `pulgasvermifugos` (
  `cod_pulga` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `data_aplicacao` date DEFAULT NULL,
  `data_reaplicacao` date DEFAULT NULL,
  `observacao` varchar(45) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  PRIMARY KEY (`cod_pulga`),
  KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pulgasvermifugos`
--

INSERT INTO `pulgasvermifugos` (`cod_pulga`, `nome`, `tipo`, `data_aplicacao`, `data_reaplicacao`, `observacao`, `cod_animal`) VALUES
(1, 'ok', 'sei n', NULL, NULL, 'obs', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacina`
--

DROP TABLE IF EXISTS `vacina`;
CREATE TABLE IF NOT EXISTS `vacina` (
  `cod_vacina` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `data_aplicacao` date DEFAULT NULL,
  `data_reaplicacao` date DEFAULT NULL,
  `observacao` varchar(180) DEFAULT NULL,
  `cod_animal` int(11) NOT NULL,
  PRIMARY KEY (`cod_vacina`),
  KEY `cod_animal` (`cod_animal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `medico_ibfk_1` FOREIGN KEY (`cod_animal`) REFERENCES `animal` (`cod_animal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
