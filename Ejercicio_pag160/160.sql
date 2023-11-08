DROP SCHEMA IF EXISTS music;
CREATE SCHEMA IF NOT EXISTS music;
USE music;

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

BEGIN;
DELETE FROM Artist;
SELECT * FROM Artist;
ROLLBACK;
SELECT * FROM Artist;

BEGIN;
DELETE FROM Artist;
SELECT * FROM Artist;
COMMIT;
SELECT * FROM Artist;