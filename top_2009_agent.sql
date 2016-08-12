-- Which sales agent made the most in sales in 2009?
--Hint: Use the MAX function on a subquery.

SELECT
	SalesPerEmployee.EmployeeName,
	Max(SalesPerEmployee.TotalSales) AS TotalSales2009
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
	AND i.InvoiceDate LIKE "2009%"
	GROUP BY e.EmployeeId) AS SalesPerEmployee