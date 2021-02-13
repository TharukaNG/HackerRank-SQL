--Hackerrank SQL Practice: Ms SQL

--SQL Project Planning

SELECT
  S.Start_Date,
  E.End_Date
FROM (SELECT
  Start_Date,
  ROW_NUMBER() OVER (ORDER BY Start_Date) Row_Num
FROM Projects
WHERE Start_Date NOT IN (SELECT
  END_Date
FROM Projects)) AS S
INNER JOIN (SELECT
  End_Date,
  ROW_NUMBER() OVER (ORDER BY End_Date) Row_Num
FROM Projects
WHERE End_Date NOT IN (SELECT
  Start_Date
FROM Projects)) AS E
  ON S.Row_Num = E.Row_Num
ORDER BY DATEDIFF(DAY, S.Start_Date, E.End_Date), S.Start_Date