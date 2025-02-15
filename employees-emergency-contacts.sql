SELECT
	Employee.ID AS EmployeeID,
	Employee.FirstName,
	Employee.LastName,
	Employee.Email,
	EmployeeEmergencyContact.Contact,
	EmployeeEmergencyContact.Relationship,
	EmployeeEmergencyContact.Address,
	EmployeeEmergencyContact.Phone
FROM
	Employee
	LEFT OUTER JOIN EmployeeEmergencyContact ON
		( EmployeeEmergencyContact.Employee = Employee.ID )
ORDER BY
	Employee.LastName,
	Employee.FirstName