-- Criação de **20 registros de exemplo** para a tabela `tbl_cards`, usando Pokémon clássicos do TCG. Eles estarão vinculados às coleções, tipos e estágios que já definimos (`tbl_collections`, `tbl_types`, `tbl_stages`).  

-- 📌 Inserts para `tbl_cards` (20 registros)
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


-- ✅ O que temos aqui
-- **Coleções**: Base Set (id=1), Jungle (id=2), Fossil (id=3).  
-- **Tipos**: Fire (id=1), Water (id=2), Grass (id=3), Electric (id=4), Psychic (id=5), Fighting (id=6).  
-- **Estágios**: Basic (id=1), Stage 1 (id=2), Stage 2 (id=3).  
-- **Cartas**: 20 Pokémon clássicos, cada um com HP, ataque, fraqueza, resistência, custo de retirada e vínculos corretos às FK.  

-- Esse seed já te dá uma base sólida para consultas e testes.  
-- Quer que eu monte também **scripts de SELECT com JOINs** (ex.: listar todas as cartas -- de uma coleção com seus tipos e estágios) para facilitar a visualização dos dados?