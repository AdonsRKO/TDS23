use pubs

SELECT * FROM sys.tables

SELECT * FROM dbo.authors

-- Procura por duas colunas da mesma tabela

SELECT au_fname,
	   phone
FROM dbo.authors ORDER BY au_fname ASC

-- Procura pelo top 5 em forma decrescente 

SELECT TOP 5 ord_num, qty 
FROM dbo.sales
ORDER BY qty DESC

-- Procura por colunas especificas

SELECT * FROM dbo.authors
WHERE state = 'CA'
AND contract = 0
ORDER BY city

--Soma de uma coluna

SELECT SUM(qty) AS 'QUANTIDADE TOTAL' 
FROM dbo.sales 

select * from dbo.authors

UPDATE authors SET au_fname = 'Guilherme' WHERE au_id='172-32-1176'

UPDATE authors SET au_fname = 'Moises', au_lname='Meu querido' WHERE au_id='213-46-8915';