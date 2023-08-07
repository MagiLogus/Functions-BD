-- Criando o banco de dados chamado RHDatabase
CREATE DATABASE RHDatabase;

-- Usando o novo banco de dados para as pr�ximas opera��es
USE RHDatabase;

-- Criando a tabela Funcionarios
CREATE TABLE Funcionarios (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    DataContratacao DATE,
    Salario FLOAT
);

-- Inserindo dados fict�cios
INSERT INTO Funcionarios (Nome, DataContratacao, Salario) VALUES 
('Jo�o Silva', '2015-04-10', 5000),
('Maria Pereira', '2019-08-23', 6000),
('Carlos Alberto', '2010-01-15', 7000),
('Luciana Barbosa', '2018-03-30', 4800),
('Pedro Ferreira', '2020-05-05', 5500);

-- Consultando a tabela para verificar os dados inseridos
SELECT * FROM Funcionarios;

--Criando a fun��o para realizar o acrescimo
CREATE FUNCTION CalcularBonus (@IdFuncionario INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @bonus FLOAT;
    DECLARE @salario FLOAT;
    DECLARE @anosServico INT;

    SELECT 
        @salario = Salario, 
        @anosServico = DATEDIFF(YEAR, DataContratacao, GETDATE())
    FROM Funcionarios
    WHERE ID = @IdFuncionario;

    SET @bonus = @salario * (@anosServico * 0.02);

    RETURN @bonus;
END;

--Executar a fun��o
SELECT Nome, dbo.CalcularBonus(ID) AS 'Bonus'
FROM Funcionarios;
