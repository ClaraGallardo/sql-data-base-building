SELECT 
    film.Title AS nombre_pelicula,
    SUM(inventory.`Store Id`) AS total_en_inventario
FROM
    film
        INNER JOIN
    inventory ON film.`Film Id` = inventory.`Film Id`
GROUP BY film.Title
LIMIT 0 , 1000
