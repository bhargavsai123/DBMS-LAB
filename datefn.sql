SELECT CURDATE(); # Returns Current Date
SELECT NOW(); # Returns Current Datetime
SELECT SYSDATE(); # Returns System Datetime
SELECT YEAR('2025-6-15'); # Returns Year in Given Date
SELECT MONTH('2025-6-15'); # Returns Month in Given Date
SELECT DAY('2025-6-15'); # Returns Day in Given Date
SELECT DAYNAME('2025-6-15'); # Returns Dayname in Given Date
SELECT MONTHNAME('2025-6-15'); # Returns Month in Given Date
SELECT DATEDIFF('2025-06-20','2025-06-15'); # Returns Difference of Given Dates
SELECT DATE_ADD('2025-06-15', INTERVAL 10 DAY); # Adds Interval to Given Date
SELECT DATE_SUB('2025-06-15', INTERVAL 10 DAY); # Subtracts Interval to Given Date
SELECT LAST_DAY('2025-02-10'); # Returns Last Day of Month
SELECT STR_TO_DATE('15-06-2025','%d-%m-%Y'); # Converts String to Date
SELECT DATE_FORMAT('2025-06-15','%D %M %Y'); # Formats Date