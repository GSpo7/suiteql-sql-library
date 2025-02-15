-- Contributor: Ghanny.A
SELECT
	Customer.ID,	
	Customer.CompanyName,
	Customer.EntityID,
	BUILTIN.DF( Customer.Terms ) AS Terms,
	Customer.OnCreditHold,
	Customer.CreditLimit,
	Customer.BalanceSearch,
	Customer.OverdueBalanceSearch,
	Customer.UnbilledOrdersSearch,
	BUILTIN.DF( Customer.SalesRep ) AS SalesRep
FROM
	Customer
WHERE
	( OverdueBalanceSearch > 0 )
ORDER BY
	Customer.CompanyName
