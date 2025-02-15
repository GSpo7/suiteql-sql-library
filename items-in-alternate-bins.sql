-- Contributor: Ghanny.A
SELECT
	Item AS ItemD,
	BUILTIN.DF( Item ) AS ItemName,
	Bin AS BinID,
	BUILTIN.DF( Bin ) AS BinName,
	OnHand
FROM
	ItemBinQuantity
WHERE
	( PreferredBin = 'F' )
	AND ( OnHand > 0 )
ORDER BY
	Item
