.mode columns 
.headers ON

SELECT Estudante.nome, Curso.nome
FROM Estudante INNER JOIN Curso 
ON Estudante.curso = Curso.ID
WHERE anoCurricular = 3;