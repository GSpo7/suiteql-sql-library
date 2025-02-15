-- Contributor: Ghanny.A
SELECT
	BUILTIN.DF( Transaction.Type ) AS TransactionType,
	BUILTIN.DF( Account.AcctType ) AS AccountType,
	Account.DisplayNameWithHierarchy AS AccountHierarchy,
	TransactionAccountingLine.Posting,
	SUM( TransactionAccountingLine.Debit ) AS Debits,
	SUM( TransactionAccountingLine.Credit ) AS Credits,
	SUM( TransactionAccountingLine.Amount ) AS Amount
FROM 
	Transaction
	INNER JOIN TransactionAccountingLine ON
		( TransactionAccountingLine.Transaction = Transaction.ID )
	INNER JOIN Account ON
		( Account.ID = TransactionAccountingLine.Account )
WHERE
	( Transaction.TranDate >= BUILTIN.RELATIVE_RANGES( 'DAGO30', 'START' ) )
GROUP BY
	BUILTIN.DF( Transaction.Type ),
	BUILTIN.DF( Account.AcctType ),
	Account.DisplayNameWithHierarchy,
	TransactionAccountingLine.Posting
ORDER BY
	TransactionType,
	AccountType,
	DisplayNameWithHierarchy,
	TransactionAccountingLine.Posting
