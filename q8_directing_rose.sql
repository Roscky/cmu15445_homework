WITH target_title_id AS(
	SELECT
		title_id
	FROM
		people
		INNER JOIN crew
		ON people.person_id = crew.person_id
	WHERE
		name LIKE 'Rose%'
		AND category = 'actress'
)
SELECT
	DISTINCT(name)
FROM
	people
	INNER JOIN crew
	ON people.person_id = crew.person_id
WHERE
	title_id IN target_title_id
	AND category = 'director'
ORDER BY
	name;
