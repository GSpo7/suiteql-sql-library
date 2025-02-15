-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-dates-times/
SELECT
	TO_CHAR ( SYSDATE, 'DS TS' ) AS CurrentTimeServer,
	TO_CHAR ( CURRENT_DATE, 'DS TS' ) AS CurrentTimeUser,
	TO_CHAR ( SYSDATE, 'YYYY-MM-DD HH:MI:SS' ) AS CurrentSystemTimestamp,
	TO_CHAR ( SYSDATE, 'SSSSS' ) AS SecondsSinceMidnight,	
	TO_CHAR ( SYSDATE, 'RM' ) AS MonthRoman,
	TO_CHAR ( SYSDATE, 'MM' ) AS CurrentMonth,
	TO_CHAR ( SYSDATE, 'MONTH' ) AS CurrentMonthName,	
	TO_CHAR ( SYSDATE, 'DD' ) AS CurrentDay,
	TO_CHAR ( SYSDATE, 'DAY' ) AS CurrentDayName,
	TO_CHAR ( SYSDATE, 'YYYY' ) AS CurrentYear,
	TO_CHAR ( SYSDATE, 'YEAR' ) AS CurrentYearName,
	TO_CHAR ( SYSDATE, 'Q' ) AS CurrentQuarter,
	TO_CHAR ( SYSDATE, 'WW' ) AS WeekNumber
FROM
	Dual