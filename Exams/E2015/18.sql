.mode columns 
.headers ON

DELETE FROM Photo
WHERE Photo.id IN (
    SELECT Photo.id
    FROM Photo INNER JOIN AppearsIn
    ON Photo.id = AppearsIn.photo
    GROUP BY AppearsIn.photo
    HAVING COUNT(AppearsIn.user) < 2 AND julianday(Photo.uploadDate) < julianday('2010-01-01')
);