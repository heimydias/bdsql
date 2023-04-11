CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
valor int,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, valor)
VALUES ("Pizza G", 60);
INSERT INTO tb_categorias (tipo, valor)
VALUES ("Pizza P", 54);
INSERT INTO tb_categorias (tipo, valor)
VALUES ("Pizza B", 40);
INSERT INTO tb_categorias (tipo, valor)
VALUES ("Esfiha", 9);
INSERT INTO tb_categorias (tipo, valor)
VALUES ("Pizza D", 60); 

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
borda varchar(255) NOT NULL,
adicional varchar(255) NOT NULL,
quantidade int,
categorias_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, borda, adicional, quantidade, categorias_id)
VALUES ("Mussarela", "Catupiry", "Cebola", 2, 1);
INSERT INTO tb_pizzas (sabor, borda, adicional, quantidade, categorias_id)
VALUES ("Nutella", "Leite Condensado", "Não", 1, 5);
INSERT INTO tb_pizzas (sabor, borda, adicional, quantidade, categorias_id)
VALUES ("Carne e Queijo", "Simples", "Não", 8, 4);
INSERT INTO tb_pizzas (sabor, borda, adicional, quantidade, categorias_id)
VALUES ("Portuguesa", "Cheddar", "Ovo", 1, 2);
INSERT INTO tb_pizzas (sabor, borda, adicional, quantidade, categorias_id)
VALUES ("Chocolate", "Simples", "Morangos", 1, 5);
INSERT INTO tb_pizzas (sabor, borda, adicional, quantidade, categorias_id)
VALUES ("Marguerita", "Catupiry", "Queijo", 4, 3);
INSERT INTO tb_pizzas (sabor, borda, adicional, quantidade, categorias_id)
VALUES ("Frango", "Simples", "Catupiry", 3, 4);
INSERT INTO tb_pizzas (sabor, borda, adicional, quantidade, categorias_id)
VALUES ("Doce de Leite", "Nutella", "Banana", 1, 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_categorias WHERE valor > 45;
SELECT * FROM tb_categorias WHERE valor > 50 AND valor < 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id 
WHERE tb_categorias.tipo = "Pizza D";
