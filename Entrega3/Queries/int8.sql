.mode columns
.headers on

-- categoria de conteúdo que cada utilizador mais gosta

SELECT User, Categoria
FROM (SELECT Like.userID AS User, Like.contentID, CategoryContent.categoryName AS Categoria, COUNT(CategoryContent.categoryName) AS Count 
	  FROM Like
	  NATURAL JOIN Content 
	  NATURAL JOIN CategoryContent
	  GROUP BY Like.userID, Categoria
	  ORDER BY Like.userID)
GROUP BY User
HAVING MAX(Count);