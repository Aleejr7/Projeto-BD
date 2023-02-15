USE Futebol;
--Palmeiras venceu mais um partida
UPDATE dbo.clube
SET num_vitorias = num_vitorias + 1
WHERE id_clube = 1;

--Yuri Alberto marcou dois gols
UPDATE dbo.jogador
SET num_gols = num_gols + 2;

--A data do jogo foi adiada
UPDATE dbo.partida
SET data_partida = '15/06/2023'
WHERE id_partida = 10;

--Dudu se lesionou
UPDATE dbo.jogador
SET aptidao = 'lesionado'
WHERE id_jogador = 1;