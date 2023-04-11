CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
grupo varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (descricao, grupo)
VALUES ("Fada", "Herói");
INSERT INTO tb_classes (descricao, grupo)
VALUES ("Bruxa", "Vilão");
INSERT INTO tb_classes (descricao, grupo)
VALUES ("Princesa", "Herói");
INSERT INTO tb_classes (descricao, grupo)
VALUES ("Mágico", "Vilão");
INSERT INTO tb_classes (descricao, grupo)
VALUES ("Príncipe", "Herói");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagem(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
poder int,
defesa int,
cidade varchar(255) NOT NULL,
classes_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagem (nome, poder, defesa, cidade, classes_id)
VALUES ("Rapunzel", 3000, 1500, "Cosmágia", 3);
INSERT INTO tb_personagem (nome, poder, defesa, cidade, classes_id)
VALUES ("Ursula", 2500, 2800, "Aquárius", 2);
INSERT INTO tb_personagem (nome, poder, defesa, cidade, classes_id)
VALUES ("Bloom", 1800, 800, "Cosmágia", 1);
INSERT INTO tb_personagem (nome, poder, defesa, cidade, classes_id)
VALUES ("D.Estranho", 3000, 1500, "Aquárius", 4);
INSERT INTO tb_personagem (nome, poder, defesa, cidade, classes_id)
VALUES ("Flynn", 2000, 1700, "Cosmágia", 5);
INSERT INTO tb_personagem (nome, poder, defesa, cidade, classes_id)
VALUES ("Cinderela", 2400, 1000, "Cosmágia", 1);
INSERT INTO tb_personagem (nome, poder, defesa, cidade, classes_id)
VALUES ("Sabrina", 3000, 2600, "Aquárius", 2);
INSERT INTO tb_personagem (nome, poder, defesa, cidade, classes_id)
VALUES ("Cosmo", 1000, 850, "Aquárius", 4);

SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE poder > 2000;
SELECT * FROM tb_personagem WHERE defesa > 1000 AND defesa < 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem INNER JOIN tb_classes ON tb_personagem.classes_id = tb_classes.id;

SELECT * FROM tb_personagem INNER JOIN tb_classes ON tb_personagem.classes_id = tb_classes.id 
WHERE tb_classes.grupo = "Herói";




