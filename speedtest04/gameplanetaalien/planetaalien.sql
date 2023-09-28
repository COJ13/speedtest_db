/* ----- COMANDOS DDL - Data Definition Language ----- */
/* CRIANDO O BANCO DE DADOS */
CREATE DATABASE planetaalien;

/* USANDO O BANCO DE DADOS */
USE planetaalien;

/* CRIANDO TABELAS */
CREATE TABLE usuario(
	id int primary key auto_increment,
    nome varchar(70) NULL,
    apelido varchar(70) NOT NULL,
    email varchar(80) NOT NULL,
    senha nchar(8)NOT NULL
);

SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/

/* ----- COMANDOS DML - Data Manipulation Language ----- */
/* iNSERIR O RÔMULO */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Rômulo Cesar','jogador-da-cei','jogao@gmail.com',34567898); /* INSERINDO OS DADOS NA TABELA */
SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/

/* INSERIR MAIS 4 AMIGOS */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Tatiene','Tati_Game','tatiene@gmail',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Pedro','Pedro_DBA','pedro_dba@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Miqueias','mik','mik_game@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Celso','celso_game','olivcel@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */

SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/

/*ATUALIZAR DADOS DE UM COLEGA*/
UPDATE usuario SET apelido ='Tati_Jogadora' WHERE  id=2;

SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/

/* INSERIR DIVERSOS JOGADORES */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Carlos','carlos_Game','carlos@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Antonio','Antonio-jogador','antonio_dba@gmail.com',22335566); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Fabiola','fabi_jogadora','fabi@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Vitoria','vi_game','vitoria@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Catarina','cat_jogadora','catarina@gmail.com',8855447); /* INSERINDO OS DADOS NA TABELA */

SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/

/* DELETAR JOGADORES DE UM INTERVALO COM SOMENTE UMA CONDIÇÃO */
DELETE FROM usuario WHERE id<3;

SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/

/* DELETAR JOGADORES DE UM INTERVALO COM DELIMITADO POR DUAS CONDIÇÕES */
DELETE FROM usuario WHERE id > 5 AND id <=10;

SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/

/* OUTROS COMANDOS */
SHOW TABLES; /* MOSTRANDO AS TABELAS CRIADAS DENTRO DO BANCO DE DADOS */
DESCRIBE usuario; /* MOSTRANDO A ESTRUTURA DA TABELA - DICIONÁRIO DE DADOS */


/* ---------- SPEEDTEST05 - AULA DO DIA 28/09 - CRIANDO A TABELA BLOOM ---------- */
CREATE TABLE bloom
(
	id INT PRIMARY KEY  auto_increment,
    nome VARCHAR(30)
);

INSERT INTO bloom (nome) VALUES ('MEMORIZAR');
INSERT INTO bloom (nome) VALUES ('COMPREENDER');
INSERT INTO bloom (nome) VALUES ('APLICAR');
INSERT INTO bloom (nome) VALUES ('ANALISAR');
INSERT INTO bloom (nome) VALUES ('AVALIAR');
INSERT INTO bloom (nome) VALUES ('CRIAR');


SELECT * FROM bloom;









