-- Demonstrando a função LEN() para calcular o comprimento de uma string.
SELECT LEN('Eduardo Pasqualetti') AS ComprimentoString;

-- Demonstrando a função UPPER() para converter uma string para maiúsculas.
SELECT UPPER('Senai Paulo Skaf') AS StringMaiuscula;

-- Demonstrando a função LOWER() para converter uma string para minúsculas.
SELECT LOWER('Senai@email.com') AS StringMinuscula;

-- Demonstrando a função ABS() para exibir um valor absoluto.
SELECT ABS(210 + 450) AS AbsoluteValue;

-- Demonstrando a função DATEPART() para exibir um parte selecionada.
SELECT DATEPART(MONTH, '2023-08-08') AS YearPart;
