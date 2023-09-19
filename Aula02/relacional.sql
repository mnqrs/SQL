USE db_quitanda;

SELECT *FROM tb_produtos;

SELECT *FROM tb_produtos ORDER BY nome ASC; -- em ordem ascendente

SELECT *FROM tb_produtos ORDER BY preco DESC; -- em ordem descendente 

SELECT *FROM tb_produtos WHERE NOT id = 1;

SELECT *FROM tb_produtos WHERE id != 1;

SELECT *FROM tb_produtos 
WHERE preco IN(5, 15, 8) ORDER BY nome ASC;

SELECT *FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

SELECT *FROM tb_produtos WHERE nome LIKE 'M%'; --pesquisar uma palavra que comece com determinada letra

SELECT COUNT (*) AS 'NUMERO DE LINHAS' FROM tb_produtos; -- as '' para dar um nome temporario para a coluna da tabela

SELECT SUM(preco) FROM tb_produtos; --soma dos valores

SELECT AVG(preco) FROM tb_produtos; -- média da soma

SELECT MAX(preco) FROM tb_produtos; --verificar valor maximo

SELECT MIN(preco) FROM tb_produtos; --valor minimo

--RELACIONAMENTO ENTRE TABELAS

CREATE TABLE tb_categorias(
Id BIGINT IDENTITY (1,1),
Categoria VARCHAR (255) NOT NULL,
PRIMARY KEY(Id)
);

SELECT *FROM tb_categorias;

INSERT INTO tb_categorias
(Categoria)
VALUES
('Frutas'),
('Verduras'),
('Legumes'),
('Temperos'),
('Ovos'),
('outros');

CREATE TABLE tb_produtos(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) NOT NULL,
Quantidade INT,
DataValidade DATE,
Preco DECIMAL (6,2),
PRIMARY KEY(Id),
Categoria_id BIGINT,
FOREIGN KEY (Categoria_id) REFERENCES tb_categorias(id)
);

SELECT *FROM tb_produtos;

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco, Categoria_id)
VALUES
('Banana', 30, '2023-12-25', 12.00, 1);

INSERT INTO tb_produtos (Nome, Quantidade, DataValidade, Preco, categoria_id)VALUES ('Maçã', 1000, '2022-03-07', 1.99, 1),('Banana', 1300, '2022-03-08', 5.00, 1),('Batata doce', 2000, '2022-03-09', 10.00, 3),('Alface', 300, '2022-03-10', 7.00, 2),('Cebola', 1020, '2022-03-08', 5.00, 3),('Ovo Branco', 1000, '2022-03-07', 15.00, 5),('Agrião', 1500, '2022-03-06', 3.00, 2),('Cenoura', 1800, '2022-03-09', 3.50, 3),('Pimenta', 1100, '2022-03-15', 10.00, 4),('Alecrim', 130, '2022-03-10', 5.00, 4),('Manga', 200, '2022-03-07', 5.49, 1),('Laranja', 3000, '2022-03-13', 10.00, 1);SELECT *FROM tb_produtos INNER JOIN tb_categoriasON tb_categorias.id = tb_produtos.categoria_id; -- relacionar tabelasSELECT *FROM tb_produtos LEFT JOIN tb_categoriasON tb_categorias.id = tb_produtos.categoria_id; -- usa a tabela da esquerda/direita para relacionarSELECT *FROM tb_produtos LEFT JOIN tb_categoriasON tb_categorias.id = tb_produtos.categoria_idWHERE nome LIKE '%n%' ORDER BY tb_categorias.id ASC;