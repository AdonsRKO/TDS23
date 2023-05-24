USE AdventureWorks2012

SELECT * FROM PERSON.PERSON
WHERE BusinessEntityID = 5 
OR BusinessEntityID = 111
OR BusinessEntityID = 23

SELECT * FROM Production.Product
WHERE Weight > 500 
AND Weight <= 700 


SELECT * FROM HumanResources.Employee
WHERE SalariedFlag = 1
AND MaritalStatus = 'M'
AND BirthDate <= '1983/01/01'

Select * from person.Person
WHERE FirstName = 'Peter'
And LastName = 'Krebs'

SELECT * FROM Person.EmailAddress
WHERE BusinessEntityID = 26

SELECT Person.Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress
FROM Person.Person, Person.EmailAddress
WHERE Person.BusinessEntityID = EmailAddress.BusinessEntityID 
AND Person.BusinessEntityID = 26

SELECT COUNT (*) AS 'Quantidade de Produtos'
FROM Production.Product

SELECT DISTINCT NAME 
FROM Production.Product

SELECT DISTINCT TITLE
FROM PERSON.PERSON

SELECT Weight
FROM Production.Product
WHERE Weight BETWEEN 500 AND 1000

SELECT  BirthDate
FROM HumanResources.Employee
WHERE BirthDate LIKE '1987%'

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (13, 19, 30)

Select HireDate
from HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'

SELECT * FROM Person.Person
WHERE FirstName LIKE 'ro_'


select *
from Production.Product
WHERE StandardCost > '1500'

Select count (lastname)
FROM Person.Person
WHERE LastName Like 'P%'

SELECT count( DISTINCT CITY ) 
FROM PERSON.Address

/*
AND - E
OR - OU 
NOT - SEMPRE ACOMPANHADO

=
>
<
<>
>=
<=

*/




