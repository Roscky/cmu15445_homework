SELECT primary_title || '|' || (IFNULL(ended, 2023) - premiered)
FROM titles
WHERE type = 'tvSeries' AND premiered NOT NULL
ORDER BY IFNULL(ended, 2023) - premiered DESC, primary_title
LIMIT 20;
