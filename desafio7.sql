CREATE VIEW perfil_artistas AS
SELECT
 A.artista AS `artista`,
 AB.album AS `album`,
 COUNT(AB.album) AS `seguidores`
FROM
SpotifyClone.artistas AS A
INNER JOIN
SpotifyClone.albums AS AB
ON AB.artista_id = A.artista_id
INNER JOIN
SpotifyClone.seguindo_artista AS SA
ON SA.artista_id = A.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
