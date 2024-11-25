CREATE DATABASE db_escolas;
USE db_escola;


CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Identificador único
    nome VARCHAR(100) NOT NULL,              -- Nome do estudante
    idade INT NOT NULL,                      -- Idade do estudante
    turma VARCHAR(20),                       -- Turma em que o estudante está
    nota DECIMAL(4, 2) NOT NULL,             -- Nota final do estudante
    situacao ENUM('Aprovado', 'Reprovado')   -- Situação do estudante
);

INSERT INTO estudantes (nome, idade, turma, nota, situacao)
VALUES
('Ana Silva', 15, '9A', 8.5, 'Aprovado'),
('João Souza', 16, '9B', 6.2, 'Reprovado'),
('Mariana Costa', 14, '8A', 7.8, 'Aprovado'),
('Pedro Santos', 15, '9A', 5.5, 'Reprovado'),
('Laura Oliveira', 13, '7C', 9.0, 'Aprovado'),
('Carlos Lima', 14, '8B', 4.7, 'Reprovado'),
('Beatriz Nunes', 16, '9C', 7.3, 'Aprovado'),
('Lucas Mendes', 15, '9A', 6.8, 'Reprovado');


SELECT * FROM estudantes WHERE nota > 7.0;


SELECT * FROM estudantes WHERE nota < 7.0;

SET SQL_SAFE_UPDATES = 0;

UPDATE estudantes
SET nota = 7.5, situacao = 'Aprovado'
WHERE nome = 'Lucas Mendes';


SELECT * FROM estudantes;
