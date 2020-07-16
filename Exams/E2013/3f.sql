.mode columns 
.headers on 

DROP TRIGGER IF EXISTS InsersaoBug;

CREATE TRIGGER InsercaoBug
AFTER INSERT ON Bug
BEGIN 
    UPDATE Bug SET prioridade = 1 WHERE New.idBug = Bug.idBug;
    UPDATE Servidor 
    SET vulneravel = 'sim' 
    WHERE Servidor.idServidor IN (
        SELECT idServidor
        FROM Bug B INNER JOIN AplicacaoServidor A 
        ON B.idAplicacao = A.idAplicacao
        WHERE New.idAplicacao = A.idAplicacao
    );
END;
