.mode columns
.headers on
.nullvalue NULL

-- Média de tempo, em minutos, que cada utilizador passou a ver Netflix, por país, por mês

SELECT Country.countryName AS País, strftime('%Y-%m', timeOfDay) AS Mês, AVG(cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER)) AS Média
FROM Visualization
NATURAL JOIN User
INNER JOIN ClientAccount 
ON User.clientid = Clientaccount.clientid
NATURAL JOIN Country
GROUP BY País
ORDER BY Média DESC;

