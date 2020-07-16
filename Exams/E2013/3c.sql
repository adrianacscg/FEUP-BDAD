.mode columns 
.headers on 

SELECT hostname
FROM Servidor S INNER JOIN Pessoa P 
ON S.idResponsavel = P.idPessoa
INNER JOIN AplicacaoServidor A 
ON S.idServidor = A.idServidor
INNER JOIN Bug
ON A.idAplicacao = Bug.idAplicacao
WHERE S.hostname LIKE 'alu%' AND P.mail LIKE 'joao.almeida@cica.pt'
GROUP BY hostname
HAVING COUNT(*) > 0;