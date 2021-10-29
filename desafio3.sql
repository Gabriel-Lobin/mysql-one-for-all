CREATE VIEW historico_reproducao_usuarios AS
SELECT
 U.usuario AS `usuario`,
 M.musica AS `nome`
FROM
SpotifyClone.usuarios AS U
INNER JOIN
SpotifyClone.musicas AS M
INNER JOIN
SpotifyClone.historicos AS H
ON U.usuario_id = H.usuario_id AND H.musica_id = M.musica_id
ORDER BY `usuario`, `nome`;
