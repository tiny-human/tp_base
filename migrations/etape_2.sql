CREATE TABLE categorie(
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(50)
);

INSERT INTO categorie(libelle) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

INSERT INTO categorie(libelle)VALUES('snack');

ALTER TABLE plat ADD id_categorie INT REFERENCES categorie(id);

UPDATE plat SET id_categorie = 1 WHERE id IN (1,2,3);
UPDATE plat SET id_categorie = 2 WHERE id = 4;
UPDATE plat SET id_categorie = 3 WHERE id = 5;
UPDATE plat SET id_categorie = 4 WHERE id = 6;
UPDATE plat SET id_categorie = 5 WHERE id = 7;

ALTER TABLE plat ALTER COLUMN id_categorie SET NOT NULL;

Piege: On n'ajoute pas simplement une colonne categorie VARCHAR(50) dans la table des plats
car plusieurs plats peuvent avoir la meme categorie et si on devait changer le nom de cette 
categorie, on devra changer plusieurs lignes
