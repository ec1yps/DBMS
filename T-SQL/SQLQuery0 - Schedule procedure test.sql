USE PV_319_Import;
SET DATEFIRST 1;
GO

--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'%MS SQL Server%', N'Ковтун', N'2024-12-21', N'18:30';
--EXEC sp_SetScheduleForStacionarGroup N'PD_321', N'%MS SQL Server%', N'Покидюк', N'2024-12-21', N'13:30';

--EXEC sp_PrintScheduleForGroup N'PD_321';

--EXEC sp_PrintScheduleForGroupPeriod N'', '2024-11-28', '2024-12-31';

--DECLARE @salary SMALLMONEY;
--EXEC @salary = sp_CountTeachersMonthSalary N'Ковтун', 2024, 06;
--PRINT (@salary);

DELETE FROM Schedule;

EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'Процедурное программирование%', N'Ковтун', N'2023-11-23', 4, 2, 1;
EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'Hardware%', N'Ковтун', N'2023-11-25', 6, 2, 0;
--EXEC sp_ScheduleForStacionarGroup N'PV_319', N'Объектно%', N'Ковтун';
EXEC sp_ScheduleForStacionarGroup N'PV_319', N'%UML%', N'Ковтун';
EXEC sp_ScheduleForStacionarGroup N'PV_319', N'Язык%C#', N'Ковтун';

EXEC sp_PrintScheduleForGroup N'PV_319';