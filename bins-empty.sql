-- Contributor: Ghanny.A
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
