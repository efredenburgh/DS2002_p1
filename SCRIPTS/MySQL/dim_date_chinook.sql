use chinook_dw;

# adapted code from Lab 2c to create and populate a date dimension table
DROP TABLE IF EXISTS dim_date;
CREATE TABLE dim_date (
    DateId INT PRIMARY KEY AUTO_INCREMENT,
    Year INT,
    Month INT,
    Day INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO dim_date (Year, Month, Day)
SELECT DISTINCT 
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    DAY(InvoiceDate) AS Day
FROM chinook.Invoice
ORDER BY Year, Month, Day;
