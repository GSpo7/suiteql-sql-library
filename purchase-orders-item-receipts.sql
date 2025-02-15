-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-purchase-order-item-receipts/
SELECT
	Transaction.TranDate AS DateReceived,	
	BUILTIN.DF( Transaction.Entity ) AS Supplier,	
	PO.TranID AS PONumber,
	POLine.LineSequenceNumber AS POLineNumber,	
	Transaction.TranID AS ReceiptID,
	Item.ItemID,
	Item.Description AS ItemDescription,
	POLine.Quantity AS QuantityOrdered,	
	TransactionLine.Quantity AS QuantityReceived,
	POLine.QuantityShipRecv AS TotalReceived,
	( POLine.Quantity - POLine.QuantityShipRecv) AS QuantityOpen
FROM
	Transaction
	INNER JOIN TransactionLine ON
		( TransactionLine.Transaction = Transaction.ID )
		AND ( TransactionLine.IsInventoryAffecting = 'T' )
	INNER JOIN Transaction AS PO ON
		( PO.ID = TransactionLine.CreatedFrom )
	INNER JOIN Item ON
		( Item.ID = TransactionLine.Item )
	LEFT OUTER JOIN PreviousTransactionLineLink AS PTLL ON
		( PTLL.NextType = 'ItemRcpt' )
		AND ( PTLL.NextDoc = TransactionLine.Transaction )
        AND ( PTLL.NextLine = TransactionLine.ID )
	LEFT OUTER JOIN TransactionLine AS POLine ON
		( POLine.Transaction = PO.ID )
		AND ( POLine.linesequencenumber = PTLL.PreviousLine )
WHERE
	( Transaction.Type = 'ItemRcpt' )
	AND ( Transaction.TranDate BETWEEN TO_DATE('2020-11-27', 'YYYY-MM-DD' ) AND TO_DATE('2020-11-30', 'YYYY-MM-DD' ) )	
	AND ( Transaction.Voided = 'F' )
	AND ( TransactionLine.Quantity <> 0 )
ORDER BY
	DateReceived,
	Supplier,
	PONumber,	
	ItemID