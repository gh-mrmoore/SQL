-- Create the table
CREATE TABLE structure (
    -- Define the field EquipmentID 
  	EquipmentID INT NOT NULL PRIMARY KEY,
    EquipmentID_To INT ,
    EquipmentID_From INT, 
    VoltageLevel TEXT NOT NULL,
    Description TEXT NOT NULL,
    ConstructionYear INT NOT NULL,
    InspectionYear INT NOT NULL,
    ConditionAssessment TEXT NOT NULL
);

-- Insert the record for line 1 as described
INSERT INTO structure
VALUES ( 1, 2, NULL, 'HV', 'Cable', 2000, 2016, 'good');
INSERT INTO Structure
VALUES ( 2, 3 , 1, 'HV', 'Overhead Line', 1968, 2016, 'bad');
INSERT INTO Structure
VALUES ( 3, 14, 2, 'HV', 'TRANSFORMER', 1972, 2001, 'good');
-- Insert the record for line 14 as described
INSERT INTO Structure
VALUES ( 14, 15, 3, 'MV', 'Cable', 1976, 2002, 'bad');

SELECT * 
FROM structure