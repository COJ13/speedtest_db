/*
Um cliente necessita de um software para SOMAR dois numeros INTEIROS.
*/

/* DDL - Data Definition Language */

/* Cria o Banco de Dados */
CREATE DATABASE speedtest02;

/* Usando o Banco de Dados */
USE speedtest02;

/* Criando a tabela */
CREATE TABLE numero
(
	id INT primary key auto_increment,
    num1 INT,
    num2 INT
)

/* DML - Data Manipulation Language */
 INSERT INTO numero (num1, num2) values(5, 10);
 INSERT INTO numero (num1, num2) values(3, 5);
 INSERT INTO numero (num1, num2) values(15,12);
 
  /* DQL - Data Query Language */
 SELECT * FROM numero;
 SELECT num1, num2, (num1 + num2) AS soma
 FROM numero;