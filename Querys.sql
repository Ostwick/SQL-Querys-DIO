SELECT [Nome], [Ano] FROM Filmes.dbo.Filmes --1 - Buscar o nome e ano dos filmes

SELECT [Nome], [Ano], [Duracao] FROM Filmes.dbo.Filmes ORDER BY [Ano] ASC --2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT [Nome], [Ano], [Duracao] FROM Filmes.dbo.Filmes WHERE [Nome] = 'De Volta para o Futuro' --3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT [Nome], [Ano], [Duracao] FROM Filmes.dbo.Filmes WHERE [Ano] = 1997 --4 - Buscar os filmes lançados em 1997

SELECT [Nome], [Ano], [Duracao] FROM Filmes.dbo.Filmes WHERE [Ano] > 2000 --5 - Buscar os filmes lançados APÓS o ano 2000

SELECT [Nome], [Ano], [Duracao] FROM Filmes.dbo.Filmes WHERE [Duracao] > 100 AND [Duracao] < 150 ORDER BY [Duracao] ASC --6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT [Ano], COUNT([Nome]) AS 'Quantidade'  FROM Filmes.dbo.Filmes GROUP BY [Ano] ORDER BY [Quantidade] DESC  --7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT [Id], [PrimeiroNome], [UltimoNome], [Genero] FROM Filmes.dbo.Atores WHERE [Genero] = 'M' --8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT [Id], [PrimeiroNome], [UltimoNome], [Genero] FROM Filmes.dbo.Atores WHERE [Genero] = 'F' ORDER BY [PrimeiroNome] ASC --9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT f.Nome, g.Genero FROM Filmes.dbo.Filmes AS f INNER JOIN Filmes.dbo.FilmesGenero AS fg ON f.Id = fg.IdFilme INNER JOIN Filmes.dbo.Generos AS g ON fg.IdGenero = g.Id --10 - Buscar o nome do filme e o gênero

SELECT f.Nome, g.Genero FROM Filmes.dbo.Filmes AS f INNER JOIN Filmes.dbo.FilmesGenero AS fg ON f.Id = fg.IdFilme INNER JOIN Filmes.dbo.Generos AS g ON fg.IdGenero = g.Id WHERE [Genero] = 'Mistério' --11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel FROM Filmes.dbo.Filmes AS f INNER JOIN Filmes.dbo.ElencoFilme AS e ON f.Id = e.IdFilme INNER JOIN Filmes.dbo.Atores AS a ON e.IdAtor = a.Id --12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel