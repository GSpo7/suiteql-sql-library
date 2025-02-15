-- Contributor: Ghanny.A
SELECT
	Transaction.ID,
	Transaction.TranID,
	Transaction.TranDate,
	BUILTIN.DF( Transaction.PostingPeriod ) AS PostingPeriod,
	Transaction.Memo,
	Transaction.Posting,
	BUILTIN.DF( Transaction.Status ) AS Status,
	BUILTIN.DF( Transaction.CreatedBy ) AS CreatedBy
FROM
	Transaction
WHERE
	( Transaction.Type = 'Journal' )
	AND ( Transaction.TranDate BETWEEN TO_DATE( '2020-10-24', 'YYYY-MM-DD' ) AND TO_DATE( '2020-10-31', 'YYYY-MM-DD' ) )
ORDER BY
	Transaction.ID DESC
