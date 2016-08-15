SELECT
	c.FirstName,
	c.LastName,
	i.InvoiceId,
	i.InvoiceDate,
	c.Country
FROM Customer c, Invoice i
WHERE c.CustomerId = i.CustomerId
AND c.Country = "Brazil"