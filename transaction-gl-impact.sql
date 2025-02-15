-- Contributor: Ghanny.A
SELECT
	BUILTIN.DF( TransactionAccountingLine.Account ) AS Account,
	TransactionAccountingLine.Debit,
	TransactionAccountingLine.Credit,
	TransactionAccountingLine.Posting,
	TransactionLine.Memo
FROM
	TransactionAccountingLine
	INNER JOIN TransactionLine ON
		( TransactionLine.Transaction = TransactionAccountingLine. Transaction )
		AND ( TransactionLine.ID = TransactionAccountingLine. TransactionLine )
WHERE
	( TransactionAccountingLine.Transaction = 88417362 )
	AND ( ( TransactionAccountingLine.Debit IS NOT NULL ) 
		OR ( TransactionAccountingLine.Credit IS NOT NULL )
	)
ORDER BY
	TransactionLine.ID
