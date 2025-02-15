-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Source: https://timdietrich.me/blog/netsuite-suiteql-assembly-items/
SELECT
	'<a href="/app/common/item/item.nl?id=' || AssemblyItem.ID || '" target="_item_' || AssemblyItem.ID || '">View</a>' AS AssemblyItemLink,
	AssemblyItem.ID AS AssemblyItemID,
	AssemblyItem.ItemID AS AssemblyItemItemID, 	
	AssemblyItem.Description AS AssemblyItemDec,
	'<a href="/app/common/item/item.nl?id=' || AssemblyItemMember.Item || '" target="_item_' || AssemblyItemMember.Item || '">View</a>' AS MemberItemLink,
	AssemblyItemMember.LineNumber,	
	AssemblyItemMember.Item AS MemberItemID,
	BUILTIN.DF( AssemblyItemMember.Item ) AS MemberItemItemID,	
	AssemblyItemMember.Quantity AS MemberItemQty,
	BUILTIN.DF( AssemblyItemMember.MemberUnit ) AS MemberItemUOM,
	AssemblyItemMember.ItemSource AS MemberItemSource,
	MemberItem.ItemType AS MemberItemType,
	MemberItem.Description AS MemberItemDesc
FROM
	Item AS AssemblyItem
	INNER JOIN AssemblyItemMember ON
		( AssemblyItemMember.ParentItem = AssemblyItem.ID )
	INNER JOIN Item AS MemberItem ON
		( MemberItem.ID = AssemblyItemMember.Item )
WHERE	
	( AssemblyItem.ID = 999999 )
ORDER BY
	AssemblyItemMember.LineNumber