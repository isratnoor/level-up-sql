-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT DueDate, Title, FirstName, Email
FROM Loans 
LEFT JOIN Books ON Loans.BookID = Books.BookID
LEFT JOIN Patrons ON Patrons.PatronID = Loans.PatronID
WHERE ReturnedDate IS NULL AND  DueDate = '2022-07-13';