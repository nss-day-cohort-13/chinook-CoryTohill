--Provide a query that includes the purchased track name 
--AND artist name with each invoice line item.

SELECT
	il.*,
	t.Name as TrackName,
	a.Name as ArtistName
FROM
	Track t,
	InvoiceLine il,
	Artist a,
	Album al
WHERE t.TrackId = il.TrackId
AND t.AlbumId = al.AlbumId
AND al.ArtistId = a.ArtistId