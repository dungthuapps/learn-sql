-- Clean when transaction_log, example, Marketing_log is full
USE master;
GO
ALTER DATABASE [Marketing]
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO
USE [Marketing]
GO
DBCC SHRINKFILE (N'Marketing_log' , 0, TRUNCATEONLY)
GO
ALTER DATABASE [Marketing]
SET MULTI_USER;
GO
