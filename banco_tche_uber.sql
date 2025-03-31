-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/03/2025 às 13:23
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
-- Banco de dados: `tcheuber_projeto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `mecanico`
--

CREATE TABLE `mecanico` (
  `id_mecanico` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `endereco` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `mecanico`
--

INSERT INTO `mecanico` (`id_mecanico`, `nome`, `cpf`, `celular`, `endereco`) VALUES
(1, 'José Florencio', '31802092080', '969238486', 'Gotham City'),
(2, 'Rodrigo Postal', '57503168072', '979613766', 'Atlanta, Carti Av'),
(3, 'Jordan Carter', '45015689098', '973492741', 'Sei lá'),
(4, 'Nina Rosa', '64221677090', '984783746', 'Nova York, Central Park'),
(5, 'Keith Cozart', '21911270028', '979795318', 'Chicago, Vou Saber?');

-- --------------------------------------------------------

--
-- Estrutura para tabela `motorista`
--

CREATE TABLE `motorista` (
  `id_motorista` int(11) NOT NULL,
  `nome_motorista` varchar(50) NOT NULL,
  `categoria_carteira` char(5) NOT NULL,
  `num_carteira` varchar(9) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `celular` varchar(8) NOT NULL,
  `placa_carro` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `motorista`
--

INSERT INTO `motorista` (`id_motorista`, `nome_motorista`, `categoria_carteira`, `num_carteira`, `cpf`, `endereco`, `celular`, `placa_carro`) VALUES
(1, 'João Spolavore', 'B', '656180183', '69467444038', 'Rua Doroteia, 225', '69467444', 'LXV4777'),
(2, 'Guilherme Vargas', 'AB', '216399562', '63535225094', 'Avenida Maforo, 110', '63535225', 'KDY1943'),
(3, 'Renata Silveira', 'D', '364595142', '53105823042', 'Nilo Peçanha, 442, Apt 803', '05823042', 'KQY1226'),
(4, 'Michael Scott', 'A', '267495915', '51736472054', 'Scranton, escritório 2', '36472054', 'HOY4349'),
(5, 'Pam Beesly', 'E', '733283320', '72363029020', 'Scranton, recepção', '63029020', 'AJP3349');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico`
--

CREATE TABLE `servico` (
  `id_servico` int(11) NOT NULL,
  `dt_solicitacao` date NOT NULL,
  `dt_problema` date NOT NULL,
  `desc_problema` text NOT NULL,
  `cod_motorista` int(11) NOT NULL,
  `cod_mecanico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servico`
--

INSERT INTO `servico` (`id_servico`, `dt_solicitacao`, `dt_problema`, `desc_problema`, `cod_motorista`, `cod_mecanico`) VALUES
(1, '2025-03-21', '2025-03-10', 'Pneu furado e barulho estranho no motor', 1, 2),
(2, '2025-01-02', '2025-01-02', 'Carro explodiu', 3, 4),
(3, '2025-02-23', '2022-03-04', 'Correção de amassado na lateral do veículo', 2, 1),
(4, '2024-12-09', '2025-08-12', 'Carro não liga', 5, 5),
(5, '1998-09-12', '2007-01-01', 'Veículo com corpinho no porta-malas', 4, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servico2`
--

CREATE TABLE `servico2` (
  `id_servico` int(11) NOT NULL,
  `dt_solicitacao` date NOT NULL,
  `dt_problema` date NOT NULL,
  `desc_problema` text NOT NULL,
  `cod_motorista` int(11) NOT NULL,
  `cod_mecanico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servico2`
--

INSERT INTO `servico2` (`id_servico`, `dt_solicitacao`, `dt_problema`, `desc_problema`, `cod_motorista`, `cod_mecanico`) VALUES
(1, '2025-03-21', '2025-03-10', 'Pneu furado e barulho estranho no motor', 1, 2),
(2, '2025-01-02', '2025-01-02', 'Carro explodiu', 3, 4),
(3, '2025-02-23', '2022-03-04', 'Correção de amassado na lateral do veículo', 2, 1),
(4, '2024-12-09', '2025-08-12', 'Carro não liga', 5, 5),
(5, '1998-09-12', '2007-01-01', 'Veículo com corpinho no porta-malas', 4, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `placa` varchar(10) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `ano_fabricacao` date NOT NULL,
  `num_chassi` varchar(20) NOT NULL,
  `cor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `veiculo`
--

INSERT INTO `veiculo` (`placa`, `marca`, `modelo`, `ano_fabricacao`, `num_chassi`, `cor`) VALUES
('AJP3349', 'Renault', 'Kwid', '2025-01-01', '8wDJjjj9cwXzu0413', 'Laranja Ocre'),
('HOY4349', 'Toyota', 'Yaris', '2022-01-01', '9wf10Nz8JbFuy4832', 'Prata Lua Nova'),
('KDY1943', 'Volkswagen', 'Fusca', '2021-01-01', '9BGCwkvm2vg428365', 'Azul'),
('KQY1226', 'Porsche', 'Taycan Turbo Cross Turismo', '2026-01-01', '6nzKexA7XhHNB8522', 'Crayon'),
('LXV4777', 'Jeep', 'Renegade', '2020-01-01', '6M3UFF9U88wcn1727', 'Prata Billet');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `mecanico`
--
ALTER TABLE `mecanico`
  ADD PRIMARY KEY (`id_mecanico`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `celular` (`celular`);

--
-- Índices de tabela `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`id_motorista`),
  ADD UNIQUE KEY `num_carteira` (`num_carteira`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `celular` (`celular`),
  ADD UNIQUE KEY `placa_carro` (`placa_carro`);

--
-- Índices de tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`id_servico`);

--
-- Índices de tabela `servico2`
--
ALTER TABLE `servico2`
  ADD PRIMARY KEY (`id_servico`),
  ADD KEY `cod_motorista` (`cod_motorista`),
  ADD KEY `cod_mecanico` (`cod_mecanico`);

--
-- Índices de tabela `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`placa`),
  ADD UNIQUE KEY `num_chassi` (`num_chassi`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mecanico`
--
ALTER TABLE `mecanico`
  MODIFY `id_mecanico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `motorista`
--
ALTER TABLE `motorista`
  MODIFY `id_motorista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `servico2`
--
ALTER TABLE `servico2`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `motorista`
--
ALTER TABLE `motorista`
  ADD CONSTRAINT `motorista_ibfk_1` FOREIGN KEY (`placa_carro`) REFERENCES `veiculo` (`placa`);

--
-- Restrições para tabelas `servico2`
--
ALTER TABLE `servico2`
  ADD CONSTRAINT `servico2_ibfk_1` FOREIGN KEY (`cod_motorista`) REFERENCES `motorista` (`id_motorista`),
  ADD CONSTRAINT `servico2_ibfk_2` FOREIGN KEY (`cod_mecanico`) REFERENCES `mecanico` (`id_mecanico`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
