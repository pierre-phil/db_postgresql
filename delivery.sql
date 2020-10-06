CREATE TABLE delivery
(
    id SERIAL PRIMARY KEY,
    address TEXT NOT NULL,
    product_id INTEGER NOT NULL REFERENCES products(id),
)