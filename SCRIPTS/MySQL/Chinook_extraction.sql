-- exporting to json and mongodb
-- These are the small bits of code I used to extract data from each table in chinook for use in the chinook_dw database. I extracted Employee and Customer data as JSON files for use
-- in MongoDB, and I extracted Invoice and InvoiceLine as CSV files that I turned into pandas dataframes.

use chinook;

SELECT * FROM Customer; -- selects everything from the customer table

use chinook;

SELECT * FROM Invoice; -- selects everything from the invoice table

use chinook;
SELECT * FROM Employee; -- selects everything from the employee table

use chinook; 
SELECT * FROM InvoiceLine; -- selects everything from the invoice line table
