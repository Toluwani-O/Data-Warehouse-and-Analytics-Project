# End-to-End Data Warehouse & Analytics Project
Building Reliable Data Pipelines, Structured Data Models, and Business-Ready Insights
 ### 📌 Table of Contents
1. Project Overview 
2. Project Objectives
3. Project Architecture
4. Project Workflow and Implementation
5. Technology Stack and Tools
6. Business Questions and Analytical Focus
7. About Me
8. Let's Connect

    
### 📌 Project Overview

This project demonstrates the design and development of an end-to-end data warehouse solution, covering the complete process of transforming raw data from multiple sources into structured, reliable, and analysis-ready information.

The objective is to build a scalable analytical data solution that reflects how organizations collect, process, store, and analyze data to support business operations and strategic decision-making.

Working across the data lifecycle, I explore data extraction, transformation, loading (ETL/ELT), data cleaning, data integration, relational data modeling, warehouse architecture, data quality management, and analytical reporting.

The project brings together SQL and Power BI to establish a structured data environment where raw data can be transformed into meaningful business intelligence.

Rather than treating data analysis as an isolated activity, this project focuses on the underlying processes that make accurate, consistent, and trustworthy reporting possible.

Through this implementation, I aim to demonstrate not only my ability to analyze data but also my understanding of how well-designed data systems support business intelligence and data-driven decision-making.

### 🎯 Project Objectives

The primary objective is to develop a structured data warehouse that supports efficient data management, analytical querying, and business reporting.

The specific objectives include:

1. Data Integration: Extract and consolidate data from multiple sources (ERP & CRM) CSV Files into a centralized analytical environment.
2. ETL/ELT Development: Build structured workflows for extracting, cleaning, transforming, and loading datasets.
3. Data Quality Management: Identify and address missing values, duplicates, inconsistencies, invalid records, and formatting issues.
4. Data Warehouse Design: Develop a structured warehouse architecture that separates raw, transformed, and business-ready data.
5. Relational Data Modeling: Design fact and dimension tables using appropriate keys and relationships.
6. Data Transformation: Apply SQL to standardize, enrich, aggregate, and prepare datasets for analysis.
7. Data Validation: Implement quality checks to improve data accuracy, consistency, and reliability.
8. Business Intelligence: Develop analytical queries and Power BI dashboards to monitor performance and identify trends.
9. Insight Generation: Translate analytical findings into actionable recommendations that support business decisions.

### 🏗️ Project Architecture

The project follows a structured data pipeline architecture designed to move data from its original sources into a centralized analytical environment.                 

#### Architecture Explanation

The architecture follows a Medallion Architecture approach, separating data into three processing layers:

#### Layer	Description
1. Bronze Layer:	Stores raw data in its original form, preserving source information.
2. Silver Layer:	Contains cleaned, standardized, validated, and transformed data.
3. Gold	Layer: Contains business-ready datasets, fact tables, dimension tables, and analytical models.

This layered approach improves data organization, traceability, consistency, and analytical reliability.

### 🔄 Project Workflow and Implementation  - ETL Pipeline Implementation

The project implements an end-to-end ETL pipeline designed to extract, transform, validate, and load data into a structured data warehouse. The pipeline follows a **Full Extraction, Transformation, and Loading (Full Load / SCD Type 1)** strategy to ensure data consistency and analytical reliability.

#### 1. Extraction

**Strategy: Full Extraction | Method: Pull | Technique: File Parsing**

- Retrieve complete datasets from source files using Python.
- Parse CSV and Excel files using Pandas.
- Extract and inspect source schemas, columns, and data types.
- Load raw data into the Bronze layer while preserving source information.

#### 2. Transformation

**Approach: Data Cleaning, Integration, Enrichment, and Aggregation**

- **Data Cleaning:** Handle missing values, duplicates, inconsistent formats, and invalid records.
- **Data Integration:** Combine datasets using common keys and relationships.
- **Data Enrichment:** Enhance existing records with additional attributes and business context.
- **Data Aggregation:** Summarize transactional data and calculate business metrics.
- **Derived Columns:** Generate calculated fields and business attributes.
- **Derived Column Cleaning:** Validate and standardize newly created fields before loading.

Cleaned and transformed datasets are stored in the Silver layer, ready for dimensional modeling.

#### 3. Loading

**Loading Strategies: Full Load (Truncate & Insert) and SCD Type 1 (Overwrite)**

- **Full Load:** Truncate existing target records and insert the complete transformed dataset to refresh the target tables.
- **SCD Type 1:** Identify new and changed dimension records using business keys, insert new records, and overwrite changed attributes without maintaining historical versions.

Validated fact and dimension tables are loaded into the Gold layer for analytical querying and reporting.

#### 4. ETL Workflow

```text
SOURCE FILES (CSV / EXCEL)
          |
          ▼
     EXTRACTION
   Full Pull Method
     File Parsing
          |
          ▼
     BRONZE LAYER
       Raw Data
          |
          ▼
    TRANSFORMATION
   ├── Data Cleaning
   ├── Data Integration
   ├── Data Enrichment
   ├── Data Aggregation
   ├── Derived Columns
   └── Derived Column Cleaning
          |
          ▼
     SILVER LAYER
  Cleaned & Transformed Data
          |
          ▼
        LOADING
   ├── Full Load
   │   (Truncate & Insert)
   │
   └── SCD Type 1
       (Overwrite)
          |
          ▼
      GOLD LAYER
   Fact & Dimension Tables
          |
          ▼
    SQL ANALYTICS
          |
          ▼
   POWER BI DASHBOARD
```

#### 5. Data Quality & Validation

Data quality checks are incorporated throughout the pipeline to ensure reliable warehouse outputs.

- Null and duplicate record detection.
- Data type and format validation.
- Primary and foreign key integrity checks.
- Source-to-target record count reconciliation.
- Business rule and derived column validation.
- Post-load verification of target tables.
- SCD Type 1 update validation.

**Outcome:** A structured and repeatable ETL pipeline that transforms raw source data into validated, business-ready warehouse tables, supporting reliable SQL analytics and Power BI reporting.


#### 6. Data Modeling

To make analytical reporting more efficient, the project incorporates dimensional modeling principles.

The warehouse uses fact and dimension tables to organize business information around measurable activities and descriptive attributes.

#### 7. SQL Analytics and Business Intelligence

Once the data warehouse is populated and validated, SQL is used to investigate business performance and extract relevant information.

Analytical techniques include: Data aggregation using GROUP BY, Multi-table joins, Common Table Expressions (CTEs), Subqueries and nested queries, window functions.
Conditional logic using CASE WHEN, Ranking and segmentation, Time-based analysis, KPI calculations, Trend and comparative analysis.

The objective is to move beyond simply retrieving records and use SQL to answer meaningful business questions.

Skills demonstrated: Advanced SQL, analytical querying, business metrics, trend analysis, and critical thinking.

#### 8. Power BI Dashboard Development

Power BI serves as the business intelligence layer, translating structured warehouse data into interactive reports and dashboards.

Skills demonstrated: Power BI, DAX, data modeling, dashboard development, data storytelling, and business intelligence reporting.

### 🛠️ Technology Stack and Tools

The following tools and technologies are relevant for the implementation of this project.

- Category	Tools / Technologies	Application
- Data processing and automation
- Data Analysis	Cleaning and transformation
- Database	SQL Server  and querying
- Data Warehousing	SQL-based warehouse	Structured analytical storage
- Data Modeling	Star Schema - Using draw.io
- ETL/ELT	SQL, 	Data pipeline development
- Business Intelligence	Power BI	Interactive reporting and Data Visualization
- Calculations	DAX	Measures and KPIs
- Notion
- Version Control	Git, GitHub	Version management and documentation



### 📊 Business Questions and Analytical Focus
The analytical layer is designed to answer practical business questions rather than produce charts.

1. Revenue and Financial Performance
- What is the overall revenue and profit generated?
- Which products or categories contribute most to revenue?
- How does performance change over time?
- Which areas are experiencing declining profitability?
2. Customer Analysis
- Who are the highest-value customers?
- Which customer segments generate the most revenue?
- How does customer purchasing behavior change over time?
- Which customers demonstrate repeat purchasing patterns?
3. Product Performance
- Which products generate the highest sales?
- Which products contribute most to profitability?
- Are there underperforming product categories?
- How does product performance vary across locations?
4. Operational Analysis
- How efficiently are orders being processed?
- Are there noticeable changes in operational performance?
- Which areas require operational improvement?
- Are there patterns in order volumes over time?


### 👨‍💻 About Me

I am **Tolwani**, a **Data Analyst** passionate about transforming raw data into meaningful insights that help organizations understand performance, identify opportunities, and make informed business decisions.

My interests extend beyond data visualization and reporting to the processes that make reliable analytics possible, including data cleaning, SQL querying, database management, data modeling, and data warehouse development.

I work with **SQL, Python, Power BI, and Excel** to explore datasets, solve analytical problems, develop reporting solutions, and communicate insights effectively.

I enjoy working through the entire data lifecycle, from understanding business requirements and preparing raw datasets to building structured analytical models and presenting findings through interactive dashboards.

I am continuously developing my technical and analytical skills, with a particular interest in:

- Data Analytics
- Business Intelligence
- Data Warehousing
- Analytics Engineering
- Data Engineering
- Database Management
- Data Visualization

My goal is to build data solutions that are not only technically sound but also useful, reliable, and capable of answering real business questions.

---

### 📬 Let's Connect

I welcome opportunities to collaborate, learn, and contribute to projects involving data analytics, business intelligence, and data-driven solutions.

**Thank you for taking the time to explore my work!**




