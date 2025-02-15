-- Source: https://timdietrich.me/blog/netsuite-suiteql-leads/
SELECT 
	Customer.ID AS CustomerID, 
	Customer.CompanyName,
	Customer.AltName, 
	Customer.IsPerson, 
	Customer.LastName, 
	Customer.FirstName, 
	Customer.Title, 
	Customer.Email, 
	Customer.Phone,
	Customer.DateCreated, 
	Customer.LastModifiedDate
FROM 
	Customer
WHERE
	( Customer.SearchStage = 'Lead' )
	AND ( Customer.SalesRep = 129 )
ORDER BY
	Customer.DateCreated DESC,
	Customer.CompanyName,
	Customer.AltName