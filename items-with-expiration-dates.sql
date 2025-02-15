-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-serialized-lot-number-expiring-items/
SELECT
	BUILTIN.DF( InventoryNumber.Item ) AS ItemID,
	InventoryNumber.InventoryNumber,
	InventoryNumber.QuantityOnHand,
	TO_DATE( InventoryNumber.ExpirationDate ) - TO_DATE( SYSDATE ) AS ExpirationDays 
FROM
	InventoryNumber
WHERE
	InventoryNumber.ExpirationDate IS NOT NULL
ORDER BY
	InventoryNumber.ExpirationDate