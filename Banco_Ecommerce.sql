CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    cargo VARCHAR (50),
    salario DECIMAL (10, 2),
    data_demissao DATE
);

INSERT INTO colaboradores (nome, cargo, salario, data_demissao)
VALUES
('João Silva', 'Analista de TI', 2500.00, '2020-05-01'),
('Maria Oliveira', 'Gerente de RH', 4500.00, '2018-03-15'),
('Carlos Souza', 'Assistente Administrativo', 1800.00, '2022-06-20'),
('Ana Costa', 'Analista de Marketing', 2200.00, '2021-07-30'),
('Lucas Pereira', 'Desenvolvedor', 3200.00, '2019-08-12');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

SET SQL_SAFE_UPDATES = 0;

UPDATE colaboradores 
SET salario = 2000.00 
WHERE nome = 'Carlos Souza';