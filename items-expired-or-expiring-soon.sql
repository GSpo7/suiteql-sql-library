-- Contributor: Ghanny.A
SELECT
	BUILTIN.DF( InventoryNumber.Item ) AS ItemID,
	InventoryNumber.InventoryNumber,
	InventoryNumber.QuantityOnHand,
	TO_DATE( InventoryNumber.ExpirationDate ) - TO_DATE( SYSDATE ) AS ExpirationDays 
FROM
	InventoryNumber
WHERE
	InventoryNumber.ExpirationDate <= ( SYSDATE + 30 )
ORDER BY
	InventoryNumber.ExpirationDate
