--Provide a query that includes the purchased track name with each invoice line item.

SELECT
	il.*,
	t.Name as TrackName
FROM
	Track t,
	InvoiceLine il
WHERE
	t.TrackId = il.TrackId