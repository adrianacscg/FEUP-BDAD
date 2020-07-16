.mode columns 
.headers ON

DROP TRIGGER IF EXISTS Gosta;

CREATE TRIGGER Gosta
AFTER INSERT ON AppearsIn
BEGIN
    INSERT INTO Likes VALUES (New.user, New.photo);
END;