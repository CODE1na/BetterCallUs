CREATE DATABASE IF NOT EXISTS bettercallus;
USE bettercallus;

CREATE TABLE IF NOT EXISTS cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    cpf VARCHAR(11),
    senha VARCHAR(100),
    privilegio int,
    email VARCHAR(50) unique,
    telefone VARCHAR(20),
    nomeSocial VARCHAR(50),
    UNIQUE KEY uq_cpf_rg (cpf)
);

CREATE TABLE IF NOT EXISTS ADM (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    cpf varchar(11),
    senha VARCHAR(100),
    privilegio int,
    email varchar(50) unique,
    departamento VARCHAR(50),
    UNIQUE KEY uq_cpf_rg (cpf)
);

CREATE TABLE IF NOT EXISTS suporte (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    cpf varchar(11),
    senha VARCHAR(100),
    privilegio int,
    email varchar(50) unique,
    chamados int,
    chamadosRespondidos int,
    UNIQUE KEY uq_cpf_rg (cpf)
);

CREATE TABLE chamado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    area VARCHAR(255),
    titulo VARCHAR(50),
    estado VARCHAR(10) DEFAULT 'aberto',
    sumario TEXT,
    equipamento VARCHAR(100) DEFAULT 'nenhum',
    status ENUM('Em aguardo', 'Em andamento', 'Finalizado'),
    datacriacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    dataatualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    prioridade VARCHAR(255),
    tempoderesposta INT,
    nome_equipamento VARCHAR(50),
    email_cliente varchar(50),
    email_suporte varchar(50) DEFAULT null,
);

CREATE TABLE IF NOT EXISTS CategoriasProblemas (
    nome VARCHAR(100) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS Problemas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(50),
    descricao TEXT,
    FOREIGN KEY (categoria) REFERENCES CategoriasProblemas(nome)
);

CREATE TABLE IF NOT EXISTS Respostas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    problema_id INT,
    resposta_texto TEXT,
    contador_respostas INT,
    FOREIGN KEY (problema_id) REFERENCES Problemas(id)
);

CREATE TABLE IF NOT EXISTS equipamentos(
	id INT auto_increment primary key,
    numeroSerie varchar(10),
    nome varchar(50),
    descricao varchar(100),
    unique key nSerie (numeroSerie)
);

INSERT INTO ADM (`nome`, `cpf`, `senha`, `privilegio`, `email`, `departamento`) 
VALUES ('Adm', '11111111111', '123!@#qweQWE', 2, 'adm@gmail.com', 'sim');
INSERT INTO suporte(nome, cpf, senha, privilegio, email, chamados, chamadosRespondidos) values('Suporte', '12345678910', 'suporte123', 1, 'suporte@gmail.com', 0, 0);

INSERT INTO cliente (`nome`, `cpf`, `senha`, `privilegio`, `email`) 
VALUES ('cliente', '22222222222', 'cliente123', 0, 'cliente@gmail.com');

INSERT INTO equipamentos (numeroSerie, nome, descricao) VALUES
('ABC123', 'Mouse', 'Mouse sem fio'),
('DEF456', 'Teclado', 'Teclado mecânico'),
('GHI789', 'Computador', 'Desktop de última geração'),
('JKL012', 'Monitor', 'Monitor LED de 27 polegadas'),
('MNO345', 'Cabo de Rede', 'Cabo Ethernet de alta velocidade');

select * from chamado;
select * from cliente;
select * from suporte;
select * from ADM;
select * from equipamentos;
