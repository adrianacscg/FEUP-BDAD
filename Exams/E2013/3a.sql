.mode columns 
.headers on 

SELECT hostname, Pessoa.nome AS 'nome'
FROM Servidor INNER JOIN Pessoa 
ON Servidor.idResponsavel = Pessoa.idPessoa
WHERE vulneravel = 'sim';