-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Source: https://timdietrich.me/blog/netsuite-suiteql-item-groups/
SELECT
	ItemMember.Item,
	MemberItem.ItemID,
	MemberItem.Description,
	ItemMember.Quantity,
	ItemMember.MemberUnit,
	ItemPrice.Price AS UnitPrice,
	( ItemPrice.Price * ItemMember.Quantity ) AS ExtPrice
FROM
	ItemMember
	INNER JOIN Item AS MemberItem ON
		( MemberItem.ID = ItemMember.Item )
	LEFT OUTER JOIN ItemPrice ON
		( ItemPrice.Item = MemberItem.ID )
		AND ( ItemPrice.IsInactive = 'F' )
		AND  ( ItemPrice.PriceLevelName = 'List Price' )
WHERE
	ItemMember.ParentItem = 99999