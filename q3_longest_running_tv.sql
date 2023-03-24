SELECT primary_title, IFNULL(ended, 2023) - premiered AS runtime
FROM titles
WHERE type = 'tvSeries' AND premiered NOT NULL
ORDER BY runtime DESC, primary_title
LIMIT 20;
