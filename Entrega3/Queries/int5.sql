.mode columns
.headers on
.nullvalue NULL

-- Top filmes/séries mais vistos 
-- Limitando a 3 filmes e 3 séries mais vistas (just movie done i guess)

DROP VIEW IF EXISTS [topMovies];
CREATE VIEW topMovies AS select count(userID) AS viwers,title FROM Visualization JOIN Movie on Movie.contentID == Visualization.movieID NATURAL JOIN Content GROUP BY Movie.contentID ORDER BY viwers DESC;

SELECT * FROM topMovies WHERE topMovies.Viwers >= 3;

