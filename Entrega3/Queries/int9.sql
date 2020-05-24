.mode columns
.headers on
.nullvalue NULL

-- Episódios Episódios deixados de lado

SELECT userID,title AS Serie, seasonNumber, [title:1] AS epName, strftime('%H',time(duration))*60 + strftime('%M', time(duration)) AS totalTimeEpisode, cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER) AS elapsed
FROM seriesFullInfo, Visualization WHERE Visualization.episodeID == seriesFullInfo.seriesID AND elapsed >0 AND elapsed < totalTimeEpisode ORDER BY userID ASC;


