-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Reference: https://timdietrich.me/blog/netsuite-suiteql-dates-times/
SELECT
	TO_DATE( '2020-01-01', 'YYYY-MM-DD' ) AS AdHocDate,
	-- Note: Wrapping this in "TO_CHAR" so that you can see that the time portion of the timestamp has been set!
	TO_CHAR ( TO_DATE( '2020-01-01 09:10:11', 'YYYY-MM-DD HH:MI:SS' ), 'YYYY-MM-DD HH:MI:SS' ) AS AdHocTimestamp
FROM
	Dual