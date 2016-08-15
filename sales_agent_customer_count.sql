-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT
	e.FirstName || " " || e.LastName as SalesAgent,
	COUNT (c.SupportRepId) as NumberOfCustomers

FROM
	Customer c,
	Employee e

WHERE c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId