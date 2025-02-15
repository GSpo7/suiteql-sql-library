-- Contributor: Ghanny.A
SELECT
	Transaction.TranID,
	Transaction.TranDate,
	Transaction.Entity AS CustomerID,
	BUILTIN.DF( Transaction.Entity ) AS CustomerName,
	BUILTIN.DF( Transaction.Status ) AS Status,
	Transaction.ForeignTotal AS Total,
	( 
		SELECT 
			SUM( TransactionLine.ForeignAmount * -1 ) AS SalesTax 
		FROM
			TransactionLine 
		WHERE
			( TransactionLine.Transaction = Transaction.ID )
			AND ( TransactionLine.TaxLine = 'T' )
	) AS SalesTax
FROM 
	Transaction
WHERE 
	( Transaction.Type = 'SalesOrd' )
	AND ( Transaction.ID = 11708 )
