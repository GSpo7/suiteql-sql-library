-- Contributor: Ghanny.A
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
