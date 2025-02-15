-- Contributor: Ghanny.A
SELECT	
	BaseCurrency.Symbol AS BaseSymbol,
	TransactionCurrency.Symbol AS TransactionSymbol,
	CurrencyRate.ExchangeRate,
	TO_CHAR( CurrencyRate.EffectiveDate, 'YYYY-MM-DD HH:MI:SS' ) AS EffectiveDate,
	TO_CHAR( CurrencyRate.LastModifiedDate, 'YYYY-MM-DD HH:MI:SS' ) AS LastModifiedDate
FROM
	CurrencyRate
	INNER JOIN Currency AS BaseCurrency ON
		( BaseCurrency.ID = CurrencyRate.BaseCurrency )
	INNER JOIN Currency AS TransactionCurrency ON
		( TransactionCurrency.ID = CurrencyRate.TransactionCurrency )		
WHERE
	( CurrencyRate.EffectiveDate = TO_DATE( '2021-05-03', 'YYYY-MM-DD' ) )
ORDER BY
	BaseCurrency.Symbol,
	TransactionCurrency.Symbol,
	CurrencyRate.LastModifiedDate DESC
