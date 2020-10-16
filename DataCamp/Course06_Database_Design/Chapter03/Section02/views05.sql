-- Revoke everyone's update and insert privileges
REVOKE UPDATE, INSERT ON long_reviews FROM postgres, repl, editor; 

-- Grant the editor update and insert privileges 
GRANT UPDATE, INSERT ON long_reviews TO editor;

-- have to find users first...???
-- SELECT * FROM pg_catalog.pg_user
/*  usename: postgres, repl, editor  */