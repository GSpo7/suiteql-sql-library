-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-custom-segments/
SELECT
	CustomSegment.Name AS CustomSegmentName,
	CustomRecordType.ScriptID AS CustomSegmentTableName,
	CustomSegment.GLImpact	
FROM
	CustomSegment
	INNER JOIN CustomRecordType ON
		( CustomRecordType.InternalID = CustomSegment.RecordType )
WHERE
	( CustomSegment.IsInactive = 'F' )
ORDER BY
	CustomSegment.Name