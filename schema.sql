CREATE TABLE genes (
    gene_id SERIAL PRIMARY KEY,
    symbol VARCHAR(50) NOT NULL UNIQUE,
    full_name TEXT,
    chromosome VARCHAR(20)
);

CREATE TABLE diseases (
    disease_id SERIAL PRIMARY KEY,
    disease_name VARCHAR(255) NOT NULL UNIQUE,
    omim_id VARCHAR(50),
    icd10_code VARCHAR(20)
);

CREATE TABLE gene_disease_associations (
    association_id SERIAL PRIMARY KEY,
    gene_id INTEGER NOT NULL,
    disease_id INTEGER NOT NULL,
    association_type VARCHAR(100),
    evidence_level VARCHAR(50),
    source_db VARCHAR(100),
    CONSTRAINT fk_gene
        FOREIGN KEY (gene_id)
        REFERENCES genes(gene_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_disease
        FOREIGN KEY (disease_id)
        REFERENCES diseases(disease_id)
        ON DELETE CASCADE
);
