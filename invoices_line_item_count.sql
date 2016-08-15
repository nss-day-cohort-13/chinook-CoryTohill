--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT
	i.*,
	COUNT (il.InvoiceLineId) as NumberOfInvoiceLineItems
FROM
	Invoice i,
	InvoiceLine il
WHERE il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId