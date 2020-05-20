.mode columns
.headers on
.nullvalue NULL

-- Mostra os nomes dos utlizadores que já viram todos os episódios de uma série


CREATE VIEW [TotalEpisodesInSeries] AS
SELECT Series.contentID, Content.title, COUNT(Series.contentID) AS totalEps
FROM Episode 
NATURAL JOIN Season 
INNER JOIN Series 
ON Season.seriesID = Series.contentID
INNER JOIN Content 
ON Series.contentID = Content.contentID
GROUP BY Content.contentID;


SELECT name
FROM USER
WHERE User.userID IN (
    SELECT DISTINCT userID
    FROM ((Visualization
    NATURAL JOIN Episode) 
    NATURAL JOIN Season) 
    INNER JOIN [TotalEpisodesInSeries] T 
    ON T.contentID = Season.seriesID 
    WHERE Episode.episodeID IS NOT NULL 
    GROUP BY userID, Season.seriesID
    HAVING T.totalEps = COUNT(DISTINCT Episode.episodeID)
);


DROP VIEW IF EXISTS [TotalEpisodesInSeries];