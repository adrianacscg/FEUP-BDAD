.mode columns 
.headers on 

CREATE VIEW IF NOT EXISTS Maximo AS
SELECT *, COUNT(*) AS Amigos
FROM Amizade A
GROUP BY A.ID1;

CREATE VIEW IF NOT EXISTS Valor AS
SELECT MAX(Amigos) AS Numero
FROM Maximo;

SELECT nome, anoCurricular
FROM Maximo INNER JOIN Amizade, Valor
ON Maximo.ID1 = Amizade.ID1
INNER JOIN Estudante E 
ON Amizade.ID1 = E.ID
GROUP BY Amizade.ID1
HAVING COUNT(*) = Valor.Numero;

DROP VIEW Maximo;
DROP VIEW Valor;