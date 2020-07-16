.mode columns 
.headers on 

DROP TRIGGER IF EXISTS Vulnerabilidade;

CREATE TRIGGER Vulnerabilidade
AFTER INSERT ON AplicacaoServidor
WHEN (New.idAplicacao IN (
    SELECT idAplicacao
    FROM Bug 
    WHERE vulnerabilidade = 'sim'))
BEGIN 
    UPDATE Servidor SET vulneravel = 'sim' WHERE New.idServidor = Servidor.idServidor;
END;
