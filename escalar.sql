-- Demonstrando a fun��o LEN() para calcular o comprimento de uma string.
SELECT LEN('Eduardo Pasqualetti') AS ComprimentoString;

-- Demonstrando a fun��o UPPER() para converter uma string para mai�sculas.
SELECT UPPER('Senai Paulo Skaf') AS StringMaiuscula;

-- Demonstrando a fun��o LOWER() para converter uma string para min�sculas.
SELECT LOWER('Senai@email.com') AS StringMinuscula;

-- Demonstrando a fun��o ABS() para exibir um valor absoluto.
SELECT ABS(210 + 450) AS AbsoluteValue;

-- Demonstrando a fun��o DATEPART() para exibir um parte selecionada.
SELECT DATEPART(MONTH, '2023-08-08') AS YearPart;
