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

INSERT INTO Content VALUES (0,'Series','Game of Thrones',8.50,'2012-01-01','GoT_trailer.M2TS');
INSERT INTO Content VALUES (1,'Series','Altered Carbon',6.50,'2015-02-20','AltCarb_trailer.M2TS');
INSERT INTO Content VALUES (2,'Series','Vikings',7.50,'2009-08-09','Vikings_trailer.M2TS');
INSERT INTO Content VALUES (3,'Movie','Dolemite',8.50,'2018-05-01','Dolemite_trailer.M2TS');
INSERT INTO Content VALUES (4,'Movie','The Fast and the Furious',6.50,'2001-06-22','TheFastAndTheFurious_trailer.M2TS');
INSERT INTO Content VALUES (5,'Movie','O Alto da Compadecida',7.50,'2001-06-17','OAltoDaCompadecida_trailer.M2TS');
INSERT INTO Content VALUES (6, 'Series', 'Stranger Things',8.8, '2016.07.05', 'StrangerThings_trailer.M2TS');
INSERT INTO Content VALUES (7, 'Series', 'Sex Education',8.3, '2019.01.11', 'SexEducation_trailer.M2TS');
INSERT INTO Content VALUES (8, 'Series', 'Orange is the New Black', 8.1, '2013.07.11', 'OitNB_trailer.M2TS');
INSERT INTO Content VALUES (9, 'Series', 'The Witcher', 8.3, '2019.12.20', 'TheWitcher_trailer.M2TS');

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

INSERT INTO Category VALUES ('Comedy');
INSERT INTO Category VALUES ('Action');
INSERT INTO Category VALUES ('Adventure');
INSERT INTO Category VALUES ('Drama');
INSERT INTO Category VALUES ('Epic');
INSERT INTO Category VALUES ('Fantasy');
INSERT INTO Category VALUES ('Horror');

INSERT INTO CategoryContent VALUES (0,'Drama');
INSERT INTO CategoryContent VALUES (1,'Action');
INSERT INTO CategoryContent VALUES (2,'Epic');
INSERT INTO CategoryContent VALUES (3,'Comedy');
INSERT INTO CategoryContent VALUES (4,'Action');
INSERT INTO CategoryContent VALUES (5,'Comedy');
INSERT INTO CategoryContent VALUES (6, 'Fantasy');
INSERT INTO CategoryContent VALUES (7, 'Comedy');
INSERT INTO CategoryContent VALUES (8, 'Comedy');
INSERT INTO CategoryContent VALUES (9, 'Action');

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
INSERT INTO Movie VALUES (4, 'TheFastAndTheFurious.M2TS', '02:00');
INSERT INTO Movie VALUES (3, 'Dolemite.M2TS', '01:30');

INSERT INTO Series VALUES (0);
INSERT INTO Series VALUES (1);
INSERT INTO Series VALUES (2);
INSERT INTO Series VALUES (6);
INSERT INTO Series VALUES (7);
INSERT INTO Series VALUES (8);
INSERT INTO Series VALUES (9);

INSERT INTO Season VALUES (0, 1, 0);
INSERT INTO Season VALUES (1, 2, 0);
INSERT INTO Season VALUES (2, 3, 0);
INSERT INTO Season VALUES (3, 1, 1);
INSERT INTO Season VALUES (4, 2, 1);
INSERT INTO Season VALUES (5, 1, 2);
INSERT INTO Season VALUES (6, 2, 2);
INSERT INTO Season VALUES (7, 3, 2);
INSERT INTO Season VALUES (8, 1, 6);
INSERT INTO Season VALUES (9, 2, 6);
INSERT INTO Season VALUES (10, 3, 6);
INSERT INTO Season VALUES (11, 1, 7);
INSERT INTO Season VALUES (12, 2, 7);
INSERT INTO Season VALUES (13, 1, 8);
INSERT INTO Season VALUES (14, 2, 8);
INSERT INTO Season VALUES (15, 3, 8);
INSERT INTO Season VALUES (16, 4, 8);
INSERT INTO Season VALUES (17 5, 8);
INSERT INTO Season VALUES (18, 1, 9);

INSERT INTO Episode VALUES (0, 'Winter is Coming','01:00:02',1, 'GoTS1E1.M2TS', 0);
INSERT INTO Episode VALUES (1, 'The kingsroad','00:59:02',2, 'GoTS1E2.M2TS', 0);
INSERT INTO Episode VALUES (2, 'Lord Snow','01:00:02',3, 'GoTS1E3.M2TS', 0);
INSERT INTO Episode VALUES (3, 'Cripples, Bastards, and Broken Things','01:00:02',4, 'GoTS1E4.M2TS', 0);
INSERT INTO Episode VALUES (4, 'The Wolf and the Lion','01:00:02',5, 'GoTS1E5.M2TS', 0);
INSERT INTO Episode VALUES (5, 'A Golden Crown','01:00:02',6, 'GoTS1E6.M2TS', 0);
INSERT INTO Episode VALUES (6, 'You Win or You Die','01:00:02',7, 'GoTS1E7.M2TS', 0);
INSERT INTO Episode VALUES (7, 'The Pointy End','01:00:02',8, 'GoTS1E8.M2TS', 0);
INSERT INTO Episode VALUES (8, 'Baelor','01:00:02',9, 'GoTS1E9.M2TS', 0);
INSERT INTO Episode VALUES (9, 'Fire and Blood','01:00:02',10, 'GoTS1E10.M2TS', 0);
INSERT INTO Episode VALUES (10, 'The North Remembers','01:00:02',1, 'GoTS2E1.M2TS', 1);
INSERT INTO Episode VALUES (11, 'The Night Lands','00:59:02',2, 'GoTS2E2.M2TS', 1);
INSERT INTO Episode VALUES (12, 'What is Dead May Never Die','01:00:02',3, 'GoTS2E3.M2TS', 1);
INSERT INTO Episode VALUES (13, 'Garden of Bones','01:00:02',4, 'GoTS2E4.M2TS', 1);
INSERT INTO Episode VALUES (14, 'The Ghost of Harrenhal','01:00:02',5, 'GoTS2E5.M2TS', 1);
INSERT INTO Episode VALUES (15, 'The Old Gods and the New','01:00:02',6, 'GoTS2E6.M2TS', 1);
INSERT INTO Episode VALUES (16, 'A Man Without Honor','01:00:02',7, 'GoTS2E7.M2TS', 0);
INSERT INTO Episode VALUES (17, 'The Prince of Winterfell','01:00:02',8, 'GoTS2E8.M2TS', 1);
INSERT INTO Episode VALUES (18, 'Blackwater','01:00:02',9, 'GoTS2E9.M2TS', 1);
INSERT INTO Episode VALUES (19, 'Valar Mourghulis','01:00:02',10, 'GoTS2E10.M2TS', 1);
INSERT INTO Episode VALUES (20, 'Valar Dohaeris','01:00:02',1, 'GoTS3E1.M2TS', 2);
INSERT INTO Episode VALUES (21, 'Dark Wings, Dark Words','00:59:02',2, 'GoTS3E2.M2TS', 2);
INSERT INTO Episode VALUES (22, 'Walk of Punishment','01:00:02',3, 'GoTS3E3.M2TS', 0);
INSERT INTO Episode VALUES (23, 'And Now His Watch Is Ended','01:00:02',4, 'GoTS3E4.M2TS', 2);
INSERT INTO Episode VALUES (24, 'Kissed by Fire','01:00:02',5, 'GoTS3E5.M2TS', 2);
INSERT INTO Episode VALUES (25, 'The Climb','01:00:02',6, 'GoTS3E6.M2TS', 2);
INSERT INTO Episode VALUES (26, 'The Bear and the Maiden Fair','01:00:02',7, 'GoTS3E7.M2TS', 2);
INSERT INTO Episode VALUES (27, 'Second Sons','01:00:02',8, 'GoTS3E8.M2TS', 2);
INSERT INTO Episode VALUES (28, 'The Rains of Castamere','01:00:02',9, 'GoTS3E9.M2TS', 2);
INSERT INTO Episode VALUES (29, 'Mhysa','01:00:02',10, 'GoTS3E10.M2TS', 2);

INSERT INTO Episode VALUES (30, 'Out of the Past','01:10:02',1, 'AlteredCarbonS1E1.M2TS', 3);
INSERT INTO Episode VALUES (31, 'Fallen Angel','00:50:02',2, 'AlteredCarbonS1E2.M2TS', 3);
INSERT INTO Episode VALUES (32, 'In a Lonely Plac','00:50:02',3, 'AlteredCarbonS1E3.M2TS', 3);
INSERT INTO Episode VALUES (33, 'Force of Evil','00:50:02',4, 'AlteredCarbonS1E4.M2TS', 3);
INSERT INTO Episode VALUES (34, 'The Wrong Man','00:50:02',5, 'AlteredCarbonS1E5.M2TS', 3);
INSERT INTO Episode VALUES (35, 'Man with My Face','00:50:02',6, 'AlteredCarbonS1E6.M2TS', 3);
INSERT INTO Episode VALUES (36, 'Nora Inu','00:50:02',7 'AlteredCarbonS1E7.M2TS', 3);
INSERT INTO Episode VALUES (37, 'Clash by Night','00:50:02',8, 'AlteredCarbonS1E8.M2TS', 3);
INSERT INTO Episode VALUES (38, 'Rage in Heaven','00:50:02',9, 'AlteredCarbonS1E9.M2TS', 3);
INSERT INTO Episode VALUES (39, 'The Killers','00:50:02',10, 'AlteredCarbonS1E10.M2TS', 3);
INSERT INTO Episode VALUES (40, 'Phantom Lady','01:10:02',1, 'AlteredCarbonS2E1.M2TS', 4);
INSERT INTO Episode VALUES (41, 'Payment Deferred','00:50:02',2, 'AlteredCarbonS2E2.M2TS', 4);
INSERT INTO Episode VALUES (42, 'Nightmare Alley','00:50:02',3, 'AlteredCarbonS2E3.M2TS', 4);
INSERT INTO Episode VALUES (43, 'Shadow of a Doubt','00:50:02',4, 'AlteredCarbonS2E4.M2TS', 4);
INSERT INTO Episode VALUES (44, 'I Wake Up Screaming','00:50:02',5, 'AlteredCarbonS2E5.M2TS', 4);
INSERT INTO Episode VALUES (45, 'Bury Me Dead','00:50:02',6, 'AlteredCarbonS2E6.M2TS', 4);
INSERT INTO Episode VALUES (46, 'Experiment Perilous','00:50:02',7 'AlteredCarbonS2E7.M2TS', 4);
INSERT INTO Episode VALUES (47, 'Broken Angels','00:50:02',8, 'AlteredCarbonS2E8.M2TS', 4);

INSERT INTO Episode VALUES (48, 'Rites of Passage','01:10:02',1, 'VikingsS1E1.M2TS', 5);
INSERT INTO Episode VALUES (49, 'Wrath of the Northmen','00:50:02',2, 'VikingsnS1E2.M2TS', 5);
INSERT INTO Episode VALUES (50, 'Dispossessed','00:50:02',3, 'VikingsS1E3.M2TS', 5);
INSERT INTO Episode VALUES (51, 'Trialt','00:50:02',4, 'VikingsS1E4.M2TS', 5);
INSERT INTO Episode VALUES (52, 'Raid','00:50:02',5, 'VikingsS1E5.M2TS', 5);
INSERT INTO Episode VALUES (53, 'Burial of the Dead','00:50:02',6, 'VikingsS1E6.M2TS', 5);
INSERT INTO Episode VALUES (54, 'A Kings Ransom','00:50:02',7 'VikingsS1E7.M2TS', 5);
INSERT INTO Episode VALUES (55, 'Sacrifice','00:50:02',8, 'VikingsS1E8.M2TS', 5);
INSERT INTO Episode VALUES (56, 'All Change','00:50:02',9, 'VikingsS1E9.M2TS', 5);
INSERT INTO Episode VALUES (57, 'Brothers War','01:10:02',1, 'VikingsS2E1.M2TS', 6);
INSERT INTO Episode VALUES (58, 'Invasion','00:50:02',2, 'VikingsnS2E2.M2TS', 6);
INSERT INTO Episode VALUES (59, 'Treachery','00:50:02',3, 'VikingsS2E3.M2TS', 6);
INSERT INTO Episode VALUES (60, 'Eye for an Eye','00:50:02',4, 'VikingsS2E4.M2TS', 6);
INSERT INTO Episode VALUES (61, 'Answers in the Blood','00:50:02',5, 'VikingsS2E5.M2TS', 6);
INSERT INTO Episode VALUES (62, 'Unforgiven','00:50:02',6, 'VikingsS2E6.M2TS', 6);
INSERT INTO Episode VALUES (64, 'Blood Eagle','00:50:02',7 'VikingsS2E7.M2TS', 6);
INSERT INTO Episode VALUES (64, 'Boneless','00:50:02',8 'VikingsS2E8.M2TS', 6);
INSERT INTO Episode VALUES (65, 'The Choice','00:50:02',9, 'VikingsS2E9.M2TS', 6);
INSERT INTO Episode VALUES (66, 'The Lords Prayer','00:50:02',10, 'VikingsS2E10.M2TS', 6);
INSERT INTO Episode VALUES (67, 'Mercenary','01:10:02',1, 'VikingsS3E1.M2TS', 7);
INSERT INTO Episode VALUES (68, 'The Wanderer','00:50:02',2, 'VikingsnS3E2.M2TS', 7);
INSERT INTO Episode VALUES (69, 'Warriors Fate','00:50:02',3, 'VikingsS3E3.M2TS', 7);
INSERT INTO Episode VALUES (70, 'Scarred','00:50:02',4, 'VikingsS3E4.M2TS', 7);
INSERT INTO Episode VALUES (71, 'The Usurper','00:50:02',5, 'VikingsS3E5.M2TS', 7);
INSERT INTO Episode VALUES (72, 'Born Again','00:50:02',6, 'VikingsS3E6.M2TS', 7);
INSERT INTO Episode VALUES (73, 'Paris','00:50:02',7 'VikingsS3E7.M2TS', 7);
INSERT INTO Episode VALUES (74, 'To The Gates','00:50:02',8 'VikingsS3E7.M2TS', 7);
INSERT INTO Episode VALUES (75, 'Breaking Point','00:50:02',9, 'VikingsS3E8.M2TS', 7);
INSERT INTO Episode VALUES (76, 'The Dead','00:50:02',10, 'VikingsS3E8.M2TS', 7);


INSERT INTO Subtitles (subtitleID, language, subtitlesFile, episodeID) VALUES (0, 'PORTUGUÊS', 'GoTS1E1SUBPT.srt', 0);

INSERT INTO Cover VALUES (0, 'GameOfThrones.jpg', 0);
INSERT INTO Cover VALUES (1, 'AlteredCarbon2.jpg', 1);
INSERT INTO Cover VALUES (2, 'VikingsCover1.jpg', 2);
INSERT INTO Cover VALUES (3, 'DolemiteRelease1.jpg', 3);
INSERT INTO Cover VALUES (4, 'TFaF2020.jpg', 4);
INSERT INTO Cover VALUES (5, 'OAltoCompadecida.jpg', 5);
INSERT INTO Cover VALUES (6, 'StrangerThing2019.jpg', 6);
INSERT INTO Cover VALUES (7, 'SexEducation1.jpg', 7);
INSERT INTO Cover VALUES (8, 'OITNB.jpg', 8);
INSERT INTO Cover VALUES (9, 'WitcherThe.jpg', 9);


INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, movieID)
VALUES (0,'2013-10-07T08:23:19.120Z','08:23','08:53',10,3);
INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, episodeID)
VALUES (1,'2013-10-07T08:23:19.120Z','18:33','18:53',2,10);
INSERT INTO Visualization (visualizationID, timeOfDay, timeStampInitial, timeStampFinal, userID, episodeID)
VALUES (2,'2013-10-07T08:23:19.120Z','23:19','23:20',0,50);
