-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT
	i.BillingCountry,
	COUNT (i.InvoiceId) as NumberOfInvoices
FROM
	Invoice i
GROUP BY i.BillingCountry