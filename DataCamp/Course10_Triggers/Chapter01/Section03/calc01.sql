-- Run an update for some of the discounts
UPDATE Discounts
SET Discount = Discount + 1
WHERE Discount <= 5;

-- Verify the trigger ran successfully
SELECT * FROM DiscountsHistory;