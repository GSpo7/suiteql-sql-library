-- Contributor: Ghanny.A
SELECT
	Transaction.ID,
	Transaction.TranID,
	Transaction.TranDate,
	BUILTIN.DF( Transaction.Entity ) AS Customer,
	BUILTIN.DF( Transaction.Status ) AS Status,
	Transaction.ForeignTotal AS Amount
FROM
	Transaction		
WHERE
	( Transaction.Type = 'CustInvc' )
	AND ( Transaction.TranDate BETWEEN 
		TO_DATE( '2020-01-01', 'YYYY-MM-DD' ) 
		AND TO_DATE( '2021-12-31', 'YYYY-MM-DD' ) 
	)
ORDER BY
	Transaction.Trandate ASC,
	Transaction.ID ASC	
