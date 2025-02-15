-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Source: https://timdietrich.me/blog/netsuite-suiteql-custom-lists/
SELECT
	Name,
	Description,
	ScriptID,
	BUILTIN.DF( Owner ) AS Owner,
	IsOrdered
FROM 
	CustomList
WHERE
	( IsInactive = 'F' )
ORDER BY
	Name