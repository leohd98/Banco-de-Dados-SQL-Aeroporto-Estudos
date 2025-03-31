-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/03/2025 às 14:52
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
-- Banco de dados: `escola_projeto`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(50) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_final` date NOT NULL,
  `cod_sala` int(11) NOT NULL,
  `cod_docente` int(11) NOT NULL,
  `cod_matricula` int(11) NOT NULL,
  `cod_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome_curso`, `dt_inicio`, `dt_final`, `cod_sala`, `cod_docente`, `cod_matricula`, `cod_disciplina`) VALUES
(1, 'Lógica', '2025-01-01', '2025-03-20', 1, 1, 3, 1),
(2, 'Matemática', '2024-01-01', '2026-09-12', 2, 3, 1, 2),
(3, 'Música', '2025-01-01', '2026-12-01', 3, 2, 2, 3),
(4, 'História', '2022-01-01', '2037-12-09', 4, 5, 4, 4),
(5, 'Biologia', '2025-01-01', '2025-03-20', 5, 4, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL,
  `nome_disciplina` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome_disciplina`) VALUES
(2, 'Desenho'),
(4, 'Design'),
(1, 'Escrita'),
(6, 'Lógica'),
(3, 'Religião'),
(5, 'Segurança');

-- --------------------------------------------------------

--
-- Estrutura para tabela `docente`
--

CREATE TABLE `docente` (
  `id_funcionario` int(11) NOT NULL,
  `nome_funcionario` varchar(50) NOT NULL,
  `funcao_funcionario` varchar(50) NOT NULL,
  `cpf_funcionario` varchar(11) NOT NULL,
  `email_funcionario` varchar(50) NOT NULL,
  `telefone_funcionario` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `docente`
--

INSERT INTO `docente` (`id_funcionario`, `nome_funcionario`, `funcao_funcionario`, `cpf_funcionario`, `email_funcionario`, `telefone_funcionario`) VALUES
(1, 'Girafales', 'Professor', '76402631230', 'girafales@gmail.com', '32524627'),
(2, 'Magogo', 'Professor', '68774941216', 'magogo@gmail.com', '36643747'),
(3, 'Leonardo Steff', 'Professor', '51505303281', 'leonardo@gmail.com', '31686646'),
(4, 'Alan', 'Professor', '15029617841', 'alan@yahoo.com', '26628457'),
(5, 'Stu', 'Professor', '68801025904', 'stu@dentista.com', '36323243');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matriculas`
--

CREATE TABLE `matriculas` (
  `id_aluno` int(11) NOT NULL,
  `nome_aluno` varchar(50) NOT NULL,
  `cpf_aluno` varchar(11) NOT NULL,
  `email_aluno` varchar(50) NOT NULL,
  `telefone_aluno` varchar(11) NOT NULL,
  `cod_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `matriculas`
--

INSERT INTO `matriculas` (`id_aluno`, `nome_aluno`, `cpf_aluno`, `email_aluno`, `telefone_aluno`, `cod_curso`) VALUES
(1, 'Seu Madruga', '95430276766', 'seumadruga@hotmail.com', '35608374', 1),
(2, 'Chaves', '43749444439', 'chavinho@yahoo.com', '32957014', 1),
(3, 'Andrew', '58990261627', 'channel5@gmail.com', '28768622', 2),
(4, 'Luffy', '69570224398', 'reipirata@hotmail.com', '22541744', 3),
(5, 'Tony Vercetti', '28156355008', 'littlefriend@gmail.com', '23317023', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL,
  `cod_sala` int(11) NOT NULL,
  `local_sala` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `sala`
--

INSERT INTO `sala` (`id_sala`, `cod_sala`, `local_sala`) VALUES
(1, 1, 'Final do corredor, prédio 1'),
(2, 2, 'Bloco C'),
(3, 3, 'Rua Juruá'),
(4, 4, 'Beco sem saída'),
(5, 5, 'Desconhecido');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `cod_sala` (`cod_sala`),
  ADD KEY `cod_docente` (`cod_docente`),
  ADD KEY `cod_matricula` (`cod_matricula`),
  ADD KEY `cod_disciplina` (`cod_disciplina`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`),
  ADD UNIQUE KEY `nome_disciplina` (`nome_disciplina`);

--
-- Índices de tabela `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_funcionario`),
  ADD UNIQUE KEY `cpf_funcionario` (`cpf_funcionario`),
  ADD UNIQUE KEY `email_funcionario` (`email_funcionario`),
  ADD UNIQUE KEY `telefone_funcionario` (`telefone_funcionario`);

--
-- Índices de tabela `matriculas`
--
ALTER TABLE `matriculas`
  ADD PRIMARY KEY (`id_aluno`),
  ADD UNIQUE KEY `cpf_aluno` (`cpf_aluno`),
  ADD UNIQUE KEY `email_aluno` (`email_aluno`),
  ADD UNIQUE KEY `telefone_aluno` (`telefone_aluno`);

--
-- Índices de tabela `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`),
  ADD UNIQUE KEY `cod_sala` (`cod_sala`),
  ADD UNIQUE KEY `local_sala` (`local_sala`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `docente`
--
ALTER TABLE `docente`
  MODIFY `id_funcionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `matriculas`
--
ALTER TABLE `matriculas`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`cod_sala`) REFERENCES `sala` (`id_sala`),
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`cod_docente`) REFERENCES `docente` (`id_funcionario`),
  ADD CONSTRAINT `cursos_ibfk_3` FOREIGN KEY (`cod_matricula`) REFERENCES `matriculas` (`id_aluno`),
  ADD CONSTRAINT `cursos_ibfk_4` FOREIGN KEY (`cod_disciplina`) REFERENCES `disciplina` (`id_disciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
