.mode columns
.headers on

SELECT User, Categoria
FROM (SELECT Like.userID AS User, Like.contentID, CategoryContent.categoryName AS Categoria, COUNT(CategoryContent.categoryName) AS Count FROM Like
	  INNER JOIN Content ON Like.contentID = Content.contentID
	  INNER JOIN CategoryContent ON Content.contentID = CategoryContent.contentID
	  GROUP BY Like.userID, Categoria
	  ORDER BY Like.userID)
GROUP BY User
HAVING Max(Count);