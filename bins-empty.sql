-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-empty-warehouse-bins/
SELECT
	BUILTIN.DF( Bin.Location ) AS BinLocation,
	Bin.BinNumber
FROM
	Bin
	LEFT OUTER JOIN ItemBinQuantity ON
		( ItemBinQuantity.Bin = Bin.ID )
WHERE
	( Bin.Location = 16 )
GROUP BY
	BUILTIN.DF( Bin.Location ),
	Bin.BinNumber
HAVING
	SUM( ItemBinQuantity.OnHand ) = 0
ORDER BY
	BUILTIN.DF( Bin.Location ),
	Bin.BinNumber