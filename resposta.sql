-- Primeiro
SELECT Nome, Ano FROM Filmes

-- Segundo
SELECT * FROM Filmes
ORDER BY Ano

-- Terceiro
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- Quarto
SELECT * FROM Filmes
WHERE Ano = 1997

-- Quinto
SELECT * FROM Filmes
WHERE Ano > 2000

-- Sexto
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- Setimo
SELECT Ano,
       COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- Oitavo
SELECT * FROM ATORES
WHERE Genero = 'M'

-- NONO
SELECT * FROM ATORES
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Decimo
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- Decimo primeiro
SELECT Filmes.Nome, Generos.Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

-- Decimo Segundo
SELECT 
    Filmes.Nome, 
    Atores.PrimeiroNome, 
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
