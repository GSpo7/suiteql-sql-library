-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-return-authorizations/
SELECT
	Transaction.TranDate,
	Transaction.TranID ,
	BUILTIN.DF( Transaction.Entity ) AS Customer,
	BUILTIN.DF( Transaction.Status ) AS Status
FROM
	Transaction
WHERE
	( Transaction.Type = 'RtnAuth' )
	AND ( Transaction.TranDate BETWEEN TO_DATE('2020-01-01', 'YYYY-MM-DD' ) AND TO_DATE('2020-11-30', 'YYYY-MM-DD' ) )	
	AND ( Transaction.Voided = 'F' )