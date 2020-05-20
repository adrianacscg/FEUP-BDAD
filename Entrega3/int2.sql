.mode columns
.headers on
.nullvalue NULL

-- Países com maior número de Users

SELECT Country.countryInitials, COUNT(userID) AS numberOfUsers
FROM Country 
NATURAL JOIN (ClientAccount 
INNER JOIN User 
ON ClientAccount.clientID = User.clientID)
GROUP BY Country.countryInitials
ORDER BY COUNT(userID) DESC;