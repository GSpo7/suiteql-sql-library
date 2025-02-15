-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-gl-impact/
SELECT
	Transaction.TranID,
	BUILTIN.DF( TransactionAccountingLine.AccountingBook ) AS AccountingBookName,
	BUILTIN.DF( TransactionAccountingLine.Account ) AS Account,
	TransactionAccountingLine.Debit,
	TransactionAccountingLine.Credit,
	TransactionAccountingLine.Posting,
	BUILTIN.DF( Transaction.Entity ) AS EntityName,
	TransactionLine.Memo,
	BUILTIN.DF( TransactionLine.Subsidiary ) AS Subsidiary,
	BUILTIN.DF( TransactionLine.Department ) AS Department
FROM 
	Transaction
	INNER JOIN TransactionAccountingLine ON
		( TransactionAccountingLine.Transaction = Transaction.ID )
	LEFT OUTER JOIN TransactionLine ON
		( TransactionLine.Transaction = TransactionAccountingLine.Transaction )
		AND ( TransactionLine.LineSequenceNumber = TransactionAccountingLine.TransactionLine )
WHERE 
	( Transaction.ID = 26254 )
	AND ( TransactionAccountingLine.Account IS NOT NULL )
ORDER BY
	TransactionAccountingLine.TransactionLine