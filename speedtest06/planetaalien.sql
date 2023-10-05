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
DESCRIBE historiajogo; /* MOSTRANDO A ESTRUTURA DA TABELA - DICIONÁRIO DE DADOS */


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


SELECT * FROM historiajogo;


/* ---------- SPEEDTEST06 - AULA DO DIA 29/09 - CRIANDO A TABELA BLOOM ---------- */
CREATE TABLE historiajogo
(
	id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(90),
    descricao LONGTEXT,
    final VARCHAR(300)
);

INSERT INTO historiajogo (titulo,descricao,final) VALUES ('Planeta Alien (A Revolta do Furão)','Planeta Alien
No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
eram desenvolvedores de tecnologia avançada em seu planeta, mas aprenderam com os
humanos a linguagem de marcação HTML, a linguagem de estilização CSS e a linguagem de
programação Java Script.
Antes de destruir a terra por inteiro, escolheu um casal de cada Mamífero e fez uma mutação
genética com a tecnologia do planeta Alien e as tecnologias aprendidas no planeta Terra:
HTML, CSS e Java Script.
Todos os Mamíferos mutantes, aceitaram tranquilamente a mutação genética, mas um e
apenas um, chamado de Furão Mutante Guerreiro, não aceitou. Ele foi levado para o Planeta
Alien, mas a sua memória ainda continuou na terra. Um dia essas memórias se misturaram
com sua mutação genética e ele se revoltou contra os aliens.
A revolta fez nascer missões. E cada missão ganha um nível de força que o torna mais poderoso
aumentando a possibilidade de destruir mais aliens e assim salvar também os seus amigos
terrestres.
O jogo possuirá 10 missões:
1. Encontrar Tags (força nível 1)
a. O furão deve encontrar as principais “tags html” para matar um inimigo.
2. Encontrar “Selectores” (força nível 2)
3. Encontrar “Scripts” (força nível 3)
4. Encontrar “Exceptions” (força nível 4)
5. Encontrar “Conditions” (força nível 5)
6. Encontrar “Loops” (força nível 6)
7. Encontrar “Arrays” (força nível 7)
8. Encontrar “Functions” (força nível 8)
9. Encontrar “Objects” (força nível 9)
10. Encontrar “Databases” (força nível 10)','Ao final de todas as missões, todos os “Aliens” serão destruídos e o Furão irá resgatar seus
amigos e construir um novo planeta com justiça e paz.');


select * from historiajogo;





