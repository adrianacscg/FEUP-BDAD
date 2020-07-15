.mode columns
.headers ON

SELECT nome
FROM Estudante E1 INNER JOIN Amizade A
WHERE E1.ID = A.ID1
GROUP BY E1.ID
HAVING COUNT(DISTINCT ID2) = (SELECT COUNT(DISTINCT anoCurricular) FROM Estudante);