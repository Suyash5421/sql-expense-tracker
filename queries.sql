USE expensetracker;
SELECT * FROM Transactions;

SELECT SUM(amount) AS Total_Expense
FROM Transactions
WHERE transaction_type = 'Expense';


SELECT SUM(amount) AS Total_Income
FROM Transactions
WHERE transaction_type = 'Income';


SELECT c.category_name,
SUM(t.amount) AS Total
FROM Transactions t
JOIN Categories c
ON t.category_id = c.category_id
WHERE t.transaction_type = 'Expense'
GROUP BY c.category_name;


SELECT MONTH(transaction_date) AS Month,
SUM(amount) AS Total_Expense
FROM Transactions
WHERE transaction_type = 'Expense'
GROUP BY MONTH(transaction_date);


SELECT *
FROM Transactions
WHERE amount =
(
    SELECT MAX(amount)
    FROM Transactions
    WHERE transaction_type = 'Expense'
);

SHOW TABLES;

SELECT 
    transaction_type,
    SUM(amount) AS Total
FROM Transactions
GROUP BY transaction_type;

