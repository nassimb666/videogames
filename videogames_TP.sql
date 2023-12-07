CREATE DATABASE videogames;
SELECT * from games;
select DISTINCT * from games;
SELECT g_name, g_mode, g_pegi, g_published_at FROM `games`ORDER BY g_name ASC;
SELECT g_name, g_mode, g_pegi, g_published_at FROM `games`ORDER BY g_published_at DESC LIMIT 10;
SELECT g_name, g_mode, g_pegi, g_published_at FROM `games` WHERE g_mode = 'solo' OR g_mode = 'multijoueur';
SELECT g_name, g_published_at FROM games WHERE g_published_at BETWEEN '2015-01-01' AND '2020-12-31' ORDER BY g_published_at ASC;
SELECT g_name, g_mode FROM games WHERE g_mode IN ('solo', 'Solo / Multijoueur');
SELECT g_name, g_mode, g_published_at, g_pegi FROM games WHERE g_name LIKE '%The Witcher%';
SELECT g_name, g_mode, g_published_at, g_pegi FROM games WHERE g_name NOT LIKE '%Halo%';
SELECT g_name, g_published_at FROM games WHERE YEAR(g_published_at) IN (2012, 2016, 2020) ORDER BY g_published_at ASC;
SELECT g_name, s_name FROM games,studios; SELECT * FROM games NATURAL join studios;
SELECT g_name, g_mode, g_pegi, p_name FROM games JOIN platforms WHERE p_name LIKE '%xbox%' OR p_name LIKE '%s%' OR p_name LIKE '%PlayStation%' ORDER by g_pegi ASC;
SELECT * FROM games,platforms ORDER by g_name ASC;
SELECT COUNT(g_name) FROM games;
SELECT DISTINCT COUNT(g_name) FROM games;
SELECT s_name, COUNT(g_name) AS nombre_de_jeux FROM games JOIN studios GROUP BY s_name;
SELECT s_name, COUNT(g_name) AS nombre_de_jeux FROM games natural JOIN studios GROUP BY s_name;
SELECT s_name,p_name, COUNT(g_name) AS nombre_de_jeux FROM games natural JOIN studios,platforms GROUP BY s_name;
SELECT g_name FROM games JOIN platforms  WHERE p_name LIKE '%xbox%' AND p_name LIKE '%playstation%' AND p_name LIKE '%steam%' AND p_name LIKE '%stadia%';
SELECT g_name AS "nom du jeu", COUNT(p_name) AS "nombre de plateformes" FROM games g JOIN games_platforms gp ON g.g_id = gp.g_id join  platforms  group by g_name HAVING COUNT(p_name) = 4;


