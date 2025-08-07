# 🍕 Pizza Sales Analysis Dashboard (Excel + SQL)

## 📊 Overview
This project demonstrates how to build a complete sales performance dashboard using MySQL for data analysis and Excel for data visualization. It's an ideal beginner-friendly project that combines core SQL query skills with Excel pivot tables and charting.

---


## Dashboard Preview

![View Dashboard](https://github.com/fromciviltodata/project-pizza-sales-kpi-dashboard/blob/main/dahsboard_image.JPG)

---
## Question (KPIs)
     Total Revenue
     Average Order Value
     Total Pizzas Sold
     Total No. of Orders
     Average Pizzas per Order

## Charts to Develop
     Daily Trends for Total Orders
     Hourly Trends for Total Orders
     Pie and donut charts to break down sales % by category and size
     Total Pizzas Sold by Pizza Category
     Top 5 Best sellers by Total Orders
     Bottom 5 Worst seller by Total Orders
     Slicer for time-based filtering (Quarter , Year)

## Project Workflow
**1. Data Cleaning**


    Cleaned raw pizza order data using Excel (handled missing values, column naming, data types).

**2. SQL Analysis**

* Imported cleaned dataset into MySQL.

* Wrote multiple SQL queries to calculate:

        Total Revenue

        Average Order Value

        Pizzas Sold

        Daily/Hourly Order Trends

        Best/Worst Sellers

        Category/Size-wise Sales Distribution

**3. Excel Dashboard**

        Created Pivot Tables, Charts, and KPIs.

        All values cross-verified with SQL results for accuracy.


---

## Tools Used
**Microsoft Excel** – Pivot Tables, Charts, Calculations

**MySQL** – Data Querying & KPI Generation

**MS Word** – Documented all queries with outputs and screenshots



---
## Dataset

The original dataset contains over 48,000 rows of pizza order transactions.  
For learning and GitHub sharing purposes, a dummy dataset with ~1,000 rows is used here.

👉 [Download Dataset](https://github.com/fromciviltodata/project-pizza-sales-kpi-dashboard/blob/main/project_pizza_sales_excel.xlsx)


---


---
## Query Documentation
All SQL queries used to generate KPIs and trends are documented with screenshots of outputs in the file:

👉 [View Documentation](https://github.com/fromciviltodata/project-pizza-sales-kpi-dashboard/blob/main/PIZZA%20SALES%20SQL%20QUERIES.docx)

## Final Conclusion
The analysis reveals that:

* Most sales occur during lunch and dinner hours, indicating peak demand and the need for increased staffing or oven capacity at those times.

* Large-sized pizzas dominate overall orders, suggesting it may be the most profitable or preferred size.

* Top-performing pizzas (e.g.,Classic Deluxe, BBQ Chicken) contribute significantly to revenue, and bundling them in combo deals could boost average order value.

* Worst-selling pizzas show consistently low demand and could be optimized or replaced.

* Average pizzas per order and order value indicate room for upselling and loyalty promotions to increase basket size.

This dashboard enables store managers to adjust menu offerings, pricing, and staff scheduling based on real data.


**Note:** This project is adapted from a publicly available tutorial. It was completed as a self-learning exercise to enhance my data analysis and dashboarding skills.

**All SQL queries, dashboard designs, and interpretations were created by me as part of the hands-on practice process.**
