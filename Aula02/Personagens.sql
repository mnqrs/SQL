CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
Id BIGINT IDENTITY (1,1),
Genero VARCHAR (255),
Forma VARCHAR(255),
PRIMARY KEY(Id)
);

CREATE TABLE tb_personagens(
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255)NOT NULL,
Filme VARCHAR (255),
PoderDefesa INT,
PoderAtaque INT,
PRIMARY KEY(id),
Classe_id BIGINT,
FOREIGN KEY (Classe_id) REFERENCES tb_classes(id)
);

SELECT *FROM tb_classes;

SELECT *FROM tb_personagens;

INSERT INTO tb_personagens
(Nome, Filme, PoderDefesa, PoderAtaque)
VALUES
('Ghostface', 'Scream', 900, 2000),
('LetherFace', 'The Texas Chainsaw Massacre', 2000, 4000),
('Michael Myers', 'Halloween', 1000, 2500),
('Freddy Krueger', 'A Nightmare on Elm Street', 2100, 3850),
('Jason Voorhees', 'Friday the 13th', 2200, 4600),
('Chucky', 'Chucky', 1000, 1000),
('Hannibal Lecter', 'The Silence of the Lambs', 2500, 3300),
('Samara', 'The Ring', 850, 900)
;

UPDATE tb_personagens SET Classe_id = 6 WHERE id = 1;
UPDATE tb_personagens SET Classe_id = 6 WHERE id = 2;
UPDATE tb_personagens SET Classe_id = 1 WHERE id = 3;
UPDATE tb_personagens SET Classe_id = 4 WHERE id = 4;
UPDATE tb_personagens SET Classe_id = 3 WHERE id = 5;
UPDATE tb_personagens SET Classe_id = 4 WHERE id = 6;
UPDATE tb_personagens SET Classe_id = 5 WHERE id = 7;
UPDATE tb_personagens SET Classe_id = 4 WHERE id = 8;

INSERT INTO tb_classes
(Genero, Forma)
VALUES
('Horror', 'Humano'),
('Suspense','Não-Humano'),
('Slasher','');

UPDATE tb_classes SET Forma = 'Não-Humano' WHERE id = 3;

INSERT INTO tb_classes
(Genero, Forma)
VALUES
('Horror', 'Não-Humano'),
('Suspense','Humano'),
('Slasher','Humano');

SELECT *FROM tb_personagens WHERE PoderAtaque > 2000;

SELECT *FROM tb_personagens WHERE PoderDefesa > 1000 AND PoderDefesa < 2000;

SELECT *FROM tb_personagens WHERE Nome LIKE '%c%';

SELECT *FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.Classe_id;

SELECT *FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.Classe_id
WHERE Forma = 'Humano';
