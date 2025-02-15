-- Contributor: Ghanny.A
SELECT
	Status,
	BUILTIN.DF( Status ) AS StatusName,
	COUNT( * ) AS TransactionCount,
	SUM( ForeignTotal ) AS TotalAmount
FROM 
	Transaction 
WHERE 
	( Type = 'SalesOrd' )
GROUP BY
	Status,
	BUILTIN.DF( Status )
ORDER BY
	Status
