-- Contributor: Ghanny.A
SELECT
	Account,
	BUILTIN.DF( Account ) AS AccountName,
	Subsidiary,
	BUILTIN.DF( Subsidiary ) AS SubsidiaryName
FROM 
	AccountSubsidiaryMap
