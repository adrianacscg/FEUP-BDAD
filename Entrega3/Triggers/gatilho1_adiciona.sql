.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Cada ClientAccount pode ter apenas entre 1 a 5 Users associados

CREATE TRIGGER MaxUsers
BEFORE INSERT ON User
WHEN New.clientID IN 
(
    SELECT userID
    FROM User 
    GROUP BY clientID
    HAVING COUNT(*) >= 5
)
BEGIN
    SELECT RAISE(ROLLBACK, 'Cada cliente não pode ter mais que 5 Users associados!');
END;