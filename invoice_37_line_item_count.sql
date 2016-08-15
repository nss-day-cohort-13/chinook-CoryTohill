--Looking at the InvoiceLine table, provide a query that 
--COUNTs the number of line items for Invoice ID 37.

SELECT " Number of Line Items for Invoice ID 37", COUNT (il.InvoiceLineId)

FROM
	InvoiceLine il
WHERE
	il.InvoiceId = 37