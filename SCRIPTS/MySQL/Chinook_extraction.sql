# exporting to json and mongodb
-- These are the small bits of code I used to extract data from each table in chinook for use in the chinook_dw database. I extracted Employee and Customer data as JSON files for use
-- in MongoDB, and I extracted Invoice and InvoiceLine as CSV files that I turned into pandas dataframes.

use chinook;

SELECT * FROM Customer;

use chinook;

SELECT * FROM Invoice;

use chinook;
SELECT * FROM Employee;

use chinook; 
SELECT * FROM InvoiceLine;
