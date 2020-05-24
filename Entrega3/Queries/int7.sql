.mode columns
.headers on

-- select strftime('%m', timestampinitial) as Month from visualization;


SELECT Country.countryName AS País, strftime('%Y-%m', timeOfDay) AS Mês, AVG((cast(round((JulianDay(timestampfinal) - JulianDay(timestampinitial)) * 24 * 60) AS INTEGER))) AS Média
FROM Visualization
NATURAL JOIN User
INNER JOIN ClientAccount ON User.clientid = Clientaccount.clientid
INNER JOIN Country ON ClientAccount.countryInitials = Country.countryInitials
GROUP BY País, Mês;


/*
select country.countryName as país, userid, sum(cast(round((JulianDay(timestampfinal)-JulianDay(timestampinitial))*24*60) As Integer)) as média
from visualization
natural join user
inner join clientaccount on user.clientid = clientaccount.clientid
inner join country on clientaccount.countryInitials = country.countryInitials
group by país, userid;
*/

/*
select country.countryName, user.userid, visualization.timeStampInitial, visualization.timeStampfinal
from visualization
natural join user
inner join clientaccount on user.clientid = clientaccount.clientid
inner join country on clientaccount.countryInitials = country.countryInitials
order by timeStampInitial;
*/