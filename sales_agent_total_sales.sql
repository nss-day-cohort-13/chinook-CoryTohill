--Provide a query that shows total sales made by each sales agent.

SELECT
	e.FirstName || " " || e.LastName as EmployeeName,
	ROUND(SUM (i.Total), 2) as TotalSales

FROM
	Customer c,
	Employee e,
	Invoice i
	
WHERE c.SupportRepId = e.EmployeeId
AND i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId