-- Contributor: Ghanny.A
SELECT
	ItemType,
	COUNT( ID ) AS ItemCount
FROM
	Item
WHERE
	IsInactive = 'F'
GROUP BY
	ItemType
ORDER BY
	ItemType
