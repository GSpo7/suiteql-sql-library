-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-states-countries/
SELECT
	Country.ID,
	Country.Name,
	Country.Edition,
	Country.Nationality
FROM
	Country
ORDER BY
	Country.Name