
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

SHOW TABLES; /* MOSTRANDO AS TABELAS CRIADAS DENTRO DO BANCO DE DADOS */
describe usuario; /* MOSTRANDO A ESTRUTURA DA TABELA - DICIONÁRIO DE DADOS */

/* ----- COMANDOS DML - Data Manipulation Language ----- */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Tatiene','Tati_Game','tatiene@gmail',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Pedro','Pedro_DBA','pedro_dba@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Miqueias','mik','mik_game@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Celso','celso_game','olivcel@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Rômulo Cesar','jogador-da-cei','jogao@gmail.com',34567898); /* INSERINDO OS DADOS NA TABELA */

INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Carlos','carlos_Game','carlos@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Antonio','Antonio-jogador','antonio_dba@gmail.com',22335566); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Fabiola','fabi_jogadora','fabi@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Vitoria','vi_game','vitoria@gmail.com',12345678); /* INSERINDO OS DADOS NA TABELA */
INSERT INTO usuario(nome,apelido,email,senha) VALUES ('Catarina','cat_jogadora','catarina@gmail.com',8855447); /* INSERINDO OS DADOS NA TABELA */


DELETE FROM usuario WHERE id=8; /* DELETA O A LINHA REFERENTE A UM ID ESPECÍFICO */

UPDATE usuario SET apelido ='mik_game' WHERE  id=11; 	/*ALTERA DADOS DO USUARIO NA TABELA PARA UM ID ESPECÍFICO*/

SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/

DELETE FROM usuario WHERE id > 15 AND id <=17;



DELETE FROM usuario; /* DELETA TODOS OS REGISTROS DA TABELA */
DELETE FROM usuario WHERE id=4; /* DELETA O A LINHA REFERENTE A UM ID ESPECÍFICO */

/* ----- COMANDOS DQL - Data Query Language ----- */
SELECT * FROM usuario; 					/*SELECIONANDO OS DADOS NA TABELA*/
SELECT apelido,senha FROM usuario;		/*SELECIONA CAMPOS ESPECÍFICOS DA TABELA*/
SELECT apelido,id FROM usuario; 		/*SELECIONA CAMPOS ESPECÍFICOS DA TABELA*/
SELECT apelido FROM usuario; 		/*SELECIONA CAMPOS ESPECÍFICOS DA TABELA*/
UPDATE usuario SET apelido ='Tati_Game' WHERE  id=3; 	/*ALTERA DADOS DO USUARIO NA TABELA PARA UM ID ESPECÍFICO*/

/* ----- COMANDOS AVULSOS ----- */
ALTER TABLE usuario CHANGE ewmail email VARCHAR(80) NOT NULL unsigned;
DROP TABLE usuario;