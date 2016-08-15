--Provide a query that shows all the Tracks, but displays no IDs.
--The result should include the Album name, Media type and Genre.

SELECT
	t.Name as Track,
	a.Title as Album,
	mt.Name as MediaType,
	g.Name as Genre
	
FROM
	Track t,
	Album a,
	MediaType mt,
	Genre g
	
WHERE g.GenreId = t.GenreId
AND a.AlbumId = t.AlbumId
AND mt.MediaTypeId = t.MediaTypeId