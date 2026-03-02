-- Sanity Query : Distinct Counts

SELECT 
    COUNT(DISTINCT Education) AS unique_education,
    COUNT(DISTINCT Marital_Status) AS unique_marital_status,
    COUNT(DISTINCT Response) AS unique_response,
    COUNT(DISTINCT Complain) AS unique_complain
FROM superstore_campaign;

-- Education categories
SELECT Education, COUNT(*) AS count
FROM superstore_campaign
GROUP BY Education
ORDER BY count DESC;

-- Marital Status categories
SELECT Marital_Status, COUNT(*) AS count
FROM superstore_campaign
GROUP BY Marital_Status
ORDER BY count DESC;

-- Total spending across all categories
SELECT 
    SUM(MntWines) AS total_wines,
    SUM(MntFruits) AS total_fruits,
    SUM(MntMeatProducts) AS total_meat,
    SUM(MntFishProducts) AS total_fish,
    SUM(MntSweetProducts) AS total_sweets,
    SUM(MntGoldProducts) AS total_gold,
    SUM(Total_Spend) AS grand_total
FROM superstore_campaign;

-- Range check for numeric columns
SELECT 
    MIN(Year_Birth) AS min_birth_year,
    MAX(Year_Birth) AS max_birth_year,
    MIN(Age) AS min_age,
    MAX(Age) AS max_age,
    MIN(Income) AS min_income,
    MAX(Income) AS max_income,
    MIN(Total_Spend) AS min_spend,
    MAX(Total_Spend) AS max_spend,
    MIN(Recency) AS min_recency,
    MAX(Recency) AS max_recency
FROM superstore_campaign;

-- Date range verification
SELECT 
    MIN(Dt_Customer) AS earliest_enrollment,
    MAX(Dt_Customer) AS latest_enrollment,
    DATEDIFF(MAX(Dt_Customer), MIN(Dt_Customer)) AS days_span
FROM superstore_campaign;