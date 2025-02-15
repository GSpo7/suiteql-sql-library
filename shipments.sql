-- Contributor: Ghanny.A
SELECT
	Transaction.ID,
	Transaction.TranID,
	Transaction.TranDate,
	BUILTIN.DF( Transaction.Entity ) AS Customer,
	SalesOrder.TranID AS SONumber,
	SalesOrder.OtherRefNum AS PONumber,
	BUILTIN.DF( TransactionShipment.SourceAddress ) AS ShipFrom,
	BUILTIN.DF( TransactionShipment.DestinationAddress ) AS ShipTo,
	BUILTIN.DF( TransactionShipment.ShippingMethod ) AS ShipMethod,
	TransactionShipment.Weight,
	TransactionShipment.ShippingRate,
	TransactionShipment.HandlingRate,
	BUILTIN.DF( Transaction.TrackingNumberList ) AS TrackingNumbers
FROM
	Transaction
	INNER JOIN TransactionShipment ON
		( TransactionShipment.Doc = Transaction.ID )
	INNER JOIN TransactionLine ON
		( TransactionLine.Transaction = Transaction.ID )
		AND ( TransactionLine.MainLine = 'T' )
	INNER JOIN Transaction AS SalesOrder ON
		( SalesOrder.ID = TransactionLine.CreatedFrom )
WHERE
	( Transaction.Type = 'ItemShip' )
	AND ( Transaction.TranDate >= BUILTIN.RELATIVE_RANGES( 'DAGO30', 'START' ) )
ORDER BY
	Transaction.TranDate DESC,
	Transaction.TranID DESC
