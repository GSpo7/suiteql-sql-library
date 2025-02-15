-- Contributor: Ghanny.A
SELECT
	BUILTIN.DF( Assigned ) AS AssignedTo,
	COUNT(*) AS ClosedCaseCount,
	ROUND( AVG( TimeToClose ), 0 ) AS AvgHoursToClose
FROM
	SupportCase
WHERE
	-- Closed or Solved.
	( Status IN ( 5, 7 ) )
	AND ( ( StartDate + ( ( 1/24 ) * TimeToClose ) ) BETWEEN TO_DATE( '2020-01-01', 'YYYY-MM-DD' ) AND TO_DATE( '2020-12-31', 'YYYY-MM-DD' ) )
GROUP BY
	BUILTIN.DF( Assigned )
ORDER BY
	AssignedTo
