USE chinook_dw; -- using my extracted data warehouse
-- adapted code from Lab 2c to create and populate a dim_date table
-- There were not many date variables to choose from in chinook, so I separated Year, Month, and Day, but also included the full invoice_date in the
-- table. Additionally, I created a primary key called date_key. Had to change it a little to fit my needs

DROP TABLE IF EXISTS dim_date; -- get rid of dim_date in case it is preexisting

CREATE TABLE dim_date ( -- create the dim_date table and include variables like date_key, invoice_date, Year, Month, and Day
    date_key INT NOT NULL AUTO_INCREMENT, -- generate unique key values for each piece of data in the dim_date table
    invoice_date DATE NULL,
    Year INT, -- contained as integers
    Month INT,
    Day INT,
    PRIMARY KEY (`date_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO dim_date (invoice_date, Year, Month, Day) -- populate dim_date
SELECT DISTINCT 
    InvoiceDate AS invoice_date,   -- takes the old format from chinook (InvoiceDate) and populates it in dim_date as invoice_date
    YEAR(InvoiceDate) AS Year,     -- takes the year out of invoice_date only to populate the Year variable
    MONTH(InvoiceDate) AS Month,   -- takes the month out of invoice_date only to populate the Month variable
    DAY(InvoiceDate) AS Day        -- takes the day out of invoice_date only to populate the Day variable
FROM chinook.Invoice  -- tells the code where to get the data from (the source database)
ORDER BY InvoiceDate; -- how to sort it


use chinook_dw;
SELECT * FROM dim_date; -- my failsafe to check that the table was populated
