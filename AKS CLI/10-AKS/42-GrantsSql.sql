--switch to the correct database --awltdb
-- use awltdb


CREATE USER [sql_mi] FROM EXTERNAL PROVIDER;
ALTER ROLE db_datareader ADD MEMBER [sql_mi];
ALTER ROLE db_datawriter ADD MEMBER [sql_mi];

