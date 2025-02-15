-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-currency-exchange-rates/
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