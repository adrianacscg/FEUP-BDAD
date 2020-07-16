.mode columns 
.headers on 

DROP VIEW NumeroBugs;
DROP VIEW BugsMaximos;

CREATE VIEW IF NOT EXISTS NumeroBugs AS
SELECT COUNT(*) AS Numero
FROM Servidor S INNER JOIN AplicacaoServidor A 
ON S.idServidor = A.idServidor
INNER JOIN Bug
ON A.idAplicacao = Bug.idAplicacao
GROUP BY A.idAplicacao;

CREATE VIEW IF NOT EXISTS BugsMaximos AS
SELECT Max(NumeroBugs.Numero) AS Maximo
FROM NumeroBugs;

SELECT nome
FROM BugsMaximos, Servidor S INNER JOIN AplicacaoServidor A 
ON S.idServidor = A.idServidor
INNER JOIN Bug
ON A.idAplicacao = Bug.idAplicacao
INNER JOIN Aplicacao App 
ON App.idAplicacao = A.idAplicacao
GROUP BY a.idAplicacao
HAVING COUNT(*) = BugsMaximos.Maximo;