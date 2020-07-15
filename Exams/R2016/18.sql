.mode columns 
.headers on 

SELECT E1.nome AS Nome, E2.nome AS Nome
FROM Estudante E1 INNER JOIN Amizade A
ON E1.ID = A.ID1
INNER JOIN Estudante E2
ON E2.ID = A.ID2
WHERE E1.curso <> E2.curso AND E1.ID < E2.ID;