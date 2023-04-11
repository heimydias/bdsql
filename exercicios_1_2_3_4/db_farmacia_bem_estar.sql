CREATE DATABASE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
validade date NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, validade)
VALUES ("Específica", "2025-12-11");
INSERT INTO tb_categorias (tipo, validade)
VALUES ("Genérico", "2026-01-11");
INSERT INTO tb_categorias (tipo, validade)
VALUES ("Manipulado", "2024-09-11");
INSERT INTO tb_categorias (tipo, validade)
VALUES ("Alopático", "2025-01-11");
INSERT INTO tb_categorias (tipo, validade)
VALUES ("Homeopático", "2024-05-11");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
preco int,
lote varchar(255) NOT NULL,
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Aconitum napellus 6 CH", 2, 29, "Lote 02", 5);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Captopril", 1, 20, "Lote 09", 4);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Orlistate", 2, 99, "Lote 08", 3);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Losartana", 3, 7, "Lote 25", 2);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Picbam Apixabana", 1, 210, "Lote 13", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Betrat", 5, 260, "Lote 80", 2);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Orodis", 2, 321, "Lote 20", 1);
INSERT INTO tb_produtos (nome, quantidade, preco, lote, categorias_id)
VALUES ("Folifeme", 2, 170, "Lote 03", 1);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco > 5 AND preco < 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id 
WHERE tb_categorias.tipo = "Específica";