.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Verifica que a data de visualização de um conteúdo é depois da data de lançamento do conteúdo

SELECT title,releaseDate AS movieRelease
FROM Content 
ORDER BY movieRelease DESC;

INSERT INTO Content VALUES (17,'Movie','Joker',10,'2019-10-03','WhySoSeriousTrailer.M2TS');
INSERT INTO Movie VALUES (17, 'WhySoSerious.M2TS', '02:02');

SELECT title,releaseDate AS movieRelease
FROM Content 
ORDER BY movieRelease DESC;

<<<<<<< HEAD
SELECT * FROM Movie;

INSERT INTO Movie VALUES (17, 'WhySOSeriousJoker.M2TS', '02:40');

SELECT * FROM Movie;

INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, movieID) VALUES (50, '2019-08-05 23:50', '2019-08-05 23:50', '2020-08-06 03:20', 0, 17);
=======
INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, movieID) VALUES (54, '2010-08-05 23:50', '2019-08-05 23:50', '2020-08-06 03:20', 1, 17);
>>>>>>> b3be833c3a038d6027b6815ed69e2644f51c8372

SELECT visualizationID,timeOfDay, movieID
FROM Visualization 
WHERE movieID = 17
ORDER BY timeOfDay DESC;

