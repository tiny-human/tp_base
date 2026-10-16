CREATE TABLE commande(
    id SERIAL PRIMARY KEY,
    date_commande DATE
);

CREATE TABLE commande_details(
    id SERIAL PRIMARY KEY,
    id_commande INT,
    id_plat INT,
    quantite INT,
    CONSTRAINT fk_commande FOREIGN KEY (id_commande) REFERENCES commande(id),
    CONSTRAINT fk_plat FOREIGN KEY (id_plat) REFERENCES plat(id)
);

INSERT INTO commande (date_commande) VALUES
('2026-01-15'),  
('2026-01-16');  

INSERT INTO commande_details (id_commande, id_plat, quantite) VALUES
(1, 1, 2), 
(1, 7, 2), 
(2, 2, 1), 
(2, 6, 1), 
(2, 7, 1); 

Piege: La quantite est placee dans commande_details