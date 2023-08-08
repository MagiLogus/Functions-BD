-- Suponha que temos a seguinte tabela de vendas:
CREATE TABLE Vendas (Produto NVARCHAR(100), Quantidade INT, Preco FLOAT);

INSERT INTO Vendas VALUES ('Produto A', 10, 5.5), ('Produto B', 15, 10.5), ('Produto C', 5, 7.5);

-- Demonstrando a função SUM() para calcular o total de vendas.
SELECT SUM(Quantidade * Preco) AS TotalVendas FROM Vendas;

-- Demonstrando a função AVG() para calcular o preço médio dos produtos.
SELECT ROUND (AVG(Preco), 3 )   AS PrecoMedio FROM Vendas;

-- Demonstrando a função COUNT() para contar o número de produtos vendidos.
SELECT COUNT(Produto) AS TotalProdutos FROM Vendas;
