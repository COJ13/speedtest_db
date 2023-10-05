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
	VALUES ('O furão deve encontrar as principais “tags html” para matar um inimigo.', 1, 'H', 5),
			('O furão deve LISTAR os principais “SELECTORES” para ir para o próximo nível.', 2, 'C', 1),
            ('O furão deve RECONHECER qual principal “SCRIPT” do código para ganhar uma vida extra.', 3, 'A', 3),
            ('O furão deve ESQUEMATIZAR as “EXCEPTIONS” principais para chegar aumentar o life.', 4, 'C', 8),
            ('O furão deve CLASSIFICAR as “CONDITIONS” para abrir uma nova tarefa.', 5, 'C', 21),
            ('O furão deve JUSTIFICAR os “LOOPS” do código para criar um link.', 6, 'A', 33),
            ('O furão deve COMPARAR pelo menos dois “ARRAYS” para abrir uma nova imagem.', 7, 'H', 25),
            ('O furão deve EXPLICAR como funciona as “FUNCTIONS”.', 8, 'C', 35),
            ('O furão deverá PROTOTIPAR um script com “OBJECTS”.', 9, 'A', 39),
			('O furão deve PRODUZIR um “DATABASE” para listar as missões completadas.', 10, 'A', 38);
            
/* POVOANDO A TABELA COMPETÊNCIA */
INSERT INTO (descricao, fk_verbo_id) VALUES
			('Demonstrar o nível de memorização do conteúdo aplicado.', 5),
            ('ao LISTAR uma série de opções, permite ao jogador uma melhor MEMORIZAÇÃO', 1),
            ('Saber fazer uma leitura objetiva do código.', 3),
            ('Quando se ESQUEMATIZA um determinado assunto, pode-se ter uma visão mais clara do assunto, permitindo uma melhor COMPREENSÃO.', 8),
            ('Aplicar em uma determinada ordem os níveis de entendimento.', 21),
            ('JUSTIFICANDO uma situação permite um AVALIAÇÃO do conhecimento.', 33),
            ('Capacidade de argumentação e avaliação da etapa.', 25),
            ('Demonstrar qual o nível de conhecimento sobre o assunto.', 35),
            ('Verificar o nível de criação e aplicação dos conhecimentos adquiridos', 39),
            ('Demonstrar a capacidade de criação em uma tarefa.', 38);
            
            

DESC bloom;
DESC competencia;
DESC etapa;
DESC historia;
DESC missao;
DESC missaohistoria;
DESC verbo;


SELECT * FROM bloom;
SELECT * FROM competencia;
SELECT * FROM etapa;
SELECT * FROM historia;
SELECT * FROM missao;
SELECT * FROM missaohistoria;
SELECT * FROM verbo;
show tables;

