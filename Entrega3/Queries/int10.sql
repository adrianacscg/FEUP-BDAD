.mode columns
.headers on
.nullvalue NULL

-- Filmes assistidos pelos Users

select name as Users, title AS Movies 
FROM User,Visualization 
JOIN Movie 
ON Movie.contentID = Visualization.movieID 
JOIN Content 
ON Content.contentID = Movie.contentID  
WHERE User.userID = Visualization.userID 
ORDER BY contentVideo;

