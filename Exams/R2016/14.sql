.mode columns
.headers ON

SELECT *
FROM Estudante E INNER JOIN Curso C
ON E.curso = C.ID
WHERE C.nome = 'MIEIC' AND E.nome LIKE '%a%';