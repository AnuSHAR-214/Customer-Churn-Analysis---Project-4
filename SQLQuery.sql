CREATE DATABASE CustomerChurn;
USE CustomerChurn;

SELECT COUNT(*) AS Total_Customers
FROM Customer;

SELECT Churn,
COUNT(*) AS Total
FROM Customer
GROUP BY Churn;

SELECT Contract,
Churn,
COUNT(*) AS Customers
FROM Customer
GROUP BY Contract, Churn;

SELECT Churn,
AVG(MonthlyCharges) AS AvgCharges
FROM Customer
GROUP BY Churn;

SELECT Churn,
AVG(tenure) AS AvgTenure
FROM Customer
GROUP BY Churn;

