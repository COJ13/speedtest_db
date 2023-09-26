/*
Um cliente necessita de um software que armazene o NOME, a MESA ATENDIDA e uma COMANDA. Na COMANDA DEVE ter o GARÇOM, a MESA e o VALOR TOTAL.
Você DEVE MOSTRAR os dados cadastrados no banco de dados e também REALIZAR um CÁLCULO da GORJETA do GARÇOM.
*/

/* DDL - Data Definition Language */
/* Cria o Banco de Dados */
CREATE DATABASE bardodba;

/* Usando o Banco de Dados */
USE bardodba;

/* --------------------------------------------------------------------*/

/* Criando tabelas */
CREATE TABLE garcom
(
	id INT primary key auto_increment,
    nome VARCHAR(50)
);

CREATE TABLE mesa
(
	id INT primary key auto_increment,
    localizacao NCHAR(2)
);

CREATE TABLE comanda
(
	id INT primary key auto_increment,
    valortotal DECIMAL(5,2),
    fechada TINYINT(1),
    estrelas INT,
    fk_garcom_id INT,
    fk_mesa_id INT
);

/* ALTER TABLE - altera a tabela */
/* CONSTRAINT - limitações (regras) */
/* Adicionar uma CONSTRAINT: FOREING KEY (chave estrangeira) */
/* alter - alterar */
/* table - tabela */
/*comanda - nome da tabela */
/* add constraint - adicionar regra */
/* fk_garcom_2 - campo da tabela comanda */
/* FOREIGN KEY - chave estrangeira */
/* fk_garcom_id - campo da tabela comanda */
/* REFERENCES garcom - referenciando a tabela garcom */
/* ON DELETE CASCADE - deletar em cascata */
/* o campo garcom(id) - o id é da tabela garcom */

ALTER TABLE comanda ADD CONSTRAINT FK_comanda_2
    FOREIGN KEY (fk_garcom_id)
    REFERENCES garcom (id)
    ON DELETE CASCADE;
 
ALTER TABLE comanda ADD CONSTRAINT FK_comanda_3
    FOREIGN KEY (fk_mesa_id)
    REFERENCES mesa (id)
    ON DELETE CASCADE;


/* --------------------------------------------------------------------*/

/* DML - Data Definition Language */
/* INSERINDO DADOS NA TABELA GARÇOM */
INSERT INTO garcom(nome) VALUES ('Celso');
INSERT INTO garcom(nome) VALUES ('Miqueias');
INSERT INTO garcom(nome) VALUES ('Arthur');
INSERT INTO garcom(nome) VALUES ('Romulo');
INSERT INTO garcom(nome) VALUES ('Carlos');

/* INSERINDO DADOS NA TABELA MESA */
INSERT INTO mesa(localizacao) VALUES ('E1');
INSERT INTO mesa(localizacao) VALUES ('E2');
INSERT INTO mesa(localizacao) VALUES ('E3');
INSERT INTO mesa(localizacao) VALUES ('E4');
INSERT INTO mesa(localizacao) VALUES ('E5');
INSERT INTO mesa(localizacao) VALUES ('E6');
INSERT INTO mesa(localizacao) VALUES ('E7');
INSERT INTO mesa(localizacao) VALUES ('E8');
INSERT INTO mesa(localizacao) VALUES ('E9');

/* INSERINDO DADOS NA TABELA COMANDA */
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (999.99, false, 2, 2, 5);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (600.00, true, 5, 2, 6);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (220.00, true, 5, 1, 10);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (300.00, false, 4, 1, 13);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (750.00, true, 5, 3, 22);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (380.00, false, 4, 3, 25);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (632.00, true, 5, 4, 33);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (152.00, false, 4, 4, 34);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (782.00, true, 5, 5, 42);
INSERT INTO comanda(valortotal, fechada, estrelas, fk_garcom_id, fk_mesa_id) VALUES (52.00, false, 4, 5, 43);


/* --------------------------------------------------------------------*/

/* LOOP PARA INSERÇÃO DE DADOS NA TABELA MESA */
CREATE PROCEDURE inserir_valores_na_coluna_B()
BEGIN
	DECLARE i INT DEFAULT 1;
    WHILE i < 10 DO
		INSERT INTO mesa(localizacao) VALUES (CONCAT('B', i));
        SET i = i + 1;
	END WHILE;
END;

/* --------------------------------------------------------------------*/

/* CÓDIGOS AVULSOS */
UPDATE mesa SET localizacao='B2' WHERE id=4;
DELETE FROM mesa;
TRUNCATE TABLE mesa;
SELECT COUNT(localizacao) FROM mesa;
 
/* --------------------------------------------------------------------*/
/* DQL - Data Query Language */
/* SELECIONANDO DADOS NA TABELA GARÇOM */
 SELECT * FROM garcom;
 
/* SELECIONANDO DADOS NA TABELA MESA */
 SELECT * FROM mesa;
 
/* SELECIONANDO DADOS NA TABELA COMANDA */
 SELECT * FROM comanda;
 
 SELECT * FROM garcom;
 SELECT * FROM mesa;
 SELECT * FROM comanda;
 
 