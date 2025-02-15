-- Contributor: Tim Dietrich (timdietrich@me.com)
SELECT
	Transaction.Type AS TransactionType,
	BUILTIN.DF( Status ) AS Status,
	COUNT(*) AS Count
FROM
	Transaction
GROUP BY
	Transaction.Type,
	BUILTIN.DF( Status )
ORDER BY
	TransactionType,
	Status