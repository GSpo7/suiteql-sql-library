-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-order-status-summaries/
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