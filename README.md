# 📊 Retail Sales Data Warehouse & Power BI Dashboard Project

## 📌 Project Overview

This project is a complete Data Warehouse and Analytics solution built using **SQL** and **Power BI**.

The main objective is to transform raw retail sales data into meaningful business insights using a layered architecture:

* Bronze Layer (Raw Data)
* Silver Layer (Cleaned & Transformed Data)
* Gold Layer (Business Views & KPIs)

Finally, an interactive Power BI dashboard is created to support data-driven decision-making.

---

## 🥉 Bronze Layer (Raw Data)

### 📌 Description

The Bronze layer is responsible for ingesting raw data from a CSV file into the data warehouse.

At this stage:

* Data is loaded as-is without any transformation
* All fields are stored as text
* The original data is preserved for auditing and recovery purposes

### 🎯 Purpose

* Maintain a reliable raw data source
* Ensure no data is lost during ingestion

### 📸 Screenshot
![bronze layer]([images/game-start.png](https://github.com/be107/cloud-assignment-/blob/4c8d06b1378df70d4eee1674d1f210cb07b794e6/images/bronze.png))


---

## 🥈 Silver Layer (Cleaned & Transformed Data)

### 📌 Description

The Silver layer focuses on cleaning and preparing the data for analysis.

Key operations include:

* Converting data types (e.g., text to numeric)
* Handling missing or inconsistent values
* Structuring the data for better usability

### 🎯 Purpose

* Improve data quality
* Prepare data for analytics and reporting

### 📸 Screenshot
![Game Start](images/game-start.png)

---

## 🥇 Gold Layer (Business Views & KPIs)

### 📌 Description

The Gold layer contains business-ready views that are optimized for reporting and dashboarding.

These views provide insights into sales performance, customer behavior, and business trends.

---

### 📊 Key Performance Indicators (KPIs)

This view provides high-level business metrics such as:

* Total Sales
* Total Orders
* Total Items Sold


---

### 📅 Revenue by Year

This view aggregates total revenue by year.

📌 Purpose:

* Analyze yearly business performance
* Identify growth trends


---

### 📆 Monthly Revenue

This view shows revenue trends on a monthly basis.

📌 Purpose:

* Track seasonal trends
* Identify peak sales periods

---

### 💳 Payment Distribution

This view analyzes revenue based on payment methods.

📌 Purpose:

* Understand customer payment preferences
* Support financial planning

---

### 👥 Top Customers

This view identifies the top customers based on total spending.

📌 Purpose:

* Recognize high-value customers
* Support targeted marketing strategies


---

### 🏪 Store Performance

This view compares revenue across different stores.

📌 Purpose:

* Evaluate store performance
* Identify top-performing locations


---

## 📊 Power BI Dashboard

### 📌 Description

The final Power BI dashboard visualizes all key insights in a clear and interactive way.

It includes:

* KPIs overview
* Revenue trends (yearly & monthly)
* Customer insights
* Store performance
* Payment analysis

### 🎯 Purpose

* Enable quick and informed decision-making
* Present data in a user-friendly format

### 📸 Screenshot

![Game Start](images/game-start.png)

---

## 🚀 Conclusion

This project demonstrates how raw data can be transformed into actionable insights using a structured data pipeline and visualization tools.

---

## 🛠️ Tools & Technologies

* SQL (Data Warehouse)
* Azure Synapse Analytics
* Power BI

---

## 👩‍💻 Author

Kholod Khaled
habiba huissan
