--Provide a query that shows the most purchased track of 2013.

SELECT
	CurrentTrack,
	Max (TrackCounts)

FROM
	(SELECT
		t.Name as CurrentTrack,
		Count(il.TrackId) as TrackCounts
	FROM
		InvoiceLine il,
		Invoice i,
		Track t
	WHERE il.TrackId = t.TrackId
	AND il.InvoiceId = i.InvoiceId
	AND strftime("%Y", i.InvoiceDate) = "2013"
	GROUP BY il.TrackId)
	

