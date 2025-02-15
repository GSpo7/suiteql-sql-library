-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-employees-supervisors-roles-permissions/
SELECT
	Employee.ID AS EmployeeID,	
	Employee.LastName,
	Employee.FirstName,
	Employee.Title,
	Employee.Email,
	Supervisor.LastName AS SupervisorLastName,
	Supervisor.FirstName AS SupervisorFirstName,
	Supervisor.Title AS SupervisorTitle,
	Supervisor.Email AS SupervisorEmail,
	Role.Name AS RoleName,
	RolePermissions.Name AS PermissionName,
	BUILTIN.DF( RolePermissions.PermLevel ) AS PermissionLevel
FROM
	Employee
	LEFT OUTER JOIN Employee AS Supervisor ON
		( Supervisor.ID = Employee.Supervisor )
	INNER JOIN EmployeeRolesForSearch ON
		( EmployeeRolesForSearch.Entity = Employee.ID )
	INNER JOIN Role ON
		( Role.ID = EmployeeRolesForSearch.Role )
		AND ( Role.IsInactive = 'F' )
	INNER JOIN RolePermissions ON
		( RolePermissions.Role = Role.ID )	
WHERE
	( Employee.IsInactive = 'F' )
	AND ( Employee.GiveAccess = 'T' )
ORDER BY
	Employee.LastName,
	Employee.FirstName