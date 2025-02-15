-- Contributor: Tim Dietrich (timdietrich@me.com)
SELECT DISTINCT
	Transaction.Type AS TransactionType,
	Status,
	BUILTIN.DF( Status ) AS DFStatus,
	BUILTIN.CF( Status ) AS CFStatus
FROM
	Transaction
ORDER BY
	TransactionType,
	Status