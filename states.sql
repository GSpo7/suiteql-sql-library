-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-states-countries/
SELECT
	State.ID,
	State.ShortName,
	State.FullName,
	State.Country
FROM
	State
ORDER BY
	State.ShortName