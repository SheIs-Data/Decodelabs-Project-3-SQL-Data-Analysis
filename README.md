# DecodeLabs Project 3 — SQL Data Analysis

## 📊 Project Overview

This project is **Project 3** of my **DecodeLabs Data Analytics Internship Program**.

The project focuses on **SQL Data Analysis**, using SQL queries to explore an e-commerce dataset and extract meaningful business insights.

The analysis demonstrates how SQL can be used to retrieve, filter, sort, group, aggregate, and interpret data to answer practical business questions.

---

## 🎯 Project Objective

The main objective of this project was to use SQL to analyze an e-commerce dataset and generate insights into:

* Sales performance
* Product performance
* Customer purchasing behavior
* Order status
* Payment methods
* Coupon usage
* Referral sources

The project also provided an opportunity to apply SQL beyond basic querying by using aggregation, grouping, filtering, and analytical calculations.

---

## 📁 Dataset

The dataset used in this project is a cleaned e-commerce dataset containing:

* **1,200 orders**
* **1,189 unique customers**
* **14 columns**

### Dataset Columns

| Column            | Description                                    |
| ----------------- | ---------------------------------------------- |
| `OrderID`         | Unique identifier for each order               |
| `Date`            | Date the order was placed                      |
| `CustomerID`      | Unique identifier for each customer            |
| `Product`         | Product purchased                              |
| `Quantity`        | Number of units purchased                      |
| `UnitPrice`       | Price of one unit                              |
| `ShippingAddress` | Shipping address associated with the order     |
| `PaymentMethod`   | Payment method used                            |
| `OrderStatus`     | Status of the order                            |
| `TrackingNumber`  | Shipment tracking identifier                   |
| `ItemsInCart`     | Number of items in the customer's cart         |
| `CouponCode`      | Coupon code associated with the order          |
| `ReferralSource`  | Source through which the customer was referred |
| `TotalPrice`      | Total value of the order                       |

---

## 🛠️ Tools Used

* **MySQL**
* **MySQL Workbench**
* **SQL**
* **GitHub**

---

## 🧠 SQL Skills Demonstrated

This project demonstrates practical use of:

* `SELECT`
* `WHERE`
* `ORDER BY`
* `GROUP BY`
* `COUNT()`
* `SUM()`
* `AVG()`
* `DISTINCT`
* `LIMIT`
* `HAVING`
* Subqueries
* Aggregate functions
* Filtering and sorting
* Percentage calculations

---

# 🔍 Analysis Performed

## 01 — Database Setup

The `01_database_setup.sql` file contains the SQL used to prepare the project database and e-commerce orders table.

Activities include:

* Creating the project database
* Selecting the database
* Creating the `ecommerce_orders` table
* Defining appropriate data types
* Verifying the database and table structure
* Confirming that the dataset was successfully loaded

---

## 02 — Data Exploration

The `02_data_exploration.sql` file was used to understand the structure and characteristics of the dataset before conducting deeper analysis.

Activities include:

* Counting records
* Previewing the dataset
* Selecting relevant columns
* Identifying unique products
* Identifying payment methods
* Examining order statuses
* Examining referral sources
* Examining coupon codes
* Checking basic order-value statistics

---

## 03 — Sales Analysis

The `03_sales_analysis.sql` file focuses on overall sales performance.

The analysis includes:

* Total number of orders
* Total revenue
* Average order value
* Total units sold
* Highest-value orders
* Lowest-value orders
* Top 10 highest-value orders
* Overall sales summary

---

## 04 — Product Analysis

The `04_product_analysis.sql` file examines product-level performance.

The analysis includes:

* Number of orders by product
* Total revenue by product
* Total units sold
* Average order value
* Average quantity per order
* Overall product performance
* Revenue contribution by product

---

## 05 — Customer Analysis

The `05_customer_analysis.sql` file focuses on customer purchasing behavior.

The analysis includes:

* Number of unique customers
* Orders per customer
* Repeat customers
* Customer spending
* Top-spending customers
* Average order value by customer

---

## 06 — Marketing Analysis

The `06_marketing_analysis.sql` file examines payment methods, order status, referral sources, and coupon performance.

### Payment Methods

* Order volume by payment method
* Revenue by payment method
* Average order value by payment method

### Order Status

* Number of orders by status
* Revenue by order status

### Referral Sources

* Orders by referral source
* Revenue by referral source
* Average order value by referral source

### Coupon Codes

* Coupon usage
* Revenue associated with coupon codes

---

# 📌 Key Findings

The SQL analysis produced several notable findings from the e-commerce dataset.

## 💰 Overall Sales Performance

* **Total orders:** 1,200
* **Unique customers:** 1,189
* **Total units sold:** 3,535
* **Total revenue:** **1,264,761.96**
* **Average order value:** **1,053.97**
* **Highest individual order value:** **3,456.40**

The dataset shows a relatively high number of unique customers compared with total orders, indicating that most customers placed only one order.

---

## 🛍️ Product Performance

**Chair** generated the highest total revenue at approximately **195,620.11**, closely followed by **Printer** at **195,612.61**.

The product revenue ranking was:

| Product | Orders | Units Sold |    Revenue | Revenue Contribution |
| ------- | -----: | ---------: | ---------: | -------------------: |
| Chair   |    178 |        562 | 195,620.11 |               15.47% |
| Printer |    181 |        542 | 195,612.61 |               15.47% |
| Laptop  |    173 |        535 | 192,126.56 |               15.19% |
| Tablet  |    179 |        497 | 186,568.95 |               14.75% |
| Monitor |    163 |        480 | 175,651.41 |               13.89% |
| Desk    |    170 |        508 | 167,459.93 |               13.24% |
| Phone   |    156 |        411 | 151,722.39 |               12.00% |

**Laptop** had the highest average order value at approximately **1,110.56**, while **Phone** had the lowest at approximately **972.58**.

---

## 👥 Customer Insights

The dataset contains **1,189 unique customers across 1,200 orders**.

Only **11 customers placed more than one order**, indicating that repeat purchasing was relatively limited within the dataset.

The highest-spending customer was **C38840**, with two orders totaling approximately **5,723.23**.

---

## 💳 Payment Method Insights

**Online** payments had the highest order volume with **258 orders**.

However, **Credit Card** transactions generated the highest revenue at approximately **263,847.63**.

| Payment Method | Orders |    Revenue |
| -------------- | -----: | ---------: |
| Online         |    258 | 262,442.94 |
| Credit Card    |    234 | 263,847.63 |
| Cash           |    246 | 259,786.29 |
| Gift Card      |    230 | 246,323.92 |
| Debit Card     |    232 | 232,361.18 |

This shows that the payment method with the highest transaction volume was not necessarily the one generating the highest revenue.

---

## 📦 Order Status Insights

**Cancelled** orders had the highest number of orders at **250**, while **Delivered** orders had the lowest at **231**.

The order-status distribution was:

| Order Status | Orders |    Revenue |
| ------------ | -----: | ---------: |
| Cancelled    |    250 | 276,396.21 |
| Returned     |    247 | 243,277.70 |
| Pending      |    237 | 256,328.15 |
| Shipped      |    235 | 246,159.58 |
| Delivered    |    231 | 242,600.32 |

A notable finding is the relatively high volume of cancelled and returned orders, which could be an area for further investigation.

---

## 📣 Referral Source Insights

**Instagram** generated the highest number of orders with **259 orders** and also generated the highest total revenue at approximately **275,285.45**.

| Referral Source | Orders |    Revenue |
| --------------- | -----: | ---------: |
| Instagram       |    259 | 275,285.45 |
| Email           |    250 | 261,808.55 |
| Google          |    241 | 250,441.48 |
| Facebook        |    228 | 250,410.90 |
| Referral        |    222 | 226,815.58 |

Instagram therefore performed strongly in both customer acquisition volume and revenue generation.

---

## 🎟️ Coupon Insights

**FREESHIP** was the most frequently used coupon, appearing on **313 orders**, and also generated the highest revenue at approximately **335,036.99**.

| Coupon Code | Orders |    Revenue |
| ----------- | -----: | ---------: |
| FREESHIP    |    313 | 335,036.99 |
| NO COUPON   |    309 | 322,401.41 |
| SAVE10      |    286 | 304,840.02 |
| WINTER15    |    292 | 302,483.54 |

This suggests that FREESHIP was the strongest coupon category in terms of both usage and associated order revenue.

---

# 💡 Business Insights & Recommendations

Based on the SQL analysis, several recommendations can be made:

### 1. Focus on high-performing products

Chair, Printer, and Laptop generated the highest product revenues. These products could receive greater promotional attention and inventory planning.

### 2. Investigate cancelled and returned orders

Cancelled and returned orders represented a substantial portion of the dataset. Further investigation could help identify potential issues with product expectations, fulfillment, delivery, or customer experience.

### 3. Strengthen Instagram marketing

Instagram generated both the highest order volume and highest referral-source revenue. Maintaining or increasing investment in this channel could support customer acquisition.

### 4. Evaluate the FREESHIP promotion

FREESHIP generated the highest number of orders and the highest associated revenue among the coupon categories. Its effectiveness could be evaluated further by comparing profitability and customer retention.

### 5. Encourage repeat purchases

With only 11 repeat customers identified among 1,189 unique customers, there may be an opportunity to improve customer retention through loyalty programs, personalized offers, email campaigns, and targeted follow-up marketing.

### 6. Monitor payment behavior

Credit Card generated the highest revenue despite Online payments having the highest transaction volume. Understanding customer preferences across payment methods could help improve the purchasing experience.

---

# 📂 Repository Structure

```text
Decodelabs-Project-3-SQL-Data-Analysis/
│
├── data/
│   ├── Decodelabs_Cleaned_e-commerce_dataset.csv
│   └── README.md
│
├── sql/
│   ├── README.md
│   ├── 01_database_setup.sql
│   ├── 02_data_exploration.sql
│   ├── 03_sales_analysis.sql
│   ├── 04_product_analysis.sql
│   ├── 05_customer_analysis.sql
│   └── 06_marketing_analysis.sql
│
├── screenshots/
│
└── README.md
```

---

# 📸 Project Documentation

Screenshots of selected SQL queries and results are included in the repository to provide evidence of the analysis performed in MySQL Workbench.

The documentation covers:

* Database setup
* Table structure
* Data exploration
* Sales analysis
* Product analysis
* Customer analysis
* Marketing analysis

---

# 🎓 Learning Outcomes

This project strengthened my practical SQL and data analytics skills by giving me hands-on experience working with an e-commerce dataset.

Through the project, I practiced:

* Writing structured SQL queries
* Filtering and sorting data
* Grouping records
* Applying aggregate functions
* Performing customer and product analysis
* Extracting business insights
* Translating query results into recommendations
* Documenting an analytics project for a professional portfolio

Most importantly, the project helped me understand that data analysis is not only about writing queries, but also about using those queries to answer meaningful business questions.

---

# 🚀 Project Status

**Status: ✅ Completed**

**Program:** DecodeLabs Data Analytics Internship Program

**Project:** Project 3 — SQL Data Analysis

**Focus:** E-commerce Data Analysis using SQL

**Database:** MySQL

**Completion:** Successfully completed the required SQL analysis and documented the findings in this repository.

---

# 👩🏽‍💻 About Me

**Poweide Abigail Edonkumoh**

Data Analyst | Data Enthusiast | Medical Laboratory Scientist | AI Explorer

I am building practical experience in data analytics through hands-on projects, continuous learning, and real-world problem solving.

This project represents another step in my journey toward becoming a well skilled data analyst who can transform raw data into meaningful insights and support data-driven decision-making.

---

## 📜 Acknowledgement

This project was completed as part of the **DecodeLabs Data Analytics Internship Program — Project 3**.

The project provided practical experience in using SQL to query, analyze, and extract insights from an e-commerce dataset.
