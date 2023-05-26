--CREATE DATABASE AulaJoin

CREATE TABLE TabelaA(
Id INT,
Nome VARCHAR (10) NOT NULL)

CREATE TABLE TabelaB(
ID INT,
Nome VARCHAR(10) not null)

Insert Into dbo.TabelaA (Id, Nome) 
Values ('4','Monitor')

Insert Into dbo.TabelaB(Id, Nome)
Values('4','samurai')


Select * from TabelaA A
Inner Join TabelaB B
ON A.Nome = B.Nome

Select * from TabelaA A
FULL OUTER Join TabelaB B
ON A.Nome = B.Nome

Select * from TabelaA A
LEFT JOIN TabelaB B
ON A.Nome = B.Nome
WHERE B.Nome IS NULL

USE AdventureWorks2012

SELECT ProductID, NAME, ProductNumber  FROM Production.Product
WHERE Name LIKE '%CHAI%'
UNION
SELECT ProductID, NAME, ProductNumber  FROM Production.Product
WHERE Name LIKE '%DECAL%'
ORDER BY NAME DESC

SELECT A.BusinessEntityID, A.FirstName, A.LastName, B.EmailAddress, C.JobTitle
FROM person.person A
INNER JOIN Person.EmailAddress B
ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN HumanResources.Employee C
ON A.BusinessEntityID = C.BusinessEntityID
WHERE C.JobTitle LIKE '%DESI%'
ORDER BY BusinessEntityID ASC


SELECT A.Name,A.ListPrice, B.Name
 FROM Production.Product A
INNER JOIN Production.ProductSubcategory B
ON A.ProductSubcategoryID = B.ProductSubcategoryID
ORDER BY A.ProductSubcategoryID ASC

select A.BusinessEntityID,C.FirstName, A.PhoneNumber, B.Name, B.PhoneNumberTypeID
from Person.PersonPhone AS A
Inner Join Person.PhoneNumberType AS B
On A.PhoneNumberTypeID = B.PhoneNumberTypeID
INNER JOIN Person.Person AS C
ON A.BusinessEntityID = C.BusinessEntityID
ORDER BY BusinessEntityID ASC


SELECT * FROM Person.Person
SELECT * FROM SALES.PersonCreditCard
SELECT * FROM PERSON.EmailAddress

SELECT A.BusinessEntityID, A.FirstName, B.CreditCardID, C.EmailAddress
FROM Person.Person AS A
INNER JOIN Sales.PersonCreditCard AS B
ON A.BusinessEntityID = B.BusinessEntityID
INNER JOIN PERSON.EmailAddress AS C
ON A.BusinessEntityID = C.BusinessEntityID
ORDER BY A.BusinessEntityID ASC

SELECT A.BusinessEntityID, A.FirstName, B.CreditCardID, C.EmailAddress
FROM Person.Person AS A
LEFT JOIN Sales.PersonCreditCard AS B 
ON B.BusinessEntityID = A.BusinessEntityID
LEFT JOIN PERSON.EmailAddress AS C 
ON C.BusinessEntityID = A.BusinessEntityID
WHERE B.CreditCardID IS NULL


SELECT * FROM Production.Product ORDER BY ListPrice DESC

SELECT AVG(LISTPRICE) FROM Production.Product

SELECT ProductID, ListPrice
FROM Production.Product
WHERE ListPrice > (SELECT AVG(LISTPRICE) FROM Production.Product)

SELECT * FROM Person.Person


SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN(5,6,15)

SELECT FirstName 
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee
							WHERE JobTitle = 'DESIGN ENGINEER')
