USE PV_319_Import;
SET DATEFIRST 1;
GO

--PRINT(dbo.GetGroupID(N'PV_319'));
--PRINT(dbo.GetDisciplineID(N'Hardware%'));
--EXEC sp_PrintScheduleForGroup N'PV_319';
--PRINT(dbo.CountSpentLessons(N'PV_319', N'%UML%'));
--PRINT(dbo.GetNewYearHolidaysStartDate(2023));
--PRINT(dbo.GetSummerHolidaysStart(2023));
--PRINT(dbo.GetHolidaysDuration(N'Нов%'));

--PRINT(dbo.GetHolidaysStartDate(N'Лет%', 2025));

--PRINT(dbo.GetEasterDate(2025));

--PRINT(dbo.GetLastDayForGroup(N'PV_319'));
--PRINT(dbo.GetMaxLearningDayFor(N'PV_319'));
--PRINT(dbo.GetNextLearningDayFor(N'PV_319'));

DECLARE @group AS NVARCHAR(10) = N'PV_319';
DECLARE @date AS DATE = dbo.GetLastDayForGroup(@group);
WHILE @date < '2025-01-01'
BEGIN
	PRINT(@date);
	PRINT(DATENAME(WEEKDAY, @date));
	PRINT('----------------')
	SET @date = dbo.GetNextLearningDateFor(@group);
END