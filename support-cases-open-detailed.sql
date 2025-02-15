-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-support-cases/
SELECT
	SupportCase.ID,
	SupportCase.StartDate,
	SupportCase.CaseNumber,
	BUILTIN.DF( SupportCase.Status ) AS Status,
	Customer.EntityTitle AS Customer,
	SupportCase.Title AS Subject,
	SupportCase.Issue,
	BUILTIN.DF( SupportCase.Category ) AS Category,
	BUILTIN.DF( SupportCase.Assigned ) AS AssignedTo,
	BUILTIN.DF( SupportCase.Origin ) AS Origin,
	BUILTIN.DF( SupportCase.Priority ) AS Priority,
	SupportCase.TimeElapsed,
	SupportCase.TimeOpen,
	SupportCase.TimeToAssign	
FROM
	SupportCase
	INNER JOIN Entity AS Customer ON
		( Customer.ID = SupportCase.Company )
WHERE
	-- Not Closed or Solved.
	( SupportCase.Status NOT IN ( 5, 7 ) )
ORDER BY
	SupportCase.TimeOpen DESC