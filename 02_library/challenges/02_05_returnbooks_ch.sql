-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE BookID IN ( SELECT BookID
                  FROM Books
                  WHERE Barcode = '6435968624' OR
                        Barcode = '5677520613' OR
                        Barcode = '8730298424')
      AND ReturnedDate IS NULL;

SELECT *
FROM Loans
LEFT JOIN Books on Loans.BookID=Books.BookID
WHERE ReturnedDate = '2022-07-05';