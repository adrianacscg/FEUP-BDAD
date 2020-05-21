.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT clientID, COUNT(*) AS numberOfUsers
FROM User 
GROUP BY clientID;

INSERT INTO User VALUES (13, 'Joao', 0);

SELECT clientID, COUNT(*) AS numberOfUsers
FROM User 
GROUP BY clientID;

INSERT INTO User VALUES (14, 'Filipa', 0);

SELECT clientID, COUNT(*) AS numberOfUsers
FROM User 
GROUP BY clientID;
