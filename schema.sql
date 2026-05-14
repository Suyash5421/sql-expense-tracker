CREATE DATABASE ExpenseTracker;

USE ExpenseTracker;

CREATE TABLE Users (
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE categories (
	category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(50)
);

CREATE TABLE Transactions (
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    category_id INT,
    amount DECIMAL(10,2),
    transaction_type VARCHAR(50),
    payment_method VARCHAR(50),
    transaction_date DATE,
    description VARCHAR(250),
    
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);