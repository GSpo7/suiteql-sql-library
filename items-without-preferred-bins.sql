-- Contributor: Ghanny.A
SELECT
	Item.ID,
	Item.ItemID,
	BUILTIN.DF( Item.ItemType ) AS Type
FROM
	Item
WHERE
	Item.ID NOT IN
		(
			SELECT
				Item
			FROM
				ItemBinQuantity
			WHERE
				PreferredBin = 'T'
		)
