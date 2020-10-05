SELECT 
	email,
    -- Convert birthdate to varchar show it like: "Mon dd,yyyy" 
    CONVERT(varchar, birthdate, 107) AS birthdate
FROM voters;