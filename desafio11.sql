CREATE VIEW cancoes_premium AS
SELECT
M.musica AS `nome`,
COUNT(M.musica_id) AS `reproducoes`
FROM
SpotifyClone.musicas AS M
INNER JOIN
SpotifyClone.historicos AS H
ON H.musica_id = M.musica_id
INNER JOIN
SpotifyClone.usuarios AS U
ON U.usuario_id = H.usuario_id
WHERE U.plano_id IN (2,3)
GROUP BY `nome`
ORDER BY `nome`;