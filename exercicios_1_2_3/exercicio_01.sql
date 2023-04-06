CREATE DATABASE exercicio_01;

USE exercicio_01;

CREATE TABLE colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    cargo varchar(255) not null,
    departamento varchar(255) not null,
    salario decimal not null,
    PRIMARY KEY (id)
    );

INSERT INTO colaboradores(nome, sobrenome, cargo, departamento, salario)
values ('Deiziane', 'Rodrigues', 'CEO', 'Diretoria', 8700.00);
INSERT INTO colaboradores(nome, sobrenome, cargo, departamento, salario)
values ('Yngrid', 'Padilha', 'CEO', 'Diretoria', 8700.00);
INSERT INTO colaboradores(nome, sobrenome, cargo, departamento, salario)
values ('Andresa', 'Marçal', 'Gerente', 'Comercial', 5000.00);
INSERT INTO colaboradores(nome, sobrenome, cargo, departamento, salario)
values ('Bianca', 'Luna', 'Vendedora', 'Comercial', 1300.00);
INSERT INTO colaboradores(nome, sobrenome, cargo, departamento, salario)
values ('Jamille', 'Farias', 'Vendedora', 'Comercial', 1300.00);

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET nome = 'Heimy' WHERE id = 3;
UPDATE colaboradores SET sobrenome = 'Dias' WHERE id = 3;

