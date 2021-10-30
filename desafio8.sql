USE SpotifyClone;

DROP TRIGGER IF EXISTS trigger_usuario_delete;

DELIMITER &&

CREATE TRIGGER trigger_usuario_delete
	BEFORE DELETE ON usuarios
	FOR EACH ROW
BEGIN
    DELETE FROM historicos AS H WHERE OLD.usuario_id = H.usuario_id;
	DELETE FROM seguindo_artista AS A WHERE OLD.usuario_id = A.usuario_id;
END &&
DELIMITER ;
