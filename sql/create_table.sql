CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS Acessos (
  id SERIAL PRIMARY KEY,
  code INT NOT NULL UNIQUE,
  descricao TEXT NOT NULL,
  data_criacao DATE DEFAULT CURRENT_DATE,
  embeddings VECTOR(1536)  -- entender este valor
);

CREATE INDEX ON Acessos USING hnsw (embeddings vector_cosine_ops);