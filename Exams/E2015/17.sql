.mode columns 
.headers on 

DROP VIEW Daniel;

CREATE VIEW IF NOT EXISTS Daniel AS
SELECT id 
FROM User 
WHERE name = 'Daniel Ramos'
UNION
SELECT user2
FROM Friend
WHERE Friend.user1 = (
    SELECT id 
    FROM User 
    WHERE name = 'Daniel Ramos')
UNION
SELECT user2 
FROM Friend
WHERE Friend.user1 = (
    SELECT user2
    FROM Friend
    WHERE Friend.user1 = (
        SELECT id 
        FROM User 
        WHERE name = 'Daniel Ramos')
);

SELECT DISTINCT caption
FROM Photo INNER JOIN AppearsIn
ON Photo.id = AppearsIn.photo
WHERE AppearsIn.user IN (SELECT * FROM Daniel);


