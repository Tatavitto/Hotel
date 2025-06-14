-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/06/2025 às 18:58
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
-- Banco de dados: `lojaa`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `balanco`
--

CREATE TABLE `balanco` (
  `id` int(11) NOT NULL,
  `data_fim` date DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `forma_pagamento` varchar(255) DEFAULT NULL,
  `total_pagar` double DEFAULT NULL,
  `valor_estadia` double DEFAULT NULL,
  `hospede_id` int(11) DEFAULT NULL,
  `quarto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `check_in_out`
--

CREATE TABLE `check_in_out` (
  `id` int(11) NOT NULL,
  `dataEntrada` date DEFAULT NULL,
  `dataSaida` date DEFAULT NULL,
  `horaEntrada` time DEFAULT NULL,
  `horaSaida` time DEFAULT NULL,
  `observacoes` varchar(500) DEFAULT NULL,
  `statusPagamento` varchar(255) DEFAULT NULL,
  `hospede_id` int(11) DEFAULT NULL,
  `quarto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `DTYPE` varchar(31) NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `dataNasc` datetime DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `tarefa` varchar(255) DEFAULT NULL,
  `tarefas` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gestaoquartos`
--

CREATE TABLE `gestaoquartos` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `estoqueToalha` int(11) DEFAULT NULL,
  `estoqueLencol` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(115);

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospedagens`
--

CREATE TABLE `hospedagens` (
  `id` int(11) NOT NULL,
  `hospede_nome` varchar(100) DEFAULT NULL,
  `quarto_numero` int(11) DEFAULT NULL,
  `data_entrada` date DEFAULT NULL,
  `hora_entrada` time DEFAULT NULL,
  `data_saida` date DEFAULT NULL,
  `hora_saida` time DEFAULT NULL,
  `check_in` tinyint(1) DEFAULT NULL,
  `check_out` tinyint(1) DEFAULT NULL,
  `status_quarto` varchar(50) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `cliente_cod` int(11) DEFAULT NULL,
  `quarto_cod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `hospede`
--

CREATE TABLE `hospede` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `obs` text DEFAULT NULL,
  `dataNasc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `id` int(11) NOT NULL,
  `hospedagem_id` int(11) DEFAULT NULL,
  `forma_pagamento` varchar(50) DEFAULT NULL,
  `valor_estadia` decimal(10,2) DEFAULT NULL,
  `total_a_pagar` decimal(10,2) DEFAULT NULL,
  `status_pagamento` varchar(50) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `quarto`
--

CREATE TABLE `quarto` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `preco` float NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `DTYPE` varchar(31) NOT NULL,
  `dataReserva` datetime DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `quarto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva`
--

CREATE TABLE `reserva` (
  `id` int(11) NOT NULL,
  `dataReserva` datetime DEFAULT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `quarto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `balanco`
--
ALTER TABLE `balanco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjodklbe3cphihedw78oirfgk5` (`hospede_id`),
  ADD KEY `FKg0d2wv4rtl1l608baehd91rbu` (`quarto_id`);

--
-- Índices de tabela `check_in_out`
--
ALTER TABLE `check_in_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnmov0f7apotk214po1vx8i4s8` (`hospede_id`),
  ADD KEY `FKqjvu2dkfkxcrvus47kme9ydvo` (`quarto_id`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `gestaoquartos`
--
ALTER TABLE `gestaoquartos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `hospedagens`
--
ALTER TABLE `hospedagens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente_COD` (`cliente_cod`),
  ADD KEY `fk_quarto_cod` (`quarto_cod`);

--
-- Índices de tabela `hospede`
--
ALTER TABLE `hospede`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Índices de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospedagem_id` (`hospedagem_id`);

--
-- Índices de tabela `quarto`
--
ALTER TABLE `quarto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKi9dqxsgk1e5bkqojus9ycdp39` (`cliente_id`),
  ADD KEY `FK9bmibg8l0jex4nhkc5gnf20gm` (`quarto_id`);

--
-- Índices de tabela `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKtolnw0q67mkpqurntpvjmig74` (`cliente_id`),
  ADD KEY `FKiydv7q77g8kada6095lspnbbt` (`quarto_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `balanco`
--
ALTER TABLE `balanco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `check_in_out`
--
ALTER TABLE `check_in_out`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `gestaoquartos`
--
ALTER TABLE `gestaoquartos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `hospedagens`
--
ALTER TABLE `hospedagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `hospede`
--
ALTER TABLE `hospede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `balanco`
--
ALTER TABLE `balanco`
  ADD CONSTRAINT `FKg0d2wv4rtl1l608baehd91rbu` FOREIGN KEY (`quarto_id`) REFERENCES `quarto` (`id`),
  ADD CONSTRAINT `FKjodklbe3cphihedw78oirfgk5` FOREIGN KEY (`hospede_id`) REFERENCES `cliente` (`id`);

--
-- Restrições para tabelas `check_in_out`
--
ALTER TABLE `check_in_out`
  ADD CONSTRAINT `FKnmov0f7apotk214po1vx8i4s8` FOREIGN KEY (`hospede_id`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `FKqjvu2dkfkxcrvus47kme9ydvo` FOREIGN KEY (`quarto_id`) REFERENCES `quarto` (`id`);

--
-- Restrições para tabelas `hospedagens`
--
ALTER TABLE `hospedagens`
  ADD CONSTRAINT `fk_cliente_COD` FOREIGN KEY (`cliente_cod`) REFERENCES `cliente` (`id`),
  ADD CONSTRAINT `fk_quarto_cod` FOREIGN KEY (`quarto_cod`) REFERENCES `quarto` (`id`);

--
-- Restrições para tabelas `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD CONSTRAINT `pagamentos_ibfk_1` FOREIGN KEY (`hospedagem_id`) REFERENCES `hospedagens` (`id`);

--
-- Restrições para tabelas `quarto`
--
ALTER TABLE `quarto`
  ADD CONSTRAINT `FK9bmibg8l0jex4nhkc5gnf20gm` FOREIGN KEY (`quarto_id`) REFERENCES `quarto` (`id`),
  ADD CONSTRAINT `FKi9dqxsgk1e5bkqojus9ycdp39` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);

--
-- Restrições para tabelas `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `FKiydv7q77g8kada6095lspnbbt` FOREIGN KEY (`quarto_id`) REFERENCES `quarto` (`id`),
  ADD CONSTRAINT `FKtolnw0q67mkpqurntpvjmig74` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
