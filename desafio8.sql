DELIMITER && 

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios 
FOR EACH ROW 
BEGIN
DELETE FROM
	SpotifyClone.historicos
WHERE
	OLD.usuario_id = usuario_id;

DELETE FROM
	SpotifyClone.seguindo_artista
WHERE
	OLD.usuario_id = usuario_id;

END && 
DELIMITER ;