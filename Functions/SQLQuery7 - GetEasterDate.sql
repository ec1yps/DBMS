USE PV_319_Import;
GO

--https://ru.wikipedia.org/wiki/Алгоритм_Гаусса_вычисления_даты_Пасхи#.D0.90.D0.BB.D0.B3.D0.BE.D1.80.D0.B8.D1.82.D0.BC_.D0.B4.D0.BB.D1.8F_.D0.B2.D1.8B.D1.87.D0.B8.D1.81.D0.BB.D0.B5.D0.BD.D0.B8.D1.8F_.D0.B4.D0.B0.D1.82.D1.8B_.D0.9F.D0.B0.D1.81.D1.85.D0.B8

CREATE FUNCTION GetEasterDate(@year AS SMALLINT) RETURNS DATE
BEGIN
	DECLARE @easter_date AS DATE,
			@a AS TINYINT = @year % 19,
			@b AS TINYINT = @year % 4,
			@c AS TINYINT = @year % 7;

	DECLARE @d AS TINYINT = (19 * @a + 15)%30;
	DECLARE @e AS TINYINT = (2*@b + 4*@c + 6*@d + 6)%7;
	DECLARE @f AS TINYINT = @d+@e;

	IF(@f <= 9)
	BEGIN
		SET @easter_date = DATEFROMPARTS(@year, 03, (22 + @f));
	END
	ELSE
	BEGIN
		SET @easter_date = DATEFROMPARTS(@year, 04, (@f - 9));
	END
	
	SET @easter_date = DATEADD(DAY, 13, @easter_date);

	RETURN @easter_date;
END