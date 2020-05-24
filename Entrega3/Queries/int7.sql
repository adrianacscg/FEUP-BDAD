.mode columns
.headers on

-- média de tempo, em minutos, que cada utilizador passou a ver Netflix, por país, por mês

SELECT Country.countryName AS País, strftime('%Y-%m', timeOfDay) AS Mês, AVG((cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER))) AS Média
FROM Visualization
NATURAL JOIN User
NATURAL JOIN ClientAccount
NATURAL JOIN Country
GROUP BY País, Mês;

