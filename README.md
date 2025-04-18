# SQL Challenge - Module 9

## Overview
This project was completed as part of Module 9 in my coursework. The goal was to design and analyze a SQL database containing employee records from Pewlett Hackard, a fictional company. The project involved data modeling, data engineering, and data analysis using PostgreSQL.

## Project Components

### Data Modeling
- Designed an Entity Relationship Diagram (ERD) to visualize table relationships.
- Defined table schemas for structured data storage.

### Data Engineering
- Created SQL schema (`table_schemas.sql`) to define tables with appropriate primary keys, foreign keys, and data types.
- Imported data from CSV files into PostgreSQL using the `COPY` command.

### Data Analysis
- Wrote SQL queries (`queries.sql`) to extract insights such as:
  - Employee salaries
  - Department managers
  - Employees hired in 1986
  - Sales department employees
  - Frequency counts of last names

## File Structure
The repository contains the following folders and files:

**Data/**  
Contains CSV files used to populate the PostgreSQL database.

**EmployeeSQL/**  
Contains all SQL scripts used in this project:
  - `table_schemas.sql` – Defines the database schema.
  - `queries.sql` – Contains SQL queries for analysis.

**Images/**  
Includes a snapshot of the database schema (ERD) for reference.

## Notes
- PostgreSQL was used to run queries and handle data imports.  
- SQL syntax adheres to best practices for structuring relationships and ensuring data integrity.  
- The code was entirely my own, with Copilot providing assistance when I got stuck on next steps.