

CREATE DATABASE SCOPED CREDENTIAL cred_kutti
WITH
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://awsadatalakekutti.blob.core.windows.net/silver',
    CREDENTIAL = cred_kutti
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://awsadatalakekutti.blob.core.windows.net/gold',
    CREDENTIAL = cred_kutti
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


-- CREATE EXTERNAL TABLE EXTSALES

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awsales

SELECT * FROM gold.extsales

-- CREATE EXTERNAL TABLE extcalendar

CREATE EXTERNAL TABLE gold.extcalendar
WITH
(
    LOCATION = 'extcalendar',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awcalendar

-- CREATE EXTERNAL TABLE extcustomers

CREATE EXTERNAL TABLE gold.extcustomers
WITH
(
    LOCATION = 'extcustomers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awcustomers

-- CREATE EXTERNAL TABLE extproduct_cat

CREATE EXTERNAL TABLE gold.extproduct_cat
WITH
(
    LOCATION = 'extproduct_cat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awproduct_cat

-- CREATE EXTERNAL TABLE extproducts

CREATE EXTERNAL TABLE gold.extproducts
WITH
(
    LOCATION = 'extproducts',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awproducts

-- CREATE EXTERNAL TABLE extreturns

CREATE EXTERNAL TABLE gold.extreturns
WITH
(
    LOCATION = 'extreturns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awreturns

-- CREATE EXTERNAL TABLE extsales

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awsales

SELECT * FROM gold.extsales

-- CREATE EXTERNAL TABLE extterritories

CREATE EXTERNAL TABLE gold.extterritories
WITH
(
    LOCATION = 'extterritories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awterritories

-- CREATE EXTERNAL TABLE extproduct_subcat

CREATE EXTERNAL TABLE gold.extproduct_subcat
WITH
(
    LOCATION = 'extproduct_subcat',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)as 
SELECT * FROM gold.awproduct_subcat


