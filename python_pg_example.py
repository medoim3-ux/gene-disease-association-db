import psycopg2

conn = psycopg2.connect(
    dbname="gene_disease_db",
    user="postgres",
    password="your_password",
    host="localhost",
    port="5432"
)

cur = conn.cursor()

cur.execute("""
SELECT g.symbol, d.disease_name, a.association_type
FROM gene_disease_associations a
JOIN genes g ON a.gene_id = g.gene_id
JOIN diseases d ON a.disease_id = d.disease_id;
""")

rows = cur.fetchall()

for row in rows:
    print(row)

cur.close()
conn.close()
