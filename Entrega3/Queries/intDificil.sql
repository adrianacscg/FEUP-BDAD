.mode columns
.headers on
.nullvalue NULL

-- Episódios deixados de lado pelos users
-- totalTime é dado em Minutos, assim como o tempo que passou a ver o episódio

SELECT DISTINCT V1.userID, V2.userID, COUNT(V1.movieID) AS NCommon
FROM Visualization V1 
JOIN Visualization V2
ON V1.movieID = V2.movieID AND V1.userID <> V2.userID
WHERE V1.movieID NOT NULL AND V2.movieID NOT NULL
GROUP BY V1.userID, V2.userID
HAVING NCommon = 3 AND V1.userID < V2.userID;


