-- Contributor: Ghanny.A
SELECT
	BUILTIN.DF( Status ) AS StatusName,
	COUNT( * ) AS TransactionCount,
	SUM( ForeignTotal ) AS TotalAmount
FROM 
	Transaction 
WHERE 
	( Type = 'SalesOrd' )
GROUP BY
	ROLLUP( BUILTIN.DF( Status ) )
