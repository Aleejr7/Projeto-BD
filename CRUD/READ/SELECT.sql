
USE Futebol;
--Quantidade de gols de todos os jogadores juntos de cada time:
SELECT c.nome, SUM(j.num_gols) AS qtde_gols 
FROM Clube c 
INNER JOIN Jogador j ON c.id_clube = j.id_clube
GROUP BY c.nome
ORDER BY qtde_gols desc;

--Quantidae de vitórias que os times tem como mandante
SELECT c.nome, COUNT(p.vencedor) AS vitorias_casa
FROM Clube c
INNER JOIN Partida p ON c.id_clube = p.id_mandante
GROUP BY c.nome;

--Numeros de partidas que ja aconteceram nas ligas
SELECT l.nome, COUNT(p.id_partida) AS partidas_passadas
FROM liga l 
INNER JOIN Partida p ON l.id_liga = p.id_liga
WHERE p.placar != 'NULL'
GROUP BY l.nome;

--Mostrar o clube de cada jogador e seus respectivos salários em ordem
SELECT c.nome, j.nome, j.salario
FROM Clube c
LEFT JOIN jogador j ON c.id_clube = j.id_clube
ORDER BY j.salario desc;

--Mostrar quais jogadores estão disponíveis para jogar
SELECT nome, aptidao 
FROM Jogador
WHERE aptidao = 'apto';

--Jogadores estrangeiros
SELECT id_jogador, nome, nacionalidade
FROM Jogador 
WHERE nacionalidade != 'brasileiro';

