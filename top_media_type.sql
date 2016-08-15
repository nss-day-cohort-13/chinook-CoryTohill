--Provide a query that shows the most purchased Media Type.

SELECT
	MediaCount.Media as MediaType,
	MAX (MediaCount.MediaTypeSold) as NumberSold
FROM
	(SELECT
		mt.Name as Media,
		COUNT (mt.MediaTypeId) as MediaTypeSold

	FROM
		MediaType mt,
		Track t,
		InvoiceLine il
	
	WHERE mt.MediaTypeId = t.MediaTypeId
	AND t.TrackId = il.TrackId
	GROUP BY mt.MediaTypeId) as MediaCount