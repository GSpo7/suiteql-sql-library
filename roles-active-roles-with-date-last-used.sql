-- Contributor: Ghanny.A
SELECT
	Role.ID,
	Role.Name,
	Role.IsInactive,
	( SELECT MAX( LoginAudit.Date ) FROM LoginAudit WHERE LoginAudit.Role = Role. ID ) AS LastUsed
FROM 
	Role
WHERE
	( Role.IsInactive = 'F' )
ORDER BY
	Role.Name
