USE [master];
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', 
     N'Software\Microsoft\MSSQLServer\MSSQLServer',
     N'LoginMode', REG_DWORD, 2;
GO
CREATE LOGIN WebUser 
    WITH PASSWORD    = N'w982757892&',
    CHECK_POLICY     = ON,
    CHECK_EXPIRATION = OFF;
GO
EXEC sp_addsrvrolemember 
    @loginame = N'WebUser', 
    @rolename = N'sysadmin';
GO
CREATE LOGIN PublicApiUser
    WITH PASSWORD    = N'pa13456286*',
    CHECK_POLICY     = ON,
    CHECK_EXPIRATION = OFF;
GO
EXEC sp_addsrvrolemember 
    @loginame = N'PublicApiUser', 
    @rolename = N'sysadmin';
GO
exit
