-- Activation de l'extension pour la recherche vectorielle (RAG)
CREATE EXTENSION IF NOT EXISTS vector;

-- Création des schémas de l'architecture Medallion
CREATE SCHEMA IF NOT EXISTS bronze;
CREATE SCHEMA IF NOT EXISTS silver;
CREATE SCHEMA IF NOT EXISTS gold;

-- Création d'un utilisateur dédié pour dbt et l'API
CREATE ROLE lorcana_app WITH LOGIN PASSWORD 'app_password';
GRANT ALL PRIVILEGES ON DATABASE lorcana_db TO lorcana_app;
GRANT ALL ON SCHEMA bronze, silver, gold TO lorcana_app;