use AdventureWorks2012

SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE title = 'Mr.'
AND MiddleName IS NOT NULL
Union
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName = 'A'
AND Title IS NOT NULL
ORDER BY MiddleName ASC

Select * from person.person


