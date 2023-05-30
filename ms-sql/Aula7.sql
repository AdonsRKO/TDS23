--USE AdventureWorks2012

SELECT * FROM Person.Person

SELECT FirstName, UPPER(FirstName), LastName, LOWER(LASTNAME) FROM Person.Person

-- LENGHTY - LEN

SELECT BusinessEntityID, FirstName, LEN(FirstName) FROM Person.Person
WHERE LEN(FIRSTNAME) <= 2
ORDER BY BusinessEntityID ASC

SELECT FirstName, SUBSTRING(FirstName,1,1) FROM Person.Person
WHERE SUBSTRING(FIRSTNAME,1,1) = '.'

SELECT * FROM Production.Product

SELECT ProductNumber, REPLACE(ProductNumber,'-','-2023-') FROM Production.Product

SELECT FirstName, MiddleName, LastName FROM Person.Person

CREATE OR ALTER VIEW NOMES AS 
SELECT FirstName, MiddleName, LastName 
FROM Person.Person
WHERE Title = 'Ms.'

SELECT * FROM NOMES
ORDER BY 3 DESC

SELECT A.FirstName,A.LastName, B.EmailAddress FROM Person.Person A
INNER JOIN Person.EmailAddress AS B
ON A.BusinessEntityID = B.BusinessEntityID
ORDER BY FirstName ASC

CREATE OR ALTER VIEW EMAILS AS
SELECT A.BusinessEntityID AS ID, A.FirstName AS NOME,A.LastName AS SOBRENOME, B.EmailAddress AS EMAIL FROM Person.Person A
INNER JOIN Person.EmailAddress AS B
ON A.BusinessEntityID = B.BusinessEntityID


SELECT * FROM EMAILS
ORDER BY ID ASC

SELECT PERSON.Person.*, EMAILS.* FROM Person.Person, EMAILS
WHERE Person.BusinessEntityID = EMAILS.ID

DROP VIEW NOMES