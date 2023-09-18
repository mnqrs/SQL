Create DATABASE db_quitanda;

use db_quitanda;

Create Table tb_produtos(
id Bigint identity (1,1),
nome Varchar (255) Not Null,
quantidade Int,
dataValidade Date,
preco Decimal Not Null,
Primary Key(id)
);

Select *From tb_produtos;

Insert Into tb_produtos
(nome, quantidade, dataValidade, preco)
Values
('Laranja', 20, '2023-09-18', 8.00);

Insert Into tb_produtos
(nome, quantidade, dataValidade, preco)
Values
('Maçã', 10, '2023-09-18', 15.25);

Insert Into tb_produtos
(nome, quantidade, dataValidade, preco)
Values
('Couve', 35, '2023-09-18', 5.00),
('Banana', 25, '2023-09-18', 16.00)
;

Select *From tb_produtos Where id = 1;

Select *From tb_produtos Where nome = 'banana';

Select nome, quantidade, preco From tb_produtos Where nome = 'banana';

Select *From tb_produtos Where id = 1 or id = 2 or id = 3;

Select *From tb_produtos Where preco >4 and preco <10;

Alter Table tb_produtos Alter Column preco Decimal(6,2);

Insert Into tb_produtos
(nome, quantidade, dataValidade, preco)
Values
('Milho', 20, '2023-09-18', 10.25);

Alter Table tb_produtos Add descricao Varchar(255);

Update tb_produtos Set descricao = 'milho verde natural' Where id = 5;
-- assim fazemos comentários
Delete From tb_produtos Where id = 6;