-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-roles-not-used/
SELECT
	Role.ID,
	Role.Name,
	Role.IsInactive
FROM 
	Role
WHERE
	( Role.IsInactive = 'F' )
	AND ( ID NOT IN
			(
				SELECT DISTINCT
					LoginAudit.Role
				FROM
					LoginAudit
				WHERE
					( LoginAudit.Date >= ( SYSDATE - 90 ) )
					AND ( LoginAudit.Role IS NOT NULL )
			)
		)
ORDER BY
	Role.Name