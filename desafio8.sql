DELIMITER && 

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON SpotifyClone.usuarios 
FOR EACH ROW 
BEGIN
DELETE FROM
	SpotifyClone.historicos AS H
WHERE
	OLD.usuario_id = H.usuario_id;

DELETE FROM
	SpotifyClone.seguindo_artista AS A
WHERE
	OLD.usuario_id = A.usuario_id;

END && 
DELIMITER ;