/*
select PlayerName, Country,
round(Weight_kg/SQUARE(Height_cm/100),2) BMI
from Players Where Country = 'USA'
Or Country = 'Canada'
order by BMI;
*/

-- change to
SELECT PlayerName, Country,
    ROUND(Weight_kg/SQUARE(Height_cm/100),2) BMI
FROM Players
WHERE Country = 'USA'
    OR Country = 'Canada'
ORDER BY BMI;