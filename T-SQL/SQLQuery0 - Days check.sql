USE PV_319_Import;
GO

PRINT(dbo.GetLearningDaysFor(N'PV_319'));

SELECT 
	group_name AS N'Группа',
	dbo.GetLearningDaysFor(group_name) AS N'Учебные дни'
FROM Groups
;