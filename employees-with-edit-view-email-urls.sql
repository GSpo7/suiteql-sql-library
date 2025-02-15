-- Contributor: Ghanny.A
SELECT
	'<a href="/app/common/entity/employee.nl?id=' || Employee.ID || '&e=T" target="_new">Edit</a>' 
	|| ' | ' ||
	'<a href="/app/common/entity/employee.nl?id=' || Employee.ID || '" target="_new">View</a>' 
	AS Options,	
	LastName,
	FirstName,
	Title,
	'<a href="mailto:' || Email ||'">' || Email || '</a>' AS Email
FROM
	Employee
ORDER BY
	LastName,
	FirstName
