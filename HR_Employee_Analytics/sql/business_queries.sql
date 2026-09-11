SELECT Department,COUNT(*) Employees,ROUND(100*AVG(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END),2) AttritionRate FROM hr_employees GROUP BY Department ORDER BY AttritionRate DESC;
SELECT OverTime,COUNT(*) Employees,ROUND(100*AVG(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END),2) AttritionRate FROM hr_employees GROUP BY OverTime;
SELECT JobRole,ROUND(AVG(MonthlyIncome),2) AvgIncome,ROUND(100*AVG(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END),2) AttritionRate FROM hr_employees GROUP BY JobRole ORDER BY AvgIncome DESC;
