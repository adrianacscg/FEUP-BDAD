.mode columns 
.headers on 

SELECT DISTINCT A3.ID2
FROM Estudante E INNER JOIN Amizade A
ON E.ID = A.ID1
INNER JOIN Amizade A2 
ON A.ID2 = A2.ID1
INNER JOIN Amizade A3
ON A2.ID2 = A3.ID1
WHERE nome = 'Miguel Sampaio';