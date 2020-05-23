.mode columns
.headers on
.nullvalue NULL

-- Top filmes/séries mais vistos 
-- Limitando a 3 filmes e 3 séries mais vistas (just movie done i guess)

DROP VIEW IF EXISTS [topMovies];
CREATE VIEW topMovies AS select count(userID) AS Viwers,title FROM Content, Movie,Visualization WHERE Content.contentID == Visualization.movieID AND Movie.contentID == Visualization.movieID GROUP BY contentVideo ORDER BY viwers DESC;

SELECT * FROM topMovies WHERE topMovies.Viwers >= 3 ORDER BY Viwers DESC;

DROP VIEW IF EXISTS [topMovies];
