CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(P.valor), 2) AS `faturamento_minimo`,
FORMAT(MAX(P.valor), 2) AS `faturamento_maximo`,
FORMAT(CEIL(AVG(P.valor)*100)/100, 2) AS `faturamento_medio`,
FORMAT(SUM(P.valor), 2) AS `faturamento_total`
FROM
SpotifyClone.planos AS P
INNER JOIN
SpotifyClone.usuarios AS U
ON P.plano_id = U.plano_id;



