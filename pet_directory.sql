DROP TABLE STORES;
DROP TABLE PETS;

CREATE TABLE stores(
 id serial4 primary key, 
 name VARCHAR(255),
 address VARCHAR(255),
 stock_type VARCHAR(255)
);

CREATE TABLE pets (
 id serial4 primary key,
 name VARCHAR(255),
 type VARCHAR(255)
);

