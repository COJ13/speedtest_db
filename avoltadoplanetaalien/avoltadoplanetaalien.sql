CREATE DATABASE avoltadoplanetaalien;

USE avoltadoplanetaalien;

CREATE TABLE verbo (
    id INT PRIMARY KEY auto_increment,
    nomeverbo VARCHAR(40),
    fk_bloom_id INT
);

CREATE TABLE bloom (
    id INT PRIMARY KEY auto_increment,
    nome VARCHAR(40)
);

CREATE TABLE historia (
    id INT PRIMARY KEY auto_increment,
    titulo VARCHAR(150),
    descricao LONGTEXT,
    final VARCHAR(200)
);

CREATE TABLE competencia (
    id INT PRIMARY KEY auto_increment,
    descricao LONGTEXT,
    fk_verbo_id INT
);

CREATE TABLE etapa (
    id INT PRIMARY KEY auto_increment,
    instrucao LONGTEXT,
    ponto INT,
    tipo NCHAR(1),
    fk_verbo_id INT
);

CREATE TABLE Missao (
    id INT PRIMARY KEY auto_increment,
    hash nchar(22),
    titulo VARCHAR(80),
    forca INT,
    fk_competencia_id INT,
    fk_etapa_id INT
);

CREATE TABLE MissaoHistoria (
    id INT PRIMARY KEY auto_increment,
    fk_Missao_id INT,
    fk_historia_id INT
);

ALTER TABLE competencia ADD CONSTRAINT FK_competencia_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;

ALTER TABLE verbo ADD CONSTRAINT FK_verbo_2
    FOREIGN KEY (fk_bloom_id)
    REFERENCES bloom (id)
    ON DELETE CASCADE;

ALTER TABLE etapa ADD CONSTRAINT FK_etapa_2
    FOREIGN KEY (fk_verbo_id)
    REFERENCES verbo (id)
    ON DELETE CASCADE;

ALTER TABLE Missao ADD CONSTRAINT FK_Missao_2
    FOREIGN KEY (fk_competencia_id)
    REFERENCES competencia (id)
    ON DELETE CASCADE;
    
 ALTER TABLE Missao ADD CONSTRAINT FK_Missao_3
    FOREIGN KEY (fk_etapa_id)
    REFERENCES etapa (id)
    ON DELETE CASCADE;   
    
ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_2
    FOREIGN KEY (fk_Missao_id)
    REFERENCES Missao (id)
    ON DELETE CASCADE;

ALTER TABLE MissaoHistoria ADD CONSTRAINT FK_MissaoHistoria_3
    FOREIGN KEY (fk_historia_id)
    REFERENCES historia (id)
    ON DELETE CASCADE;

/* POVOANDO A TABELA BLOOM */
INSERT INTO bloom (nome) VALUES ('MEMORIZAR'), ('COMPREEDER'), ('APLICAR'), ('ANALISAR'), ('AVALIAR'), ('CRIAR');

/* POVOANDO A TABELA VERBO  */
INSERT INTO verbo (nomeverbo, fk_bloom_id) VALUES 
	('Listar',1), ('Relembarar', 1), ('Reconhecer', 1), ('Identificar', 1), ('Localizar', 1), ('Descrever', 1), ('Citar', 1), 
	('Esquematizar', 2), ('Relacionar', 2), ('Explicar', 2), ('Demonstrar', 2), ('Parafrasear', 2), ('Associar', 2), ('Converter', 2),
	('Utilizar', 3), ('Implementar', 3), ('Modificar', 3), ('Experimentar', 3), ('Calcular', 3), ('Demonstar', 3), ('Classificar', 3),
	('Resolver', 4), ('Categorizar', 4), ('Diferenciar', 4), ('Comparar', 4), ('Explicar', 4), ('Integrar', 4), ('Investigar', 4),
	('Defender', 5), ('Delimitar', 5), ('Estimar', 5), ('Selecionar', 5), ('Justificar', 5), ('Comparar', 5), ('Explicar', 5),
	('Elaborar', 6), ('Desenhar', 6), ('Produzir', 6), ('Prototipar', 6), ('Traçar', 6), ('Idear', 6), ('Inventar', 6);

/* POVOANDO A TABELA HISTÓRIA */
INSERT INTO historia (titulo, descricao, final) VALUES ('Planeta Alien (A Revolta do Furão)', 'No ano de 3250 a terra foi destruída por alienígenas do Planeta Alien. Esses extraterrestes
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
10. Encontrar “Databases” (força nível 10)', 'Ao final de todas as missões, todos os “Aliens” serão destruídos e o Furão irá resgatar seus
amigos e construir um novo planeta com justiça e paz.');

/* POVOANDO A TABELA ETAPAS */
INSERT INTO etapa(instrucao, ponto, tipo, fk_verbo_id)
	VALUES ('O furão deve LOCALIZAR as principais “tags html” para matar um inimigo.', 1, 'H', 5),
		   ('O furão deve RELACIONAR os principais “SELECTORES” para ganhar 5 pontos.', 5, 'C', 9),
           ('O furão deve RECONHECER qual o principal “SCRIPT” do código para ganhar um poder surpresa.', 3, 'A', 3),
           ('O furão deve ESQUEMATIZAR as “EXCEPTIONS” principais para ganhar auxílio na próxima fase.', 4, 'C', 8),
           ('O furão deve IMPLEMENTAR as “CONDITIONS” apresentadas para abrir uma nova tarefa.', 5, 'H', 16),
           ('O furão deve ELABORAR uma função com as “CONDITIONS” implementadas, para ganhar uma vida extra.', 5, 'C', 36),
           ('O furão deve MODIFICAR os “LOOPS” do código, organizando em uma nova ordem para ter um resultado diferente.', 10, 'A', 17),
           ('O furão deve COMPARAR pelo menos dois “ARRAYS” verificando se ambos teem a mesma aplicabilidade, com isso abre uma nova imagem.', 7, 'H', 25),
           ('O furão deve, caso os “ARRAYS” tenham a mesma aplicabilidade, INVENTAR uma função para centralizar o código. Fazendo isso, ganha uma nova vida.', 7, 'H', 42),
           ('O furão deve EXPLICAR como funciona as “FUNCTIONS”.', 8, 'C', 35),
		   ('O furão deverá PROTOTIPAR um script com “OBJECTS”.', 9, 'A', 39),
		   ('O furão deve DESENHAR um “DATABASE”, fazendo isso, passa para a próxima etapa.', 10, 'H', 37),
           ('O furão deve IMPLEMENTAR o banco de dados desenhado, para então, listar as missões completadas.', 10, 'A', 16);
            
/* POVOANDO A TABELA COMPETÊNCIA */
INSERT INTO competencia(descricao, fk_verbo_id) VALUES
			('Verificar a capacidade de resgate do estilo do escopo memorizado.', 5),
            ('Verificar a capacidade de compreensão dos termos apresentados.', 9),
            ('Verificar a capacidade de lembrar dos parâmetros aplicados.', 3),
            ('Verificar a capacidade de compreensão através do diagrama criado pelo esquema.', 8),
            ('Verificar a aplicação correta dos argumentos solicitados.', 16),
            ('Verificar a capacidade de criação de novas situações.', 36),
            ('Verificar a capacidade de aplicação das novas informações apresentadas.', 17),
            ('Verificar a capacidade de análise das informações apresentadas.', 25),
            ('Verificar a capacidade de criação', 42),
            ('Demonstrar qual o nível e domínio de conhecimento sobre o assunto.', 35),
            ('Verificar o nível de criação e aplicação dos conhecimentos adquiridos.', 39),
            ('Estimular a CRIATIVIDADE a partir dos requisitos apresentados.', 37),
            ('estimular a aplicação daquilo que está no papel, de acordo com a solicitação do cliente.', 16);


/* POVOANDO A TABELA MISSÃO */
 INSERT INTO missao(titulo, forca, fk_competencia_id) VALUES
			('Encontrar Tags', 1, 1), ('Encontrar “Selectores”', 2, 2), ('Encontrar “Scripts”', 3, 3), ('Encontrar “Exceptions”', 4, 4),
            ('Encontrar “Conditions”', 5, 5), ('Encontrar “Conditions”', 5, 6), ('Encontrar “Loops”', 6, 7), ('Encontrar “Arrays” ', 7, 8),
            ('Encontrar “Arrays” ', 7, 9), ('Encontrar “Functions”', 8, 10), ('Encontrar “Objects”', 9, 11), ('Encontrar “Databases”', 10, 12),
            ('Encontrar “Databases”', 10, 13);
            
				
/* POVOANDO A TABELA MISSAOHISTORIA */
INSERT INTO missaohistoria (fk_Missao_id, fk_historia_id)
	VALUES (1,1), (2,1), (3,1), (4,1), (5,1), (6,1), (7,1), (8,1), (9,1), (10,1), (11,1), (12,1), (13,1);

/* INSERINDO AS ETAPAS CORRESPONDENTES A CADA MISSÃO NA TABELA MISSAO */
UPDATE missao SET fk_etapa_id = 1 WHERE id = 1;
UPDATE missao SET fk_etapa_id = 2 WHERE id = 2;
UPDATE missao SET fk_etapa_id = 3 WHERE id = 3;
UPDATE missao SET fk_etapa_id = 4 WHERE id = 4;
UPDATE missao SET fk_etapa_id = 5 WHERE id = 5;
UPDATE missao SET fk_etapa_id = 6 WHERE id = 6;
UPDATE missao SET fk_etapa_id = 7 WHERE id = 7;
UPDATE missao SET fk_etapa_id = 8 WHERE id = 8;
UPDATE missao SET fk_etapa_id = 9 WHERE id = 9;
UPDATE missao SET fk_etapa_id = 10 WHERE id = 10;
UPDATE missao SET fk_etapa_id = 11 WHERE id = 11;
UPDATE missao SET fk_etapa_id = 12 WHERE id = 12;
UPDATE missao SET fk_etapa_id = 13 WHERE id = 13;

/* COMANDO SELECT */
/* Selececionando campos na tabela MISSAO */
SELECT id, titulo, fk_competencia_id FROM missao;

/* Selecionando a DESCRIÇÃO da COMPETENCIA quando o VERBO for IGUAL a 36 */
SELECT descricao, fk_verbo_id FROM competencia WHERE fk_verbo_id=36;

/* Selecionando CAMPOS da tabela COMPETENCIA quando os valores estiverem dentro de um INTERVALO */
SELECT id, descricao, fk_verbo_id FROM competencia WHERE fk_verbo_id>=25 AND fk_verbo_id<70;

/* Selecionando TITULO e FORÇA da tabela MISSAO, quando os valores estiverem entre 2 e 7 */
SELECT titulo, forca FROM missao WHERE forca >= 2 AND forca < 8;

/* Ordenando os dados do campo NOMEVERBO da tabela VERBO de forma CRESCENTE */
SELECT nomeverbo, fk_bloom_id FROM verbo ORDER BY nomeverbo ASC;

/* SELECIONANDO A INSTRUÇÃO DA TABELA ETAPA E A DESCRIÇÃO DA TABELA COMPETENCIA */
SELECT
	etapa.instrucao,
    competencia.descricao,
    competencia.fk_verbo_id
FROM
	etapa
INNER JOIN
	competencia ON etapa.fk_verbo_id = competencia.fk_verbo_id
WHERE
	etapa.fk_verbo_id = 3;

/* Listando os MARCADORES da tabela BLOOM e relacionando com os VERBOS da tabela VERBO */
/* Exemplo de LEFT JOIN */
SELECT nome, nomeverbo
FROM verbo
LEFT JOIN bloom
ON fk_bloom_id = bloom.id
WHERE bloom.id=1; 
 
 /* Exemplo de RIGHT JOIN */
SELECT nomeverbo, nome
FROM verbo
RIGHT JOIN bloom
ON fk_bloom_id = bloom.id
WHERE fk_bloom_id = 2;

/* Exemplo de CROSS */
SELECT nomeverbo, nome
FROM bloom
CROSS JOIN verbo;

SELECT nomeverbo, descricao
FROM verbo
CROSS JOIN competencia;

DELETE FROM missao WHERE id=12;
DELETE FROM missao WHERE id=9;




SELECT * FROM bloom;
SELECT * FROM competencia;
SELECT * FROM etapa;
SELECT * FROM historia;
SELECT * FROM missao;
SELECT * FROM missaohistoria;
SELECT * FROM verbo;

DESC bloom;
DESC competencia;
DESC etapa;
DESC historia;
DESC missao;
DESC missaohistoria;
DESC verbo;
show tables;

SELECT *
FROM verbo
FULL JOIN bloom
ON bloom.id = verbo.fk_bloom_id;


