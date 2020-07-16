.mode columns 
.headers on 

--CREATE VIEW IF NOT EXISTS help
--AS 
--    SELECT DISTINCT anoCurricular
--    FROM Amizade A2 INNER JOIN Estudante Aux1
--    ON A2.ID1 = E1.ID AND A2.ID2 = Aux1.ID
--
--
--SELECT * FROM help;

--SELECT *
--FROM Amizade A INNER JOIN Estudante E1 
--ON A.ID1 = E1.ID
--INNER JOIN Estudante E2 
--ON A.ID2 = E2.ID
--WHERE E1.anoCurricular = SUM(help);

--  INCOMPLETE

SELECT DISTINCT nome, anoCurricular
FROM Amizade A INNER JOIN Estudante E
ON A.ID1 = E.ID
WHERE E.ID IN (SELECT ID1 FROM Amizade) 
AND E.ID NOT IN (
    SELECT ID1 
    FROM Amizade A2 INNER JOIN Estudante E1
    ON A2.ID1 = E1.ID
    INNER JOIN Estudante E2
    ON A2.ID2 = E2.ID
    WHERE E1.anoCurricular <> E2.anoCurricular)
ORDER BY anoCurricular ASC, nome ASC;

--SELECT *
--FROM Amizade A2 INNER JOIN Estudante E1
--ON A2.ID1 = E1.ID
--INNER JOIN Estudante E2
--ON A2.ID2 = E2.ID
--WHERE E1.anoCurricular <> E2.anoCurricular;

