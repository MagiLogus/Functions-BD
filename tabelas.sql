-- Demonstrando a função STRING_SPLIT para dividir uma string em uma tabela.
-- Suponha que você tenha uma string 'Richard,Fernandes,Passarelli' e queira dividi-la em cada vírgula.
SELECT value FROM STRING_SPLIT('Richard,Fernandes,Passarelli', ',');
