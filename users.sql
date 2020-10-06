CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    login VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(20) NOT NULL,
    email TEXT NOT NULL UNIQUE,
    bio TEXT DEFAULT 'Hello, World',
    age SMALLINT CHECK (age >= 18) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

--ex d'insertion
INSERT INTO users
    (login, password, email, bio, age)
VALUES
    ('alice', '123', 'alice@mail.com', 'Hello, i am Alice', 18);
