# Data Science Systems (DS2002) Project 1 Repository
Emily Fredenburgh (xux5ev)

## Database Information:
- **Chinook** database is a "digital media store", with tables for artists, albums, customers, employees, invoices, etcetera using Apple iTunes data formed into a library [1].
- link to an image of the [Chinook Schema](https://schemaspy.org/samples/chinook/relationships.html) [2]


## Services Used:
- **Jupyter Notebook** (Launched with Anaconda Navigator) to perform most of the ETL process
- **MongoDB** Cluster to hold the 2 JSON files I extracted
- **MySQL** to create and populate the initial Chinook database, extract data from the tables in Chinook, and use data to create and populate dimension tables in chinook_dw

## Map of Documentation
### Project Folder Structure:
```
DS2002_p1/
│
├── CLASS_REFERENCE_CODE/
│   ├── 02-Python-MySQL.ipynb
│   ├── 03-Python-DataFiles.ipynb
│   ├── 06-Python-MongoDB.ipynb
│   ├── Lab-03-Python-Extract-Transform-Load.ipynb
│   ├── Lab-04-Python-MongoDB-ETL.ipynb
│   └── Lab_02c_Create_Populate_Dim_Date.sql
│
├── DATA/
│   ├── CSV/
│   │   ├── invoice_chinook.csv
│   │   └── invoiceline.csv
│   └── JSON/
│       ├── customer.json
│       └── employee_chinook.json
│
├── OUTPUT/
│   ├── sql_invoices_per_month_output.csv
│   └── sql_units_by_customer_output.csv
│
├── SCRIPTS/
│   ├── Jupyter/
│   │   └── Chinook_ETL.ipynb
│   └── MySQL/
│       ├── 1-create_chinook.sql
│       ├── 2-populate_chinook.sql
│       ├── Chinook_extraction.sql
│       └── dim_date_chinook.sql
│  
├── LICENSE.md
└── README.md
```
- **CLASS_REFERENCE_CODE/:**
  - Contains all of the notebooks from class examples and assignments that I referenced to complete this project.
  - Where I used each source is denoted in the Chinook_ETL.ipynb in the SCRIPTS/Jupyter/ folder
- **DATA/:**
  - Contains the extracted tables from the Chinook database as either JSON files or CSV files
- **OUTPUT/:**
  - Contains the outputs of each SQL summarization query I ran after creating an invoice fact table.
- **SCRIPTS/:**
  - Contains the various scripts I wrote and ran to result in my finished project. They are divided into MySQL and Jupyter to note the environment each script was run in.
  - The majority of the code for this project is contained in SCRIPTS/Jupyter/Chinook_ETL.ipynb

## References:
[1]Chinook sample database, “Chinook sample database,” YugabyteDB Docs, Oct. 15, 2024. https://docs.yugabyte.com/preview/sample-data/chinook/ (accessed Nov. 11, 2024).

[2]“Chinook Database,” Schemaspy.org, 2024. https://schemaspy.org/samples/chinook/relationships.html (accessed Nov. 11, 2024).

[3]“Pandas Merge Operation: What It Is and When to Use It,” InfluxData, Nov. 20, 2023. https://www.influxdata.com/blog/pandas-merge-tutorial/ (accessed Nov. 11, 2024).
‌
