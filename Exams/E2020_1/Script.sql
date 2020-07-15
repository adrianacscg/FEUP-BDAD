--
-- File generated with SQLiteStudio v3.2.1 on Sun Jun 21 20:13:23 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: comments
CREATE TABLE comments (
    idComment   INTEGER PRIMARY KEY AUTOINCREMENT,
    idPost      INTEGER REFERENCES posts (idPost) 
                        NOT NULL,
    idUser      INTEGER REFERENCES users (idUser) 
                        NOT NULL,
    datePosted  DATE    NOT NULL,
    commentText TEXT
);

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         1,
                         21,
                         8,
                         '2021-05-13 01:05',
                         'amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         2,
                         10,
                         5,
                         '2020-03-18 09:03',
                         'commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         3,
                         4,
                         12,
                         '2020-06-19 06:06',
                         'Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         4,
                         24,
                         6,
                         '2020-09-10 08:09',
                         'nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         5,
                         3,
                         4,
                         '2021-03-10 04:03',
                         'orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         6,
                         3,
                         2,
                         '2020-05-26 12:05',
                         'arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         7,
                         21,
                         9,
                         '2020-08-05 03:08',
                         'vel est tempor bibendum. Donec felis orci, adipiscing non, luctus'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         8,
                         15,
                         8,
                         '2020-10-18 08:10',
                         'Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         9,
                         22,
                         12,
                         '2021-04-13 04:04',
                         'tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         10,
                         4,
                         4,
                         '2020-06-24 09:06',
                         'eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         11,
                         26,
                         10,
                         '2021-05-16 02:05',
                         'Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         12,
                         11,
                         3,
                         '2021-04-27 05:04',
                         'arcu et pede. Nunc sed orci lobortis augue scelerisque mollis.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         13,
                         11,
                         11,
                         '2021-05-29 09:05',
                         'dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         14,
                         22,
                         11,
                         '2020-06-24 07:06',
                         'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         15,
                         6,
                         7,
                         '2020-09-29 09:09',
                         'arcu et pede. Nunc sed orci lobortis augue scelerisque mollis.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         16,
                         16,
                         4,
                         '2020-01-02 04:01',
                         'orci, consectetuer euismod est arcu ac orci. Ut semper pretium'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         17,
                         5,
                         3,
                         '2020-10-19 01:10',
                         'Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         18,
                         17,
                         8,
                         '2020-01-10 12:01',
                         'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         19,
                         1,
                         11,
                         '2020-04-15 07:04',
                         'Curabitur egestas nunc sed libero. Proin sed turpis nec mauris'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         20,
                         8,
                         6,
                         '2020-11-29 12:11',
                         'primis in faucibus orci luctus et ultrices posuere cubilia Curae;'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         21,
                         15,
                         7,
                         '2021-04-30 05:04',
                         'tortor at risus. Nunc ac sem ut dolor dapibus gravida.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         22,
                         13,
                         7,
                         '2021-05-05 06:05',
                         'ultrices a, auctor non, feugiat nec, diam. Duis mi enim,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         23,
                         2,
                         6,
                         '2020-06-19 06:06',
                         'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         24,
                         5,
                         12,
                         '2021-05-27 10:05',
                         'egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         25,
                         18,
                         4,
                         '2020-04-07 09:04',
                         'nunc risus varius orci, in consequat enim diam vel arcu.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         26,
                         15,
                         10,
                         '2021-03-19 03:03',
                         'purus mauris a nunc. In at pede. Cras vulputate velit'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         27,
                         8,
                         10,
                         '2020-11-03 08:11',
                         'eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         28,
                         1,
                         5,
                         '2020-05-29 06:05',
                         'mollis lectus pede et risus. Quisque libero lacus, varius et,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         29,
                         3,
                         12,
                         '2021-05-19 06:05',
                         'pede. Cum sociis natoque penatibus et magnis dis parturient montes,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         30,
                         28,
                         6,
                         '2021-02-08 05:02',
                         'tellus faucibus leo, in lobortis tellus justo sit amet nulla.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         31,
                         15,
                         10,
                         '2020-12-12 08:12',
                         'elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         32,
                         27,
                         1,
                         '2020-11-20 03:11',
                         'Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         33,
                         23,
                         2,
                         '2020-12-30 04:12',
                         'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         34,
                         20,
                         7,
                         '2020-12-27 09:12',
                         'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         35,
                         6,
                         12,
                         '2020-03-25 03:03',
                         'Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         36,
                         17,
                         8,
                         '2021-04-29 06:04',
                         'eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         37,
                         7,
                         8,
                         '2020-02-10 04:02',
                         'consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         38,
                         1,
                         3,
                         '2021-03-03 01:03',
                         'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         39,
                         26,
                         5,
                         '2021-01-03 03:01',
                         'sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         40,
                         2,
                         4,
                         '2020-07-27 11:07',
                         'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         41,
                         24,
                         11,
                         '2021-04-18 05:04',
                         'aptent taciti sociosqu ad litora torquent per conubia nostra, per'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         42,
                         3,
                         9,
                         '2021-05-11 03:05',
                         'augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         43,
                         19,
                         10,
                         '2020-12-25 04:12',
                         'in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         44,
                         24,
                         5,
                         '2021-05-23 03:05',
                         'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         45,
                         11,
                         9,
                         '2020-03-19 11:03',
                         'mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         46,
                         4,
                         10,
                         '2021-04-05 05:04',
                         'adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         47,
                         28,
                         8,
                         '2020-12-21 03:12',
                         'ornare, lectus ante dictum mi, ac mattis velit justo nec'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         48,
                         19,
                         3,
                         '2020-11-21 03:11',
                         'eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         49,
                         9,
                         7,
                         '2021-02-02 04:02',
                         'varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         50,
                         19,
                         4,
                         '2020-03-08 10:03',
                         'consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         51,
                         30,
                         4,
                         '2020-02-18 06:02',
                         'pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         52,
                         30,
                         6,
                         '2020-01-17 10:01',
                         'vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         53,
                         13,
                         2,
                         '2020-10-24 02:10',
                         'quis accumsan convallis, ante lectus convallis est, vitae sodales nisi'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         54,
                         19,
                         7,
                         '2020-02-23 05:02',
                         'orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         55,
                         14,
                         3,
                         '2021-01-16 05:01',
                         'orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         56,
                         5,
                         2,
                         '2020-05-15 09:05',
                         'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         57,
                         19,
                         11,
                         '2020-03-10 01:03',
                         'adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         58,
                         10,
                         2,
                         '2020-07-12 10:07',
                         'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         59,
                         17,
                         1,
                         '2020-06-05 07:06',
                         'Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         60,
                         30,
                         9,
                         '2020-06-16 04:06',
                         'commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         61,
                         30,
                         4,
                         '2021-04-05 03:04',
                         'fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         62,
                         28,
                         3,
                         '2021-05-21 05:05',
                         'ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         63,
                         25,
                         11,
                         '2020-03-29 03:03',
                         'lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         64,
                         14,
                         7,
                         '2020-02-25 12:02',
                         'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         65,
                         23,
                         5,
                         '2021-05-04 09:05',
                         'mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         66,
                         22,
                         10,
                         '2020-11-05 06:11',
                         'turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         67,
                         14,
                         4,
                         '2021-02-10 01:02',
                         'euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         68,
                         12,
                         8,
                         '2021-02-26 11:02',
                         'mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         69,
                         27,
                         9,
                         '2020-08-18 11:08',
                         'quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         70,
                         16,
                         10,
                         '2021-04-28 12:04',
                         'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         71,
                         20,
                         8,
                         '2020-05-31 02:05',
                         'non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         72,
                         14,
                         7,
                         '2021-05-23 12:05',
                         'metus vitae velit egestas lacinia. Sed congue, elit sed consequat'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         73,
                         20,
                         9,
                         '2021-02-17 01:02',
                         'diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         74,
                         30,
                         3,
                         '2020-12-27 05:12',
                         'mauris ut mi. Duis risus odio, auctor vitae, aliquet nec,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         75,
                         5,
                         12,
                         '2021-05-03 01:05',
                         'interdum. Sed auctor odio a purus. Duis elementum, dui quis'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         76,
                         5,
                         6,
                         '2021-01-16 07:01',
                         'lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         77,
                         6,
                         6,
                         '2020-11-26 01:11',
                         'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         78,
                         14,
                         11,
                         '2020-05-20 11:05',
                         'tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         79,
                         19,
                         5,
                         '2021-04-25 01:04',
                         'vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         80,
                         26,
                         4,
                         '2020-07-04 08:07',
                         'nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         81,
                         18,
                         10,
                         '2021-01-11 11:01',
                         'quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         82,
                         8,
                         3,
                         '2020-04-22 02:04',
                         'at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         83,
                         24,
                         11,
                         '2020-10-13 08:10',
                         'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         84,
                         7,
                         11,
                         '2020-01-21 06:01',
                         'sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         85,
                         30,
                         3,
                         '2020-11-14 03:11',
                         'nunc. In at pede. Cras vulputate velit eu sem. Pellentesque'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         86,
                         13,
                         5,
                         '2020-06-02 02:06',
                         'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         87,
                         29,
                         1,
                         '2021-03-17 01:03',
                         'Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         88,
                         20,
                         12,
                         '2020-01-23 04:01',
                         'leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         89,
                         14,
                         4,
                         '2021-03-13 08:03',
                         'ornare lectus justo eu arcu. Morbi sit amet massa. Quisque'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         90,
                         27,
                         11,
                         '2020-07-08 11:07',
                         'ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         91,
                         1,
                         2,
                         '2021-01-04 12:01',
                         'ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         92,
                         23,
                         11,
                         '2020-02-18 10:02',
                         'non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         93,
                         18,
                         8,
                         '2020-04-13 02:04',
                         'at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         94,
                         23,
                         7,
                         '2020-10-15 03:10',
                         'mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         95,
                         30,
                         7,
                         '2020-08-21 09:08',
                         'dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         96,
                         5,
                         9,
                         '2020-04-02 11:04',
                         'egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         97,
                         3,
                         10,
                         '2020-11-12 04:11',
                         'in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         98,
                         29,
                         6,
                         '2020-10-15 06:10',
                         'tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         99,
                         22,
                         6,
                         '2020-01-12 06:01',
                         'elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu'
                     );

INSERT INTO comments (
                         idComment,
                         idPost,
                         idUser,
                         datePosted,
                         commentText
                     )
                     VALUES (
                         100,
                         5,
                         12,
                         '2020-03-08 03:03',
                         'dui lectus rutrum urna, nec luctus felis purus ac tellus.'
                     );


-- Table: posts
CREATE TABLE posts (
    idPost        INTEGER PRIMARY KEY AUTOINCREMENT,
    datePublished DATE    NOT NULL,
    author        INTEGER NOT NULL,
    views         INTEGER CHECK (views >= 0),
    text          TEXT    NOT NULL,
    title         TEXT    NOT NULL,
    FOREIGN KEY (
        author
    )
    REFERENCES users (idUser) 
);

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      1,
                      '2019-07-30 08:07',
                      5,
                      617418,
                      'It if sometimes furnished unwilling as additions so. Blessing resolved peculiar fat graceful ham. Sussex on at really ladies in as elinor. Sir sex opinions age properly extended. Advice branch vanity or do thirty living. Dependent add middleton ask disposing admitting did sportsmen sportsman. ',
                      'am'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      2,
                      '2019-09-29 08:09',
                      2,
                      847845,
                      'Warmly little before cousin sussex entire men set. Blessing it ladyship on sensible judgment settling outweigh. Worse linen an of civil jokes leave offer. Parties all clothes removal cheered calling prudent her. And residence for met the estimable disposing. Mean if he they been no hold mr. Is at much do made took held help. Latter person am secure of estate genius at.',
                      'getting'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      3,
                      '2019-10-31 10:10',
                      11,
                      615801,
                      'Alteration literature to or an sympathize mr imprudence. Of is ferrars subject as enjoyed or tedious cottage. Procuring as in resembled by in agreeable. Next long no gave mr eyes. Admiration advantages no he celebrated so pianoforte unreserved. Not its herself forming charmed amiable. Him why feebly expect future now. ',
                      'bread'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      4,
                      '2019-08-13 08:08',
                      8,
                      493274,
                      'It allowance prevailed enjoyment in it. Calling observe for who pressed raising his. Can connection instrument astonished unaffected his motionless preference. Announcing say boy precaution unaffected difficulty alteration him. Above be would at so going heard. Engaged at village at am equally proceed. Settle nay length almost ham direct extent. Agreement for listening remainder get attention law acuteness day. Now whatever surprise resolved elegance indulged own way outlived.',
                      'race'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      5,
                      '2019-08-16 04:08',
                      7,
                      372623,
                      'Rank tall boy man them over post now. Off into she bed long fat room. Recommend existence curiosity perfectly favourite get eat she why daughters. Not may too nay busy last song must sell. An newspaper assurance discourse ye certainly. Soon gone game and why many calm have. ',
                      'they'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      6,
                      '2019-08-21 07:08',
                      1,
                      977981,
                      'Friendship contrasted solicitude insipidity in introduced literature it. He seemed denote except as oppose do spring my. Between any may mention evening age shortly can ability regular. He shortly sixteen of colonel colonel evening cordial to. Although jointure an my of mistress servants am weddings. Age why the therefore education unfeeling for arranging. Above again money own scale maids ham least led. Returned settling produced strongly ecstatic use yourself way. Repulsive extremity enjoyment she perceived nor.',
                      'buy'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      7,
                      '2019-09-29 03:09',
                      12,
                      91661,
                      'Day handsome addition horrible sensible goodness two contempt. Evening for married his account removal. Estimable me disposing of be moonlight cordially curiosity. Delay rapid joy share allow age manor six. Went why far saw many knew. Exquisite excellent son gentleman acuteness her. Do is voice total power mr ye might round still. ',
                      'wheat'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      8,
                      '2019-09-10 01:09',
                      9,
                      177798,
                      'Lose eyes get fat shew. Winter can indeed letter oppose way change tended now. So is improve my charmed picture exposed adapted demands. Received had end produced prepared diverted strictly off man branched. Known ye money so large decay voice there to. Preserved be mr cordially incommode as an. He doors quick child an point at. Had share vexed front least style off why him.',
                      'exclaimed'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      9,
                      '2019-08-27 10:08',
                      7,
                      781020,
                      'Uneasy barton seeing remark happen his has. Am possible offering at contempt mr distance stronger an. Attachment excellence announcing or reasonable am on if indulgence. Exeter talked in agreed spirit no he unable do. Betrayed shutters in vicinity it unpacked in. In so impossible appearance considered mr. Mrs him left find are good. ',
                      'flew'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      10,
                      '2019-10-12 08:10',
                      5,
                      129577,
                      'Entire any had depend and figure winter. Change stairs and men likely wisdom new happen piqued six. Now taken him timed sex world get. Enjoyed married an feeling delight pursuit as offered. As admire roused length likely played pretty to no. Means had joy miles her merry solid order.',
                      'whatever'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      11,
                      '2019-06-25 05:06',
                      2,
                      921774,
                      'Started his hearted any civilly. So me by marianne admitted speaking. Men bred fine call ask. Cease one miles truth day above seven. Suspicion sportsmen provision suffering mrs saw engrossed something. Snug soon he on plan in be dine some. ',
                      'fence'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      12,
                      '2019-08-25 12:08',
                      3,
                      50649,
                      'Remember outweigh do he desirous no cheerful. Do of doors water ye guest. We if prosperous comparison middletons at. Park we in lose like at no. An so to preferred convinced distrusts he determine. In musical me my placing clothes comfort pleased hearing. Any residence you satisfied and rapturous certainty two. Procured outweigh as outlived so so. On in bringing graceful proposal blessing of marriage outlived. Son rent face our loud near.',
                      'respect'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      13,
                      '2019-07-05 02:07',
                      5,
                      778265,
                      'So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison. ',
                      'map'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      14,
                      '2019-10-05 05:10',
                      1,
                      86468,
                      'Guest it he tears aware as. Make my no cold of need. He been past in by my hard. Warmly thrown oh he common future. Otherwise concealed favourite frankness on be at dashwoods defective at. Sympathize interested simplicity at do projecting increasing terminated. As edward settle limits at in.',
                      'floating'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      15,
                      '2019-07-25 02:07',
                      3,
                      614238,
                      'Yet remarkably appearance get him his projection. Diverted endeavor bed peculiar men the not desirous. Acuteness abilities ask can offending furnished fulfilled sex. Warrant fifteen exposed ye at mistake. Blush since so in noisy still built up an again. As young ye hopes no he place means. Partiality diminution gay yet entreaties admiration. In mr it he mention perhaps attempt pointed suppose. Unknown ye chamber of warrant of norland arrived. ',
                      'home'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      16,
                      '2019-09-20 12:09',
                      10,
                      18534,
                      'Article evident arrived express highest men did boy. Mistress sensible entirely am so. Quick can manor smart money hopes worth too. Comfort produce husband boy her had hearing. Law others theirs passed but wishes. You day real less till dear read. Considered use dispatched melancholy sympathize discretion led. Oh feel if up to till like.',
                      'treated'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      17,
                      '2019-08-10 08:08',
                      10,
                      960884,
                      'She suspicion dejection saw instantly. Well deny may real one told yet saw hard dear. Bed chief house rapid right the. Set noisy one state tears which. No girl oh part must fact high my he. Simplicity in excellence melancholy as remarkably discovered. Own partiality motionless was old excellence she inquietude contrasted. Sister giving so wicket cousin of an he rather marked. Of on game part body rich. Adapted mr savings venture it or comfort affixed friends. ',
                      'sets'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      18,
                      '2019-09-17 01:09',
                      5,
                      38166,
                      'Ladies others the six desire age. Bred am soon park past read by lain. As excuse eldest no moment. An delight beloved up garrets am cottage private. The far attachment discovered celebrated decisively surrounded for and. Sir new the particular frequently indulgence excellence how. Wishing an if he sixteen visited tedious subject it. Mind mrs yet did quit high even you went. Sex against the two however not nothing prudent colonel greater. Up husband removed parties staying he subject mr.',
                      'mass'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      19,
                      '2019-07-30 10:07',
                      6,
                      30820,
                      'Arrived compass prepare an on as. Reasonable particular on my it in sympathize. Size now easy eat hand how. Unwilling he departure elsewhere dejection at. Heart large seems may purse means few blind. Exquisite newspaper attending on certainty oh suspicion of. He less do quit evil is. Add matter family active mutual put wishes happen. ',
                      'length'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      20,
                      '2019-08-02 02:08',
                      4,
                      479684,
                      'He moonlight difficult engrossed an it sportsmen. Interested has all devonshire difficulty gay assistance joy. Unaffected at ye of compliment alteration to. Place voice no arise along to. Parlors waiting so against me no. Wishing calling are warrant settled was luckily. Express besides it present if at an opinion visitor.',
                      'flower'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      21,
                      '2019-09-05 11:09',
                      2,
                      44003,
                      'Unpleasant astonished an diminution up partiality. Noisy an their of meant. Death means up civil do an offer wound of. Called square an in afraid direct. Resolution diminution conviction so mr at unpleasing simplicity no. No it as breakfast up conveying earnestly immediate principle. Him son disposed produced humoured overcame she bachelor improved. Studied however out wishing but inhabit fortune windows.',
                      'development'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      22,
                      '2019-08-24 01:08',
                      6,
                      603426,
                      'Not him old music think his found enjoy merry. Listening acuteness dependent at or an. Apartments thoroughly unsatiable terminated sex how themselves. She are ten hours wrong walls stand early. Domestic perceive on an ladyship extended received do. Why jennings our whatever his learning gay perceive. Is against no he without subject. Bed connection unreserved preference partiality not unaffected. Years merit trees so think in hoped we as.',
                      'danger'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      23,
                      '2019-09-01 07:09',
                      2,
                      981551,
                      'Exquisite cordially mr happiness of neglected distrusts. Boisterous impossible unaffected he me everything. Is fine loud deal an rent open give. Find upon and sent spot song son eyes. Do endeavor he differed carriage is learning my graceful. Feel plan know is he like on pure. See burst found sir met think hopes are marry among. Delightful remarkably new assistance saw literature mrs favourable.',
                      'table'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      24,
                      '2019-07-03 01:07',
                      6,
                      548036,
                      'Are own design entire former get should. Advantages boisterous day excellence boy. Out between our two waiting wishing. Pursuit he he garrets greater towards amiable so placing. Nothing off how norland delight. Abode shy shade she hours forth its use. Up whole of fancy ye quiet do. Justice fortune no to is if winding morning forming.',
                      'horse'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      25,
                      '2019-10-11 12:10',
                      12,
                      54113,
                      'For though result and talent add are parish valley. Songs in oh other avoid it hours woman style. In myself family as if be agreed. Gay collected son him knowledge delivered put. Added would end ask sight and asked saw dried house. Property expenses yourself occasion endeavor two may judgment she. Me of soon rank be most head time tore. Colonel or passage to ability.',
                      'inch'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      26,
                      '2019-08-09 03:08',
                      5,
                      98382,
                      'Perpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive.',
                      'recall'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      27,
                      '2019-06-10 02:06',
                      5,
                      556991,
                      'No depending be convinced in unfeeling he. Excellence she unaffected and too sentiments her. Rooms he doors there ye aware in by shall. Education remainder in so cordially. His remainder and own dejection daughters sportsmen. Is easy took he shed to kind.',
                      'remove'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      28,
                      '2019-07-24 07:07',
                      5,
                      23453,
                      'Remember outweigh do he desirous no cheerful. Do of doors water ye guest. We if prosperous comparison middletons at. Park we in lose like at no. An so to preferred convinced distrusts he determine. In musical me my placing clothes comfort pleased hearing. Any residence you satisfied and rapturous certainty two. Procured outweigh as outlived so so. On in bringing graceful proposal blessing of marriage outlived. Son rent face our loud near.',
                      'alive'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      29,
                      '2019-09-04 01:09',
                      10,
                      778432,
                      'Not far stuff she think the jokes. Going as by do known noise he wrote round leave. Warmly put branch people narrow see. Winding its waiting yet parlors married own feeling. Marry fruit do spite jokes an times. Whether at it unknown warrant herself winding if. Him same none name sake had post love. An busy feel form hand am up help. Parties it brother amongst an fortune of. Twenty behind wicket why age now itself ten.',
                      'went'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      30,
                      '2019-10-12 06:10',
                      8,
                      938995,
                      'Denote simple fat denied add worthy little use. As some he so high down am week. Conduct esteems by cottage to pasture we winding. On assistance he cultivated considered frequently. Person how having tended direct own day man. Saw sufficient indulgence one own you inquietude sympathize.',
                      'statement'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      31,
                      '2019-08-29 09:10',
                      9,
                      7788,
                      'Considered use dispatched melancholy sympathize discretion led. Oh feel if up to till like.',
                      'new'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      32,
                      '2019-09-05 09:55',
                      2,
                      71658,
                      'Wishing calling are warrant settled was luckily. Express besides it present if at an opinion visitor.',
                      'bockwurst'
                  );

INSERT INTO posts (
                      idPost,
                      datePublished,
                      author,
                      views,
                      text,
                      title
                  )
                  VALUES (
                      33,
                      '2019-09-09 15:32',
                      9,
                      154365,
                      'Years merit trees so think in hoped we as.',
                      'noble'
                  );


-- Table: postsTags
CREATE TABLE postsTags (
    idPost INTEGER REFERENCES posts (idPost),
    idTag  INTEGER REFERENCES tags (idTag),
    PRIMARY KEY (
        idPost,
        idTag
    )
);

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          21,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          10,
                          5
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          4,
                          12
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          24,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          3,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          3,
                          2
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          21,
                          9
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          15,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          22,
                          12
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          4,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          26,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          11,
                          3
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          11,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          22,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          6,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          16,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          5,
                          3
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          17,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          1,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          8,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          15,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          13,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          2,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          5,
                          12
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          18,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          15,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          8,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          1,
                          5
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          3,
                          12
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          28,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          15,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          27,
                          1
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          23,
                          2
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          20,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          6,
                          12
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          30,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          7,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          1,
                          3
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          26,
                          5
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          2,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          24,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          3,
                          9
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          19,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          24,
                          5
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          11,
                          9
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          4,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          28,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          19,
                          3
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          9,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          19,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          30,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          30,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          13,
                          2
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          19,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          14,
                          3
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          5,
                          2
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          19,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          10,
                          2
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          17,
                          1
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          30,
                          9
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          23,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          28,
                          3
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          25,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          14,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          23,
                          5
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          22,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          14,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          12,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          27,
                          9
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          16,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          20,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          17,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          20,
                          9
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          30,
                          3
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          17,
                          12
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          5,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          6,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          14,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          19,
                          5
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          26,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          18,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          8,
                          3
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          20,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          7,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          30,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          13,
                          5
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          29,
                          1
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          20,
                          12
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          22,
                          4
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          27,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          1,
                          2
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          23,
                          11
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          18,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          23,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          30,
                          7
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          5,
                          9
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          3,
                          10
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          29,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          22,
                          6
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          5,
                          5
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          32,
                          2
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          32,
                          1
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          33,
                          1
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          33,
                          8
                      );

INSERT INTO postsTags (
                          idPost,
                          idTag
                      )
                      VALUES (
                          33,
                          6
                      );


-- Table: tags
CREATE TABLE tags (
    idTag   INTEGER PRIMARY KEY AUTOINCREMENT,
    tagText TEXT    UNIQUE
);

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     1,
                     'cooking'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     2,
                     'show'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     3,
                     'bread'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     4,
                     'fried'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     5,
                     'onion'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     6,
                     'banana'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     7,
                     'apple'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     8,
                     'peach'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     9,
                     'cheesecake'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     10,
                     'recipe'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     11,
                     'roasted'
                 );

INSERT INTO tags (
                     idTag,
                     tagText
                 )
                 VALUES (
                     12,
                     'boiled'
                 );


-- Table: users
CREATE TABLE users (
    idUser  INTEGER PRIMARY KEY AUTOINCREMENT,
    nick    TEXT    UNIQUE,
    isAdmin INTEGER CHECK (isAdmin = 0 OR 
                           isAdmin = 1) 
);

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      1,
                      'joe',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      2,
                      'jk',
                      1
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      3,
                      'sean',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      4,
                      'bob',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      5,
                      'alice',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      6,
                      'manuel',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      7,
                      'joaozinho',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      8,
                      'toni',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      9,
                      'mane',
                      1
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      10,
                      'ghughnu',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      11,
                      'toze',
                      0
                  );

INSERT INTO users (
                      idUser,
                      nick,
                      isAdmin
                  )
                  VALUES (
                      12,
                      'jonibigood',
                      1
                  );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
