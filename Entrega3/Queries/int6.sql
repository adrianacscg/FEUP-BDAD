.mode columns
.headers on
.nullvalue NULL

-- Os 5 filmes com maior classificação

SELECT title AS Título, rating AS Rating
FROM content
WHERE type = "Movie"
ORDER BY rating DESC
LIMIT 5;