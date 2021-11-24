--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  genre_id INTEGER
);


DROP TABLE IF EXISTS genre; 
CREATE TABLE genre (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(25)
);

DROP TABLE IF EXISTS artiest; 
CREATE TABLE artiest (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100)
);

DROP TABLE IF EXISTS product_artiest; 
CREATE TABLE product_artiest (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  artiest_id INTEGER
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, genre_id) values ('English Film', 'Mauris ..', '816905633-1', 10.5, 1);
insert into products (name, description, code, price, genre_id) values ('Post Mortem', 'Nulla ...', '816905633-2', 11, 1);
insert into products (name, description, code, price, genre_id) values ('Scarlet and the Black, The', 'Pellentesque...', '816905633-3', 13.5, 3);
insert into products (name, description, code, price, genre_id) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis b...', '816905633-4', 13.5, 3);
insert into products (name, description, code, price, genre_id) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut...','816905633-5', 14, 2);

insert into genre (name) values ('Genre1');
insert into genre (name) values ('Genre2');
insert into genre (name) values ('Genre3');

insert into artiest (name) values ('Artiest1');
insert into artiest (name) values ('Artiest2');
insert into artiest (name) values ('Artiest3');

insert into product_artiest (product_id, artiest_id) values (1, 1);
insert into product_artiest (product_id, artiest_id) values (1, 2);
insert into product_artiest (product_id, artiest_id) values (2, 1);
insert into product_artiest (product_id, artiest_id) values (2, 3);
insert into product_artiest (product_id, artiest_id) values (3, 1);
insert into product_artiest (product_id, artiest_id) values (4, 2);
insert into product_artiest (product_id, artiest_id) values (5, 3);
