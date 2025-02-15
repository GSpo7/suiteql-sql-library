-- Contributor: Tim Dietrich (timdietrich@me.com)
SELECT
	Transaction.TranDate AS Date,
	BUILTIN.DF( Transaction.Entity ) AS CustomerName,
	Transaction.Entity AS CustomerID,
	SalesOrder.TranID AS SalesOrder,
	SalesOrder.OtherRefNum AS CustomerPO,
	BUILTIN.DF( Mainline.Location ) AS Warehouse,
	BUILTIN.DF( Transaction.ShippingAddress ) AS Address,	
	Transaction.ShipCarrier AS Carrier,
	TransactionShipment.ShippingMethod AS Method,
	TransactionShipment.Weight,	
	( 
		SELECT 
			( SUM( Quantity ) * -1 )
		FROM 
			TransactionLine 
		WHERE 
			( TransactionLine.Transaction = Transaction.ID )
			AND ( TransactionLine.IsInventoryAffecting = 'T' )
	) AS ItemCount,
	( 
		SELECT
			LISTAGG( TrackingNumber, ', ' )
		FROM
			(
				SELECT DISTINCT
					TrackingNumber.TrackingNumber
				FROM
					TrackingNumberMap
					INNER JOIN TrackingNumber ON
						( TrackingNumber.ID = TrackingNumberMap.TrackingNumber )			
				WHERE
					TrackingNumberMap.Transaction = Transaction.ID
				ORDER BY
					TrackingNumber.TrackingNumber
		)
	) AS TrackingNumbers,
	( 
		SELECT
			LISTAGG( TO_CHAR( Quantity * -1 ) || ' x ' || BUILTIN.DF( TransactionLine.Item ), ', ' )
		FROM
			TransactionLine
		WHERE
			TransactionLine.Transaction = Transaction.ID
			AND ( TransactionLine.IsInventoryAffecting = 'T' )
	) AS Items	
FROM
	Transaction
	INNER JOIN TransactionLine AS Mainline ON
		( Mainline.Transaction = Transaction.ID )
		AND ( Mainline.MainLine = 'T' )
	INNER JOIN Transaction AS SalesOrder ON
		( SalesOrder.ID = Mainline.CreatedFrom )
	INNER JOIN TransactionShipment ON
		( TransactionShipment.Doc = Transaction.ID )
WHERE
	( Transaction.Type = 'ItemShip' )
	AND ( Transaction.TranDate >= TO_DATE( '2024-10-01', 'YYYY-MM-DD' ) )
	AND ( Transaction.Void = 'F' )
	AND ( BUILTIN.CF( Transaction.Status ) = 'ItemShip:C' )
ORDER BY
	Date,
	CustomerName