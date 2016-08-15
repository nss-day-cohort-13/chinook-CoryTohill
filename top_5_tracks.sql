--Provide a query that shows the top 5 most purchased tracks over all.


SELECT
	t.Name,
	Count (il.TrackId) as TrackCount
FROM
	InvoiceLine il,
	Track t
WHERE t.TrackId = il.TrackId
GROUP BY il.TrackId
ORDER BY TrackCount DESC
LIMIT 5	