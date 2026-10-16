SELECT * FROM plat ORDER BY prix DESC;
SELECT COUNT(p.plat) AS nombre_plat, c.libelle AS categorie FROM categorie c LEFT JOIN plat p ON c.id = p.id_categorie GROUP BY c.id;