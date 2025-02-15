-- Contributor: Ghanny.A
SELECT
	scriptid,
	name,
	fieldtype,
	fieldvaluetype,
	BUILTIN.DF( owner ) AS owner,
	lastmodifieddate
FROM
	CustomField
ORDER BY
	scriptid
