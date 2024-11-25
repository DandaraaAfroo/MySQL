CREATE DATABASE db_loja;
USE db_loja;

 CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,        -- Identificador único
    nome VARCHAR(100) NOT NULL,               -- Nome do produto
    descricao TEXT,                           -- Descrição do produto
    preco DECIMAL(10, 2) NOT NULL,            -- Preço do produto
    estoque INT NOT NULL,                     -- Quantidade em estoque
    categoria VARCHAR(50)                     -- Categoria do produto
);


INSERT INTO produtos (nome, descricao, preco, estoque, categoria)
VALUES
('Smartphone', 'Smartphone de última geração', 1200.00, 15, 'Eletrônicos'),
('Notebook', 'Notebook para trabalho e estudo', 2500.00, 10, 'Eletrônicos'),
('Cafeteira', 'Cafeteira elétrica automática', 350.00, 20, 'Eletrodomésticos'),
('Ventilador', 'Ventilador de mesa potente', 200.00, 30, 'Eletrodomésticos'),
('Mesa de Jantar', 'Mesa de jantar de madeira maciça', 750.00, 5, 'Móveis'),
('Cadeira Gamer', 'Cadeira ergonômica para jogos', 850.00, 8, 'Móveis'),
('Headset', 'Fone de ouvido com cancelamento de ruído', 450.00, 25, 'Acessórios'),
('Smartwatch', 'Relógio inteligente com monitoramento de saúde', 700.00, 12, 'Eletrônicos');


SELECT * FROM produtos WHERE preco > 500;


SELECT * FROM produtos WHERE preco < 500;

SET SQL_SAFE_UPDATES = 0;

UPDATE produtos
SET preco = 1300.00, estoque = 12
WHERE nome = 'Smartphone';

SELECT * FROM produtos;
