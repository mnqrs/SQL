CREATE DATABASE db_colaboradores;

use db_colaboradores;

CREATE TABLE tb_informacoes(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) Not Null,
Cargo VARCHAR (255),
Admissao DATE,
Salario DECIMAL (6,2),
PRIMARY KEY (Id)
);

SELECT *FROM tb_informacoes;

INSERT INTO tb_informacoes
(Nome, Cargo, Admissao, Salario)
VALUES
('Sylvia Plath', 'Escritora', '2020-10-26', 2900.80),
('Italo Calvino', 'Escritor', '2022-12-03', 1500.80),
('Liev Tolstoi', 'Escritor', '2018-08-01', 3000.80);


INSERT INTO tb_informacoes
(Nome, Cargo, Admissao, Salario)
VALUES
('Sally Rooney', 'Escritora', '2019-03-20', 3800.80),
('Virginia Wolff', 'Escritora', '2018-07-01', 2800.80)
;

DELETE FROM tb_informacoes WHERE id = 1;

SELECT *FROM tb_informacoes WHERE Salario >2000.00;

SELECT *FROM tb_informacoes WHERE Salario <2000.00;

UPDATE tb_informacoes SET Cargo = 'Artista' WHERE id = 2;