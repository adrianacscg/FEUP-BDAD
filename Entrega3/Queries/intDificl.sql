.mode columns
.headers on
.nullvalue NULL

-- Episódios deixados de lado pelos users
-- totalTime é dado em Minutos, assim como o tempo que passou a ver o episódio

--SELECT userID,title AS Serie, seasonNumber, [title:1] AS epName, strftime('%H',time(duration))*60 + strftime('%M', time(duration)) AS totalTimeEpisode, cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER) AS elapsed
--FROM seriesFullInfo, Visualization 
--WHERE Visualization.episodeID = seriesFullInfo.seriesID AND elapsed >0 AND elapsed < totalTimeEpisode 
--ORDER BY userID ASC;


SELECT DISTINCT V1.userID, V2.userID, V1.movieID, V1.visualizationID, V2.visualizationID, COUNT(V1.movieID)
FROM Visualization V1 
JOIN Visualization V2
ON V1.movieID = V2.movieID AND V1.userID <> V2.userID
WHERE V1.movieID NOT NULL AND V2.movieID NOT NULL 
GROUP BY V1.userID, V2.userID;


