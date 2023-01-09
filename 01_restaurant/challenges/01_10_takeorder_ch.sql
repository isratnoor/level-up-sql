-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT *
FROM Customers
WHERE FirstName='Loretta' AND LastName='Hundey';

INSERT INTO Orders (
  CustomerID,
  OrderDate
)
VALUES 
(70, '2022-09-20 14:00:00');

SELECT *
FROM Orders
LEFT JOIN Customers on Customers.CustomerID=Orders.CustomerID
WHERE Customers.CustomerID = 70
ORDER BY OrderDate DESC;

SELECT *
FROM Dishes
WHERE Name IN ('House Salad', 'Mini Cheeseburgers', 'Tropical Blue Smoothie')

INSERT INTO OrdersDishes ( OrderID, DishID)
VALUES
(1001, 4),
(1001, 7),
(1001, 20);

SELECT SUM(Price) as Total_Cost
FROM OrdersDishes
LEFT JOIN Dishes on OrdersDishes.DishID = Dishes.DishID
WHERE OrderID= 1001;


