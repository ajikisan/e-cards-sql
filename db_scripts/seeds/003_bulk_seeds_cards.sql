-- Vamos expandir o **seed inicial** com mais **30 registros** para a tabela `tbl_cards`. Assim você terá uma base de 50 cartas clássicas do Pokémon TCG, cobrindo diferentes coleções, tipos e estágios.

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


-- ✅ Resultado
-- Agora você tem **50 cartas seed** (20 iniciais + 30 extras).  
-- Elas cobrem **Base Set, Jungle e Fossil**, com Pokémon icônicos como Charizard, Venusaur, Raichu, Gyarados, Nidoqueen, Vileplume, Zapdos, Articuno, Moltres e Dragonite.  
-- Todas estão corretamente vinculadas às coleções (`collection_id`), tipos (`type_id`) e estágios (`stage_id`).  

-- Quer que eu prepare também um **SELECT com JOINs** que mostre uma listagem amigável (nome da carta, coleção, tipo e estágio) para você visualizar os dados já populados?