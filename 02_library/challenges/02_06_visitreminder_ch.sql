-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT Patrons.*, COUNT(BookID) as Number_Books
FROM Loans
LEFT JOIN Patrons ON Patrons.PatronID = Loans.PatronID
GROUP BY Patrons.PatronID
ORDER BY COUNT(BookID)
LIMIT 10;
