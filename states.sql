-- Contributor: Ghanny.A
SELECT
	State.ID,
	State.ShortName,
	State.FullName,
	State.Country
FROM
	State
ORDER BY
	State.ShortName
