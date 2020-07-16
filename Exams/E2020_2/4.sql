.mode columns 
.headers ON 

-- Locais e o número de caminhos em que estao incluidas (sejam elas locais iniciais ou finais) (?)

DROP VIEW IF EXISTS Inicio;
DROP VIEW IF EXISTS Fim;

CREATE VIEW Inicio AS
SELECT idStart, COUNT(*) AS numero
FROM Path 
GROUP BY idStart;

CREATE VIEW Fim AS
SELECT idEnd, COUNT(*) AS numero
FROM Path 
GROUP BY idEnd;

SELECT L.idLocal, I.numero + F.numero AS Numero
FROM Inicio I INNER JOIN Fim F
ON I.idStart = F.idEnd
INNER JOIN Local L
ON I.idStart = L.idLocal;