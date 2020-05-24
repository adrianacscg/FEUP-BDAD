.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Não permite que seja criado uma visualização com a data da visualização mais antiga do que a data de lançamento do filme

CREATE TRIGGER priorVisualizatio
BEFORE INSERT ON Visualization
WHEN strftime('%J', New.timeOfDay) - strftime('%J', (SELECT releaseDate FROM Content WHERE New.movieID = Content.contentID)) < 0
BEGIN
SELECT RAISE(ROLLBACK, 'Não é possível inserir uma visualização antes do filme ser lançado!');
END;



