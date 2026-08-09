# Customer Churn Analysis

An end-to-end data analytics project that explores **why telecom customers leave** — cleaned and analysed in Python, aggregated in SQL Server, and visualised in Tableau.

---

## Tech Stack

| Layer | Tool |
|---|---|
| Data cleaning & EDA | Python (pandas, numpy, matplotlib, seaborn) |
| Notebook environment | **Google Colab** |
| Database & querying | Microsoft SQL Server (SSMS) |
| Visualization & dashboard | Tableau |

---

## Dataset

**Source:** Telco Customer Churn dataset
**Size:** 7,043 rows × 11 columns

| Column | Description |
|---|---|
| `customerID` | Unique customer identifier |
| `gender` | Male / Female |
| `SeniorCitizen` | 1 if senior citizen, else 0 |
| `Partner` | Whether the customer has a partner |
| `Dependents` | Whether the customer has dependents |
| `tenure` | Number of months with the company |
| `InternetService` | DSL / Fiber optic / No |
| `Contract` | Month-to-month / One year / Two year |
| `MonthlyCharges` | Amount charged per month |
| `TotalCharges` | Total amount charged to date |
| `Churn` | Target variable — Yes / No |

---

## Folder Structure

```
Customer_Churn_Project
│
├── Dataset          # Raw CSV + cleaned_customer_churn.csv
├── Python_EDA       # Google Colab notebook (.ipynb)
├── SQL              # Database creation + analysis queries
├── Tableau          # .twb / .twbx dashboard file
└── Project_Report   # Final documentation and insights
```

---

## Process

**1. Python (Google Colab)** — Loaded the CSV, inspected structure and nulls, converted `TotalCharges` from text to numeric and imputed blanks with the median, then ran EDA across churn distribution, contract type, internet service, gender, senior-citizen status, tenure and monthly charges. Exported `cleaned_customer_churn.csv`.

**2. SQL Server** — Imported the cleaned file into a `CustomerChurn` database as `Customer_Data`, then queried total customers, churn counts, contract-wise churn, and average monthly charges and tenure by churn status.

**3. Tableau** — Connected to SQL Server, built calculated fields for churn flag, churn rate and tenure buckets, and assembled a dashboard with KPI cards (total customers, churned customers, churn rate %, average monthly charges), charts for churn distribution, contract, internet service, gender and tenure, plus slicers for gender, contract and internet service.

---

## Key Business Insights

1. **Month-to-month contracts show the highest churn.** Customers without a long-term commitment leave far more often than those on one- or two-year contracts.
2. **Higher monthly charges correlate with higher churn.** Premium-paying customers are more price-sensitive and more likely to switch providers.
3. **New customers are the most at-risk group.** Churn is concentrated in the first 12 months of tenure and drops sharply afterwards.
4. **Fiber optic users churn more than DSL users**, suggesting a service-quality or pricing issue in that segment.
5. **Long-term contracts drive retention.** Two-year contract holders have the lowest churn rate of any group.

---

## Recommendations

- Offer discounts or loyalty incentives to move month-to-month customers onto annual contracts.
- Build an onboarding and engagement program targeting the first 90 days.
- Review fiber optic pricing and service reliability against competitor offerings.
- Flag high-charge, low-tenure customers for proactive retention outreach.

---

## Author

*Add your name, LinkedIn, and GitHub profile here.*
