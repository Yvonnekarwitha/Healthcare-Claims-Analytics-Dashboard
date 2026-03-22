# Healthcare Claims Cost & Utilization Analytics Dashboard

## 📊 Overview
This project analyzes healthcare claims data using SQL Server and Power BI to uncover insights into healthcare costs, utilization trends, and claim approval performance.

---

## 🔍 Key Insights
- Top cost-driving diagnoses include **Diabetes and Hypertension**
- Monthly healthcare costs show clear fluctuations across periods
- Average claim approval rate is approximately **79%**
- Claims volume and cost trends provide insights into healthcare utilization patterns

---

## 🛠 Tools Used
- SQL Server (Data extraction & transformation)
- Power BI (Data visualization & dashboarding)

---

## 📈 Dashboard Features
- KPI Cards (Total Claims, Total Cost, Average Claim Amount, Approval Rate)
- Cost analysis by diagnosis
- Monthly healthcare cost trends
- Claims volume vs cost trend analysis
- Claims approval distribution

---

## 🧾 SQL Analysis
Key queries used in this project are included in the `queries.sql` file.

Example:

```sql
SELECT 
    diagnosis,
    SUM(claim_amount) AS total_cost
FROM claims
GROUP BY diagnosis
ORDER BY total_cost DESC;

## 📂 Files Included
- `healthcare Claims Analysis - Power BI.pbix` - Interactive dashboard  
- `healthcare_claims_dataset.csv` - Dataset used  
- `queries.sql` - SQL queries for analysis  

---

## 🌐 Live Dashboard
[View Interactive Dashboard](https://app.powerbi.com/view?r=eyJrIjoiM2MxZDgzMmQtMDI3ZC00Y2E3LTk3NzMtZWE0NDA2MGIwYjhiIiwidCI6ImRkMjQ2ZTRhLTU0MzQtNGUxNS04YWUzLTkxYWQ5Nzk3YjIwOSIsImMiOjN9)

## 📊 Dashboard Preview
![Dashboard Preview](dashboard.png)

## 💡 Business Impact
This dashboard helps stakeholders:
- Identify high-cost diagnoses driving healthcare expenses
- Monitor claim approval performance
- Track cost and utilization trends over time
- Support data-driven decision making in healthcare operations
