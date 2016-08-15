--Which sales agent made the most in sales over all?

SELECT
	SalesPerEmployee.EmployeeName,
	Max(SalesPerEmployee.TotalSales) AS TotalSales
FROM 
	(SELECT
		e.FirstName || " " || e.LastName AS EmployeeName,
		ROUND(SUM (i.Total), 2) AS TotalSales

	FROM
		Customer c,
		Employee e,
		Invoice i
	
	WHERE c.SupportRepId = e.EmployeeId
	AND i.CustomerId = c.CustomerId
	GROUP BY e.EmployeeId) AS SalesPerEmployee