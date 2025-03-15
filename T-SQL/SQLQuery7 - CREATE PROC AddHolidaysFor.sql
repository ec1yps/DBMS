USE PV_319_Import;
GO

ALTER PROCEDURE sp_AddHolidaysFor
@year AS SMALLINT
AS
BEGIN
	EXEC sp_AddHolidays @year, N'���%';
	EXEC sp_AddHolidays @year, N'23%';
	EXEC sp_AddHolidays	@year, N'8%';
	EXEC sp_AddHolidays	@year, N'�����';
	EXEC sp_AddHolidays	@year, N'���%';
	EXEC sp_AddHolidays	@year, N'���%';
	EXEC sp_AddHolidays	@year, N'����%';
END