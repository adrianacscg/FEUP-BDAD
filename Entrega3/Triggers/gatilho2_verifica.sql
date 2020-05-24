.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT title,releaseDate AS movieRelease
FROM content ORDER BY movieRelease DESC;

INSERT INTO Content VALUES (17,'Movie','Joker',10,'2019-10-03','WhySoSerious.M2TS');

SELECT title,releaseDate AS movieRelease
FROM content ORDER BY movieRelease DESC;

INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, movieID) VALUES (50, '2019-08-05 23:50', '2019-08-05 23:50', '2020-08-06 03:20', 1, 17);

SELECT visualizationID,timeOfDay, movieID
FROM Visualization ORDER BY timeOfDay DESC;

INSERT INTO Content VALUES (17,'Movie','Joker',10,'2019-10-03','WhySoSerious.M2TS');

INSERT INTO User VALUES (14, 'Filipa', 0);

SELECT clientID, COUNT(*) AS numberOfUsers
FROM User 
GROUP BY clientID;
