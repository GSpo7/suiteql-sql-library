-- Contributor: Ghanny.A
SELECT
	Employee.LastName,
	Employee.FirstName,
	Employee.IsInactive,
	Employee.GiveAccess,
	(SELECT MAX ( TO_CHAR ( LoginAudit.Date, 'YYYY-MM-DD HH:MI:SS' ) ) FROM LoginAudit WHERE LoginAudit.User = Employee.ID ) AS LastLogin
FROM
	Employee.Employee
WHERE
	Employee.GiveAccess = 'T'
ORDER BY
	Employee.LastName,
	Employee.FirstName
