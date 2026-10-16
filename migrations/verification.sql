SELECT * FROM plat ORDER BY prix DESC;

SELECT COUNT(p.plat) AS nombre_plat, c.libelle AS categorie FROM categorie c LEFT JOIN plat p ON c.id = p.id_categorie GROUP BY c.id;

SELECT c.id AS commande, SUM(p.prix * cd.quantite) AS total FROM commande c 
JOIN commande_details cd ON cd.id_commande = c.id
JOIN plat p ON p.id = cd.id_plat
GROUP BY c.id;