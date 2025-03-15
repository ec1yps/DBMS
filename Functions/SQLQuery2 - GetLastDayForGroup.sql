USE PV_319_Import;
GO

CREATE FUNCTION dbo.GetLastDayForGroup(@group NVARCHAR(10))RETURNS DATE
BEGIN
	RETURN (SELECT MAX([date]) FROM Schedule WHERE [group] = dbo.GetGroupID(@group));
END