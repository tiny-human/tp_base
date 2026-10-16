CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

INSERT INTO client (nom) VALUES
('Rabe'),
('Rakoto');

ALTER TABLE commande ADD COLUMN id_client INT REFERENCES client(id);

UPDATE commande SET id_client = 1 WHERE id = 1;

Piege: la cle etrangere n'est pas NOT NULL. 
Il faut utiliser LEFT JOIN
