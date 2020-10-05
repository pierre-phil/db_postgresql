1.
Créer une base de donnée "db_1" qui contient une table "users" qui correspond à la database que nous avons créé dans le cours précédent sur express:

const db_user = {
  alice: '123',
  bob: '456',
  charlie: '789',
}

Créez les bons champs et donner les bons types à chaque champs. N'oubliez pas un champ "id" qui correspondra à la clé primaire.
Ensuite afficher toutes les lignes de la table "users" de la base de donnée "db_1".
Vous devrez fournir les commandes SQL entrées ainsi que tous les outputs de ces commandes.

```
$ psql -d postgres -U db_test
  // psql (12.4 (Ubuntu 12.4-1.pgdg20.04+1))
  // Saisissez « help » pour l'aide.

$ CREATE DATABASE db_1;
  // CREATE DATABASE
  
$ \c db_1;
  // Vous êtes maintenant connecté à la base de données « db_1 » en tant qu'utilisateur « db_test ».
  
$ CREATE TABLE users (id SERIAL PRIMARY KEY, username VARCHAR(20), password VARCHAR(20));
  // CREATE TABLE
```

2.
Ajouter 3 utilisateurs 'dan', 'eve', 'faythe' qui auront respectivement les password '101112', '131415', '161718'.
Affichez toutes les lignes de la table "users" de la base de donnée "db_1".
Vous devrez fournir les commandes SQL entrées ainsi que tous les outputs de ces commandes.

```
$ INSERT INTO users (username, password) VALUES ('dan', '101112'), ('eve', '131415'), ('faythe', '161718');
  // INSERT 0 3
  
$ SELECT * FROM users;
  // 
  id | username | password 
----+----------+----------
  1 | dan      | 101112
  2 | eve      | 131415
  3 | faythe   | 161718
(3 lignes)

```

3.
Affichez toutes les lignes de la table "users" de la base de donnée "db_1" dont le password possède plus de 3 caractères. Pour cela il vous faudra utiliser la fonction LENGTH.
Vous devrez fournir les commandes SQL entrées ainsi que tous les outputs de ces commandes.

```
$ SELECT * FROM users WHERE length(password) > 3;
  //
   id | username | password 
----+----------+----------
  1 | dan      | 101112
  2 | eve      | 131415
  3 | faythe   | 161718
(3 lignes)

```
4.
Modifiez la table "users" afin d'ajouter une nouvelle colonne "bio" qui contiendra une description a propos de l'utilisateur. Ce champ "bio" sera du texte avec un nombre de caractères illimités et sa valeur par défaut sera "Hello, world!".
Vous devrez fournir les commandes SQL entrées ainsi que tous les outputs de ces commandes.

```
$ ALTER TABLE users ADD COLUMN bio TEXT DEFAULT 'Hello World';
  // ALTER TABLE
  //
   id | username | password |     bio     
----+----------+----------+-------------
  1 | dan      | 101112   | Hello World
  2 | eve      | 131415   | Hello World
  3 | faythe   | 161718   | Hello World
(3 lignes)

```
