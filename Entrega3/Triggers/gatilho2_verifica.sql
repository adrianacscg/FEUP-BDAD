.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT title,releaseDate AS movieRelease
FROM content ORDER BY movieRelease DESC;

INSERT INTO Content VALUES (17,'Movie','Joker',10,'2019-10-03','WhySoSerious.M2TS');

SELECT title,releaseDate AS movieRelease
FROM content ORDER BY movieRelease DESC;

SELECT * FROM Movie;

INSERT INTO Movie VALUES (17, 'WhySOSeriousJoker.M2TS', '02:40');

SELECT * FROM Movie;

INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, movieID) VALUES (50, '2019-08-05 23:50', '2019-08-05 23:50', '2020-08-06 03:20', 0, 17);

SELECT visualizationID,timeOfDay, movieID
FROM Visualization ORDER BY timeOfDay DESC;

