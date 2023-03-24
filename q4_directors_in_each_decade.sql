SELECT
	CAST(born / 10 * 10 AS TEXT) || 's' AS decades,
	COUNT(DISTINCT(people.person_id))
FROM 
	people
	INNER JOIN crew
	ON people.person_id = crew.person_id
WHERE
	people.born NOT NULL
	AND crew.category == 'director'
	AND people.born >= 1900
GROUP BY decades
ORDER BY decades;
