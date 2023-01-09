-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT *
FROM Books
WHERE Title='Dracula'

SELECT ( COUNT(BookID) - (
                          SELECT COUNT(*)
                          FROM Loans
                          WHERE BookID IN (
                                            SELECT BookID
                                            FROM Books
                                            WHERE Title='Dracula'
                                            )
                          AND ReturnedDate IS NULL
                        ) ) AS NB_Available_Dracula_Book
FROM Books
WHERE Title='Dracula';