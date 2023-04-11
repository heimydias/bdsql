CREATE DATABASE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
validade date NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, validade)
VALUES ("Frango", "2023-12-11");
INSERT INTO tb_categorias (tipo, validade)
VALUES ("Boi", "2024-01-11");
INSERT INTO tb_categorias (tipo, validade)
VALUES ("Porco", "2023-09-11");
INSERT INTO tb_categorias (tipo, validade)
VALUES ("Galinha", "2024-01-11");
INSERT INTO tb_categorias (tipo, validade)
VALUES ("Soja", "2024-05-11");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade varchar(255) NOT NULL,
preco int,
lote varchar(255) NOT NULL,
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Pé", "1Kg", 23, "Lote 33", 4);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Orelha", "300g", 17, "Lote 19", 3);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Carne", "3Kg", 50, "Lote 8", 5);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Peito", "1Kg", 35, "Lote 33", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Contra", "600Kg", 60, "Lote 20", 2);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Pé", "200g", 30, "Lote 19", 3);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Ossobuco", "2Kg", 50, "Lote 20", 2);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Coração", "4kg", 70, "Lote 33", 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco > 50 AND preco < 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id 
WHERE tb_categorias.tipo = "Galinha";