
-- 🔎 1️⃣ Conferir tabelas base

-- 📦 `tbl_collections`

--sql
SELECT * 
FROM tbl_collections
ORDER BY id;


-- Confere:
-- id = 1 → Base Set
-- id = 2 → Jungle
-- id = 3 → Fossil

-- `tbl_types`
-- sql
SELECT * 
FROM tbl_types
ORDER BY id;

-- Esperado:
1 Fire
2 Water
3 Grass
4 Electric
5 Psychic
6 Fighting

-- 🧬 `tbl_stages`
-- sql
SELECT * 
FROM tbl_stages
ORDER BY id;

--Esperado:
-- 1 Basic
-- 2 Stage 1
-- 3 Stage 2

--🔎 2️⃣ Conferir cartas (cru)
-- 🃏 Todas as cartas

--sql
SELECT id, name, hp, attack, damage
FROM tbl_cards
ORDER BY id;

-- 🧮 Total de cartas inseridas

-- sql
SELECT COUNT(*) AS total_cards
FROM tbl_cards;
--

--🔎 3️⃣ Conferir relacionamentos (JOINs)
-- 🃏 Cartas com coleção, tipo e estágio

-- sql
SELECT
    c.id,
    c.name,
    col.collectionSetName AS collection,
    t.typeName AS type,
    s.stageName AS stage
FROM tbl_cards c
JOIN tbl_collections col ON col.id = c.collection_id
JOIN tbl_types t ON t.id = c.type_id
JOIN tbl_stages s ON s.id = c.stage_id
ORDER BY col.id, c.name;


-- Esse é o **SELECT mais importante** pra validar se os FKs estão corretos.

-- 🔎 4️⃣ Conferências específicas

-- 📦 Cartas por coleção

-- sql
SELECT
    col.collectionSetName,
    COUNT(*) AS total_cards
FROM tbl_cards c
JOIN tbl_collections col ON col.id = c.collection_id
GROUP BY col.collectionSetName
ORDER BY col.collectionSetName;

-- 🔥 Cartas por tipo
-- sql
SELECT
    t.typeName,
    COUNT(*) AS total_cards
FROM tbl_cards c
JOIN tbl_types t ON t.id = c.type_id
GROUP BY t.typeName
ORDER BY total_cards DESC;

--  🧬 Cartas por estágio

-- sql
SELECT
    s.stageName,
    COUNT(*) AS total_cards
FROM tbl_cards c
JOIN tbl_stages s ON s.id = c.stage_id
GROUP BY s.stageName
ORDER BY s.stageName;

-- 🔎 5️⃣ Validações rápidas (sanidade)
--  ❌ Cartas sem relacionamento (não deve retornar nada)

-- sql
SELECT *
FROM tbl_cards
WHERE collection_id IS NULL
   OR type_id IS NULL
   OR stage_id IS NULL;

--m🧠 Conferir IDs inválidos (FK quebrado)

-- sql
SELECT *
FROM tbl_cards c
WHERE NOT EXISTS (
    SELECT 1 FROM tbl_collections col WHERE col.id = c.collection_id
)
OR NOT EXISTS (
    SELECT 1 FROM tbl_types t WHERE t.id = c.type_id
)
OR NOT EXISTS (
    SELECT 1 FROM tbl_stages s WHERE s.id = c.stage_id
);


-- ⭐ SELECT “bonitão” 😄

-- sql
SELECT
    c.name,
    c.hp,
    c.attack,
    c.damage,
    c.weak,
    c.resistence,
    c.retreat,
    col.collectionSetName,
    t.typeName,
    s.stageName
FROM tbl_cards c
JOIN tbl_collections col ON col.id = c.collection_id
JOIN tbl_types t ON t.id = c.type_id
JOIN tbl_stages s ON s.id = c.stage_id
ORDER BY col.collectionSetName, c.name;




