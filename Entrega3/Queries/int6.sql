.mode columns
.headers on

SELECT title AS Título, rating AS Rating
FROM content
WHERE type = "Movie"
ORDER BY rating DESC
LIMIT 5;