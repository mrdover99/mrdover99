--- Create Tables ---

CREATE TABLE players(
	coaches_id TEXT,
	starters_id TEXT,
	substitutes_id TEXT
);

CREATE TABLE coaches(
	id TEXT NOT NULL UNIQUE,
	name TEXT NOT NULL,
	age INTEGER,
	PRIMARY KEY (id)
);

CREATE TABLE substitutes(
	id TEXT NOT NULL UNIQUE,
	name TEXT NOT NULL,
	age INTEGER,
	PRIMARY KEY (id)
);

CREATE TABLE starters(
	id TEXT NOT NULL UNIQUE,
	name TEXT NOT NULL,
	age INTEGER,
	PRIMARY KEY (id)
);

CREATE TABLE teams(
    SA TEXT NOT NULL,
    EU TEXT NOT NULL,
    OC TEXT NOT NULL,
    NA TEXT NOT NULL
);

CREATE TABLE european(
    name TEXT NOT NULL UNIQUE PRIMARY KEY,
    abbr TEXT
);

CREATE TABLE south_america(
    name TEXT NOT NULL UNIQUE PRIMARY KEY,
    abbr TEXT
);

CREATE TABLE north_america(
    name TEXT NOT NULL UNIQUE PRIMARY KEY,
    abbr TEXT
);

CREATE TABLE oceanic(
    name TEXT NOT NULL UNIQUE PRIMARY KEY,
    abbr TEXT
);

CREATE TABLE games(
    Time INTEGER NOT NULL,
    Date INTEGER NOT NULL,
    Location TEXT NOT NULL
);

CREATE TABLE rounds(
    round_1 TEXT NOT NULL,
    round_2 TEXT NOT NULL,
    round_3 TEXT
);

--- Alter Tables ---

ALTER TABLE players
ADD CONSTRAINT fk_players_coaches
FOREIGN KEY (coaches_id)
REFERENCES coaches;

ALTER TABLE players 
ADD CONSTRAINT fk_players_substitutes
FOREIGN KEY (substitutes_id)
REFERENCES substitutes;

ALTER TABLE players
ADD CONSTRAINT fk_players_starters
FOREIGN KEY (starters_id)
REFERENCES starters;


--- Insert Into ---

INSERT INTO starters(id, name, age) VALUES ('Breezy', 'George', 20);
INSERT INTO starters(id, name, age) VALUES ('eekso', 'Dylan', 22);
INSERT INTO starters(id, name, age) VALUES ('gReazymeister', 'Marius', 18);
INSERT INTO european(name, abbr) VALUES ('We Dem Girlz', 'WDG');


INSERT INTO starters(id, name, age) VALUES ('Fireburner', 'Jayson', 22);
INSERT INTO starters(id, name, age) VALUES ('Jacob', 'Jacob', 21);
INSERT INTO starters(id, name, age) VALUES ('Sadjunior', 'Kais', 20);
INSERT INTO north_america(name, abbr) VALUES ('Kings of Urban', 'KoU');

INSERT INTO starters(id, name, age) VALUES ('Express', 'Jonathan', 19);
INSERT INTO starters(id, name, age) VALUES ('Amphis', 'Luke', 23);
INSERT INTO starters(id, name, age) VALUES ('Torsos', 'Daniel', 20);
INSERT INTO oceanic(name, abbr) VALUES ('Ground Zero Gaming', 'GZG');

INSERT INTO starters(id, name, age) VALUES ('caard', 'Gabriel', 18);
INSERT INTO starters(id, name, age) VALUES ('tander', 'Enzo', 23);
INSERT INTO starters(id, name, age) VALUES ('CaioTG1', 'Caio', 22);
INSERT INTO south_america(name, abbr) VALUES ('Ellevens Esports', 'EE');
INSERT INTO coaches(id, name, age) VALUES ('Nick', 'Nicholas', 24);