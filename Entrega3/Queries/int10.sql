.mode columns
.headers on
.nullvalue NULL

-- Pares de Users de tenham visto 3 filmes em comum

SELECT DISTINCT U1.userID AS 'User 1 ID', U1.name AS 'User 1 name', U2.userID AS 'User 2 ID', U2.name AS 'User 2'
FROM Visualization V1 
JOIN Visualization V2
ON V1.movieID = V2.movieID AND V1.userID <> V2.userID
NATURAL JOIN User U1
JOIN User U2
ON V2.userID = U2.userID
WHERE V1.movieID NOT NULL AND V2.movieID NOT NULL
GROUP BY V1.userID, V2.userID
HAVING COUNT(V1.movieID) = 3 AND V1.userID < V2.userID;