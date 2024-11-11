use chinook_dw;
    SELECT 
        d.Month,
        d.Year,
        SUM(f.total_invoice_amount) AS sales_total
    FROM 
        dim_fact_invoices f
    JOIN 
        dim_date d 
        ON f.transaction_created_date_key = d.date_key
    GROUP BY 
        d.Year, d.Month
    ORDER BY 
        d.Year, d.Month;

use chinook_dw;
SELECT 
        c.customer_id,
        c.FirstName,
        c.LastName,
        SUM(f.quantity) AS total_sold_units
    FROM 
        dim_fact_invoices f
    JOIN 
        dim_customers c 
        ON f.customer_key = c.customer_key
    GROUP BY 
        c.customer_key
    ORDER BY 
        total_units_sold ASC;
