.mode columns 
.headers on 

SELECT caption
FROM Photo P INNER JOIN User U
ON P.user = U.id
WHERE U.name = 'Daniel Ramos' 
AND julianday(uploadDate) = julianday(creationDate) + 2;