/*
Um cliente necessita de um software para armazenar nome de pessoas.
*/

/* DDL - Data Definition Language */

/* Cria o Banco de Dados */
CREATE DATABASE speedtest01; 

/* Usar o Banco de Dados */
USE speedtest01;

/* Criar Tabelas */
CREATE TABLE pessoa
(
	id int primary key auto_increment,
    nome varchar(80)
)
 
 /* DML - Data Definition Language */
 INSERT INTO pessoa (nome) values('Tatiene');
 INSERT INTO pessoa (nome) values('Pedro');
 INSERT INTO pessoa (nome) values('Miqueias');
 INSERT INTO pessoa (nome) values('Josimar');
 INSERT INTO pessoa (nome) values('Professor Romulo');
 
 /* DQL - Data Query Language */
 SELECT * FROM pessoa;