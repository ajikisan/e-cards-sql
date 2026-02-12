-- Inserts para `tbl_collections`
-- sql

INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);


---

-- Inserts para `tbl_types`
-- sql
INSERT INTO tbl_types (typeName)
VALUES
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting');


--  Inserts para `tbl_stages`
-- sql
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');


--  Inserts para `tbl_cards`
--sql
-- Exemplo de cartas do Base Set
INSERT INTO tbl_cards (
    hp, name, information, attack, damage, weak, resistence, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
(120, 'Charizard', 'Flame Pokémon', 'Fire Spin', '100', 'Water', 'None', '3',
 4, 1, 1, 3), -- Base Set, Fire, Stage 2

(60, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', 'Water', '1',
 44, 1, 3, 1), -- Base Set, Grass, Basic

(50, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1',
 58, 1, 4, 1), -- Base Set, Electric, Basic

(80, 'Hitmonchan', 'Punching Pokémon', 'Special Punch', '40', 'Psychic', 'None', '2',
 7, 1, 6, 1); -- Base Set, Fighting, Basic

GO

-- sql
INSERT INTO tbl_cards (
    hp, name, information, attack, damage, weak, resistence, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES

-- Base Set
(120, 'Charizard', 'Flame Pokémon', 'Fire Spin', '100', 'Water', 'None', '3', 4, 1, 1, 3),
(60, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', 'Water', '1', 44, 1, 3, 1),
(50, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'Steel', '1', 58, 1, 4, 1),
(80, 'Hitmonchan', 'Punching Pokémon', 'Special Punch', '40', 'Psychic', 'None', '2', 7, 1, 6, 1),
(100, 'Blastoise', 'Shellfish Pokémon', 'Hydro Pump', '60', 'Electric', 'None', '3', 2, 1, 2, 3),

-- Jungle
(70, 'Scyther', 'Mantis Pokémon', 'Slash', '30', 'Fire', 'Fighting', '1', 10, 2, 3, 1),
(90, 'Snorlax', 'Sleeping Pokémon', 'Body Slam', '30', 'Fighting', 'None', '4', 11, 2, 6, 1),
(60, 'Jigglypuff', 'Balloon Pokémon', 'Lullaby', '0', 'Psychic', 'None', '1', 54, 2, 5, 1),
(80, 'Wigglytuff', 'Balloon Pokémon', 'Do the Wave', '10+', 'Psychic', 'None', '2', 32, 2, 5, 2),
(100, 'Kangaskhan', 'Parent Pokémon', 'Comet Punch', '20x', 'Fighting', 'None', '3', 5, 2, 6, 1),

-- Fossil
(60, 'Aerodactyl', 'Fossil Pokémon', 'Wing Attack', '30', 'Electric', 'Fighting', '2', 1, 3, 3, 2),
(70, 'Kabutops', 'Shellfish Pokémon', 'Slash', '30', 'Grass', 'None', '2', 9, 3, 3, 3),
(80, 'Lapras', 'Transport Pokémon', 'Water Gun', '10+', 'Electric', 'None', '2', 10, 3, 2, 1),
(90, 'Muk', 'Sludge Pokémon', 'Sludge', '30', 'Psychic', 'None', '3', 13, 3, 5, 2),
(60, 'Ditto', 'Transform Pokémon', 'Transform', '0', 'Fighting', 'None', '1', 18, 3, 5, 1),

-- Extras para completar 20
(70, 'Gengar', 'Shadow Pokémon', 'Nightmare', '30', 'Psychic', 'None', '2', 27, 1, 5, 3),
(100, 'Machamp', 'Superpower Pokémon', 'Seismic Toss', '60', 'Psychic', 'None', '3', 8, 1, 6, 3),
(60, 'Eevee', 'Evolution Pokémon', 'Quick Attack', '10+', 'Fighting', 'None', '1', 55, 2, 3, 1),
(80, 'Vaporeon', 'Bubble Jet Pokémon', 'Water Gun', '30+', 'Electric', 'None', '2', 12, 2, 2, 2),
(90, 'Jolteon', 'Lightning Pokémon', 'Pin Missile', '20x', 'Fighting', 'None', '2', 13, 2, 4, 2);

GO

-- 📌 Inserts adicionais para `tbl_cards` (30 registros)

-- sql
INSERT INTO tbl_cards (
    hp, name, information, attack, damage, weak, resistence, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
-- Base Set extras
(60, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '10', 'Electric', 'None', '1', 63, 1, 2, 1),
(80, 'Ivysaur', 'Seed Pokémon', 'Razor Leaf', '30', 'Fire', 'Water', '2', 30, 1, 3, 2),
(90, 'Venusaur', 'Seed Pokémon', 'Solarbeam', '60', 'Fire', 'Water', '3', 15, 1, 3, 3),
(70, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', 'None', '1', 46, 1, 1, 1),
(80, 'Charmeleon', 'Flame Pokémon', 'Flamethrower', '50', 'Water', 'None', '2', 24, 1, 1, 2),
(100, 'Raichu', 'Mouse Pokémon', 'Thunder', '60', 'Fighting', 'Steel', '2', 14, 1, 4, 2),
(60, 'Gastly', 'Gas Pokémon', 'Lick', '10', 'Psychic', 'None', '1', 33, 1, 5, 1),
(80, 'Haunter', 'Gas Pokémon', 'Nightmare', '30', 'Psychic', 'None', '1', 22, 1, 5, 2),
(120, 'Alakazam', 'Psi Pokémon', 'Confuse Ray', '30', 'Psychic', 'None', '3', 1, 1, 5, 3),
(90, 'Gyarados', 'Atrocious Pokémon', 'Dragon Rage', '50', 'Electric', 'None', '3', 6, 1, 2, 2),

-- Jungle extras
(70, 'Nidoqueen', 'Drill Pokémon', 'Boyfriends', '20+', 'Psychic', 'None', '3', 7, 2, 6, 2),
(80, 'Nidoking', 'Drill Pokémon', 'Thrash', '30+', 'Psychic', 'None', '3', 11, 2, 6, 3),
(60, 'Oddish', 'Weed Pokémon', 'Stun Spore', '10', 'Fire', 'Water', '1', 58, 2, 3, 1),
(70, 'Gloom', 'Weed Pokémon', 'Poisonpowder', '20', 'Fire', 'Water', '2', 32, 2, 3, 2),
(90, 'Vileplume', 'Flower Pokémon', 'Petal Dance', '40x', 'Fire', 'Water', '2', 13, 2, 3, 3),
(100, 'Electrode', 'Ball Pokémon', 'Explosion', '80', 'Fighting', 'None', '2', 21, 2, 4, 2),
(60, 'Meowth', 'Scratch Cat Pokémon', 'Pay Day', '10', 'Fighting', 'None', '1', 56, 2, 6, 1),
(80, 'Persian', 'Classy Cat Pokémon', 'Scratch', '20', 'Fighting', 'None', '1', 42, 2, 6, 2),
(70, 'Pinsir', 'Stag Beetle Pokémon', 'Guillotine', '50', 'Fire', 'Fighting', '2', 9, 2, 3, 1),
(90, 'Clefable', 'Fairy Pokémon', 'Metronome', '—', 'Psychic', 'None', '2', 1, 2, 5, 2),

-- Fossil extras
(60, 'Omanyte', 'Spiral Pokémon', 'Water Gun', '10+', 'Grass', 'None', '1', 52, 3, 2, 1),
(80, 'Omastar', 'Spiral Pokémon', 'Spike Cannon', '30x', 'Grass', 'None', '2', 40, 3, 2, 2),
(70, 'Kabuto', 'Shellfish Pokémon', 'Scratch', '20', 'Grass', 'None', '1', 50, 3, 3, 1),
(90, 'Zapdos', 'Electric Pokémon', 'Thunderstorm', '40', 'Fighting', 'Steel', '3', 15, 3, 4, 1),
(100, 'Articuno', 'Freeze Pokémon', 'Blizzard', '50', 'Electric', 'None', '2', 2, 3, 2, 1),
(100, 'Moltres', 'Flame Pokémon', 'Wildfire', '30', 'Water', 'None', '2', 12, 3, 1, 1),
(60, 'Grimer', 'Sludge Pokémon', 'Poison Gas', '10', 'Psychic', 'None', '1', 48, 3, 5, 1),
(80, 'Magneton', 'Magnet Pokémon', 'Selfdestruct', '80', 'Fighting', 'Steel', '2', 9, 3, 4, 2),
(70, 'Seadra', 'Dragon Pokémon', 'Waterfall', '30', 'Electric', 'None', '1', 42, 3, 2, 2),
(90, 'Dragonite', 'Dragon Pokémon', 'Slam', '40x', 'Electric', 'None', '2', 4, 3, 2, 3);

GO


--  Inserts adicionais para `tbl_cards` (30 registros)
--sql
INSERT INTO tbl_cards (
    hp, name, information, attack, damage, weak, resistence, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
-- Base Set extras
(60, 'Caterpie', 'Worm Pokémon', 'String Shot', '10', 'Fire', 'Water', '1', 45, 1, 3, 1),
(70, 'Metapod', 'Cocoon Pokémon', 'Stiffen', '—', 'Fire', 'Water', '2', 54, 1, 3, 2),
(80, 'Butterfree', 'Butterfly Pokémon', 'Whirlwind', '20', 'Fire', 'Water', '1', 33, 1, 3, 3),
(50, 'Rattata', 'Mouse Pokémon', 'Bite', '20', 'Fighting', 'None', '1', 61, 1, 6, 1),
(70, 'Raticate', 'Mouse Pokémon', 'Super Fang', '—', 'Fighting', 'None', '2', 40, 1, 6, 2),
(60, 'Abra', 'Psi Pokémon', 'Psyshock', '10', 'Psychic', 'None', '1', 43, 1, 5, 1),
(80, 'Kadabra', 'Psi Pokémon', 'Recover', '—', 'Psychic', 'None', '2', 32, 1, 5, 2),
(100, 'Mewtwo', 'Genetic Pokémon', 'Psychic', '40', 'Psychic', 'None', '3', 10, 1, 5, 3),
(70, 'Diglett', 'Mole Pokémon', 'Dig', '10', 'Grass', 'None', '1', 47, 1, 6, 1),
(90, 'Dugtrio', 'Mole Pokémon', 'Earthquake', '70', 'Grass', 'None', '2', 19, 1, 6, 2),

-- Jungle extras
(60, 'Eevee', 'Evolution Pokémon', 'Quick Attack', '10+', 'Fighting', 'None', '1', 55, 2, 3, 1),
(80, 'Flareon', 'Flame Pokémon', 'Flamethrower', '50', 'Water', 'None', '2', 12, 2, 1, 2),
(80, 'Vaporeon', 'Bubble Jet Pokémon', 'Water Gun', '30+', 'Electric', 'None', '2', 13, 2, 2, 2),
(80, 'Jolteon', 'Lightning Pokémon', 'Pin Missile', '20x', 'Fighting', 'None', '2', 14, 2, 4, 2),
(70, 'Pidgey', 'Tiny Bird Pokémon', 'Gust', '20', 'Electric', 'Fighting', '1', 57, 2, 2, 1),
(90, 'Pidgeotto', 'Bird Pokémon', 'Whirlwind', '20', 'Electric', 'Fighting', '2', 17, 2, 2, 2),
(120, 'Pidgeot', 'Bird Pokémon', 'Hurricane', '30', 'Electric', 'Fighting', '2', 8, 2, 2, 3),
(60, 'Cubone', 'Lonely Pokémon', 'Bone Attack', '20', 'Grass', 'None', '1', 50, 2, 6, 1),
(80, 'Marowak', 'Bone Keeper Pokémon', 'Bonemerang', '30x', 'Grass', 'None', '2', 39, 2, 6, 2),
(100, 'Tauros', 'Wild Bull Pokémon', 'Rampage', '20+', 'Fighting', 'None', '2', 16, 2, 6, 1),

-- Fossil extras
(60, 'Horsea', 'Dragon Pokémon', 'Smokescreen', '10', 'Electric', 'None', '1', 51, 3, 2, 1),
(80, 'Seadra', 'Dragon Pokémon', 'Waterfall', '30', 'Electric', 'None', '2', 42, 3, 2, 2),
(100, 'Kingler', 'Pincer Pokémon', 'Crabhammer', '40', 'Electric', 'None', '2', 34, 3, 2, 2),
(70, 'Shellder', 'Bivalve Pokémon', 'Supersonic', '—', 'Electric', 'None', '1', 53, 3, 2, 1),
(90, 'Cloyster', 'Bivalve Pokémon', 'Clamp', '30', 'Electric', 'None', '2', 36, 3, 2, 2),
(60, 'Zubat', 'Bat Pokémon', 'Leech Life', '10', 'Electric', 'None', '1', 57, 3, 3, 1),
(80, 'Golbat', 'Bat Pokémon', 'Wing Attack', '30', 'Electric', 'None', '2', 25, 3, 3, 2),
(100, 'Hypno', 'Hypnosis Pokémon', 'Prophecy', '—', 'Psychic', 'None', '2', 8, 3, 5, 2),
(70, 'Slowpoke', 'Dopey Pokémon', 'Headbutt', '20', 'Electric', 'None', '1', 55, 3, 2, 1),
(90, 'Slowbro', 'Hermit Crab Pokémon', 'Water Gun', '20+', 'Electric', 'None', '2', 20, 3, 2, 2);

