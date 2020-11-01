-- Create @RideHrs
DECLARE @RideHrs AS numeric
-- Execute SumRideHrsSingleDay function and store the result in @RideHrs
EXEC @RideHrs = dbo.SumRideHrsSingleDay @DateParm = '3/5/2018' 
SELECT 
  'Total Ride Hours for 3/5/2018:', 
  @RideHrs