-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Reference: https://docs.oracle.com/cd/B13789_01/olap.101/b10339/x_reserved006.htm
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