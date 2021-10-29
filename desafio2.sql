CREATE VIEW estatisticas_musicais AS
SELECT 
	(SELECT COUNT(M.musica) FROM SpotifyClone.musicas AS M) AS `cancoes`,
    (SELECT COUNT(AR.artista) FROM SpotifyClone.artistas AS AR) AS `artistas`,
    COUNT(AL.album) AS `albuns`
FROM
SpotifyClone.albums AS AL;
