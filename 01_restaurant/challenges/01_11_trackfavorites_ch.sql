-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT *
FROM Customers 
WHERE FirstName='Cleo' AND LastName='Goldwater';

UPDATE Customers
SET FavoriteDish=(
                  SELECT DishID 
                  FROM Dishes
                  WHERE Dishes.Name = 'Quinoa Salmon Salad'
                  )
WHERE CustomerID=42;