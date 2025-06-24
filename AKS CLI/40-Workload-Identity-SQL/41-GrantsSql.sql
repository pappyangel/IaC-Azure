-- be sure to switch to the correct database context before running this script

-- get user assigned managed identity name from variable $USER_ASSIGNED_SQL_MI
-- echo $USER_ASSIGNED_SQL_MI

CREATE USER [<USER_ASSIGNED_SQL_MI>] FROM EXTERNAL PROVIDER;
ALTER ROLE db_datareader ADD MEMBER [<USER_ASSIGNED_SQL_MI>];
ALTER ROLE db_datawriter ADD MEMBER [<USER_ASSIGNED_SQL_MI>];