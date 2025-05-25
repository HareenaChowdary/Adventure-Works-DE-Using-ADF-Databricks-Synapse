-------------------------
-- CREATE VIEW CALENDAR
-------------------------
CREATE VIEW gold.awcalendar
AS
SELECT 
    * 
FROM
    OPENROWSET(
        BULK 'https://awsadatalakekutti.blob.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT = 'PARQUET'
    )AS query


-------------------------
-- CREATE VIEW CUSTOMERS
-------------------------
CREATE VIEW gold.awcustomers
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awsadatalakekutti.blob.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT = 'PARQUET'
    )AS query

----------------------------------
-- CREATE VIEW PRODUCT CATEGORIES
----------------------------------
CREATE VIEW gold.awproduct_cat
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awsadatalakekutti.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT = 'PARQUET'
    )AS query

------------------------
-- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW gold.awproducts
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awsadatalakekutti.blob.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT = 'PARQUET'
    )AS query

------------------------
-- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.awreturns
AS
SELECT 
    *
FROM
    OPENROWSET(
        BULK 'https://awsadatalakekutti.blob.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT = 'PARQUET'
    )AS query

------------------------
-- CREATE VIEW SALES
------------------------
CREATE VIEW gold.awsales
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awsadatalakekutti.blob.core.windows.net/silver/AdventureWorks_Sales*/',
        FORMAT = 'PARQUET'
    )AS query

-----------------------------
-- CREATE VIEW TERRITORIES
-----------------------------
CREATE VIEW gold.awterritories
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awsadatalakekutti.blob.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT = 'PARQUET'
    )AS query

--------------------------------------
-- CREATE VIEW PRODUCT SUBCATEGORIES
--------------------------------------
CREATE VIEW gold.awproduct_subcat
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://awsadatalakekutti.blob.core.windows.net/silver/Product_Subcategories/',
        FORMAT = 'PARQUET'
    )AS query

