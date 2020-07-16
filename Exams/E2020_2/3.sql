.mode columns 
.headers ON 

-- Terras starting que tenham ligaçao a todas as outras, por ordem alfabética

DROP VIEW IF EXISTS TodosOsLocais;

CREATE VIEW TodosOsLocais AS
SELECT COUNT(DISTINCT idLocal) AS locais
FROM Local;

SELECT L.name
FROM TodosOsLocais T, Path P INNER JOIN Local L 
ON L.idLocal = P.idStart
GROUP BY idStart
HAVING COUNT(DISTINCT idEnd) = T.locais - 1 
ORDER BY L.name ASC;