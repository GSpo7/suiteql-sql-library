-- Source: https://timdietrich.me/blog/netsuite-suiteql-query-pagination/
WITH 

	EmployeeData AS
		(
			SELECT
				ID,
				FirstName,
				LastName,
				Email
			FROM
				Employee
			WHERE
				( Email LIKE '%@netsuite.com' )
				AND ( LastName IS NOT NULL )
				AND ( FirstName IS NOT NULL )
		),

	EmployeeSummary AS
		( SELECT COUNT(*) AS RecordCount FROM EmployeeData )

SELECT
	*
FROM
	(
	
		SELECT
			ROWNUM - 1 AS RN,
			*
		FROM
			(

				SELECT
					* 
				FROM
					(

						SELECT
							RecordCount,
							NULL AS ID,
							NULL AS LastName,
							NULL AS FirstName,
							NULL AS Email
						FROM
							EmployeeSummary

						UNION ALL

						SELECT
							0,
							EmployeeData.ID,
							EmployeeData.LastName,
							EmployeeData.FirstName,
							EmployeeData.Email
						FROM
							EmployeeData
		
					)
				ORDER BY
					RecordCount DESC,
					UPPER( LastName ),
					UPPER( FirstName )

			)
			
	)
WHERE
	( RN = 0 ) OR ( RN BETWEEN 1 AND 10 )