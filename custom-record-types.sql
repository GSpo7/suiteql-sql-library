-- Contributor: Ghanny.A
SELECT
	Name,
	ScriptID,
	Description,
	BUILTIN.DF( Owner ) AS Owner
FROM
	CustomRecordType
ORDER BY
	Name
