CREATE VIEW customer_info AS
SELECT 
    Id,
    Year_Birth,
    Age,
    Education,
    Marital_Status,
    Income,
    Kidhome,
    Teenhome,
    (Kidhome + Teenhome) AS Family_Size,
    Dt_Customer,
    DATEDIFF(CURDATE(), Dt_Customer) AS Tenure_Days
FROM superstore_campaign;

SELECT * FROM customer_info LIMIT 10;


CREATE VIEW spending_profile AS
SELECT 
    Id,
    MntWines,
    MntFruits,
    MntMeatProducts,
    MntFishProducts,
    MntSweetProducts,
    MntGoldProducts,
    Total_Spend,
    CASE 
        WHEN Total_Spend >= 1500 THEN 'High Spender'
        WHEN Total_Spend >= 500 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS Spender_Category,
    -- Category Breadth 
    (CASE WHEN MntWines > 0 THEN 1 ELSE 0 END +
     CASE WHEN MntFruits > 0 THEN 1 ELSE 0 END +
     CASE WHEN MntMeatProducts > 0 THEN 1 ELSE 0 END +
     CASE WHEN MntFishProducts > 0 THEN 1 ELSE 0 END +
     CASE WHEN MntSweetProducts > 0 THEN 1 ELSE 0 END +
     CASE WHEN MntGoldProducts > 0 THEN 1 ELSE 0 END) AS Category_Breadth
FROM superstore_campaign;

-- Test
SELECT * FROM spending_profile LIMIT 10;

-- Category-wise count 
SELECT Spender_Category, COUNT(*) AS count
FROM spending_profile
GROUP BY Spender_Category;


CREATE VIEW channel_usage AS
SELECT 
    Id,
    NumDealsPurchases,
    NumWebPurchases,
    NumCatalogPurchases,
    NumStorePurchases,
    Total_Purchases,
    NumWebVisitsMonth,
    CASE 
        WHEN NumWebPurchases > NumStorePurchases THEN 'Digital Shopper'
        WHEN NumStorePurchases > NumWebPurchases THEN 'In-Store Shopper'
        WHEN NumWebPurchases = NumStorePurchases AND NumWebPurchases > 0 THEN 'Mixed Shopper'
        ELSE 'Inactive'
    END AS Shopping_Preference,
    ROUND(NumWebPurchases / NULLIF(Total_Purchases, 0) * 100, 2) AS Web_Purchase_Percent
FROM superstore_campaign;


SELECT * FROM channel_usage LIMIT 10;

-- Shopping preference distribution
SELECT Shopping_Preference, COUNT(*) AS count
FROM channel_usage
GROUP BY Shopping_Preference;
