.mode columns
.headers on
.nullvalue NULL

--Número total de Clients por faixa etária 

SELECT ageGroup, COUNT (*) AS numberOfClients
FROM (SELECT * , 
    (CASE
        WHEN DATE('now')-DATE(dateOfBirth) < 19 THEN '0 - 18'
        WHEN DATE('now')-DATE(dateOfBirth) >= 19 AND DATE('now')-DATE(dateOfBirth) < 26 THEN '19 - 25'
        WHEN DATE('now')-DATE(dateOfBirth) >= 26 AND DATE('now')-DATE(dateOfBirth) < 41 THEN '26 - 40'
        WHEN DATE('now')-DATE(dateOfBirth) >= 40 AND DATE('now')-DATE(dateOfBirth) < 61 THEN '41 - 60'
        ELSE '61+'
    END) AS ageGroup
FROM ClientAccount)
GROUP BY ageGroup;