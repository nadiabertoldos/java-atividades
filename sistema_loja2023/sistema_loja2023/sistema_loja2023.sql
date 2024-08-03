-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 01/12/2023 às 18:14
-- Versão do servidor: 5.7.25
-- Versão do PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_loja2023`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_compras`
--

CREATE TABLE `tb_compras` (
  `com_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `for_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `com_datacompra` varchar(100) NOT NULL,
  `com_valortotal` varchar(100) NOT NULL,
  `com_observacoes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_contapagar`
--

CREATE TABLE `tb_contapagar` (
  `cp_codigo` int(11) NOT NULL,
  `cp_valorconta` varchar(100) DEFAULT NULL,
  `cp_datavencimento` varchar(100) NOT NULL,
  `cp_datapagamento` varchar(100) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `cp_observacoes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_contareceber`
--

CREATE TABLE `tb_contareceber` (
  `cr_codigo` int(11) NOT NULL,
  `cr_valorconta` varchar(100) NOT NULL,
  `cr_datavencimento` varchar(100) NOT NULL,
  `cr_datarecebimento` varchar(100) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `cr_observacoes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_fornecedor`
--

CREATE TABLE `tb_fornecedor` (
  `for_codigo` int(11) NOT NULL,
  `for_nome` varchar(80) NOT NULL,
  `for_endereco` varchar(80) NOT NULL,
  `for_numero` varchar(20) NOT NULL,
  `for_bairro` varchar(80) NOT NULL,
  `for_cidade` varchar(80) NOT NULL,
  `for_uf` varchar(100) NOT NULL,
  `for_cnpjcpf` varchar(14) NOT NULL,
  `for_rgie` varchar(12) NOT NULL,
  `for_telefone` varchar(10) NOT NULL,
  `for_fax` varchar(10) NOT NULL,
  `for_celular` varchar(10) NOT NULL,
  `for_email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_funcionario`
--

CREATE TABLE `tb_funcionario` (
  `fun_codigo` int(11) NOT NULL,
  `fun_nome` varchar(80) NOT NULL,
  `fun_endereco` varchar(80) NOT NULL,
  `fun_numero` varchar(20) NOT NULL,
  `fun_complemento` varchar(50) NOT NULL,
  `fun_bairro` varchar(80) NOT NULL,
  `fun_cidade` varchar(80) NOT NULL,
  `fun_uf` varchar(100) NOT NULL,
  `fun_cnpjcpf` varchar(14) NOT NULL,
  `fun_rgie` varchar(12) NOT NULL,
  `fun_sexo` varchar(100) NOT NULL,
  `fun_nascimento` date NOT NULL,
  `fun_telefone` varchar(10) NOT NULL,
  `fun_celular` varchar(10) NOT NULL,
  `fun_email` varchar(80) NOT NULL,
  `fun_salario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_itenscompra`
--

CREATE TABLE `tb_itenscompra` (
  `itc_codigo` int(11) NOT NULL,
  `com_codigo` int(11) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `for_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `itc_embalagem` varchar(100) NOT NULL,
  `itc_qtde` varchar(100) NOT NULL,
  `itc_valorun` varchar(100) NOT NULL,
  `itc_desc` varchar(100) NOT NULL,
  `itc_valortotal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_itensvenda`
--

CREATE TABLE `tb_itensvenda` (
  `itv_codigo` int(11) NOT NULL,
  `ven_codigo` int(11) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `fun_codigo` int(11) NOT NULL,
  `itv_embalagem` varchar(100) NOT NULL,
  `itv_qtde` varchar(100) NOT NULL,
  `itv_valorun` varchar(100) NOT NULL,
  `itv_desc` varchar(100) NOT NULL,
  `itv_valortotal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_notafiscal`
--

CREATE TABLE `tb_notafiscal` (
  `nf_codigo` int(11) NOT NULL,
  `nf_valornf` varchar(100) NOT NULL,
  `nf_taxaimpostonf` varchar(100) NOT NULL,
  `nf_valorimposto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `tb_notafiscal`
--

INSERT INTO `tb_notafiscal` (`nf_codigo`, `nf_valornf`, `nf_taxaimpostonf`, `nf_valorimposto`) VALUES
(123, 'a', 'b', 'c');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `pro_codigo` int(11) NOT NULL,
  `pro_descricao` varchar(80) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `pro_precocusto` varchar(100) NOT NULL,
  `pro_precovenda` varchar(100) NOT NULL,
  `pro_estoque` varchar(100) NOT NULL,
  `pro_embalagem` varchar(100) NOT NULL,
  `pro_ipi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipopagto`
--

CREATE TABLE `tb_tipopagto` (
  `tpg_codigo` int(11) NOT NULL,
  `tpg_descricao` varchar(100) NOT NULL,
  `tpg_qtde` int(11) NOT NULL,
  `tpg_ativo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipoproduto`
--

CREATE TABLE `tb_tipoproduto` (
  `tpp_codigo` int(11) NOT NULL,
  `tpp_descricao` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_vendas`
--

CREATE TABLE `tb_vendas` (
  `ven_codigo` int(11) NOT NULL,
  `fun_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `ven_datavenda` varchar(100) NOT NULL,
  `ven_valortotal` varchar(100) NOT NULL,
  `ven_observacoes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD PRIMARY KEY (`com_codigo`),
  ADD KEY `for_codigo` (`for_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Índices de tabela `tb_contapagar`
--
ALTER TABLE `tb_contapagar`
  ADD PRIMARY KEY (`cp_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Índices de tabela `tb_contareceber`
--
ALTER TABLE `tb_contareceber`
  ADD PRIMARY KEY (`cr_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Índices de tabela `tb_fornecedor`
--
ALTER TABLE `tb_fornecedor`
  ADD PRIMARY KEY (`for_codigo`);

--
-- Índices de tabela `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  ADD PRIMARY KEY (`fun_codigo`);

--
-- Índices de tabela `tb_itenscompra`
--
ALTER TABLE `tb_itenscompra`
  ADD PRIMARY KEY (`itc_codigo`),
  ADD KEY `com_codigo` (`com_codigo`),
  ADD KEY `pro_codigo` (`pro_codigo`),
  ADD KEY `tpp_codigo` (`tpp_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`),
  ADD KEY `for_codigo` (`for_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`);

--
-- Índices de tabela `tb_itensvenda`
--
ALTER TABLE `tb_itensvenda`
  ADD PRIMARY KEY (`itv_codigo`),
  ADD KEY `ven_codigo` (`ven_codigo`),
  ADD KEY `pro_codigo` (`pro_codigo`),
  ADD KEY `tpp_codigo` (`tpp_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`),
  ADD KEY `fun_codigo` (`fun_codigo`);

--
-- Índices de tabela `tb_notafiscal`
--
ALTER TABLE `tb_notafiscal`
  ADD PRIMARY KEY (`nf_codigo`);

--
-- Índices de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`pro_codigo`),
  ADD KEY `tpp_codigo` (`tpp_codigo`);

--
-- Índices de tabela `tb_tipopagto`
--
ALTER TABLE `tb_tipopagto`
  ADD PRIMARY KEY (`tpg_codigo`);

--
-- Índices de tabela `tb_tipoproduto`
--
ALTER TABLE `tb_tipoproduto`
  ADD PRIMARY KEY (`tpp_codigo`);

--
-- Índices de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD PRIMARY KEY (`ven_codigo`),
  ADD KEY `fun_codigo` (`fun_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD CONSTRAINT `tb_compras_ibfk_1` FOREIGN KEY (`for_codigo`) REFERENCES `tb_fornecedor` (`for_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_2` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_3` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

--
-- Restrições para tabelas `tb_contapagar`
--
ALTER TABLE `tb_contapagar`
  ADD CONSTRAINT `tb_contapagar_ibfk_1` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

--
-- Restrições para tabelas `tb_contareceber`
--
ALTER TABLE `tb_contareceber`
  ADD CONSTRAINT `tb_contareceber_ibfk_1` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

--
-- Restrições para tabelas `tb_itenscompra`
--
ALTER TABLE `tb_itenscompra`
  ADD CONSTRAINT `tb_itenscompra_ibfk_1` FOREIGN KEY (`com_codigo`) REFERENCES `tb_compras` (`com_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_2` FOREIGN KEY (`pro_codigo`) REFERENCES `tb_produtos` (`pro_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_3` FOREIGN KEY (`tpp_codigo`) REFERENCES `tb_tipoproduto` (`tpp_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_4` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_5` FOREIGN KEY (`for_codigo`) REFERENCES `tb_fornecedor` (`for_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_6` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`);

--
-- Restrições para tabelas `tb_itensvenda`
--
ALTER TABLE `tb_itensvenda`
  ADD CONSTRAINT `tb_itensvenda_ibfk_1` FOREIGN KEY (`ven_codigo`) REFERENCES `tb_vendas` (`ven_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_2` FOREIGN KEY (`pro_codigo`) REFERENCES `tb_produtos` (`pro_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_3` FOREIGN KEY (`tpp_codigo`) REFERENCES `tb_tipoproduto` (`tpp_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_4` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_5` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_6` FOREIGN KEY (`fun_codigo`) REFERENCES `tb_funcionario` (`fun_codigo`);

--
-- Restrições para tabelas `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD CONSTRAINT `tb_produtos_ibfk_1` FOREIGN KEY (`tpp_codigo`) REFERENCES `tb_tipoproduto` (`tpp_codigo`);

--
-- Restrições para tabelas `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD CONSTRAINT `tb_vendas_ibfk_1` FOREIGN KEY (`fun_codigo`) REFERENCES `tb_funcionario` (`fun_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_2` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_3` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
