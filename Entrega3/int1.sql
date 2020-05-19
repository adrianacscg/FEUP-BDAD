.mode columns
.headers on
.nullvalue NULL

--Quais os utilizadores que já viram todos os episódios de uma série

--Todos os episodios agrupados por serie e temporada:
--SELECT *, COUNT(episodeID)
--FROM (Episode 
--INNER JOIN (Season INNER JOIN Series ON Season.seriesID = Series.contentID) 
--ON Episode.seasonID = Season.seasonID) 
--GROUP BY seriesID





--SELECT Series.contentID, Season.seasonNumber, Episode.title--, COUNT(episodeID)
SELECT episodeID --, COUNT(episodeID)
FROM (Episode 
INNER JOIN (Season INNER JOIN Series ON Season.seriesID = Series.contentID) 
ON Episode.seasonID = Season.seasonID) 
WHERE Series.contentID = 9;
--GROUP BY seriesID

INTERSECT


SELECT episodeID
FROM Visualization
WHERE Visualization.userID = Visualization.userID AND Visualization.VisualizationID <> Visualization.VisualizationID;


--SELECT *
--FROM Season INNER JOIN Series 
--ON Season.seriesID = Series.contentID;