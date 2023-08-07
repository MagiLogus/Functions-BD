-- Criar a tabela Pessoas
CREATE TABLE Pessoas (
    ID INT PRIMARY KEY,
    NomeCompleto VARCHAR(100)
);

-- Inserir alguns registros na tabela Pessoas
INSERT INTO Pessoas (ID, NomeCompleto)
VALUES
    (1, 'Richard,Fernandes,Passarelli'),
    (2, 'João,Silva,Santos'),
    (3, 'Maria,Aparecida,Rodrigues');

-- Selecionar os nomes divididos usando a função STRING_SPLIT
SELECT
    ID,
    Value AS PrimeiroNome,
    LEAD(Value) OVER (ORDER BY (SELECT NULL)) AS SegundoNome,
    LEAD(Value, 2) OVER (ORDER BY (SELECT NULL)) AS Sobrenome
FROM Pessoas
CROSS APPLY STRING_SPLIT(NomeCompleto, ',');
