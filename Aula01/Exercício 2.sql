CREATE DATABASE db_discosLegais;

USE db_discosLegais;

CREATE TABLE tb_produtos(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) Not Null,
Artista VARCHAR (255) Not Null,
Genero VARCHAR(255) Not Null,
Preco DECIMAL (6,2)Not Null,
PRIMARY KEY (Id)
);

SELECT *FROM tb_produtos;

INSERT INTO tb_produtos
(Nome, Artista, Genero, Preco)
VALUES
('Bon Iver', 'Bon Iver', 'Folk Experimental', 50.95);

ALTER TABLE tb_produtos ADD Quantidade INT;

INSERT INTO tb_produtos
(Nome, Artista, Genero, Preco, Quantidade)
VALUES
('Black Sabbath', 'Black Sabbath', 'Metal', 399.99, 2);

UPDATE tb_produtos SET Quantidade = 3 WHERE Id = 1;
UPDATE tb_produtos SET Preco = 290.50 WHERE Id = 1;

INSERT INTO tb_produtos
(Nome, Artista, Genero, Preco, Quantidade)
VALUES
('Máquina do Tempo', 'Matuê', 'Trap', 580.99, 5),
('Vespertine', 'Björk', 'Experimental', 800.00, 1),
('Speaking in Tongues', 'Talking Heads', 'New Wave', 499.99, 2)
;

INSERT INTO tb_produtos
(Nome, Artista, Genero, Preco, Quantidade)
VALUES
('Desintegration', 'The Cure', 'Post Punk', 199.99, 8),
('Illinois', 'Sufjan Stevens', 'Indie', 300.00, 2),
('Lilás', 'Djavan', 'MPB', 999.99, 2)
;

SELECT *FROM tb_produtos WHERE preco > 500.00;

SELECT *FROM tb_produtos WHERE preco < 500.00;
