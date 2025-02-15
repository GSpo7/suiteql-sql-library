-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-query-deleted-records/

SELECT
	TO_CHAR ( DeletedDate, 'DS TS' ) AS DeletedDate,
	Type AS RecordType,
	RecordID,
	BUILTIN.DF( DeletedBy ) AS DeletedBy,
	BUILTIN.DF( Context ) AS Context
FROM
	DeletedRecord
WHERE
	( DeletedDate >= TO_DATE ( TO_CHAR ( SYSDATE, 'YYYY-MM-DD' ),  'YYYY-MM-DD' ) )