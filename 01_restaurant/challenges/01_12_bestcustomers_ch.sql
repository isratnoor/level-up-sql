-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT FirstName, LastName, Email, COUNT(OrderID) as NUMBER_ORDERS
FROM Orders
LEFT JOIN Customers ON Customers.CustomerID=Orders.CustomerID
GROUP BY Customers.CustomerID
ORDER BY COUNT(OrderID) DESC
LIMIT 15;