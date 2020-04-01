 PRAGMA foreign_keys = ON;

INSERT INTO Country VALUES ('PT', 'Portugal');
INSERT INTO Country VALUES ('BR', 'Brazil');
INSERT INTO Country VALUES ('UK', 'United Kingdom');
INSERT INTO Country VALUES ('SP', 'Spain');
INSERT INTO Country VALUES ('US', 'United States');
INSERT INTO Country VALUES ('NO', 'Norway');
INSERT INTO Country VALUES ('CA', 'Canada');
INSERT INTO Country VALUES ('DK', 'Denmark');
INSERT INTO Country VALUES ('SW', 'Sweden');
INSERT INTO Country VALUES ('NL', 'Netherlands');
INSERT INTO Country VALUES ('AS', 'Australia');
INSERT INTO Country VALUES ('FI', 'Finland');
INSERT INTO Country VALUES ('GM', 'Germany');
INSERT INTO Country VALUES ('MX', 'Mexico');
INSERT INTO Country VALUES ('AE', 'United Arab Emirates');

INSERT INTO AccountType VALUES ('Basic', 1, 7.99);
INSERT INTO AccountType VALUES ('Standard',2, 10.99);
INSERT INTO AccountType VALUES ('Premium', 4, 13.99);

INSERT INTO ClientAccount VALUES (0, '1995-04-08', 'Ana Silva', 'anasilva@gmail.com', '12345', 'PT', 'Standard');
INSERT INTO ClientAccount VALUES (1, '2000-03-07', 'André Monteiro', 'andremonteiro@gmail.com', '1234', 'PT', 'Standard');
INSERT INTO ClientAccount VALUES (2, '2002-09-22', 'Beatriz Rocha', 'beatrizrocha@gmail.com', '12345abc', 'PT', 'Premium');
INSERT INTO ClientAccount VALUES (3, '1999-07-19', 'Ricardo Santos', 'ricardosantos@gmail.com', '000aaa', 'BR', 'Premium');
INSERT INTO ClientAccount VALUES (4, '1980-10-10', 'Grace Smith', 'gracesmith@gmail.com', '000aaa1', 'UK', 'Basic');

INSERT INTO Payment VALUES ('Credit Card');
INSERT INTO Payment VALUES ('iTunes');
INSERT INTO Payment VALUES ('PayPal');
INSERT INTO Payment VALUES ('Netflix Gift Card');

INSERT INTO PaymentClientAccount VALUES ('iTunes', 0);
INSERT INTO PaymentClientAccount VALUES ('Credit Card', 1);
INSERT INTO PaymentClientAccount VALUES ('Credit Card', 2);
INSERT INTO PaymentClientAccount VALUES ('PayPal', 3);
INSERT INTO PaymentClientAccount VALUES ('iTunes', 4);
INSERT INTO PaymentClientAccount VALUES ('Netflix Gift Card', 4);

INSERT INTO User VALUES (0,'Victor', 0);
INSERT INTO User VALUES (1,'Adriana', 1);
INSERT INTO User VALUES (2,'Catarina', 2);
INSERT INTO User VALUES (3,'Ana', 0);
INSERT INTO User VALUES (4,'Mariana', 0);
INSERT INTO User VALUES (5,'André', 1);
INSERT INTO User VALUES (6,'Beatriz', 2);
INSERT INTO User VALUES (7,'Ricardo', 3);
INSERT INTO User VALUES (8,'Gustavo', 3);
INSERT INTO User VALUES (9,'Francisco', 3);
INSERT INTO User VALUES (10,'Grace', 4);
INSERT INTO User VALUES (11,'Phoebe', 4);

INSERT INTO Content VALUES (0,'Series','Guerra dos Tronos',8.50,'2012-01-01','GoT_trailer.M2TS');
INSERT INTO Content VALUES (1,'Series','Carbono Alterado',6.50,'2015-02-20','AltCarb_trailer.M2TS');
INSERT INTO Content VALUES (2,'Series','Vikings',7.50,'2009-08-09','Vikings_trailer.M2TS');
INSERT INTO Content VALUES (3,'Movie','Dollemite',8.50,'2018-05-01','Dollemite_trailer.M2TS');
INSERT INTO Content VALUES (4,'Movie','Velozes e Furiosos',6.50,'2010-06-20','FastAndFurious_trailer.M2TS');
INSERT INTO Content VALUES (5,'Movie','O Alto da Compadecida',7.50,'2001-06-17','OAltoDaCompadecida_trailer.M2TS');

INSERT INTO Like VALUES (0,5);
INSERT INTO Like VALUES (0,0);
INSERT INTO Like VALUES (0,3);
INSERT INTO Like VALUES (1,0);
INSERT INTO Like VALUES (3,0);
INSERT INTO Like VALUES (4,0);
INSERT INTO Like VALUES (10,0);

INSERT INTO Dislike VALUES (0,4);

INSERT INTO BelongsToUserList VALUES (0,5);
INSERT INTO BelongsToUserList VALUES (0,0);
INSERT INTO BelongsToUserList VALUES (0,3);

INSERT INTO Suggest VALUES (0, 2, '2020-03-30 19:19');
INSERT INTO Suggest VALUES (1, 2, '2020-03-31 18:09');

INSERT INTO Category VALUES ('Comédia');
INSERT INTO Category VALUES ('Ação');
INSERT INTO Category VALUES ('Aventura');
INSERT INTO Category VALUES ('Drama');
INSERT INTO Category VALUES ('Épico');

INSERT INTO CategoryContent VALUES (0,'Drama');
INSERT INTO CategoryContent VALUES (1,'Ação');
INSERT INTO CategoryContent VALUES (2,'Épico');
INSERT INTO CategoryContent VALUES (3,'Comédia');
INSERT INTO CategoryContent VALUES (4,'Ação');
INSERT INTO CategoryContent VALUES (5,'Comédia');

INSERT INTO Person VALUES (0, 'Katheryn Winnick');
INSERT INTO Person VALUES (1, 'Travis Fimmel');
INSERT INTO Person VALUES (2, 'Alexander Ludwig');
INSERT INTO Person VALUES (3, 'Gustaf Skarsgård');
INSERT INTO Person VALUES (4, 'Clive Standen');
INSERT INTO Person VALUES (5, 'Matheus Nachtergaele');
INSERT INTO Person VALUES (6, 'Selton Mello');
INSERT INTO Person VALUES (7, 'Denise Fraga');
INSERT INTO Person VALUES (8, 'Virgínia Cavendish');

INSERT INTO ContentPerson VALUES (2, 0, 'Actor');
INSERT INTO ContentPerson VALUES (2, 1, 'Actor');
INSERT INTO ContentPerson VALUES (2, 2, 'Actor');
INSERT INTO ContentPerson VALUES (2, 3, 'Actor');
INSERT INTO ContentPerson VALUES (2, 4, 'Actor');
INSERT INTO ContentPerson VALUES (5, 5, 'Actor');
INSERT INTO ContentPerson VALUES (5, 6, 'Actor');
INSERT INTO ContentPerson VALUES (5, 7, 'Actor');
INSERT INTO ContentPerson VALUES (5, 8, 'Actor');

INSERT INTO Movie VALUES (5, 'AltoDaCompadecida.M2TS', '02:30');

INSERT INTO Series VALUES (0);
INSERT INTO Series VALUES (1);
INSERT INTO Series VALUES (2);

INSERT INTO Season VALUES (0, 1, 0);
INSERT INTO Season VALUES (2, 2, 0);
INSERT INTO Season VALUES (3, 3, 0);
INSERT INTO Season VALUES (4, 1, 1);
INSERT INTO Season VALUES (5, 2, 1);
INSERT INTO Season VALUES (6, 1, 2);
INSERT INTO Season VALUES (7, 2, 2);
INSERT INTO Season VALUES (8, 3, 2);

INSERT INTO Episode VALUES (0, 'Conto de Fadas','00:23:19',1, 'ContoDeFadasS1E1.M2TS', 0);

INSERT INTO Subtitles (subtitleID, language, subtitlesFile, episodeID) VALUES (0, 'PORTUGUÊS', 'ContoDeFadasS1E1SUB.xml', 0);

INSERT INTO Cover VALUES (0, 'VikingsCover1.jpg', 3);

INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, movieID)
VALUES (0,'2013-10-07T08:23:19.120Z','08:23','08:53',0,5);
INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, episodeID)
VALUES (1,'2013-10-07T08:23:19.120Z','18:33','18:53',0,0);
INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, episodeID)
VALUES (2,'2013-10-07T08:23:19.120Z','23:19','23:20',0,0);
