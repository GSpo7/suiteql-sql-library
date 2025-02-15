-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-transaction-line-usage/
SELECT
	* 
FROM 
	(
		SELECT
			TO_CHAR( Transaction.CreatedDate, 'YYYY-MM' ) AS TranMonth,
			Transaction.Type AS TranType,
			COUNT(*) AS TranLineCount
		FROM
			Transaction
			INNER JOIN TransactionLine ON
				( TransactionLine.Transaction = Transaction.ID )
		WHERE
			( Transaction.CreatedDate BETWEEN BUILTIN.RELATIVE_RANGES( 'LRH', 'START' ) AND BUILTIN.RELATIVE_RANGES( 'LRH', 'END' ) )
		GROUP BY
			TO_CHAR( Transaction.CreatedDate, 'YYYY-MM' ),
			Transaction.Type
	)
ORDER BY
	TranMonth,
	TranType