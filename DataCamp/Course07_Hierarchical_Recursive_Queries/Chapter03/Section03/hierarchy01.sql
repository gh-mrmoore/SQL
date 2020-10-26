CREATE TABLE Equipment (   
    -- Define ID and ParentID 
	ID INT NOT NULL,
    Equipment VARCHAR(255) NOT NULL,
    ParentID INT 
);

INSERT INTO Equipment VALUES ('1','Asset',NULL);
INSERT INTO Equipment VALUES ('2','Hardware','1');
-- Insert the type Software
INSERT INTO Equipment VALUES ('3','Software','1');
INSERT INTO Equipment VALUES ('4','Application','3');
INSERT INTO Equipment VALUES ('5','Tool','3');
INSERT INTO Equipment VALUES ('6','PC','2');
-- Insert the type Monitor 
INSERT INTO Equipment VALUES ('7','Monitor','2');
INSERT INTO Equipment VALUES ('8','Phone','2');
INSERT INTO Equipment VALUES ('9','IPhone','8');
-- Insert the type Microsoft Office 
INSERT INTO Equipment VALUES ('10','Microsoft Office','4');

SELECT * 
FROM Equipment;