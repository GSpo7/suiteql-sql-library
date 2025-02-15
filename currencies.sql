-- Contributor: Ghanny.A
SELECT
	Symbol,
	Name,
	ExchangeRate,
	DisplaySymbol,
	SymbolPlacement,
	CurrencyPrecision,
	IsBaseCurrency,
	TO_CHAR( CurrencyRate.LastModifiedDate, 'YYYY-MM-DD HH:MI:SS' ) AS LastModifiedDate
FROM
	Currency
WHERE
	( IsInactive = 'F' )
ORDER BY
	Symbol
