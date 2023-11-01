DROP SCHEMA IF EXISTS music;
CREATE SCHEMA IF NOT EXISTS music;
USE music;

CREATE TABLE IF NOT EXISTS Genre (
	idGenre INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    genre VARCHAR(255) NOT NULL
);

INSERT IGNORE INTO Genre (idGenre, genre) VALUES
(NULL, 'rock'),
(NULL, 'metal'),
(NULL, 'pop'),
(NULL, 'rap'),
(NULL, 'jazz'),
(NULL, 'electrónica'),
(NULL, 'blues'),
(NULL, 'country'),
(NULL, 'soul'),
(NULL, 'góspel');
ALTER TABLE Genre AUTO_INCREMENT = 1;

SELECT * FROM Genre;

CREATE TABLE IF NOT EXISTS Album (
	idAlbum INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    albumName VARCHAR(255) NOT NULL,
    dateReleased DATETIME NOT NULL
);

INSERT IGNORE INTO Album (idAlbum, albumName, dateReleased) VALUES
(NULL, 'El circo de la marcha', '2005-04-23'), -- No me juzguéis por los nombres; no se me ocurría nada serio
(NULL, '7 sombras del paraíso', '2005-12-05'),
(NULL, 'elxokas', '2030-01-03'),
(NULL, 'Corazón roto', '2005-08-16'),
(NULL, 'The Bridge', '2005-11-01'),
(NULL, 'To the Moon', '2005-07-28'),
(NULL, 'Futuro', '2005-07-17'),
(NULL, 'Racky Racky Rumba', '2005-12-25'),
(NULL, 'Vuelta al pasado', '2005-02-11'),
(NULL, 'Tears of the Roads', '2005-06-01');
ALTER TABLE Album AUTO_INCREMENT = 1;

SELECT * FROM Album;

CREATE TABLE IF NOT EXISTS Artist (
	artistId INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    artistName VARCHAR(255) NOT NULL
);

INSERT IGNORE INTO Artist (artistId, artistName) VALUES
(NULL, 'Zoey Nebula'),
(NULL, 'Luna Felix'),
(NULL, 'elxokas'),
(NULL, 'Leo Stardust'),
(NULL, 'Axel Eclipse'),
(NULL, 'Venus Electroswing'),
(NULL, 'Max Power'),
(NULL, 'Mikel Yaqson'),
(NULL, 'Nova Sonic'),
(NULL, 'Stella Vortex');
ALTER TABLE Artist AUTO_INCREMENT = 1;

SELECT * FROM Artist;