--
-- Файл сгенерирован с помощью SQLiteStudio v3.3.3 в Пн май 16 00:19:33 2022
--
-- Использованная кодировка текста: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Таблица: Bike
CREATE TABLE Bike ("id " INTEGER PRIMARY KEY, "engine " STRING, driver REFERENCES driver (id), chassis REFERENCES chassis (id));
INSERT INTO Bike ("id ", "engine ", driver, chassis) VALUES (1, 'APRILIA', 1, 1);
INSERT INTO Bike ("id ", "engine ", driver, chassis) VALUES (2, 'HONDA', 2, 3);
INSERT INTO Bike ("id ", "engine ", driver, chassis) VALUES (3, 'DUKATI', 3, 2);

-- Таблица: chassis
CREATE TABLE chassis (id INTEGER PRIMARY KEY, name STRING);
INSERT INTO chassis (id, name) VALUES (1, 'APRILIA  RS-GP');
INSERT INTO chassis (id, name) VALUES (2, 'DUKATI GP22');
INSERT INTO chassis (id, name) VALUES (3, 'HONDA RC2123');

-- Таблица: country
CREATE TABLE country (id INTEGER PRIMARY KEY, name STRING);
INSERT INTO country (id, name) VALUES (1, 'spanish');
INSERT INTO country (id, name) VALUES (2, 'italian');
INSERT INTO country (id, name) VALUES (3, 'usa');
INSERT INTO country (id, name) VALUES (4, 'korean');
INSERT INTO country (id, name) VALUES (5, 'australia');
INSERT INTO country (id, name) VALUES (6, 'japanise');
INSERT INTO country (id, name) VALUES (7, 'germany');
INSERT INTO country (id, name) VALUES (8, 'qatar');
INSERT INTO country (id, name) VALUES (9, 'portugal');
INSERT INTO country (id, name) VALUES (10, 'france');

-- Таблица: driver
CREATE TABLE driver (id INTEGER PRIMARY KEY, name STRING, age INTEGER, country REFERENCES country (id), gender REFERENCES gender (id));
INSERT INTO driver (id, name, age, country, gender) VALUES (1, 'MAVERICK VINALES', 27, 1, 1);
INSERT INTO driver (id, name, age, country, gender) VALUES (2, 'LORENZO SAVADORI', 29, 2, 1);
INSERT INTO driver (id, name, age, country, gender) VALUES (3, 'ALEIX ESPARGARO', 32, 1, 1);

-- Таблица: gender
CREATE TABLE gender (id INTEGER PRIMARY KEY, name STRING);
INSERT INTO gender (id, name) VALUES (1, 'male');
INSERT INTO gender (id, name) VALUES (2, 'female');

-- Таблица: Team
CREATE TABLE Team (id INTEGER PRIMARY KEY, bike REFERENCES Bike ("id "), name STRING, tournament REFERENCES tornnament (id));
INSERT INTO Team (id, bike, name, tournament) VALUES (1, 1, 'APRILIA TEAM', 1);

-- Таблица: tornnament
CREATE TABLE tornnament (id INTEGER PRIMARY KEY, event_name STRING, date DATE, place STRING);
INSERT INTO tornnament (id, event_name, date, place) VALUES (1, 'INDONESIA GP', '20/03/22', 2);
INSERT INTO tornnament (id, event_name, date, place) VALUES (2, 'QATAR GP', '06/03/22', 3);
INSERT INTO tornnament (id, event_name, date, place) VALUES (3, 'ARGENTINA GP', '03/04/22', 3);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
