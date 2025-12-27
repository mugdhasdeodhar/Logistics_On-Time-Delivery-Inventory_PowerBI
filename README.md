# 🚚 On-Time Delivery & Inventory Performance — Executive Dashboard

## 📌 About the Project
This project focuses on analyzing logistics and supply chain performance with an emphasis on **on-time delivery, inventory risk, and shipping cost efficiency**.  
The goal is to provide **logistics leaders and operations teams** with a clear, executive-level view of where delivery delays and cost inefficiencies occur, enabling data-driven decisions to improve **OTIF (On-Time-In-Full)** performance.

The final deliverable is a **one-page Power BI executive dashboard** designed for fast, intuitive decision-making.

---

## 🎯 Business Problem
Logistics organizations often face challenges such as:
- High late delivery rates
- Inconsistent carrier performance
- Inventory imbalances and stockout risk
- Trade-offs between delivery speed and shipping cost

This project analyzes shipment data to identify **high-risk carriers, product categories, and operational trends**, helping leadership prioritize corrective actions.

---

## 🛠️ Tools & Technologies
- **MySQL** – Data validation and KPI calculations  
- **Power BI** – Data modeling, DAX measures, and dashboard development  
- **Excel** – Initial data review and preparation  
- **GitHub** – Version control and portfolio presentation  

---

## 📊 Key Metrics (KPIs)
- Total Shipments  
- OTIF %  
- Late Delivery Rate % (Non-OTIF)  
- Average Delivery Lead Time (Days)  
- Average Shipping Cost (CAD)  

---

## 🗂️ Dataset
- **Type:** Simulated logistics shipment dataset (portfolio use)
- **Volume:** 2,000 shipment records
- **Time Period:** Full calendar year
- **Key Fields:**
  - Shipment ID
  - Order Date & Delivery Dates
  - Carrier
  - Warehouse & Region
  - Product Category
  - Inventory on Hand
  - Shipping Cost
  - Delivery Status (On Time / Late)

> ⚠️ Note: This dataset is simulated and does not represent real customer or company data.

---

## 🧮 SQL Analysis
SQL was used to compute core logistics KPIs and performance indicators, including:
- OTIF and late delivery rates
- Average delivery lead time
- Carrier-level performance comparison
- Regional and warehouse analysis
- Inventory risk identification

All SQL queries used for analysis are available in the `/sql` folder.

---

## 📈 Power BI Dashboard Overview
The Power BI dashboard provides an **executive overview** with the following components:

### 1️⃣ KPI Summary
High-level snapshot of shipment volume, service level, delivery speed, and cost.

### 2️⃣ Carrier Performance
Bar chart highlighting carriers with the **highest late delivery risk**, dynamically prioritized using rank-based logic.

### 3️⃣ Monthly Trends
Time-series analysis of shipment volume and average delivery lead time to identify seasonality and operational pressure.

### 4️⃣ Inventory Risk by Product Category
Table with conditional formatting to flag:
- High late delivery rates
- Low inventory risk
- Categories requiring attention

### 5️⃣ Cost vs Delivery Speed
Scatter plot illustrating the trade-off between shipping cost and delivery speed across carriers.

📸 Dashboard screenshots are included in the `/images` folder.

---

## 🔍 Key Insights
- Carrier performance varies significantly, with select carriers contributing disproportionately to late deliveries.
- Certain product categories show higher delivery risk and require closer inventory monitoring.
- A clear trade-off exists between faster delivery and higher shipping costs, supporting data-driven carrier selection decisions.

---

## 📁 Repository Structure

![Logistics_Repository_Structure](https://github.com/user-attachments/assets/233046b4-f447-49bc-9adf-d04c80d3d1b0)

---

## 🚀 Business Value
- Enables leadership to **prioritize high-risk carriers**
- Supports improvements in **OTIF and service levels**
- Helps balance **delivery speed vs cost**
- Demonstrates end-to-end analytics capability

---

## 👤 Author
**Data Analyst | SQL • Power BI • Excel**  
Specializing in **Healthcare and Logistics Analytics**  
(Portfolio Project)

---

## 📬 Feedback
Feedback and suggestions are welcome.  
This project is part of a professional analytics portfolio.
