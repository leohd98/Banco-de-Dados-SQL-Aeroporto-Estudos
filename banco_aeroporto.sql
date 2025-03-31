-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/03/2025 às 15:49
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
-- Banco de dados: `aeroporto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aeroporto`
--

CREATE TABLE `aeroporto` (
  `id_aeroporto` int(11) NOT NULL,
  `num_avioes` int(11) NOT NULL,
  `peso_max` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `aeroporto`
--

INSERT INTO `aeroporto` (`id_aeroporto`, `num_avioes`, `peso_max`) VALUES
(1, 150, 1500000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `aviao`
--

CREATE TABLE `aviao` (
  `id_aviao` int(11) NOT NULL,
  `prefixo_aviao` varchar(8) NOT NULL,
  `cod_modelo` int(11) NOT NULL,
  `cod_companhia` int(11) NOT NULL,
  `obs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `aviao`
--

INSERT INTO `aviao` (`id_aviao`, `prefixo_aviao`, `cod_modelo`, `cod_companhia`, `obs`) VALUES
(1, 'ABC123', 1, 1, 'Avião legal'),
(2, 'DEF456', 2, 2, 'Avião bonito'),
(3, 'GHI789', 3, 3, 'Avião feio'),
(4, 'JKL987', 4, 4, 'Avião daora'),
(5, 'MNO321', 5, 5, '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cia_aerea`
--

CREATE TABLE `cia_aerea` (
  `id_companhia` int(11) NOT NULL,
  `nome` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cia_aerea`
--

INSERT INTO `cia_aerea` (`id_companhia`, `nome`) VALUES
(1, 'Latam'),
(2, 'Gol'),
(3, 'Azul'),
(4, 'TAP'),
(5, 'Aerolíneas Arge');

-- --------------------------------------------------------

--
-- Estrutura para tabela `empregados`
--

CREATE TABLE `empregados` (
  `id_empregado` int(11) NOT NULL,
  `codigo_empregado` varchar(8) NOT NULL,
  `nome_empregado` varchar(100) NOT NULL,
  `endereco_empregado` varchar(100) NOT NULL,
  `cidade_empregado` varchar(100) NOT NULL,
  `estado_empregado` char(2) NOT NULL,
  `email_empregado` varchar(100) NOT NULL,
  `telefone_empregado` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `empregados`
--

INSERT INTO `empregados` (`id_empregado`, `codigo_empregado`, `nome_empregado`, `endereco_empregado`, `cidade_empregado`, `estado_empregado`, `email_empregado`, `telefone_empregado`) VALUES
(1, 'A123', 'Fulano de tal', 'Rua dos andradas 115', 'Porto Alegre', 'RS', 'fulano@gmail.com', '51333333333'),
(2, 'B123', 'Ciclano de tal', 'Av João Pessoa 2020', 'Porto Alegre', 'RS', 'ciclano@gmail.com', '51222222222'),
(3, 'C123', 'Lola Argento', 'Av Padre Cacique 123', 'Viamão', 'RS', 'lola@lolaland.com', '51111111111'),
(4, 'D123', 'Lucy Gray Baird', 'Rua Vicente da Fountoura 456', 'Canoas', 'RS', 'lucygray@panem.com', '51555555555'),
(5, 'E123', 'Katniss Everdeen', 'José do Patrocínio 98', 'Novo Hamburgo', 'RS', 'kantniss@panem.com', '51444444444');

-- --------------------------------------------------------

--
-- Estrutura para tabela `modelo_aviao`
--

CREATE TABLE `modelo_aviao` (
  `id_modelo` int(11) NOT NULL,
  `nome_modelo` varchar(15) NOT NULL,
  `lotacao_modelo` int(3) NOT NULL,
  `max_combustivel` decimal(10,0) NOT NULL,
  `peso_modelo` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `modelo_aviao`
--

INSERT INTO `modelo_aviao` (`id_modelo`, `nome_modelo`, `lotacao_modelo`, `max_combustivel`, `peso_modelo`) VALUES
(1, 'Modelo 1', 150, 300, 700),
(2, 'Modelo 2', 250, 400, 1500),
(3, 'Modelo 3', 350, 500, 2000),
(4, 'Modelo 4', 200, 500, 1500),
(5, 'Modelo 5', 100, 200, 1000);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnicos`
--

CREATE TABLE `tecnicos` (
  `id_tecnico` int(11) NOT NULL,
  `codigo_tecnico` varchar(8) NOT NULL,
  `nome_tecnico` varchar(100) NOT NULL,
  `email_tecnico` varchar(100) NOT NULL,
  `telefone_tecnico` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tecnicos`
--

INSERT INTO `tecnicos` (`id_tecnico`, `codigo_tecnico`, `nome_tecnico`, `email_tecnico`, `telefone_tecnico`) VALUES
(1, 'T123', 'Tenico Legal', 'legal@gmail.com', '51999999999'),
(2, 'T456', 'Tecnico Bonito', 'bonito@gamil.com', '51888888888'),
(3, 'T789', 'Tecnico Daora', 'daora@gmail.com', '517777777'),
(4, 'T910', 'Tecnico Feio', 'feio@gmail.com', '51666666666'),
(5, 'T829', 'Tecnico sem paciencia', 'sempaciencia@gmail.com', '51000000000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tecnico_modelo`
--

CREATE TABLE `tecnico_modelo` (
  `id_tecnico_mod` int(11) NOT NULL,
  `cod_tecnico` int(11) NOT NULL,
  `cod_modelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `tecnico_modelo`
--

INSERT INTO `tecnico_modelo` (`id_tecnico_mod`, `cod_tecnico`, `cod_modelo`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 2, 3),
(5, 3, 1),
(6, 3, 2),
(7, 3, 3),
(8, 4, 4),
(9, 5, 4),
(10, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `voo`
--

CREATE TABLE `voo` (
  `id_voo` int(11) NOT NULL,
  `horario_partida` datetime NOT NULL,
  `horario_chegada` datetime NOT NULL,
  `cod_aviao` int(11) NOT NULL,
  `destino` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `voo`
--

INSERT INTO `voo` (`id_voo`, `horario_partida`, `horario_chegada`, `cod_aviao`, `destino`) VALUES
(1, '2025-01-01 18:15:00', '2025-01-01 18:15:00', 1, 'Porto Alegre'),
(2, '2025-02-02 19:20:00', '2025-02-02 19:20:00', 2, 'Canoas'),
(3, '2025-03-03 20:50:00', '2025-03-03 20:50:00', 3, 'Viamão'),
(4, '2025-04-04 21:30:00', '2025-04-04 21:30:00', 4, 'Mariluz'),
(5, '2025-05-05 22:10:00', '2025-05-05 22:10:00', 5, 'Capão da Canoa');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aeroporto`
--
ALTER TABLE `aeroporto`
  ADD PRIMARY KEY (`id_aeroporto`);

--
-- Índices de tabela `aviao`
--
ALTER TABLE `aviao`
  ADD PRIMARY KEY (`id_aviao`),
  ADD KEY `cod_modelo` (`cod_modelo`),
  ADD KEY `cod_companhia` (`cod_companhia`);

--
-- Índices de tabela `cia_aerea`
--
ALTER TABLE `cia_aerea`
  ADD PRIMARY KEY (`id_companhia`);

--
-- Índices de tabela `empregados`
--
ALTER TABLE `empregados`
  ADD PRIMARY KEY (`id_empregado`),
  ADD UNIQUE KEY `email_empregado` (`email_empregado`);

--
-- Índices de tabela `modelo_aviao`
--
ALTER TABLE `modelo_aviao`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Índices de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  ADD PRIMARY KEY (`id_tecnico`),
  ADD UNIQUE KEY `codigo_tecnico` (`codigo_tecnico`);

--
-- Índices de tabela `tecnico_modelo`
--
ALTER TABLE `tecnico_modelo`
  ADD PRIMARY KEY (`id_tecnico_mod`),
  ADD KEY `cod_tecnico` (`cod_tecnico`),
  ADD KEY `cod_modelo` (`cod_modelo`);

--
-- Índices de tabela `voo`
--
ALTER TABLE `voo`
  ADD PRIMARY KEY (`id_voo`),
  ADD KEY `cod_aviao` (`cod_aviao`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aeroporto`
--
ALTER TABLE `aeroporto`
  MODIFY `id_aeroporto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `aviao`
--
ALTER TABLE `aviao`
  MODIFY `id_aviao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cia_aerea`
--
ALTER TABLE `cia_aerea`
  MODIFY `id_companhia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `empregados`
--
ALTER TABLE `empregados`
  MODIFY `id_empregado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `modelo_aviao`
--
ALTER TABLE `modelo_aviao`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tecnicos`
--
ALTER TABLE `tecnicos`
  MODIFY `id_tecnico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tecnico_modelo`
--
ALTER TABLE `tecnico_modelo`
  MODIFY `id_tecnico_mod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `voo`
--
ALTER TABLE `voo`
  MODIFY `id_voo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `aviao`
--
ALTER TABLE `aviao`
  ADD CONSTRAINT `aviao_ibfk_1` FOREIGN KEY (`cod_modelo`) REFERENCES `modelo_aviao` (`id_modelo`),
  ADD CONSTRAINT `aviao_ibfk_2` FOREIGN KEY (`cod_companhia`) REFERENCES `cia_aerea` (`id_companhia`);

--
-- Restrições para tabelas `tecnico_modelo`
--
ALTER TABLE `tecnico_modelo`
  ADD CONSTRAINT `tecnico_modelo_ibfk_1` FOREIGN KEY (`cod_tecnico`) REFERENCES `tecnicos` (`id_tecnico`),
  ADD CONSTRAINT `tecnico_modelo_ibfk_2` FOREIGN KEY (`cod_modelo`) REFERENCES `modelo_aviao` (`id_modelo`);

--
-- Restrições para tabelas `voo`
--
ALTER TABLE `voo`
  ADD CONSTRAINT `voo_ibfk_1` FOREIGN KEY (`cod_aviao`) REFERENCES `aviao` (`id_aviao`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
