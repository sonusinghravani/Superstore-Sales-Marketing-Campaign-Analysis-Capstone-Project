create database superstore_db;
use superstore_db;

CREATE TABLE superstore_campaign (
    Id INT PRIMARY KEY,
    
    -- Demographic Columns
    Year_Birth INT NOT NULL,
    Education VARCHAR(50),
    Marital_Status VARCHAR(50),
    Income VARCHAR(20),
    Kidhome INT,
    Teenhome INT,
    
    -- Customer Engagement
    Dt_Customer VARCHAR(20),
    Recency INT,
    
    -- Spending Columns
    MntWines INT,
    MntFruits INT,
    MntMeatProducts INT,
    MntFishProducts INT,
    MntSweetProducts INT,
    MntGoldProducts INT,
    
    -- Purchase Count Columns
    NumDealsPurchases INT,
    NumWebPurchases INT,
    NumCatalogPurchases INT,
    NumStorePurchases INT,
    NumWebVisitsMonth INT,
    
    -- Target & Complaint
    Response INT,
    Complain INT,
    
    -- NEW CALCULATED COLUMNS (जो आपने Excel में बनाए थे) ***
    Age INT,
    Total_Spend INT,
    Total_Purchases INT,
    
    -- Constraints
    CHECK (Recency >= 0),
    CHECK (MntWines >= 0),
    CHECK (MntFruits >= 0),
    CHECK (MntMeatProducts >= 0),
    CHECK (MntFishProducts >= 0),
    CHECK (MntSweetProducts >= 0),
    CHECK (MntGoldProducts >= 0),
    CHECK (NumDealsPurchases >= 0),
    CHECK (NumWebPurchases >= 0),
    CHECK (NumCatalogPurchases >= 0),
    CHECK (NumStorePurchases >= 0),
    CHECK (NumWebVisitsMonth >= 0),
    CHECK (Response IN (0, 1)),
    CHECK (Complain IN (0, 1)),
    CHECK (Age >= 0),
    CHECK (Total_Spend >= 0),
    CHECK (Total_Purchases >= 0)
);

DESCRIBE superstore_campaign;

SELECT COUNT(*) FROM superstore_campaign;

SHOW COLUMNS FROM superstore_campaign;

SET SQL_SAFE_UPDATES = 0;


UPDATE superstore_campaign 
SET Income = NULL 
WHERE Income IS NULL 
   OR TRIM(Income) = '' 
   OR Income = 'NULL'
   OR Income = 'null'
   OR NOT (Income REGEXP '^[0-9]+\.?[0-9]*$');

ALTER TABLE superstore_campaign 
MODIFY COLUMN Income DECIMAL(10,2);


UPDATE superstore_campaign 
SET Dt_Customer = STR_TO_DATE(Dt_Customer, '%d-%m-%Y');

ALTER TABLE superstore_campaign 
MODIFY COLUMN Dt_Customer DATE;

DESCRIBE superstore_campaign;
