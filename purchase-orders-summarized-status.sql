-- Contributor: Ghanny.A
SELECT
	Status,
	BUILTIN.DF( Status ) AS StatusName,
	COUNT( * ) AS TransactionCount,
	SUM( ( ForeignTotal * -1) ) AS TotalAmount
FROM 
	Transaction 
WHERE 
	( Type = 'PurchOrd' )
GROUP BY
	Status,
	BUILTIN.DF( Status )
ORDER BY
	Status
