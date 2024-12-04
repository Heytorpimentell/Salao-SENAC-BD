CREATE DATABASE IF NOT EXISTS db_salaoSenac;
SHOW DATABASES;
USE db_salaoSenac;
SELECT DATABASE();

-- Tabela Profissional (Criação antes das outras que referenciam ela)
CREATE TABLE IF NOT EXISTS tbl_profissional (
    cpf CHAR(11) PRIMARY KEY,
    especialidade VARCHAR(45) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(255),
    estadoCivil VARCHAR(10) NOT NULL,
    nomeSocial VARCHAR(45),
    dataNasc DATE NOT NULL,
    telefone VARCHAR(15) NOT NULL UNIQUE,
    cargaHoraria TIME NOT NULL,
    sexo CHAR(1),
    comissao DECIMAL(8,2) NOT NULL,
    salario DECIMAL(8,2) NOT NULL
);

-- Tabela Cliente (Criação antes das outras que referenciam ela)
CREATE TABLE IF NOT EXISTS tbl_cliente (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    nomeSocial VARCHAR(45),
    email VARCHAR(45) NOT NULL UNIQUE
);

-- Tabela Funcionario
CREATE TABLE IF NOT EXISTS tbl_funcionario (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    dataNasc DATE NOT NULL,
    email VARCHAR(45),
    estadoCivil VARCHAR(10) NOT NULL,
    cargaHoraria TIME NOT NULL,
    sexo CHAR(1),
    salario DECIMAL(8,2) NOT NULL,
    nomeSocial VARCHAR(45),
    comissao DECIMAL(8,2) NOT NULL
);

-- Tabela Ferias
CREATE TABLE IF NOT EXISTS tbl_ferias (
    id_ferias SMALLINT AUTO_INCREMENT PRIMARY KEY,
    qtDia INT NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,
    funcionario_cpf CHAR(11),
    FOREIGN KEY (funcionario_cpf) REFERENCES tbl_funcionario(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Tabela Dependente Funcionario
CREATE TABLE IF NOT EXISTS tbl_dependenteFuncionario (
    cpf CHAR(11) PRIMARY KEY,
    parentesco VARCHAR(45) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    nomeSocial VARCHAR(45),
    dataNasc DATE NOT NULL,
    funcionario_cpf CHAR(11),
    FOREIGN KEY (funcionario_cpf) REFERENCES tbl_funcionario(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Tabela Endereco
CREATE TABLE IF NOT EXISTS tbl_endereco (
    uf CHAR(2) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    rua VARCHAR(45) NOT NULL,
    cep CHAR(8) NOT NULL,
    numero VARCHAR(6) NOT NULL,
    funcionario_cpf CHAR(11),
    profissional_cpf CHAR(11),
    cliente_cpf CHAR(11),
    FOREIGN KEY (funcionario_cpf) REFERENCES tbl_funcionario(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (profissional_cpf) REFERENCES tbl_profissional(cpf)
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    FOREIGN KEY (cliente_cpf) REFERENCES tbl_cliente(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Tabela Registro Servico
CREATE TABLE IF NOT EXISTS tbl_registroServico (
    idregistroServico INT AUTO_INCREMENT PRIMARY KEY,
    tipoServico VARCHAR(45) NOT NULL,
    nomeCliente VARCHAR(45) NOT NULL,
    nomeSocialCliente VARCHAR(45),
    funcionario_cpf CHAR(11),
    FOREIGN KEY (funcionario_cpf) REFERENCES tbl_funcionario(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Tabela Telefone
CREATE TABLE IF NOT EXISTS tbl_telefone (
    idtelefone INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(15) NOT NULL,
    funcionario_cpf CHAR(11),
    profissional_cpf CHAR(11),
    cliente_cpf CHAR(11),
    FOREIGN KEY (funcionario_cpf) REFERENCES tbl_funcionario(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (profissional_cpf) REFERENCES tbl_profissional(cpf)
    ON DELETE CASCADE 
    ON UPDATE CASCADE,
    FOREIGN KEY (cliente_cpf) REFERENCES tbl_cliente(cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Tabela Forma de Pagamento
CREATE TABLE IF NOT EXISTS tbl_formPag (
    idformPag INT AUTO_INCREMENT PRIMARY KEY,
    valorPago DECIMAL(8,2) NOT NULL,
    tipo VARCHAR(45) NOT NULL,
    registroServico_idregistroServico INT,
    FOREIGN KEY (registroServico_idregistroServico) REFERENCES tbl_registroServico(idregistroServico)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
