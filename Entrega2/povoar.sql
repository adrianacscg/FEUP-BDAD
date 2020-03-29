 
INSERT INTO Country VALUES ('PT', 'Portugal');

INSERT INTO Client VALUES (1, '2000-03-07', 'Catarina Fernandes', 'catarina@fe.up.pt', '1234', 'PT');

INSERT INTO Account VALUES (0,'standard','2','8,99',1);

INSERT INTO Payment VALUES ('Cartao',0);

INSERT INTO User VALUES (0,'Victor',1);

INSERT INTO Content VALUES (0,'serie','Guerra dos Tronos',8.50,'2012-01-01',x'0500');

INSERT INTO Content VALUES (1,'serie','Carbono Alterado',6.50,'2015-02-20',x'0500');

INSERT INTO Content VALUES (2,'serie','Vikings',7.50,'2009-08-09',x'0500');

INSERT INTO Content VALUES (3,'filme','Dollemite',8.50,'2018-05-01',x'0500');

INSERT INTO Content VALUES (4,'filme','Velozes e Furiosos',6.50,'2010-06-20',x'0500');

INSERT INTO Content VALUES (5,'filme','O Alto da Compadecida',7.50,'2001-06-17',x'0500');

INSERT INTO Like VALUES (0,5);

INSERT INTO Like VALUES (0,0);

INSERT INTO Like VALUES (0,3);

INSERT INTO Dislike VALUES (0,4);

INSERT INTO BelongsToUserList VALUES (0,5);

INSERT INTO BelongsToUserList VALUES (0,0);

INSERT INTO BelongsToUserList VALUES (0,3);

INSERT INTO Suggest VALUES (0,2);

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

INSERT INTO ContentPerson VALUES (2, 0, 'Lagertha');

INSERT INTO ContentPerson VALUES (2, 1, 'Ragnar Lothbrok');

INSERT INTO ContentPerson VALUES (2, 2, 'Bjorn Ironside');

INSERT INTO ContentPerson VALUES (2, 3, 'FLoki');

INSERT INTO ContentPerson VALUES (2, 4, 'Rollo');

INSERT INTO ContentPerson VALUES (5, 5, 'João Grilo');

INSERT INTO ContentPerson VALUES (5, 6, 'Chicó');

INSERT INTO ContentPerson VALUES (5, 7, 'Dora');

INSERT INTO ContentPerson VALUES (5, 8, 'Rosinha');

INSERT INTO Movie VALUES (5, x'0500', 2.30);

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

INSERT INTO Episode VALUES (0, 'Conto de Fadas','2013-10-07T08:23:19.120Z',1, x'0500', 0);

INSERT INTO Subtitles VALUES (0, 'PORTUGUÊS', x'0500', 0);

INSERT INTO Cover VALUES (0, x'0500', 3);

INSERT INTO Visualization VALUES (0,'2013-10-07T08:23:19.120Z','2013-10-07T08:23:19.120Z','2013-10-07T08:23:19.120Z',0,5);

INSERT INTO Visualization VALUES (1,'2013-10-07T08:23:19.120Z','2013-10-07T08:23:19.120Z','2013-10-07T08:23:19.120Z',0,0);

INSERT INTO Visualization VALUES (2,'2013-10-07T08:23:19.120Z','2013-10-07T08:23:19.120Z','2013-10-07T08:23:19.120Z',0,3);
