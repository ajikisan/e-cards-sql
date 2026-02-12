## 👩‍🎓 Informações do Projeto

- **Aluna:** Mirian Ajiki Molicawa  
- **Plataforma:** Digital Innovation One (DIO)  
- **Bootcamp:** Bradesco – GenAI & Dados  
- **Tech Educator:** Felipe Aguiar  
- **Data:** 11/02/2026  
- **Trilha:** Utilizando Microsoft para escrever consultas SQL
  
    https://web.dio.me/track/bradesco-genai-dados/course/utilizando-microsoft-copilot-para-escrever-consultas-sql  


#  Utilizando Microsoft Copilot para escrever consultas SQL

Projeto desenvolvido como parte do **Bootcamp da DIO**, com foco no uso do **Microsoft Copilot** como ferramenta de apoio na escrita, validação e organização de consultas SQL em um banco **PostgreSQL**.

O repositório demonstra, de forma prática, como a IA pode auxiliar no dia a dia do desenvolvedor, desde a criação das tabelas até a validação da semeadura de dados.

---

## 🎯 Objetivo

* Utilizar o **Microsoft Copilot no VS Code** para escrever consultas SQL
* Criar e organizar scripts SQL por responsabilidade
* Validar dados inseridos (*seeds*) em um banco PostgreSQL
* Praticar `JOIN`, `GROUP BY`, `COUNT` e `NOT EXISTS`
* Aplicar boas práticas de organização de projetos SQL

---

## 🛠️ Tecnologias e Ferramentas

* **PostgreSQL**
* **SQL**
* **Microsoft Copilot**
* **Visual Studio Code**
* **PowerShell**
* **Git / GitHub**

---

## 📁 Estrutura do Projeto

A organização do projeto segue uma separação clara entre **criação**, **semeadura** e **consultas**, facilitando manutenção e leitura:

```
📦 e-cards-sql
 ┣ 📂 db_scripts
 ┃ ┣ 📂 tables
 ┃ ┃ ┗ 📄 001_create_card_table.sql
 ┃ ┣ 📂 seeds
 ┃ ┃ ┣ 📄 001_initial_seeds_cards.sql
 ┃ ┃ ┣ 📄 002_bulk_seeds_cards.sql
 ┃ ┃ ┣ 📄 003_bulk_seeds_cards.sql
 ┃ ┃ ┣ 📄 004_bulk_seeds_cards.sql
 ┃ ┃ ┗ 📄 to_migration.ps1
 ┃ ┣ 📂 selects
 ┃ ┃ ┗ 📄 001-cards-selects.sql
 ┃ ┗ 📂 prompts
 ┃   ┗ 📄 tcf_cards.txt
 ┗ 📄 README.md
```

---

## 🗂️ Modelo de Dados

O banco de dados é composto pelas seguintes tabelas:

* **tbl_collections** → Coleções de cartas
* **tbl_types** → Tipos das cartas
* **tbl_stages** → Estágios das cartas
* **tbl_cards** → Cartas e seus relacionamentos

### 🔗 Relacionamentos

* `tbl_cards.collection_id` → `tbl_collections.id`
* `tbl_cards.type_id` → `tbl_types.id`
* `tbl_cards.stage_id` → `tbl_stages.id`

---

## 🤖 Uso do Microsoft Copilot

Durante o desenvolvimento, o **Microsoft Copilot** foi utilizado diretamente no VS Code para:

* Sugerir consultas `SELECT`
* Criar `JOINs` entre tabelas relacionadas
* Gerar consultas de validação com `NOT EXISTS`
* Melhorar legibilidade e organização do SQL
* Auxiliar na separação de responsabilidades dos scripts

> ⚠️ O Copilot foi usado como **apoio**, não como substituto do raciocínio lógico ou do conhecimento em SQL.

---

## 🔍 Exemplos de Consultas SQL

### 🃏 Consulta completa (cartas com relacionamentos)

```sql
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
```

---

### 📦 Cartas por coleção

```sql
SELECT
    col.collectionSetName,
    COUNT(*) AS total_cards
FROM tbl_cards c
JOIN tbl_collections col ON col.id = c.collection_id
GROUP BY col.collectionSetName
ORDER BY col.collectionSetName;
```

---

### 🧪 Validação de integridade (FKs)

```sql
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
```

---

## 🚀 Como Executar

1. Clone o repositório:

```bash
git clone https://github.com/ajikisan/e-cards-sql.git
```

2. Execute os scripts na ordem:

* `tables/` → criação das tabelas
* `seeds/` → inserção de dados
* `selects/` → validação

3. (Opcional) Use o script PowerShell:

```bash
./to_migration.ps1
```

---

## ✅ Resultados

* Semeadura validada com sucesso
* Relacionamentos consistentes entre tabelas
* Consultas organizadas e reutilizáveis
* Maior produtividade com apoio do Copilot

---

## 📚 Conclusão

Este projeto demonstra como o **Microsoft Copilot** pode ser um forte aliado no desenvolvimento SQL, auxiliando na escrita de consultas mais rápidas, legíveis e seguras, especialmente em cenários educacionais como o **Bootcamp da DIO**.

---

## 👨‍💻 Autora

Projeto desenvolvido para fins educacionais no **Bootcamp DIO**.

📌 Fique à vontade para clonar, estudar e evoluir este repositório.
