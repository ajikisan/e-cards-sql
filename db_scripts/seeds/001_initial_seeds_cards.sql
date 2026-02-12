--📌 Inserts para `tbl_collections`
-- sql

INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);


---

-- 📌 Inserts para `tbl_types`
-- sql
INSERT INTO tbl_types (typeName)
VALUES
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting');


-- 📌 Inserts para `tbl_stages`
-- sql
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');


-- 📌 Inserts para `tbl_cards`
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


-- ✅ Resultado
-- **Coleções**: Base Set, Jungle, Fossil.  
-- **Tipos**: Fire, Water, Grass, Electric, Psychic, Fighting.  
-- **Estágios**: Basic, Stage 1, Stage 2.  
-- **Cartas**: Charizard, Bulbasaur, Pikachu, Hitmonchan (com vínculos corretos às FK).  
