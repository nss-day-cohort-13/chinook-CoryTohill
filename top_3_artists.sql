--Provide a query that shows the top 3 best selling artists.

SELECT
	ar.Name as Artist,
	COUNT (il.InvoiceLineId) as TracksSold

FROM
	Artist ar,
	Album al,
	Track t,
	InvoiceLine il
	
WHERE ar.ArtistId = al.ArtistId
AND al.AlbumId = t.AlbumId
AND t.TrackId = il.TrackId
GROUP BY ar.ArtistId
ORDER BY TracksSold DESC
LIMIT 3