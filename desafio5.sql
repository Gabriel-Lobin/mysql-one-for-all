CREATE VIEW top_2_hits_do_momento AS
SELECT 
    M.musica AS `cancao`, COUNT(M.musica) AS `reproducoes`
FROM
    SpotifyClone.musicas AS M
        INNER JOIN
    SpotifyClone.historicos AS H ON H.musica_id = M.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
