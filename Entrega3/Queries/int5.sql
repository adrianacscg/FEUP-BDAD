.mode columns
.headers on
.nullvalue NULL

-- Top 3 de séries mais vistas

-- Cria uma tabela temporária com as informaçoes completas de uma série
WITH seriesFullInfo AS (
SELECT * 
FROM Content 
JOIN Season 
ON Content.contentID = Season.seriesID 
JOIN Episode 
ON Episode.seasonID = Season.seasonID)


SELECT title AS Series 
FROM (
    SELECT COUNT(userID) AS viwers, seriesFullInfo.title AS title
    FROM Visualization 
    NATURAL JOIN seriesFullInfo 
    GROUP BY seriesFullInfo.seriesID
)
LIMIT 3;