-- Q8: Return all the track names that have a song length longer than the average song length.
-- return the names and the milliseconds for each track. order by the song lenght with the
--  longest song listed first 

SELECT name, milliseconds 
FROM track
WHERE milliseconds > (
	SELECT AVG(milliseconds) AS avg_track_length
	FROM track)
ORDER BY milliseconds DESC;