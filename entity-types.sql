-- Contributor: Ghanny.A
SELECT DISTINCT
	Type,
	BUILTIN.DF( Type ) AS DFType,
	BUILTIN.CF( Type ) AS CFType
FROM
	Entity
ORDER BY
	Type
