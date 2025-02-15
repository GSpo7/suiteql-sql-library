-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-company-features/
SELECT
	Name,
	ID,
	IsAvailable,
	IsActive
FROM 
	CompanyFeatureSetup
ORDER BY
	Name