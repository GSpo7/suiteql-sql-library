-- Contributor: Tim Dietrich (timdietrich@me.com)
-- Additional Info: https://timdietrich.me/blog/netsuite-suiteql-dynamic-calendar-date-ranges/
SELECT

	BUILTIN.RELATIVE_RANGES( 'FHBL', 'START' ) AS FISCAL_HALF_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'FHBL', 'END' ) AS FISCAL_HALF_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'FHBLTD', 'START' ) AS FISCAL_HALF_BEFORE_LAST_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'FHBLTD', 'END' ) AS FISCAL_HALF_BEFORE_LAST_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'FQBL', 'START' ) AS FISCAL_QUARTER_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'FQBL', 'END' ) AS FISCAL_QUARTER_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'FQBLTD', 'START' ) AS FISCAL_QUARTER_BEFORE_LAST_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'FQBLTD', 'END' ) AS FISCAL_QUARTER_BEFORE_LAST_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'FYBL', 'START' ) AS FISCAL_YEAR_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'FYBL', 'END' ) AS FISCAL_YEAR_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'FYBLTD', 'START' ) AS FISCAL_YEAR_BEFORE_LAST_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'FYBLTD', 'END' ) AS FISCAL_YEAR_BEFORE_LAST_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'DAGO5', 'START' ) AS FIVE_DAYS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'DAGO5', 'END' ) AS FIVE_DAYS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'DFN5', 'START' ) AS FIVE_DAYS_FROM_NOW_START,
	BUILTIN.RELATIVE_RANGES( 'DFN5', 'END' ) AS FIVE_DAYS_FROM_NOW_END,

	BUILTIN.RELATIVE_RANGES( 'DAGO4', 'START' ) AS FOUR_DAYS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'DAGO4', 'END' ) AS FOUR_DAYS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'DFN4', 'START' ) AS FOUR_DAYS_FROM_NOW_START,
	BUILTIN.RELATIVE_RANGES( 'DFN4', 'END' ) AS FOUR_DAYS_FROM_NOW_END,

	BUILTIN.RELATIVE_RANGES( 'TWN3W', 'START' ) AS FOUR_WEEKS_STARTING_THIS_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'TWN3W', 'END' ) AS FOUR_WEEKS_STARTING_THIS_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'LBW', 'START' ) AS LAST_BUSINESS_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'LBW', 'END' ) AS LAST_BUSINESS_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'LFH', 'START' ) AS LAST_FISCAL_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'LFH', 'END' ) AS LAST_FISCAL_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'LFHLFY', 'START' ) AS LAST_FISCAL_HALF_ONE_FISCAL_YEAR_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'LFHLFY', 'END' ) AS LAST_FISCAL_HALF_ONE_FISCAL_YEAR_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'LFHTD', 'START' ) AS LAST_FISCAL_HALF_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'LFHTD', 'END' ) AS LAST_FISCAL_HALF_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'LFQ', 'START' ) AS LAST_FISCAL_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'LFQ', 'END' ) AS LAST_FISCAL_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'LFQLFY', 'START' ) AS LAST_FISCAL_QUARTER_ONE_FISCAL_YEAR_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'LFQLFY', 'END' ) AS LAST_FISCAL_QUARTER_ONE_FISCAL_YEAR_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'LFQTD', 'START' ) AS LAST_FISCAL_QUARTER_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'LFQTD', 'END' ) AS LAST_FISCAL_QUARTER_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'LFQFYBL', 'START' ) AS LAST_FISCAL_QUARTER_TWO_FISCAL_YEARS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'LFQFYBL', 'END' ) AS LAST_FISCAL_QUARTER_TWO_FISCAL_YEARS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'LFY', 'START' ) AS LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'LFY', 'END' ) AS LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'LFYTD', 'START' ) AS LAST_FISCAL_YEAR_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'LFYTD', 'END' ) AS LAST_FISCAL_YEAR_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'LM', 'START' ) AS LAST_MONTH_START,
	BUILTIN.RELATIVE_RANGES( 'LM', 'END' ) AS LAST_MONTH_END,

	BUILTIN.RELATIVE_RANGES( 'LMLFQ', 'START' ) AS LAST_MONTH_ONE_FISCAL_QUARTER_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'LMLFQ', 'END' ) AS LAST_MONTH_ONE_FISCAL_QUARTER_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'LMLFY', 'START' ) AS LAST_MONTH_ONE_FISCAL_YEAR_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'LMLFY', 'END' ) AS LAST_MONTH_ONE_FISCAL_YEAR_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'LMTD', 'START' ) AS LAST_MONTH_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'LMTD', 'END' ) AS LAST_MONTH_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'LMFQBL', 'START' ) AS LAST_MONTH_TWO_FISCAL_QUARTERS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'LMFQBL', 'END' ) AS LAST_MONTH_TWO_FISCAL_QUARTERS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'LMFYBL', 'START' ) AS LAST_MONTH_TWO_FISCAL_YEARS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'LMFYBL', 'END' ) AS LAST_MONTH_TWO_FISCAL_YEARS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'LRH', 'START' ) AS LAST_ROLLING_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'LRH', 'END' ) AS LAST_ROLLING_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'LRQ', 'START' ) AS LAST_ROLLING_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'LRQ', 'END' ) AS LAST_ROLLING_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'LRY', 'START' ) AS LAST_ROLLING_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'LRY', 'END' ) AS LAST_ROLLING_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'LW', 'START' ) AS LAST_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'LW', 'END' ) AS LAST_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'LWTD', 'START' ) AS LAST_WEEK_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'LWTD', 'END' ) AS LAST_WEEK_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'LY', 'START' ) AS LAST_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'LY', 'END' ) AS LAST_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'LYTD', 'START' ) AS LAST_YEAR_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'LYTD', 'END' ) AS LAST_YEAR_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'MAN', 'START' ) AS MONTH_AFTER_NEXT_START,
	BUILTIN.RELATIVE_RANGES( 'MAN', 'END' ) AS MONTH_AFTER_NEXT_END,

	BUILTIN.RELATIVE_RANGES( 'MANTD', 'START' ) AS MONTH_AFTER_NEXT_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'MANTD', 'END' ) AS MONTH_AFTER_NEXT_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'MBL', 'START' ) AS MONTH_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'MBL', 'END' ) AS MONTH_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'MBLTD', 'START' ) AS MONTH_BEFORE_LAST_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'MBLTD', 'END' ) AS MONTH_BEFORE_LAST_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'NBW', 'START' ) AS NEXT_BUSINESS_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'NBW', 'END' ) AS NEXT_BUSINESS_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'NFH', 'START' ) AS NEXT_FISCAL_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'NFH', 'END' ) AS NEXT_FISCAL_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'NFQ', 'START' ) AS NEXT_FISCAL_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'NFQ', 'END' ) AS NEXT_FISCAL_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'NFY', 'START' ) AS NEXT_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'NFY', 'END' ) AS NEXT_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'N4W', 'START' ) AS NEXT_FOUR_WEEKS_START,
	BUILTIN.RELATIVE_RANGES( 'N4W', 'END' ) AS NEXT_FOUR_WEEKS_END,

	BUILTIN.RELATIVE_RANGES( 'NM', 'START' ) AS NEXT_MONTH_START,
	BUILTIN.RELATIVE_RANGES( 'NM', 'END' ) AS NEXT_MONTH_END,

	BUILTIN.RELATIVE_RANGES( 'NOH', 'START' ) AS NEXT_ONE_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'NOH', 'END' ) AS NEXT_ONE_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'NOM', 'START' ) AS NEXT_ONE_MONTH_START,
	BUILTIN.RELATIVE_RANGES( 'NOM', 'END' ) AS NEXT_ONE_MONTH_END,

	BUILTIN.RELATIVE_RANGES( 'NOQ', 'START' ) AS NEXT_ONE_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'NOQ', 'END' ) AS NEXT_ONE_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'NOW', 'START' ) AS NEXT_ONE_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'NOW', 'END' ) AS NEXT_ONE_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'NOY', 'START' ) AS NEXT_ONE_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'NOY', 'END' ) AS NEXT_ONE_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'NW', 'START' ) AS NEXT_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'NW', 'END' ) AS NEXT_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'DAGO90', 'START' ) AS NINETY_DAYS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'DAGO90', 'END' ) AS NINETY_DAYS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'DFN90', 'START' ) AS NINETY_DAYS_FROM_NOW_START,
	BUILTIN.RELATIVE_RANGES( 'DFN90', 'END' ) AS NINETY_DAYS_FROM_NOW_END,

	BUILTIN.RELATIVE_RANGES( 'OYBL', 'START' ) AS ONE_YEAR_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'OYBL', 'END' ) AS ONE_YEAR_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'PQLFY', 'START' ) AS PREVIOUS_FISCAL_QUARTERS_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'PQLFY', 'END' ) AS PREVIOUS_FISCAL_QUARTERS_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'PQTFY', 'START' ) AS PREVIOUS_FISCAL_QUARTERS_THIS_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'PQTFY', 'END' ) AS PREVIOUS_FISCAL_QUARTERS_THIS_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'PMLFH', 'START' ) AS PREVIOUS_MONTHS_LAST_FISCAL_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'PMLFH', 'END' ) AS PREVIOUS_MONTHS_LAST_FISCAL_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'PMLFQ', 'START' ) AS PREVIOUS_MONTHS_LAST_FISCAL_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'PMLFQ', 'END' ) AS PREVIOUS_MONTHS_LAST_FISCAL_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'PMLFY', 'START' ) AS PREVIOUS_MONTHS_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'PMLFY', 'END' ) AS PREVIOUS_MONTHS_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'PMSFHLFY', 'START' ) AS PREVIOUS_MONTHS_SAME_FISCAL_HALF_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'PMSFHLFY', 'END' ) AS PREVIOUS_MONTHS_SAME_FISCAL_HALF_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'PMSFQLFY', 'START' ) AS PREVIOUS_MONTHS_SAME_FISCAL_QUARTER_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'PMSFQLFY', 'END' ) AS PREVIOUS_MONTHS_SAME_FISCAL_QUARTER_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'PMTFH', 'START' ) AS PREVIOUS_MONTHS_THIS_FISCAL_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'PMTFH', 'END' ) AS PREVIOUS_MONTHS_THIS_FISCAL_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'PMTFQ', 'START' ) AS PREVIOUS_MONTHS_THIS_FISCAL_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'PMTFQ', 'END' ) AS PREVIOUS_MONTHS_THIS_FISCAL_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'PMTFY', 'START' ) AS PREVIOUS_MONTHS_THIS_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'PMTFY', 'END' ) AS PREVIOUS_MONTHS_THIS_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'OD', 'START' ) AS PREVIOUS_ONE_DAY_START,
	BUILTIN.RELATIVE_RANGES( 'OD', 'END' ) AS PREVIOUS_ONE_DAY_END,

	BUILTIN.RELATIVE_RANGES( 'OH', 'START' ) AS PREVIOUS_ONE_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'OH', 'END' ) AS PREVIOUS_ONE_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'OM', 'START' ) AS PREVIOUS_ONE_MONTH_START,
	BUILTIN.RELATIVE_RANGES( 'OM', 'END' ) AS PREVIOUS_ONE_MONTH_END,

	BUILTIN.RELATIVE_RANGES( 'OQ', 'START' ) AS PREVIOUS_ONE_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'OQ', 'END' ) AS PREVIOUS_ONE_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'OW', 'START' ) AS PREVIOUS_ONE_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'OW', 'END' ) AS PREVIOUS_ONE_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'OY', 'START' ) AS PREVIOUS_ONE_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'OY', 'END' ) AS PREVIOUS_ONE_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'PRH', 'START' ) AS PREVIOUS_ROLLING_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'PRH', 'END' ) AS PREVIOUS_ROLLING_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'PRQ', 'START' ) AS PREVIOUS_ROLLING_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'PRQ', 'END' ) AS PREVIOUS_ROLLING_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'PRY', 'START' ) AS PREVIOUS_ROLLING_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'PRY', 'END' ) AS PREVIOUS_ROLLING_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'SDFQBL', 'START' ) AS SAME_DAY_FISCAL_QUARTER_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'SDFQBL', 'END' ) AS SAME_DAY_FISCAL_QUARTER_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'SDFYBL', 'START' ) AS SAME_DAY_FISCAL_YEAR_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'SDFYBL', 'END' ) AS SAME_DAY_FISCAL_YEAR_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'SDLFQ', 'START' ) AS SAME_DAY_LAST_FISCAL_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'SDLFQ', 'END' ) AS SAME_DAY_LAST_FISCAL_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'SDLFY', 'START' ) AS SAME_DAY_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'SDLFY', 'END' ) AS SAME_DAY_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'SDLM', 'START' ) AS SAME_DAY_LAST_MONTH_START,
	BUILTIN.RELATIVE_RANGES( 'SDLM', 'END' ) AS SAME_DAY_LAST_MONTH_END,

	BUILTIN.RELATIVE_RANGES( 'SDLW', 'START' ) AS SAME_DAY_LAST_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'SDLW', 'END' ) AS SAME_DAY_LAST_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'SDMBL', 'START' ) AS SAME_DAY_MONTH_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'SDMBL', 'END' ) AS SAME_DAY_MONTH_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'SDWBL', 'START' ) AS SAME_DAY_WEEK_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'SDWBL', 'END' ) AS SAME_DAY_WEEK_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'SFHLFY', 'START' ) AS SAME_FISCAL_HALF_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'SFHLFY', 'END' ) AS SAME_FISCAL_HALF_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'SFHLFYTD', 'START' ) AS SAME_FISCAL_HALF_LAST_FISCAL_YEAR_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'SFHLFYTD', 'END' ) AS SAME_FISCAL_HALF_LAST_FISCAL_YEAR_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'SFQFYBL', 'START' ) AS SAME_FISCAL_QUARTER_FISCAL_YEAR_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'SFQFYBL', 'END' ) AS SAME_FISCAL_QUARTER_FISCAL_YEAR_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'SFQLFY', 'START' ) AS SAME_FISCAL_QUARTER_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'SFQLFY', 'END' ) AS SAME_FISCAL_QUARTER_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'SFQLFYTD', 'START' ) AS SAME_FISCAL_QUARTER_LAST_FISCAL_YEAR_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'SFQLFYTD', 'END' ) AS SAME_FISCAL_QUARTER_LAST_FISCAL_YEAR_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'SMFQBL', 'START' ) AS SAME_MONTH_FISCAL_QUARTER_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'SMFQBL', 'END' ) AS SAME_MONTH_FISCAL_QUARTER_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'SMFYBL', 'START' ) AS SAME_MONTH_FISCAL_YEAR_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'SMFYBL', 'END' ) AS SAME_MONTH_FISCAL_YEAR_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'SMLFQ', 'START' ) AS SAME_MONTH_LAST_FISCAL_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'SMLFQ', 'END' ) AS SAME_MONTH_LAST_FISCAL_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'SMLFQTD', 'START' ) AS SAME_MONTH_LAST_FISCAL_QUARTER_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'SMLFQTD', 'END' ) AS SAME_MONTH_LAST_FISCAL_QUARTER_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'SMLFY', 'START' ) AS SAME_MONTH_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'SMLFY', 'END' ) AS SAME_MONTH_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'SMLFYTD', 'START' ) AS SAME_MONTH_LAST_FISCAL_YEAR_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'SMLFYTD', 'END' ) AS SAME_MONTH_LAST_FISCAL_YEAR_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'SWFYBL', 'START' ) AS SAME_WEEK_FISCAL_YEAR_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'SWFYBL', 'END' ) AS SAME_WEEK_FISCAL_YEAR_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'SWLFY', 'START' ) AS SAME_WEEK_LAST_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'SWLFY', 'END' ) AS SAME_WEEK_LAST_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'DAGO60', 'START' ) AS SIXTY_DAYS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'DAGO60', 'END' ) AS SIXTY_DAYS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'DFN60', 'START' ) AS SIXTY_DAYS_FROM_NOW_START,
	BUILTIN.RELATIVE_RANGES( 'DFN60', 'END' ) AS SIXTY_DAYS_FROM_NOW_END,

	BUILTIN.RELATIVE_RANGES( 'DAGO10', 'START' ) AS TEN_DAYS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'DAGO10', 'END' ) AS TEN_DAYS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'DFN10', 'START' ) AS TEN_DAYS_FROM_NOW_START,
	BUILTIN.RELATIVE_RANGES( 'DFN10', 'END' ) AS TEN_DAYS_FROM_NOW_END,

	BUILTIN.RELATIVE_RANGES( 'DAGO30', 'START' ) AS THIRTY_DAYS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'DAGO30', 'END' ) AS THIRTY_DAYS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'DFN30', 'START' ) AS THIRTY_DAYS_FROM_NOW_START,
	BUILTIN.RELATIVE_RANGES( 'DFN30', 'END' ) AS THIRTY_DAYS_FROM_NOW_END,

	BUILTIN.RELATIVE_RANGES( 'TBW', 'START' ) AS THIS_BUSINESS_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'TBW', 'END' ) AS THIS_BUSINESS_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'TFH', 'START' ) AS THIS_FISCAL_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'TFH', 'END' ) AS THIS_FISCAL_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'TFHTD', 'START' ) AS THIS_FISCAL_HALF_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'TFHTD', 'END' ) AS THIS_FISCAL_HALF_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'TFQ', 'START' ) AS THIS_FISCAL_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'TFQ', 'END' ) AS THIS_FISCAL_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'TFQTD', 'START' ) AS THIS_FISCAL_QUARTER_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'TFQTD', 'END' ) AS THIS_FISCAL_QUARTER_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'TFY', 'START' ) AS THIS_FISCAL_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'TFY', 'END' ) AS THIS_FISCAL_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'TFYTD', 'START' ) AS THIS_FISCAL_YEAR_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'TFYTD', 'END' ) AS THIS_FISCAL_YEAR_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'TM', 'START' ) AS THIS_MONTH_START,
	BUILTIN.RELATIVE_RANGES( 'TM', 'END' ) AS THIS_MONTH_END,

	BUILTIN.RELATIVE_RANGES( 'TMTD', 'START' ) AS THIS_MONTH_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'TMTD', 'END' ) AS THIS_MONTH_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'TRH', 'START' ) AS THIS_ROLLING_HALF_START,
	BUILTIN.RELATIVE_RANGES( 'TRH', 'END' ) AS THIS_ROLLING_HALF_END,

	BUILTIN.RELATIVE_RANGES( 'TRQ', 'START' ) AS THIS_ROLLING_QUARTER_START,
	BUILTIN.RELATIVE_RANGES( 'TRQ', 'END' ) AS THIS_ROLLING_QUARTER_END,

	BUILTIN.RELATIVE_RANGES( 'TRY', 'START' ) AS THIS_ROLLING_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'TRY', 'END' ) AS THIS_ROLLING_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'TW', 'START' ) AS THIS_WEEK_START,
	BUILTIN.RELATIVE_RANGES( 'TW', 'END' ) AS THIS_WEEK_END,

	BUILTIN.RELATIVE_RANGES( 'TWTD', 'START' ) AS THIS_WEEK_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'TWTD', 'END' ) AS THIS_WEEK_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'TY', 'START' ) AS THIS_YEAR_START,
	BUILTIN.RELATIVE_RANGES( 'TY', 'END' ) AS THIS_YEAR_END,

	BUILTIN.RELATIVE_RANGES( 'TYTD', 'START' ) AS THIS_YEAR_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'TYTD', 'END' ) AS THIS_YEAR_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'DAGO3', 'START' ) AS THREE_DAYS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'DAGO3', 'END' ) AS THREE_DAYS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'DFN3', 'START' ) AS THREE_DAYS_FROM_NOW_START,
	BUILTIN.RELATIVE_RANGES( 'DFN3', 'END' ) AS THREE_DAYS_FROM_NOW_END,

	BUILTIN.RELATIVE_RANGES( 'FQB', 'START' ) AS THREE_FISCAL_QUARTERS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'FQB', 'END' ) AS THREE_FISCAL_QUARTERS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'FQBTD', 'START' ) AS THREE_FISCAL_QUARTERS_AGO_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'FQBTD', 'END' ) AS THREE_FISCAL_QUARTERS_AGO_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'FYB', 'START' ) AS THREE_FISCAL_YEARS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'FYB', 'END' ) AS THREE_FISCAL_YEARS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'FYBTD', 'START' ) AS THREE_FISCAL_YEARS_AGO_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'FYBTD', 'END' ) AS THREE_FISCAL_YEARS_AGO_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'MB', 'START' ) AS THREE_MONTHS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'MB', 'END' ) AS THREE_MONTHS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'MBTD', 'START' ) AS THREE_MONTHS_AGO_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'MBTD', 'END' ) AS THREE_MONTHS_AGO_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'TODAY', 'START' ) AS TODAY_START,
	BUILTIN.RELATIVE_RANGES( 'TODAY', 'END' ) AS TODAY_END,

	BUILTIN.RELATIVE_RANGES( 'TODAYTTM', 'START' ) AS TODAY_TO_END_OF_THIS_MONTH_START,
	BUILTIN.RELATIVE_RANGES( 'TODAYTTM', 'END' ) AS TODAY_TO_END_OF_THIS_MONTH_END,

	BUILTIN.RELATIVE_RANGES( 'TOMORROW', 'START' ) AS TOMORROW_START,
	BUILTIN.RELATIVE_RANGES( 'TOMORROW', 'END' ) AS TOMORROW_END,

	BUILTIN.RELATIVE_RANGES( 'DAGO2', 'START' ) AS TWO_DAYS_AGO_START,
	BUILTIN.RELATIVE_RANGES( 'DAGO2', 'END' ) AS TWO_DAYS_AGO_END,

	BUILTIN.RELATIVE_RANGES( 'DFN2', 'START' ) AS TWO_DAYS_FROM_NOW_START,
	BUILTIN.RELATIVE_RANGES( 'DFN2', 'END' ) AS TWO_DAYS_FROM_NOW_END,

	BUILTIN.RELATIVE_RANGES( 'WAN', 'START' ) AS WEEK_AFTER_NEXT_START,
	BUILTIN.RELATIVE_RANGES( 'WAN', 'END' ) AS WEEK_AFTER_NEXT_END,

	BUILTIN.RELATIVE_RANGES( 'WANTD', 'START' ) AS WEEK_AFTER_NEXT_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'WANTD', 'END' ) AS WEEK_AFTER_NEXT_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'WBL', 'START' ) AS WEEK_BEFORE_LAST_START,
	BUILTIN.RELATIVE_RANGES( 'WBL', 'END' ) AS WEEK_BEFORE_LAST_END,

	BUILTIN.RELATIVE_RANGES( 'WBLTD', 'START' ) AS WEEK_BEFORE_LAST_TO_DATE_START,
	BUILTIN.RELATIVE_RANGES( 'WBLTD', 'END' ) AS WEEK_BEFORE_LAST_TO_DATE_END,

	BUILTIN.RELATIVE_RANGES( 'YESTERDAY', 'START' ) AS YESTERDAY_START,
	BUILTIN.RELATIVE_RANGES( 'YESTERDAY', 'END' ) AS YESTERDAY_END
	
FROM
	DUAL