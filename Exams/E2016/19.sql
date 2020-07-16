.mode columns 
.headers on 

DROP TRIGGER AmizadeCurso;

CREATE TRIGGER IF NOT EXISTS AmizadeCurso
AFTER INSERT ON Estudante
BEGIN
    INSERT INTO Amizade 
    SELECT New.ID, E.ID 
    FROM Estudante E
    WHERE E.curso = New.curso AND E.ID <> New.ID;

    INSERT INTO Amizade
    SELECT E.ID, New.ID
    FROM Estudante E
    WHERE E.curso = New.curso AND E.ID <> New.ID;
END;