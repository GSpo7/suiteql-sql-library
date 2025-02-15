-- Contributor: Tim Dietrich (timdietrich@me.com)
SELECT DISTINCT
	Type,
	BUILTIN.DF( Type ) AS DFType,
	BUILTIN.CF( Type ) AS CFType
FROM
	Entity
ORDER BY
	Type