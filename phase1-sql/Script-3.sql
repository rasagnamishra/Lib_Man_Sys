
# Books with their authors and categories

select
b.book_id,
b.title,
a.first_name,
a.last_name,
c.name AS category
FROM book b
JOIN bookAuthor ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
JOIN bookCategory bc ON b.book_id = bc.book_id
JOIN category c ON bc.category_id = c.category_id;


use lib_man_sys;

# Borrowing records with member and book info

SELECT
br.borrowing_id,
CONCAT(m.first_name, ' ', m.last_name) AS member_name,
b.title AS book_title,
br.borrow_date,
br.due_date,
br.return_date,
br.late_fee
FROM borrowing br
JOIN member m ON br.member_id = m.member_id
JOIN book b ON br.book_id = b.book_id
ORDER BY br.borrow_date DESC;

# Reviews with member name and book title

SELECT
r.review_id,
CONCAT(m.first_name, ' ', m.last_name) AS reviewer,
b.title AS book_title,
r.rating,
r.comment,
r.review_date
FROM review r
JOIN member m ON r.member_id = m.member_id
JOIN book b ON r.book_id = b.book_id
ORDER BY r.review_date DESC;

# Books with their library details

SELECT
b.book_id,
b.title,
l.name AS library_name,
l.campus_location,
b.total_copies,
b.available_copies
FROM book b
JOIN lib l ON b.library_id = l.library_id
ORDER BY l.name, b.title;

# Find books with above-average ratings

SELECT
b.book_id,
b.title,
ROUND(AVG(r.rating), 2) AS avg_rating
FROM book b
JOIN review r ON b.book_id = r.book_id
GROUP BY b.book_id, b.title
HAVING AVG(r.rating) > (
  SELECT AVG(rating) FROM review
);

# Members who borrowed none or more

select m.member_id, 
concat(m.first_name, ' ', last_name) as member_name
from member m inner join borrowing br on m.member_id = br.member_id 
where borrowing_id in (select count(borrowing_id)>=0);

# Books with their authors and categories

SELECT 
b.book_id,
b.title,
CONCAT(a.first_name, ' ', a.last_name) AS authors,
c.name AS categories
FROM book b
JOIN bookAuthor ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
JOIN bookCategory bc ON b.book_id = bc.book_id
JOIN category c ON bc.category_id = c.category_id;

# Most borrowed books in the last 30 days

select b.title, 
b.book_id,
COUNT(*) AS borrow_count
from book b 
inner join borrowing br on b.book_id = br.book_id
where (borrow_date) >= curdate() - interval 30 day
GROUP BY 
b.book_id, b.title
ORDER BY 
borrow_count DESC;

# Members with overdue books and calculated late fees 

select br. borrowing_id, 
concat(m.first_name, ' ', m.last_name) as name
from member m
inner join borrowing br on m.member_id = br.member_id
where (return_date > due_date) OR (br.return_date IS NULL AND CURDATE() > br.due_date);

# Average rating per book with author information

select  
concat(a.first_name, ' ', a.last_name) as authorName,
a.biography,
avg(r.rating)
from review r 
inner join bookauthor ba on r.book_id = ba.book_id
inner join author a on a.author_id = ba.author_id
group by a.author_id, a.first_name, a.last_name, a.biography;

# Books available in each library with stock levels

select l.library_id,
sum(b.available_copies) as total_available_copies
from book b
inner join lib l on b.library_id = l.library_id
group by library_id;


