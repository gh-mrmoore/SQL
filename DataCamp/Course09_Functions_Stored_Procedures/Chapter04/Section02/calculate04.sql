SELECT
	-- Select the first 100 records of PickupDate
	TOP 100 PickupDate,
    -- Determine the shift value of PickupDate
	dbo.GetShiftNumber(DATENAME(hour, PickupDate)) AS 'Shift',
    -- Select FareAmount
	FareAmount,
    -- Convert FareAmount to Euro
	dbo.ConvertDollar(FareAmount, 0.87) AS 'FareinEuro',
    -- Select TripDistance
	TripDistance,
    -- Convert TripDistance to kilometers
	dbo.ConvertMiletoKm(TripDistance) AS 'TripDistanceinKM'
FROM YellowTripData
-- Only include records for the 2nd shift
WHERE dbo.GetShiftNumber(DATENAME(hour, PickupDate)) = 2;