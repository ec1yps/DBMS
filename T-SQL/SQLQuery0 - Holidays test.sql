USE PV_319_Import;
SET DATEFIRST 1;
GO

--EXEC sp_AddHolidaysFor 2023

SELECT
	[Дата] = [date],
	[Праздник] = holiday_name 
FROM DaysOFF,Holidays
WHERE holiday = holiday_id