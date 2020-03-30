PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

DROP TABLE IF EXISTS ClientAccount;
CREATE TABLE ClientAccount (
    clientID            INTEGER PRIMARY KEY,
    dateOfBirth         DATE NOT NULL,
    name                TEXT NOT NULL,
    email               TEXT NOT NULL,
    password            TEXT NOT NULL,
    countryInitials     TEXT NOT NULL REFERENCES Country(countryInitials),
    account             TEXT NOT NULL REFERENCES AccountType(type)
);

DROP TABLE IF EXISTS Country;
CREATE TABLE Country (
    countryInitials     TEXT NOT NULL PRIMARY KEY,
    countryName         TEXT NOT NULL
);

DROP TABLE IF EXISTS AccountType;
CREATE TABLE AccountType (
    type                TEXT PRIMARY KEY,
    screenNumber        INTEGER,
    price               REAL
);

DROP TABLE IF EXISTS Payment;
CREATE TABLE Payment (
    method              TEXT PRIMARY KEY
);

DROP TABLE IF EXISTS PaymentClientAccount;
CREATE TABLE PaymentClientAccount (
    method              TEXT REFERENCES Payment(method),
    clientID            INTEGER REFERENCES Client(clientID),
    PRIMARY KEY (method, clientID)
);

DROP TABLE IF EXISTS [User];
CREATE TABLE [User] (
    userID              INTEGER PRIMARY KEY,
    name                TEXT,
    clientID            INTEGER REFERENCES ClientAccount(clientID)
);

DROP TABLE IF EXISTS Content;
CREATE TABLE Content (
    contentID           INTEGER PRIMARY KEY,
    type                TEXT,
    title               TEXT,
    rating              REAL,
    releaseDate         DATE,
    trailer             BLOB
);

DROP TABLE IF EXISTS [Like];
CREATE TABLE [Like] (
    userID              INTEGER REFERENCES [User](userID),
    contentID           INTEGER REFERENCES Content(contentID),
    PRIMARY KEY (userID, contentID)
);

DROP TABLE IF EXISTS Dislike;
CREATE TABLE Dislike (
    userID              INTEGER REFERENCES [User](userID),
    contentID           INTEGER REFERENCES Content(contentID),
    PRIMARY KEY (userID, contentID)
);

DROP TABLE IF EXISTS BelongsToUserList;
CREATE TABLE BelongsToUserList (
    userID              INTEGER REFERENCES [User](userID),
    contentID           INTEGER REFERENCES Content(contentID),
    PRIMARY KEY (userID, contentID)
);

DROP TABLE IF EXISTS Suggest;
CREATE TABLE Suggest (
    userID              INTEGER REFERENCES [User](userID),
    contentID           INTEGER REFERENCES Content(contentID),
    suggestionDate      DATE,
    PRIMARY KEY (userID, contentID)
);

DROP TABLE IF EXISTS Category;
CREATE TABLE Category (
    categoryName        TEXT PRIMARY KEY
);

DROP TABLE IF EXISTS CategoryContent;
CREATE TABLE CategoryContent (
    contentID           INTEGER REFERENCES Content(contentID),
    categoryName        TEXT REFERENCES Category(categoryName),
    PRIMARY KEY (contentID, categoryName)
);

DROP TABLE IF EXISTS Person;
CREATE TABLE Person (
    personID            INTEGER PRIMARY KEY,
    name                TEXT
);

DROP TABLE IF EXISTS ContentPerson;
CREATE TABLE ContentPerson (
    contentID           INTEGER REFERENCES Content(contentID),
    personID            INTEGER REFERENCES Person(personID),
    personRole          TEXT,
    PRIMARY KEY (contentID, personID)
);

DROP TABLE IF EXISTS Visualization;
CREATE TABLE Visualization (
    visualizationID     INTEGER PRIMARY KEY,
    timeOfDay           DATETIME,
    timeStampInitial    DATETIME,
    timeStampFinal      DATETIME,
    userID              INTEGER REFERENCES [User](userID),
    movieID             INTEGER REFERENCES Movie(contentID),
    episodeID           INTEGER REFERENCES Episode(contentID)
);

DROP TABLE IF EXISTS Movie;
CREATE TABLE Movie (
    contentID           INTEGER PRIMARY KEY REFERENCES Content(contentID),
    contentVideo        BLOB,
    duration            REAL
);

DROP TABLE IF EXISTS Series;
CREATE TABLE Series (
    contentID           INTEGER PRIMARY KEY REFERENCES Content(contentID)
);

DROP TABLE IF EXISTS Season;
CREATE TABLE Season (
    seasonID            INTEGER PRIMARY KEY, 
    seasonNumber        INTEGER,
    seriesID            INTEGER REFERENCES Series(contentID)
);

DROP TABLE IF EXISTS Episode;
CREATE TABLE Episode (
    episodeID           INTEGER PRIMARY KEY,
    title               TEXT,
    duration            DATETIME,
    episodeNumber       INTEGER,
    contentVideo        BLOB,
    seasonID            INTEGER REFERENCES Season(seasonID)
);

DROP TABLE IF EXISTS Subtitles;
CREATE TABLE Subtitles (
    subtitleID          INTEGER PRIMARY KEY,
    language            TEXT,
    subtitlesFile       BLOB,
    episodeID           INTEGER REFERENCES Episode(episodeID),
    movieID             INTEGER REFERENCES Movie(movieID)
);

DROP TABLE IF EXISTS Cover;
CREATE TABLE Cover (
    coverID             INTEGER PRIMARY KEY,
    coverImage          BLOB,
    contentID           INTEGER REFERENCES Content(contentID)
);

COMMIT;
