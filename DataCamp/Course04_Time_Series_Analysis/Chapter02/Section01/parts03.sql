/*
Neil Armstrong and Buzz Aldrin landed the Apollo 11 Lunar Module--nicknamed The Eagle--on the moon on July 20th, 1969 at 20:17 UTC.
They remained on the moon for approximately 21 1/2 hours, taking off on July 21st, 1969 at 18:54 UTC.

Instructions
Build the date and time (using DATETIME2FROMPARTS()) that Neil and Buzz became the first people to land on the moon. Note the "2" in DATETIME2FROMPARTS(),
meaning we want to build a DATETIME2 rather than a DATETIME.

Build the date and time (using DATETIMEFROMPARTS()) that Neil and Buzz took off from the moon. Note that this is for a DATETIME, not a DATETIME2.
*/

SELECT
	-- Mark the date and time the lunar module touched down
    -- Use 24-hour notation for hours, so e.g., 9 PM is 21
	DATETIME2FROMPARTS(1969, 07, 20, 20, 17, 00, 000, 0) AS TheEagleHasLanded,
	-- Mark the date and time the lunar module took back off
    -- Use 24-hour notation for hours, so e.g., 9 PM is 21
	DATETIMEFROMPARTS(1969, 07, 21, 18, 54, 00, 000) AS MoonDeparture;