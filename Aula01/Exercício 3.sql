CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) Not Null,
Nascimento DATE Not Null,
Ano INT Not Null,
Nota DECIMAL (6,2)Not Null,
PRIMARY KEY (Id)
);

SELECT *FROM tb_estudantes;

INSERT INTO tb_estudantes
(Nome, Nascimento, Ano, Nota)
VALUES
('Michael Myers', '1957-10-19', 9, 5.2);

INSERT INTO tb_estudantes
(Nome, Nascimento, Ano, Nota)
VALUES
('Billy Loomis', '1989-11-29', 7, 3.2);

ALTER TABLE tb_estudantes ADD Recuperacao VARCHAR (255);
UPDATE tb_estudantes SET Recuperacao = 'SIM' WHERE Id = 1; 
UPDATE tb_estudantes SET Recuperacao = 'SIM' WHERE Id = 2; 

INSERT INTO tb_estudantes
(Nome, Nascimento, Ano, Nota, Recuperacao)
VALUES
('Stu Macher', '1989-02-23', 7, 6.2, 'NAO');

INSERT INTO tb_estudantes
(Nome, Nascimento, Ano, Nota, Recuperacao)
VALUES
('Jason Voorhes', '1946-12-02', 3, 9.2, 'NAO'),
('Frederick Charles Krueger', '1938-07-02', 11, 2.2, 'SIM'),
('Sidney Prescott', '1987-01-22', 7, 8.2, 'NAO')
;

INSERT INTO tb_estudantes
(Nome, Nascimento, Ano, Nota, Recuperacao)
VALUES
('Hannibal Lecter', '1938-01-30', 10, 10, 'NAO'),
('Clarice Starling', '1958-08-17', 10, 9, 'NAO'),
('Laurie Strode', '1964-07-06', 8, 5.6, 'SIM');

SELECT *FROM tb_estudantes WHERE Nota < 7.0;

SELECT *FROM tb_estudantes WHERE Nota > 7.0;