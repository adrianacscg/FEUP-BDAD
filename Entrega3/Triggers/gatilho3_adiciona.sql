.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Na introduçao de legendas é verificado se já há um ficheiro com legendas nessa língua, caso haja então não permite a inserção do novo ficheiro

CREATE TRIGGER RepeatedSubtitles
BEFORE INSERT ON Subtitles
WHEN New.language IN 
(
    SELECT language
    FROM Subtitles
    JOIN Movie
    ON Movie.contentID = Subtitles.movieID
)
BEGIN
    SELECT RAISE(ROLLBACK, 'Já há legendas nessa lingua!');
END;
