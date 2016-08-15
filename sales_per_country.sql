--Provide a query that shows the total sales per country.

SELECT
	i.BillingCountry as Country,
	SUM (i.Total) as TotalSales
FROM
	Invoice i

GROUP BY i.BillingCountry