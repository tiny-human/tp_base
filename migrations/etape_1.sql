CREATE TABLE plat(
    id SERIAL PRIMARY KEY ,
    plat VARCHAR(100) NOT NULL,
    prix INT    NOT NULL
);

INSERT INTO carte (plat, prix) VALUES
('Romazava', 7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
('Misao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy(les 4)', 1000),
('Ranon''ampango', 500);

Piege:type INT pour le prix. Creer un identifiant pour chaque plat 
