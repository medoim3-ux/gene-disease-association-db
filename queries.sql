-- Show all gene-disease associations
SELECT
    g.symbol,
    d.disease_name,
    a.association_type,
    a.evidence_level,
    a.source_db
FROM gene_disease_associations a
JOIN genes g ON a.gene_id = g.gene_id
JOIN diseases d ON a.disease_id = d.disease_id;

-- Show all genes associated with Lung Cancer
SELECT
    g.symbol,
    g.full_name,
    d.disease_name
FROM gene_disease_associations a
JOIN genes g ON a.gene_id = g.gene_id
JOIN diseases d ON a.disease_id = d.disease_id
WHERE d.disease_name = 'Lung Cancer';

-- Show all diseases associated with TP53
SELECT
    g.symbol,
    d.disease_name,
    a.association_type
FROM gene_disease_associations a
JOIN genes g ON a.gene_id = g.gene_id
JOIN diseases d ON a.disease_id = d.disease_id
WHERE g.symbol = 'TP53';
