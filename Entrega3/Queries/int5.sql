.mode columns
.headers on
.nullvalue NULL

-- Top filmes/séries mais vistos 
-- Limitando a 3 filmes e 3 séries mais vistas (just movie done i guess)

DROP VIEW IF EXISTS [topMovies];

CREATE VIEW topMovies AS 
SELECT count(userID) AS viwers,title 
FROM Visualization 
JOIN Movie 
ON Movie.contentID == Visualization.movieID 
NATURAL JOIN Content 
GROUP BY Movie.contentID 
ORDER BY viwers DESC;

-- Cria uma tabela com as informaçoes completas de uma série, todas suas season e eps.
DROP VIEW IF EXISTS [seriesFullInfo];

CREATE VIEW seriesFullInfo AS 
SELECT * 
FROM Content 
JOIN Season 
ON Content.contentID == Season.seriesID 
JOIN Episode 
ON Episode.seasonID == Season.seasonID;

-- Relacionando Visualizations com seriesFullInfo conseguimos ver quantos users viram qlqr ep de uma serie e logo relacionamos essa visualization a um user vendo qlqr série

DROP VIEW IF EXISTS [topSeries];

CREATE VIEW topSeries AS 
SELECT COUNT(userID) AS viwers, seriesFullInfo.title 
FROM Visualization 
NATURAL JOIN seriesFullInfo 
GROUP BY seriesFullInfo.seriesID;


SELECT title AS Movies FROM topMovies LIMIT 3;

SELECT title AS Series FROM topSeries LIMIT 3;

