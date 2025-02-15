-- Contributor: Ghanny.A
SELECT
	Item.ItemID,
	Item.Description,
	Count(*) AS RMACount
FROM
	Transaction
	INNER JOIN TransactionLine ON
		( TransactionLine.Transaction = Transaction.ID )
	INNER JOIN Item ON
		( Item.ID = TransactionLine.Item )
WHERE
	( Transaction.Type = 'RtnAuth' )
	AND ( Transaction.TranDate BETWEEN TO_DATE('2020-01-01', 'YYYY-MM-DD' ) AND TO_DATE('2020-11-30', 'YYYY-MM-DD' ) )	
	AND ( Transaction.Voided = 'F' )
GROUP BY
	Item.ItemID,
	Item.Description
ORDER BY
	RMACount DESC,
	Item.ItemID
