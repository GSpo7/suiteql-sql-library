-- Contributor: Ghanny.A
SELECT
	BUILTIN.DF( Transaction.Entity ) AS Customer,
	COUNT(*) AS RMACount,
	( SUM( Transaction.ForeignTotal ) * -1 ) AS RMATotal
FROM
	Transaction
WHERE
	( Transaction.Type = 'RtnAuth' )
	AND ( Transaction.TranDate BETWEEN TO_DATE('2020-01-01', 'YYYY-MM-DD' ) AND TO_DATE('2020-11-30', 'YYYY-MM-DD' ) )	
	AND ( Transaction.Voided = 'F' )
GROUP BY
	BUILTIN.DF( Transaction.Entity )
ORDER BY
	Customer
