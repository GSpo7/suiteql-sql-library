-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-support-cases/
SELECT
	BUILTIN.DF( Status ) AS Status,
	COUNT(*) AS OpenCaseCount,
	TRUNC( AVG( SYSDATE - StartDate ) ) AS AvgDaysOpen,
	TRUNC( AVG( ( SYSDATE - StartDate) * 24 ) ) AS AvgHoursOpen
FROM
	SupportCase
WHERE
	-- Not Closed or Solved.
	( Status NOT IN ( 5, 7 ) )
GROUP BY
	BUILTIN.DF( Status )
ORDER BY
	Status