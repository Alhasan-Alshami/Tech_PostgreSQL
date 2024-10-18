COPY customers FROM 'D:/Program Files/PostgreSQL/17/data/projects/tech/CSV/customers.csv' DELIMITER ',' CSV HEADER;
COPY products FROM 'D:/Program Files/PostgreSQL/17/data/projects/tech/CSV/products.csv' DELIMITER ',' CSV HEADER;
COPY sales FROM 'D:/Program Files/PostgreSQL/17/data/projects/tech/CSV/sales.csv' DELIMITER ',' CSV HEADER;