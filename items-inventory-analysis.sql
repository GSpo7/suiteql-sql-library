-- Contributor: Ghanny.A
SELECT
	Item.ItemID,
	BUILTIN.DF( Item.Parent ) AS ParentItem,
	Item.Description,
	Item.QuantityOnHand,
	Item.QuantityCommitted,
	Item.QuantityAvailable,
	Item.QuantityOnOrder,
	Item.QuantityBackOrdered,
	Item.ReorderPoint,
	Item.PreferredStockLevel,
	Item.LeadTime,
	Vendor.CompanyName AS PreferredVendor,
	Item.Cost AS PurchasePrice,
	ROUND( Item.AverageCost, 2 ) AS AverageCost,
	ROUND( Item.LastPurchasePrice, 2 ) AS LastPurchasePrice,
	( 
		SELECT
			MIN( Transaction.TranDate )
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( TransactionLine.Item = Item.ID )
			AND ( Transaction.Type = 'SalesOrd' )
	) AS FirstSold,
	( 
		SELECT
			MAX( Transaction.TranDate )
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( TransactionLine.Item = Item.ID )
			AND ( Transaction.Type = 'SalesOrd' )
	) AS LastSold,	
	( 
		SELECT
			MIN( Transaction.TranDate )
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( TransactionLine.Item = Item.ID )
			AND ( Transaction.Type = 'PurchOrd' )
	) AS FirstPurchased,
	( 
		SELECT
			MAX( Transaction.TranDate )
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( TransactionLine.Item = Item.ID )
			AND ( Transaction.Type = 'PurchOrd' )
	) AS LastPurchased,		
	( 
		SELECT
			( SUM( TransactionLine.Quantity ) * -1 )
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( TransactionLine.Item = Item.ID )
			AND ( Transaction.Type = 'SalesOrd' )
			AND ( ( TRUNC( SYSDATE ) - Transaction.TranDate ) <= 30 )
	) AS QtySold30Days,	
	( 
		SELECT
			( SUM( TransactionLine.Quantity ) * -1 )
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( TransactionLine.Item = Item.ID )
			AND ( Transaction.Type = 'SalesOrd' )
			AND ( ( TRUNC( SYSDATE ) - Transaction.TranDate ) <= 90 )
	) AS QtySold90Days,
	( 
		SELECT
			( SUM( TransactionLine.Quantity ) * -1 )
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( TransactionLine.Item = Item.ID )
			AND ( Transaction.Type = 'SalesOrd' )
			AND ( ( TRUNC( SYSDATE ) - Transaction.TranDate ) <= 365 )
	) AS QtySold1Year,
	( 
		SELECT
			( SUM( TransactionLine.Quantity ) * -1 )
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( TransactionLine.Item = Item.ID )
			AND ( Transaction.Type = 'SalesOrd' )
	) AS QtySoldLifetime
FROM 
	Item 
	LEFT OUTER JOIN ItemVendor ON
		( ItemVendor.Item = Item.ID )
		AND ( ItemVendor.PreferredVendor = 'T' )
	LEFT OUTER JOIN Vendor ON
		( Vendor.ID = ItemVendor.Vendor )
WHERE 
	( Item. ItemType = 'InvtPart' )
	AND ( ( Item.MatrixType IS NULL ) OR ( Item.MatrixType = 'CHILD' ) )
	AND ( Item.IsInactive = 'F' )
	AND ( ( Item.QuantityOnHand > 0 ) OR  ( Item.QuantityOnOrder > 0 ) OR  ( Item.QuantityBackOrdered > 0 ) )
