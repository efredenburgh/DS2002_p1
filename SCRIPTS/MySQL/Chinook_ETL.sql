# exporting to json and mongodb

use chinook;

SELECT * FROM Customer;

use chinook;

SELECT * FROM Invoice;

use chinook;
SELECT * FROM Employee;

use chinook; 
SELECT * FROM InvoiceLine;


use chinook_dw;
SELECT 
    il.track_id,
    SUM(f.quantity) AS total_quantity_sold
FROM 
    dim_fact_invoices f
JOIN 
    dim_invoice_line il 
    ON f.invoice_line_key = il.invoice_line_key
GROUP BY 
    il.track_id
ORDER BY 
    total_quantity_sold DESC;
