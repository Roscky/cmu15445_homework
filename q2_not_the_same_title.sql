SELECT premiered || '|' || primary_title || '(' || original_title || ')' AS info
FROM titles
WHERE primary_title != original_title AND genres LIKE '%Action%'
ORDER BY info DESC
LIMIT 10;
