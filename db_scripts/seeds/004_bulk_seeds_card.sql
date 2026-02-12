
-- 📌 Inserts adicionais para `tbl_cards` (30 registros)

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


--  ✅ Resultado
-- Agora você tem **80 registros seed** (20 iniciais + 30 extras + 30 novos).  
-- Cobrem **Base Set, Jungle e Fossil**, com Pokémon evolutivos (Caterpie → Butterfree, Abra → Mewtwo, Eevee → Flareon/Vaporeon/Jolteon, etc.).  
-- Todos os vínculos de FK (`collection_id`, `type_id`, `stage_id`) estão corretos.  

-- 👉 Quer que eu prepare também um **script de SELECT com JOINs** que mostre uma listagem completa (nome da carta, coleção, tipo e estágio) para visualizar esses 80 registros de forma organizada?

