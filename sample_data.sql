INSERT INTO Users(name, email) 
VALUES
('Suyash', 'suyash@gmail.com');

INSERT INTO Categories(category_name) 
VALUES
('Food'),
('Travel'),
('Shopping'),
('Salary'),
('Entertainment');

INSERT INTO Transactions
(user_id, category_id, amount, transaction_type, payment_method, transaction_date, description)
VALUES
(1, 1, 250, 'Expense', 'UPI', '2026-05-01', 'Burger'),
(1, 2, 500, 'Expense', 'Cash', '2026-05-02', 'Bus Ticket'),
(1, 4, 25000, 'Income', 'Bank', '2026-05-03', 'Salary');