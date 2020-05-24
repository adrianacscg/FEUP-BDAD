.mode columns
.headers on
.nullvalue NULL

-- Episódios que cada User deixou por acabar, ou seja, o tempo visto é menor que o tempo total do episódio
-- totalTime é dado em Minutos, assim como o tempo que passou a ver o episódio

-- Cria uma tabela temporária com as informaçoes completas de uma série
WITH seriesFullInfo AS (
SELECT * 
FROM Content 
JOIN Season 
ON Content.contentID = Season.seriesID 
JOIN Episode 
ON Episode.seasonID = Season.seasonID)

SELECT userID, title, seasonNumber, [title:1] AS 'Episode title', strftime('%H',time(duration))*60 + strftime('%M', time(duration)) - cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER) AS 'Minutes left'
FROM seriesFullInfo
NATURAL JOIN Visualization 
WHERE cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER) > 0 
AND cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER) < strftime('%H',time(duration))*60 + strftime('%M', time(duration))
ORDER BY userID ASC;


