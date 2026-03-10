INSERT INTO genes (symbol, full_name, chromosome)
VALUES
('TP53', 'tumor protein p53', '17'),
('EGFR', 'epidermal growth factor receptor', '7'),
('BRCA1', 'breast cancer 1', '17');

INSERT INTO diseases (disease_name, omim_id, icd10_code)
VALUES
('Lung Cancer', '211980', 'C34'),
('Breast Cancer', '114480', 'C50'),
('Glioblastoma', '137800', 'C71');

INSERT INTO gene_disease_associations (gene_id, disease_id, association_type, evidence_level, source_db)
VALUES
(1, 1, 'causal', 'high', 'manual_curation'),
(2, 1, 'therapeutic_target', 'high', 'manual_curation'),
(3, 2, 'risk_factor', 'high', 'manual_curation');
