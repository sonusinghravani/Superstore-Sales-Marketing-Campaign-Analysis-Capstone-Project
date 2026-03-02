-- Verify COUNTS:
SELECT COUNT(*) AS total_rows 
FROM superstore_campaign;

-- Duplicate IDs check 
SELECT Id, COUNT(*) AS count
FROM superstore_campaign
GROUP BY Id
HAVING COUNT(*) > 1;



