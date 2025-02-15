-- Contributor: Ghanny.A
SELECT
	SalesOrder.ID AS SalesOrder,
	SalesOrder.TranID As SalesOrderID,
	BUILTIN.DF( SalesOrder.Status ) AS SalesOrderStatus,
	Fulfillment.ID AS Fulfillment,
	Fulfillment.TranID As FulfillmentID,
	BUILTIN.DF( Fulfillment.Status ) AS FulfillmentStatus
FROM
	NextTransactionLink AS NTL
	INNER JOIN Transaction AS SalesOrder ON
		( SalesOrder.ID = NTL.PreviousDoc )
	INNER JOIN Transaction AS Fulfillment ON
		( Fulfillment.ID = NTL.NextDoc )
WHERE
	( NTL.LinkType IN ( 'PickPack', 'ShipRcpt' ) )
	-- This is the internal ID of the SalesOrder.
	AND ( NTL.PreviousDoc = 91164478 )
