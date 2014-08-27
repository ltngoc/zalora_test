SELECT Item_Codes AS Item_Codes, SUM(Visits) AS totalNumVisit
FROM (SELECT Item_Codes AS Item_Codes, Visits AS Visits FROM reporting.items 
WHERE Date = '2013-01-12')
GROUP BY Item_Codes;

SELECT Item_Codes AS Item_Codes, SUM(Visits) AS totalNumVisit_Year
FROM (SELECT Item_Codes AS Item_Codes, Visits AS Visits, LEFT(Date, 4) AS Year 
FROM reporting.items)
GROUP BY Item_Codes, Year;

GRANT USAGE ON ALL TABLES IN SCHEMA sales TO buying;