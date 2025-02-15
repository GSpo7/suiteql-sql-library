-- Source: https://timdietrich.me/blog/netsuite-suiteql-leads/
SELECT
	Employee.LastName,
	Employee.FirstName,
	COUNT( Customer.ID ) AS LeadCount
FROM
	Employee
	LEFT OUTER JOIN Customer ON
		( Customer.SalesRep = Employee.ID )
		AND ( Customer.SearchStage = 'Lead' )
WHERE
	( Employee.IsInactive = 'F' )
	AND ( Employee.IsSalesRep = 'T' )
GROUP BY
	Employee.LastName,
	Employee.FirstName
ORDER BY
	Employee.LastName,
	Employee.FirstName