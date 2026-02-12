-- Create table for collections
CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(255) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);


-- Tabela de Tipos
CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    typeName VARCHAR(50) NOT NULL UNIQUE
);

-- Tabela de Estágios
CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stageName VARCHAR(50) NOT NULL UNIQUE
);

-- Tabela de cartas
CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INT,
    name VARCHAR(100) NOT NULL,
    information TEXT,
    attack VARCHAR(100),
    damage VARCHAR(20),
    weak VARCHAR(50),
    resistence VARCHAR(50),
    retreat VARCHAR(50),
    cardNumberInCollection INT NOT NULL,
    collection_id INT NOT NULL,
    type_id INT NOT NULL,
    stage_id INT NOT NULL,
    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections (id)
        ON DELETE CASCADE,
    CONSTRAINT fk_type
        FOREIGN KEY (type_id)
        REFERENCES tbl_types (id)
        ON DELETE RESTRICT,
    CONSTRAINT fk_stage
        FOREIGN KEY (stage_id)
        REFERENCES tbl_stages (id)
        ON DELETE RESTRICT
);