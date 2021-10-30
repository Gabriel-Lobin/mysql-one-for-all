USE SpotifyClone;

DELIMITER &&

CREATE FUNCTION quantidade_musicas_no_historico(id_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE quantidade INT;
	SELECT 
    COUNT(H.musica_id) AS `quantidade_musicas_no_historico`
FROM
    SpotifyClone.historicos AS H
INNER JOIN
SpotifyClone.usuarios AS U
ON U.usuario_id = H.usuario_id
WHERE U.usuario_id = id_usuario
GROUP BY H.usuario_id INTO quantidade;
RETURN quantidade;
END &&
DELIMITER ;

