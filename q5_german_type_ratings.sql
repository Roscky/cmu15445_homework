SELECT
	titles.type,
	ROUND(AVG(ratings.rating), 2) AS avg_rating,
	MIN(ratings.rating),
	MAX(ratings.rating)
FROM
	akas
	INNER JOIN ratings
	ON akas.title_id = ratings.title_id
	INNER JOIN titles
	ON akas.title_id = titles.title_id
WHERE
	akas.language == 'de'
	AND (akas.types == 'imdbDisplay' OR akas.types == 'original')
GROUP BY
	titles.type
ORDER BY
	avg_rating;
