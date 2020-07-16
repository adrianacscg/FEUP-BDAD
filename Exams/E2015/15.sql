.mode columns 
.headers ON

SELECT name
FROM User U 
WHERE U.id NOT IN (
    SELECT user
    FROM Photo P 
);