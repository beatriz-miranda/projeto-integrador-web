-- dump.sql
-- Versão da sintaxe do BD MySQL: 5.6


-- MARK: CONFIGURAÇÃO BD + USUÁRIO (APENAS PARA BASES LOCAIS)


-- Base de dados "epiz_24748230_projetointegrador"
DROP DATABASE IF EXISTS `epiz_24748230_projetointegrador`;
CREATE DATABASE `epiz_24748230_projetointegrador`;


-- Usuário "epiz_24748230"
USE `epiz_24748230_projetointegrador`;
DROP USER IF EXISTS 'epiz_24748230';
CREATE USER 'epiz_24748230' IDENTIFIED BY 'pIntegrador1';
GRANT ALL ON `epiz_24748230_projetointegrador`.* TO 'epiz_24748230';
FLUSH PRIVILEGES;


-- MARK: SNIPPET DE DROP GERAL. CLEAR RÁPIDO DA BASE DE DADOS


USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`acabamento`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`moldura`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`tipoPintura`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`fornecedor`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`quadro`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`cliente`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`endereco`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`pedido`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`itemPedido`;
DROP PROCEDURE IF EXISTS `epiz_24748230_projetointegrador`.`GET_TRENDING`;
DROP PROCEDURE IF EXISTS `epiz_24748230_projetointegrador`.`RESET_TRENDING`;
DROP PROCEDURE IF EXISTS `epiz_24748230_projetointegrador`.`INCREMENT_TRENDING`;


-- MARK: CONFIGURAÇÃO TABELAS + DADOS, E PROCEDURES


-- Charset padrão (UTF-8) da base de dados "epiz_24748230_projetointegrador"
USE `epiz_24748230_projetointegrador`;
ALTER DATABASE `epiz_24748230_projetointegrador` CHARACTER SET utf8 COLLATE utf8_unicode_ci;


-- Tabela "acabamento"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`acabamento`;
CREATE TABLE `epiz_24748230_projetointegrador`.`acabamento`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(60) NOT NULL,
  `valor` DECIMAL(10,2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
)
ENGINE = MyISAM;
CREATE UNIQUE INDEX `descricao_UNIQUE` ON `epiz_24748230_projetointegrador`.`acabamento` (`descricao` ASC);


-- Tabela "moldura"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`moldura`;
CREATE TABLE `epiz_24748230_projetointegrador`.`moldura`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(60) NOT NULL,
  `valor` DECIMAL(10,2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
)
ENGINE = MyISAM;
CREATE UNIQUE INDEX `descricao_UNIQUE` ON `epiz_24748230_projetointegrador`.`moldura` (`descricao` ASC);


-- Tabela "tipoPintura"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`tipoPintura`;
CREATE TABLE `epiz_24748230_projetointegrador`.`tipoPintura`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id`)
)
ENGINE = MyISAM;
CREATE UNIQUE INDEX `descricao_UNIQUE` ON `epiz_24748230_projetointegrador`.`tipoPintura` (`descricao` ASC);


-- Tabela "fornecedor"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`fornecedor`;
CREATE TABLE `epiz_24748230_projetointegrador`.`fornecedor`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(40) NOT NULL,
  `hash` VARCHAR(500) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `sobrenome` VARCHAR(60) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
)
ENGINE = MyISAM; -- InnoDB quando versão do MySQL >8.0
CREATE UNIQUE INDEX `username_UNIQUE` ON `epiz_24748230_projetointegrador`.`fornecedor` (`username` ASC);


-- Tabela "quadro"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`quadro`;
CREATE TABLE `epiz_24748230_projetointegrador`.`quadro`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `fornecedor` INT NOT NULL,
  `nome` VARCHAR(60) NOT NULL DEFAULT 'Masterpiece',
  `altura` DECIMAL(6,2) NOT NULL,
  `largura` DECIMAL(6,2) NOT NULL,
  `tipoPintura` INT NOT NULL DEFAULT 1,
  `valor` DECIMAL(10,2) NOT NULL,
  `qtd` INT NOT NULL DEFAULT 0,
  `foto1` VARCHAR(300) NOT NULL,
  `foto2` VARCHAR(300) NULL DEFAULT NULL,
  `foto3` VARCHAR(300) NULL DEFAULT NULL,
  `views` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `tipoPintura`
    FOREIGN KEY (`tipoPintura`)
    REFERENCES `epiz_24748230_projetointegrador`.`tipoPintura` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fornecedor`
    FOREIGN KEY (`fornecedor`)
    REFERENCES `epiz_24748230_projetointegrador`.`fornecedor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = MyISAM; -- InnoDB quando versão do MySQL >8.0
CREATE INDEX `fornecedor_idx` ON `epiz_24748230_projetointegrador`.`quadro` (`fornecedor` ASC);
CREATE INDEX `tipoPintura_idx` ON `epiz_24748230_projetointegrador`.`quadro` (`tipoPintura` ASC);


-- Tabela "cliente"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`cliente`;
CREATE TABLE `epiz_24748230_projetointegrador`.`cliente`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(40) NOT NULL,
  `hash` VARCHAR(500) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `sobrenome` VARCHAR(60) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `dataNasc` DATE NOT NULL,
  PRIMARY KEY (`id`)
)
ENGINE = MyISAM; -- InnoDB quando versão do MySQL >8.0
CREATE UNIQUE INDEX `username_UNIQUE` ON `epiz_24748230_projetointegrador`.`cliente` (`username` ASC);


-- Tabela "endereco"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`endereco`;
CREATE TABLE `epiz_24748230_projetointegrador`.`endereco`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `cliente` INT NOT NULL,
  `rua` VARCHAR(60) NOT NULL,
  `numeral` VARCHAR(16) NOT NULL,
  `complemento` VARCHAR(60) NULL DEFAULT NULL,
  `cidade` VARCHAR(60) NOT NULL,
  `pais` VARCHAR(60) NOT NULL DEFAULT 'Brasil',
  `cep` VARCHAR(20) NOT NULL,
  `ePadrao` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  CONSTRAINT `cliente`
    FOREIGN KEY (`cliente`)
    REFERENCES `epiz_24748230_projetointegrador`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = MyISAM; -- InnoDB quando versão do MySQL >8.0
CREATE INDEX `cliente_idx` ON `epiz_24748230_projetointegrador`.`endereco` (`cliente` ASC);


-- Tabela "pedido"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`pedido`;
CREATE TABLE `epiz_24748230_projetointegrador`.`pedido`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `cliente` INT NOT NULL,
  `total` DECIMAL(12,2) NOT NULL,
  `frete` DECIMAL(12,2) NOT NULL,
  `data` TIMESTAMP NOT NULL DEFAULT NOW(),
  PRIMARY KEY (`id`),
  CONSTRAINT `cliente`
    FOREIGN KEY (`cliente`)
    REFERENCES `epiz_24748230_projetointegrador`.`cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = MyISAM; -- InnoDB quando versão do MySQL >8.0
CREATE INDEX `cliente_idx` ON `epiz_24748230_projetointegrador`.`pedido` (`cliente` ASC);


-- Tabela "itemPedido"
USE `epiz_24748230_projetointegrador`;
DROP TABLE IF EXISTS `epiz_24748230_projetointegrador`.`itemPedido`;
CREATE TABLE `epiz_24748230_projetointegrador`.`itemPedido`
(
  `id` INT NOT NULL AUTO_INCREMENT,
  `pedido` INT NOT NULL,
  `quadro` INT NOT NULL,
  `moldura` INT NOT NULL DEFAULT 1,
  `acabamento` INT NOT NULL DEFAULT 1,
  `valor` DECIMAL(10,2) NOT NULL,
  `qtd` INT NOT NULL DEFAULT 0,
  `subtotal` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `pedido`
    FOREIGN KEY (`pedido`)
    REFERENCES `epiz_24748230_projetointegrador`.`pedido` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `quadro`
    FOREIGN KEY (`quadro`)
    REFERENCES `epiz_24748230_projetointegrador`.`quadro` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `moldura`
    FOREIGN KEY (`moldura`)
    REFERENCES `epiz_24748230_projetointegrador`.`moldura` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `acabamento`
    FOREIGN KEY (`acabamento`)
    REFERENCES `epiz_24748230_projetointegrador`.`acabamento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = MyISAM; -- InnoDB quando versão do MySQL >8.0
CREATE INDEX `pedido_idx` ON `epiz_24748230_projetointegrador`.`itemPedido` (`pedido` ASC);
CREATE INDEX `quadro_idx` ON `epiz_24748230_projetointegrador`.`itemPedido` (`quadro` ASC);
CREATE INDEX `moldura_idx` ON `epiz_24748230_projetointegrador`.`itemPedido` (`moldura` ASC);
CREATE INDEX `acabamento_idx` ON `epiz_24748230_projetointegrador`.`itemPedido` (`acabamento` ASC);


-- Dados da tabela "acabamento"
USE `epiz_24748230_projetointegrador`;
INSERT INTO `epiz_24748230_projetointegrador`.`acabamento` (`id`, `descricao`, `valor`) VALUES
(1, 'Nenhum', 0),
(2, 'Tampa de vidro', 100),
(3, 'Tampa de acrílico', 65);


-- Dados da tabela "moldura"
USE `epiz_24748230_projetointegrador`;
INSERT INTO `epiz_24748230_projetointegrador`.`moldura` (`id`, `descricao`, `valor`) VALUES
(1, 'Nenhuma', 0),
(2, 'Madeira au naturel', 70),
(3, 'Madeira pintada', 85),
(4, 'Aço inoxidável', 150),
(5, 'Metal envelhecido', 135),
(6, 'Metal escovado', 135);


-- Dados da tabela "tipoPintura"
USE `epiz_24748230_projetointegrador`;
INSERT INTO `epiz_24748230_projetointegrador`.`tipoPintura` (`id`, `descricao`) VALUES
(1, 'Não especificado'),
(2, 'Impressão / Impressão 3D'),
(3, 'Pintura a óleo'),
(4, 'Pintura à têmpera'),
(5, 'Pintura de tinta acrílica'),
(6, 'Pintura mural'),
(7, 'Afresco'),
(8, 'Aquarela');


-- Procedure "GET_TRENDING"
USE `epiz_24748230_projetointegrador`;
DROP PROCEDURE IF EXISTS `epiz_24748230_projetointegrador`.`GET_TRENDING`;
DELIMITER $$
CREATE PROCEDURE `GET_TRENDING` (IN qtd INT)
BEGIN
	SELECT quadro.foto1, quadro.nome, fornecedor.username
  FROM quadro INNER JOIN fornecedor
  ON quadro.fornecedor = fornecedor.id
  ORDER BY quadro.views DESC
  LIMIT qtd;
END$$
DELIMITER ;


-- Procedure "RESET_TRENDING"
USE `epiz_24748230_projetointegrador`;
DROP PROCEDURE IF EXISTS `epiz_24748230_projetointegrador`.`RESET_TRENDING`;
DELIMITER $$
CREATE PROCEDURE `RESET_TRENDING` ()
BEGIN
	UPDATE quadro
  SET quadro.views = 0;
END$$
DELIMITER ;


-- Procedure "INCREMENT_TRENDING"
USE `epiz_24748230_projetointegrador`;
DROP PROCEDURE IF EXISTS `epiz_24748230_projetointegrador`.`INCREMENT_TRENDING`;
DELIMITER $$
CREATE PROCEDURE `INCREMENT_TRENDING` (IN quadroId INT)
BEGIN
	UPDATE quadro
  SET quadro.views = quadro.views + 1
  WHERE quadro.id = quadroId;
END$$
DELIMITER ;
