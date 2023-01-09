-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

SELECT Published, COUNT(DISTINCT Title) as NB_TITLES
FROM Books
GROUP BY Published
ORDER BY NB_TITLES DESC;

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Books.Title, COUNT(Loans.LoanID) AS NB_LOANS
FROM Loans
LEFT JOIN Books ON Books.BookID=Loans.BookID
GROUP BY Title
ORDER BY NB_LOANS DESC
LIMIT 5;