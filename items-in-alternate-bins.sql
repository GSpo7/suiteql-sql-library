-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-items-in-alternate-bins/
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