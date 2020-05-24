.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Cada ClientAccount pode ter apenas entre 1 a 5 Users associados

CREATE TRIGGER IF NOT EXISTS priorVisualization
BEFORE INSERT ON Visualization
SELECT CASE
WHEN New.timeOfDay > (SELECT releaseDate FROM Content WHERE New.movieID == Content.contentID)
BEGIN
    SELECT RAISE(ROLLBACK, 'Não é possível inserir uma visualização antes do filme ser lançado!');
END;
