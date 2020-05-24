.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Subtitles WHERE movieID = 3;

INSERT INTO Subtitles (subtitleID, language, subtitlesFile, movieID) VALUES (95, 'Português', 'DolemiteSUBPT.srt', 3);

SELECT * FROM Subtitles WHERE movieID = 3;
