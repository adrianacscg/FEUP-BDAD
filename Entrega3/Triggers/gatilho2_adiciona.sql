.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER prior_visualization
BEFORE INSERT ON Visualization BEGIN
SELECT 
CASE
 WHEN strftime('%J', New.timeOfDay) < strftime('%J', (SELECT releaseDate FROM Content WHERE New.movieID = Content.contentID)) THEN
RAISE(ABORT, 'Não é possível inserir uma visualização antes do filme ser lançado!')
END;



