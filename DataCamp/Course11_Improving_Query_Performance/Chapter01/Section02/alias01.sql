/*
SELECT PlayerName, p.Country,
         SUM(ps.TotalPoints) AS TotalPoints  
FROM PlayerStats ps
INNER JOIN Players p
   ON ps.PlayerName = p.PlayerName
WHERE p.Country = 'Australia'
GROUP BY p.PlayerName, p.Country
*/

-- corrected
SELECT p.PlayerName, p.Country,
         SUM(ps.TotalPoints) AS TotalPoints  
FROM PlayerStats ps
INNER JOIN Players p
   ON ps.PlayerName = p.PlayerName
WHERE p.Country = 'Australia'
GROUP BY p.PlayerName, p.Country