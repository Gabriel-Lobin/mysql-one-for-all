USE SpotifyClone;

DELIMITER &&

CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(40))
BEGIN
	SELECT
    A.artista AS `artista`,
    AL.album AS `album`
    FROM
    SpotifyClone.artistas AS A
    INNER JOIN
    SpotifyClone.albums AS AL
    ON AL.artista_id = A.artista_id
    WHERE A.artista = nome_artista;
END &&
DELIMITER ;
    
    