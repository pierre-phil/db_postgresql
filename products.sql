CREATE TABLE products
(
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    description TEXT,
    price BIGINT DEFAULT 0,
    seller_id INTEGER NOT NULL REFERENCES users(id),
    -- fera référence à un userID de la table users
    buyer_id INTEGER REFERENCES users(id)
    -- fera référence à un userID de la table users
);

--ex d'insertion
INSERT INTO products
    (title, description, price, seller_id)
VALUES
    ('Laptop', 'Bon etat', 20000, 5);

-- imaginons qu'on veuille afficher tous les products vendus par un user nommé Alice
SELECT *
FROM PRODUCTS
WHERE seller_id = (SELECT id
FROM users
WHERE login = 'alice');

-- idem si on voulait que le produit et son prix
SELECT title, price
FROM PRODUCTS
WHERE seller_id = (SELECT id
FROM users
WHERE login = 'alice');

-- cas spécial où on voudrait à la fois les produits vendurs par Alice
-- mais aussi des infos sur Alice, autrement dit, reprendre
-- des données présentes dans la table user + la table products

SELECT users.id,
    users.login,
    users.email,
    products.id,
    products.title,
    products.price
FROM users INNER JOIN products ON users.id = products.seller_id
ORDER BY products.price