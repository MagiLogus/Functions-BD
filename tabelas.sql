-- Demonstrando a fun��o STRING_SPLIT para dividir uma string em uma tabela.
-- Suponha que voc� tenha uma string 'Richard,Fernandes,Passarelli' e queira dividi-la em cada v�rgula.
SELECT value FROM STRING_SPLIT('Richard,Fernandes,Passarelli', ',');
