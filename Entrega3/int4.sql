.mode columns
.headers on
.nullvalue NULL

-- Sugeridos com sucesso, ou seja, o User viu esse conteúdo pouco depois de ter sido sugerido 
-- (Estamos o intervalo de tempo como tendo 48 horas)

SELECT Suggest.userID, Content.title, Content.type, suggestionDate, timeOfDay AS visualizationDate
FROM Suggest
JOIN Season 
ON Season.seriesID = Suggest.contentID
NATURAL JOIN Episode
JOIN Visualization 
ON Episode.episodeID = Visualization.episodeID AND Suggest.userID = Visualization.userID
JOIN Content 
ON Content.contentID = Season.seriesID
WHERE DATETIME(timeOfDay) <= DATETIME(suggestionDate, '+48 HOURS')

UNION

SELECT Suggest.userID, Content.title, Content.type, suggestionDate, timeOfDay AS visualizationDate
FROM Suggest
NATURAL JOIN Content
JOIN Visualization 
ON Visualization.movieID = Suggest.contentID AND Suggest.userID = Visualization.userID
WHERE DATETIME(timeOfDay) <= DATETIME(suggestionDate, '+48 HOURS');