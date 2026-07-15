CREATE DATABASE loja;
USE loja;

-- CRIAÇÃO DA TABELA 
CREATE TABLE Produto (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    custo DECIMAL(10, 2) NOT NULL,
    preco_venda DECIMAL(10, 2) NOT NULL
);

INSERT INTO Produto (nome, custo, preco_venda) VALUES 
('Café', 5.00, 15.00),
('Arroz 5kg', 15.00, 28.00),
('Feijão 1kg', 4.50, 8.00),
('Monitor', 600.00, 1200.00),
('Teclado', 100.00, 250.00),
('Mouse', 40.00, 90.00),
('HeadSet', 30.00, 25.00);

-- 1) Adicionar o produto "Smartphone"
INSERT INTO Produto (nome, custo, preco_venda) 
VALUES ('Smartphone', 200.00, 400.00);

-- 2) Atualizar o preço de venda do "Café" para R$ 15
UPDATE Produto 
SET preco_venda = 15.00 
WHERE nome = 'Café';

-- 3) Recuperar nome e preço dos 5 produtos mais caros
SELECT TOP 5 nome, preco_venda 
FROM Produto 
ORDER BY preco_venda DESC;

-- 4) Excluir produtos cujo preço de venda é menor que o custo
DELETE FROM Produto 
WHERE preco_venda < custo;