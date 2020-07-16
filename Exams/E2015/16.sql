.mode columns 
.headers ON

DROP VIEW PessoasFotos;

CREATE VIEW IF NOT EXISTS PessoasFotos AS
SELECT COUNT(AppearsIn.user) AS Numeros
FROM Photo INNER JOIN AppearsIn
ON Photo.id = AppearsIn.photo
WHERE Photo.id IN (
    SELECT P.id AS ID
    FROM Photo P INNER JOIN Likes L
    ON L.photo = P.id
    GROUP BY P.id
    HAVING COUNT(*) > 3)
GROUP BY Photo.id;

SELECT AVG(Numeros) FROM PessoasFotos;

