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
    SUBSTRING(NomeCompleto, 1, CHARINDEX(',', NomeCompleto) - 1) AS PrimeiroNome,
    SUBSTRING(NomeCompleto, CHARINDEX(',', NomeCompleto) + 1, CHARINDEX(',', NomeCompleto, CHARINDEX(',', NomeCompleto) + 1) - CHARINDEX(',', NomeCompleto) - 1) AS SegundoNome,
    SUBSTRING(NomeCompleto, CHARINDEX(',', NomeCompleto, CHARINDEX(',', NomeCompleto) + 1) + 1, LEN(NomeCompleto)) AS Sobrenome
FROM Pessoas;
