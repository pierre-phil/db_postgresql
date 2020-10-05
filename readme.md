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
  
$ CREATE TABLE users (id SERIAL PRIMARY KEY, username VARCHAR(20), password VARCHAR(20));
  // CREATE TABLE
```

2.
Ajouter 3 utilisateurs 'dan', 'eve', 'faythe' qui auront respectivement les password '101112', '131415', '161718'.
Affichez toutes les lignes de la table "users" de la base de donnée "db_1".
Vous devrez fournir les commandes SQL entrées ainsi que tous les outputs de ces commandes.

```

```
