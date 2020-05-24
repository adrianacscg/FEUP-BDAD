.mode columns
.headers on

-- média de tempo, em minutos, que cada utilizador passou a ver Netflix, por país, por mês

SELECT Country.countryName AS País, strftime('%Y-%m', timeOfDay) AS Mês, AVG((cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER))) AS Média
FROM Visualization
NATURAL JOIN User
INNER JOIN ClientAccount ON User.clientid = Clientaccount.clientid
INNER JOIN Country ON ClientAccount.countryInitials = Country.countryInitials
GROUP BY País, Mês;

