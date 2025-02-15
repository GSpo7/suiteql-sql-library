-- Contributor: Ghanny.A
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
