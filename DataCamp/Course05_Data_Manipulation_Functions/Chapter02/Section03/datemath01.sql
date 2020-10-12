DECLARE @date1 datetime = '2018-12-01';
DECLARE @date2 datetime = '2030-03-03';

SELECT
--subtract date1 from date2
@date2 - @date1 AS date_subtraction,
--add date1 to date2
@date1 + @date2 AS date_addition,
--DATEDIFF() to get years
DATEDIFF(YEAR, (@date2 - @date1), (@date1 + @date2))
--get 238 years as the result