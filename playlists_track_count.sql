--Provide a query that shows the total number of tracks in each playlist.
--The Playlist name should be include on the resulant table.

SELECT
	p.Name as PlaylistName,
	COUNT (t.TrackId) as NumberOfTracks

FROM
	Playlist p,
	PlaylistTrack plt,
	Track t
	
WHERE plt.PlaylistId = p.PlaylistId
AND plt.TrackId = t.TrackId

GROUP BY PlaylistName