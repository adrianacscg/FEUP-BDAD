.mode columns 
.headers on 

SELECT Servidor.hostname, Bug.descricao, Pessoa.nome AS 'nome'
FROM Servidor INNER JOIN Pessoa 
ON Servidor.idResponsavel = Pessoa.idPessoa
INNER JOIN AplicacaoServidor A 
ON Servidor.idServidor = A.idServidor
INNER JOIN Bug
ON A.idAplicacao = Bug.idAplicacao
WHERE Bug.vulnerabilidade = 'sim'
ORDER BY hostname ASC;