USE PV_319_Import;
SET DATEFIRST 1;
GO

--EXEC sp_SetScheduleForStacionarGroup N'PV_319', N'%MS SQL Server%', N'������', N'2024-12-21', N'18:30';
--EXEC sp_SetScheduleForStacionarGroup N'PD_321', N'%MS SQL Server%', N'�������', N'2024-12-21', N'13:30';

--EXEC sp_PrintScheduleForGroup N'PD_321';

--EXEC sp_PrintScheduleForGroupPeriod N'', '2024-11-28', '2024-12-31';

--DECLARE @salary SMALLMONEY;
--EXEC @salary = sp_CountTeachersMonthSalary N'������', 2024, 06;
--PRINT (@salary);

DELETE FROM Schedule;

EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'����������� ����������������%', N'������', N'2023-11-23', 4, 2, 1;
EXEC sp_ScheduleForBaseStacionarGroup N'PV_319', N'Hardware%', N'������', N'2023-11-25', 6, 2, 0;
--EXEC sp_ScheduleForStacionarGroup N'PV_319', N'��������%', N'������';
EXEC sp_ScheduleForStacionarGroup N'PV_319', N'%UML%', N'������';
EXEC sp_ScheduleForStacionarGroup N'PV_319', N'����%C#', N'������';

EXEC sp_PrintScheduleForGroup N'PV_319';