-- example window query
SELECT DISTINCT t.State,
  t.City,
  t.Zipcode,
  AVG(s.TotalDue) OVER(PARTITION BY t.State) as 'StateAvgTotal',
  AVG(s.TotalDue) OVER(PARTITION BY t.City) as 'CityAvgTotal',
  AVG(s.TotalDue) OVER(PARTITION BY t.Zipcode) as 'ZipcodeAvgTotal'
FROM Orders s
  JOIN Customer t ON s.CustomerID = t.CustomerID
WHERE YEAR(s.CreationDate) = 2016
ORDER BY 1,
  2,
  3;
-- aggregate from exercises 
-- SELECT State,
--   AVG(TotalDue) as Avg_Due,
--   MIN(TotalDue) as Min_Due,
--   MAX(TotalDue) as Max_Due,
--   SUM(TotalDue) as Total_Sales
-- FROM Customer C
--   JOIN Orders O ON O.CustomerID = C.CustomerID
-- GROUP BY State
-- ORDER BY Avg_Due DESC;
-- check CreationDate
-- SELECT CreationDate
-- FROM Orders
-- LIMIT 10;