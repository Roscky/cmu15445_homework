WITH batman_actors AS(
	SELECT 
		DISTINCT(people.person_id) AS id,
		name
	FROM 
		crew
		INNER JOIN people
		ON people.person_id = crew.person_id
	WHERE
		category = 'actor'
		AND characters LIKE '%"Batman"%'
)
SELECT
	name,
	ROUND(AVG(rating), 2) AS r
FROM
	batman_actors
	INNER JOIN crew
	ON crew.person_id = batman_actors.id
	INNER JOIN ratings
	ON ratings.title_id = crew.title_id
GROUP BY
	name
ORDER BY
	r DESC
LIMIT
	10;
