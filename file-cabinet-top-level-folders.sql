-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-file-cabinet/
SELECT 	
	*
FROM 
	MediaItemFolder
WHERE
	( IsTopLevel = 'T' )