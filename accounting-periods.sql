-- Contributor: Ghanny.A
SELECT
	AccountingPeriod.ID,
	AccountingPeriod.PeriodName, 
	ParentPeriod.ID AS ParentPeriodID,
	ParentPeriod.PeriodName AS ParentPeriodName,
	AccountingPeriod.StartDate,
	AccountingPeriod.EndDate,
	AccountingPeriod.IsPosting, 
	AccountingPeriod.IsAdjust,
	AccountingPeriod.AllLocked,
	AccountingPeriod.ARLocked,
	AccountingPeriod.APLocked,
	AccountingPeriod.AllowNonGLChanges,
	AccountingPeriod.LastModifiedDate,
	AccountingPeriod.Closed,
	AccountingPeriod.ClosedOnDate
FROM
	AccountingPeriod 
	INNER JOIN AccountingPeriod AS ParentPeriod ON
		( ParentPeriod.ID = AccountingPeriod.Parent )
WHERE
	( AccountingPeriod.IsInactive = 'F' )
	AND ( AccountingPeriod.IsPosting = 'T' )
	AND ( AccountingPeriod.IsQuarter = 'F' )
ORDER BY 
	AccountingPeriod.StartDate
