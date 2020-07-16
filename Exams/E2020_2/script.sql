DROP TABLE IF EXISTS Path;
DROP TABLE IF EXISTS Local;

CREATE TABLE Local (
idLocal integer PRIMARY KEY,
name text
);

CREATE TABLE Path (
idPath integer PRIMARY KEY,
name text,
distance integer,
idStart integer REFERENCES Local(idLocal),
idEnd integer REFERENCES Local(idLocal)
);

INSERT INTO Local (idLocal, name)
VALUES  (1, 'Porto'),
	(3, 'Gondomar'),
	(5, 'Maia'),
	(7, 'Vila do Conde'),
	(9, 'Santo Tirso'),
	(13,'Felgueiras'),
	(15,'Penafiel'),
	(17,'Marco de Canaveses'),
	(19,'Baiao');

INSERT INTO Path (idPath, name, distance, idStart, idEnd)
VALUES  (2, 'PRT-GDM',  15.0, 1,  3),
	(4, 'PRT-MAI',   8.9, 1,  5),
	(6, 'PRT-VC',   26.5, 1,  7),
	(7, 'PRT-STR',  32.1, 1,  9),
	(8, 'PRT-FLG',  56.7, 1, 13),
	(9, 'PRT-PNF',  39.9, 1, 15),
	(11,'PRT-MCN',  56.0, 1, 17),
	(13,'PRT-BAI',  71.5, 1, 19),
	(17,'GDM-PRT',  22.9, 3,  1),
	(27,'GDM-PNF',  42.2, 3, 15),
	(29,'GDM-MCN',  49.3, 3, 17),
	(43,'MAI-PRT',   9.3, 5,  1),
	(45,'MAI-GDM',  18.8, 5,  3),
	(50,'MAI-STR',  24.1, 5,  9),
	(51,'MAI-PNF',  38.7, 5, 15),
	(64,'VC-PRT',   26.6, 7,  1),
	(65,'VC-GDM',   39.9, 7,  3),
	(70,'VC-STR',   30.4, 7,  9),
	(72,'VC-PNF',   58.4, 7, 15),
	(79,'STR-PRT',  33.7, 9,  1),
	(82,'STR-FLG',  29.8, 9, 13),
	(84,'STR-PNF',  35.8, 9, 15),
	(105,'FLG-PRT', 60.2,13,  1),
	(107,'FLG-STR', 29.7,13,  9),
	(110,'FLG-PNF', 31.5,13, 15),
	(114,'FLG-BAI', 44.0,13, 19),
	(126,'PNF-PRT', 40.7,15,  1),
	(128,'PNF-GDM', 33.6,15,  3),
	(130,'PNF-MAI', 38.3,15,  5),
	(131,'PNF-VC',  58.5,15,  7),
	(132,'PNF-STR', 36.4,15,  9),
	(133,'PNF-FLG', 30.2,15, 13),
	(135,'PNF-MCN', 19.1,15, 17),
	(137,'PNF-BAI', 35.8,15, 19),
	(145,'MCN-PRT', 57.8,17,  1),
	(150,'MCN-FLG', 28.5,17, 13),
	(152,'MCN-PNF', 19.9,17, 15),
	(155,'MCN-BAI', 14.2,17, 19),
	(160,'BAI-PRT', 72.5,19,  1),
	(163,'BAI-FLG', 38.0,19, 13),
	(165,'BAI-PNF', 34.6,19, 15),
	(166,'BAI-MCN', 15.0,19, 17)
;
