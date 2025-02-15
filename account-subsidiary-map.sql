-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-accounts-by-subsidiary/
SELECT
	Account,
	BUILTIN.DF( Account ) AS AccountName,
	Subsidiary,
	BUILTIN.DF( Subsidiary ) AS SubsidiaryName
FROM 
	AccountSubsidiaryMap