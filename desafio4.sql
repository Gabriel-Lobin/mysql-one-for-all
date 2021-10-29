CREATE VIEW top_3_artistas AS;
SELECT
A.artista AS `artista`,
COUNT(A.artista) AS `seguidores`
FROM
SpotifyClone.artistas AS A
INNER JOIN
SpotifyClone.seguindo_artista AS SA
ON SA.artista_id = A.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
