CREATE TABLE pokemon (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    primary_type VARCHAR(20),
    secondary_type VARCHAR(20)
);

CREATE TABLE stats (
    pokemon_id INT REFERENCES pokemon(id),
    hp INT,
    attack INT,
    defense INT,
    speed INT
);

INSERT INTO pokemon (id, name, primary_type, secondary_type) VALUES 
(1, 'Bulbasaur', 'Grass', 'Poison'), (2, 'Ivysaur', 'Grass', 'Poison'), (3, 'Venusaur', 'Grass', 'Poison'),
(4, 'Charmander', 'Fire', NULL), (5, 'Charmeleon', 'Fire', NULL), (6, 'Charizard', 'Fire', 'Flying'),
(7, 'Squirtle', 'Water', NULL), (25, 'Pikachu', 'Electric', NULL), (133, 'Eevee', 'Normal', NULL),
(143, 'Snorlax', 'Normal', NULL);

INSERT INTO stats (pokemon_id, hp, attack, defense, speed) VALUES 
(1, 45, 49, 49, 45), (2, 60, 62, 63, 60), (3, 80, 82, 83, 80),
(4, 39, 52, 43, 65), (5, 58, 64, 58, 80), (6, 78, 84, 78, 100),
(7, 44, 48, 65, 43), (25, 35, 55, 40, 90), (133, 55, 55, 50, 55),
(143, 160, 110, 65, 30);


