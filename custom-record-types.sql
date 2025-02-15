-- Contributor: Tim Dietrich (timdietrich@me.com)
SELECT
	Name,
	ScriptID,
	Description,
	BUILTIN.DF( Owner ) AS Owner
FROM
	CustomRecordType
ORDER BY
	Name