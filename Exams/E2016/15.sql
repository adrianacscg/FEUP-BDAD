.mode columns 
.headers ON 

SELECT E.nome
FROM Amizade A INNER JOIN Estudante E
ON A.ID1 = E.ID
GROUP BY A.ID1
HAVING COUNT(*) > 3;