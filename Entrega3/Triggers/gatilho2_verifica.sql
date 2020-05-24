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

INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, movieID) VALUES (54, '2010-08-05 23:50', '2019-08-05 23:50', '2020-08-06 03:20', 1, 17);

SELECT visualizationID,timeOfDay, movieID
FROM Visualization 
WHERE movieID = 17
ORDER BY timeOfDay DESC;

