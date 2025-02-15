SELECT
	Employee.LastName,
	Employee.FirstName
FROM
	Employee
WHERE
	( Employee.GiveAccess = 'T' )
	AND ( Employee.IsInactive = 'F' )
	AND ( Employee.ID NOT IN 
			(
				SELECT DISTINCT
					LoginAudit.User
				FROM
					LoginAudit
				WHERE
					( LoginAudit.Date >= ( SYSDATE - 90 ) )			
			)
		)	
ORDER BY
	Employee.LastName,
	Employee.FirstName