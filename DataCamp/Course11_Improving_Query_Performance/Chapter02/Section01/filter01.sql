-- First query
/*
SELECT PlayerName, 
    Team, 
    Position,
    (DRebound+ORebound)/CAST(GamesPlayed AS numeric) AS AvgRebounds
FROM PlayerStats
WHERE AvgRebounds >= 12;
*/

-- ('42S22', "[42S22] [Microsoft][ODBC Driver 17 for SQL Server][SQL Server]Invalid column name 'AvgRebounds'. (207) (SQLExecDirectW)")