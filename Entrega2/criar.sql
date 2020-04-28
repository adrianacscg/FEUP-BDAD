PRAGMA foreign_keys = ON;

BEGIN TRANSACTION;

-- ClientAccount table
DROP TABLE IF EXISTS ClientAccount;
CREATE TABLE ClientAccount (
    clientID            INTEGER PRIMARY KEY,
    dateOfBirth         DATE NOT NULL,
    name                TEXT NOT NULL,
    email               TEXT NOT NULL UNIQUE CHECK(email LIKE '%@%.%'),
    password            TEXT NOT NULL,
    countryInitials     TEXT NOT NULL REFERENCES Country(countryInitials) ON DELETE SET NULL ON UPDATE CASCADE,
    account             TEXT NOT NULL REFERENCES AccountType(type) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Country table
DROP TABLE IF EXISTS Country;
CREATE TABLE Country (
    countryInitials     TEXT PRIMARY KEY CHECK (length(countryInitials) = 2),
    countryName         TEXT NOT NULL UNIQUE
);

-- AccountType table
DROP TABLE IF EXISTS AccountType;
CREATE TABLE AccountType (
    type                TEXT PRIMARY KEY CHECK(type = 'Basic' OR type = 'Standard' OR type = 'Premium'),
    screenNumber        INTEGER NOT NULL CHECK(screenNumber < 5 AND screenNumber > 0),
    price               REAL NOT NULL CHECK(price > 0)
);

-- Payment table
DROP TABLE IF EXISTS Payment;
CREATE TABLE Payment (
    method              TEXT PRIMARY KEY
);

-- PaymentClientAccount table
DROP TABLE IF EXISTS PaymentClientAccount;
CREATE TABLE PaymentClientAccount (
    method              TEXT REFERENCES Payment(method) ON DELETE CASCADE ON UPDATE CASCADE,
    clientID            INTEGER REFERENCES ClientAccount(clientID) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (method, clientID)
);

-- User table
DROP TABLE IF EXISTS User;
CREATE TABLE User (
    userID              INTEGER PRIMARY KEY,
    name                TEXT NOT NULL,
    clientID            INTEGER NOT NULL REFERENCES ClientAccount(clientID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Content table
DROP TABLE IF EXISTS Content;
CREATE TABLE Content (
    contentID           INTEGER PRIMARY KEY,
    type                TEXT NOT NULL,
    title               TEXT NOT NULL,
    rating              REAL,
    releaseDate         DATE NOT NULL,
    trailer             TEXT
);

-- Like table
DROP TABLE IF EXISTS Like;
CREATE TABLE Like (
    userID              INTEGER REFERENCES User(userID) ON DELETE CASCADE ON UPDATE CASCADE,
    contentID           INTEGER REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (userID, contentID)
);

-- Dislike table
DROP TABLE IF EXISTS Dislike;
CREATE TABLE Dislike (
    userID              INTEGER REFERENCES User(userID) ON DELETE CASCADE ON UPDATE CASCADE,
    contentID           INTEGER REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (userID, contentID)
);

-- BelongsToUserList table
DROP TABLE IF EXISTS BelongsToUserList;
CREATE TABLE BelongsToUserList (
    userID              INTEGER REFERENCES User(userID) ON DELETE CASCADE ON UPDATE CASCADE,
    contentID           INTEGER REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (userID, contentID)
);

-- Suggest table
DROP TABLE IF EXISTS Suggest;
CREATE TABLE Suggest (
    userID              INTEGER REFERENCES User(userID) ON DELETE CASCADE ON UPDATE CASCADE,
    contentID           INTEGER REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE,
    suggestionDate      DATE NOT NULL,
    PRIMARY KEY (userID, contentID)
);

-- Category table
DROP TABLE IF EXISTS Category;
CREATE TABLE Category (
    categoryName        TEXT PRIMARY KEY
);

-- CategoryContent table
DROP TABLE IF EXISTS CategoryContent;
CREATE TABLE CategoryContent (
    contentID           INTEGER REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE,
    categoryName        TEXT REFERENCES Category(categoryName) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (contentID, categoryName)
);

-- Person table
DROP TABLE IF EXISTS Person;
CREATE TABLE Person (
    personID            INTEGER PRIMARY KEY,
    name                TEXT NOT NULL
);

-- ContentPerson table
DROP TABLE IF EXISTS ContentPerson;
CREATE TABLE ContentPerson (
    contentID           INTEGER REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE,
    personID            INTEGER REFERENCES Person(personID) ON DELETE CASCADE ON UPDATE CASCADE,
    personRole          TEXT NOT NULL,
    PRIMARY KEY (contentID, personID)
);

-- Visualization table
DROP TABLE IF EXISTS Visualization;
CREATE TABLE Visualization (
    visualizationID     INTEGER PRIMARY KEY,
    timeOfDay           DATETIME NOT NULL,
    timeStampInitial    DATETIME NOT NULL,
    timeStampFinal      DATETIME NOT NULL ,
    userID              INTEGER NOT NULL REFERENCES User(userID) ON DELETE SET NULL ON UPDATE CASCADE,
    movieID             INTEGER REFERENCES Movie(contentID) ON DELETE CASCADE ON UPDATE CASCADE,
    episodeID           INTEGER REFERENCES Episode(episodeID) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK(datetime(timeStampFinal) > datetime(timeStampInitial))
);

-- Movie table
DROP TABLE IF EXISTS Movie;
CREATE TABLE Movie (
    contentID           INTEGER PRIMARY KEY REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE,
    contentVideo        TEXT NOT NULL,
    duration            REAL NOT NULL CHECK(datetime(duration) > datetime('00:00'))
);

-- Series table
DROP TABLE IF EXISTS Series;
CREATE TABLE Series (
    contentID           INTEGER PRIMARY KEY REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Season table
DROP TABLE IF EXISTS Season;
CREATE TABLE Season (
    seasonID            INTEGER PRIMARY KEY, 
    seasonNumber        INTEGER NOT NULL CHECK(seasonNumber > 0),
    seriesID            INTEGER NOT NULL REFERENCES Series(contentID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Episode table
DROP TABLE IF EXISTS Episode;
CREATE TABLE Episode (
    episodeID           INTEGER PRIMARY KEY,
    title               TEXT NOT NULL,
    duration            DATETIME NOT NULL CHECK(datetime(duration) > datetime('00:00')),
    episodeNumber       INTEGER NOT NULL CHECK(episodeNumber > 0),
    contentVideo        TEXT NOT NULL,
    seasonID            INTEGER NOT NULL REFERENCES Season(seasonID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Subtitles table
DROP TABLE IF EXISTS Subtitles;
CREATE TABLE Subtitles (
    subtitleID          INTEGER PRIMARY KEY,
    language            TEXT NOT NULL,
    subtitlesFile       TEXT NOT NULL,
    episodeID           INTEGER REFERENCES Episode(episodeID) ON DELETE CASCADE ON UPDATE CASCADE,
    movieID             INTEGER REFERENCES Movie(contentID) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Cover table
DROP TABLE IF EXISTS Cover;
CREATE TABLE Cover (
    coverID             INTEGER PRIMARY KEY,
    coverImage          TEXT NOT NULL,
    contentID           INTEGER NOT NULL REFERENCES Content(contentID) ON DELETE CASCADE ON UPDATE CASCADE 
);

COMMIT;
