insert into lib (library_id, name, campus_location, contact_email, phone_number) values
(1, 'Central Library', 'Main Campus', 'central@university.edu', '123-456-7890'),
(2, 'Science Library', 'Science Campus', 'science@university.edu', '234-567-8901'),
(3, 'Arts Library', 'Arts Campus', 'arts@university.edu', '345-678-9012');

insert into book (book_id, title, isbn, publication_date, total_copies, available_copies, library_id) values
(1, 'Introduction to Algorithms', '9780262033848', '2009-07-31', 10, 7, 1),
(2, 'Clean Code', '9780132350884', '2008-08-01', 5, 3, 1),
(3, 'Artificial Intelligence', '9780136042594', '2010-03-15', 8, 6, 1),
(4, 'Database System Concepts', '9780073523323', '2010-01-01', 6, 2, 1),
(5, 'Operating Systems', '9780133591623', '2014-03-15', 7, 4, 1),
(6, 'Physics for Scientists', '9780321973610', '2013-01-10', 9, 5, 2),
(7, 'Organic Chemistry', '9780321803221', '2012-05-10', 4, 1, 2),
(8, 'Quantum Mechanics', '9780131118921', '2005-01-01', 6, 3, 2),
(9, 'Thermodynamics', '9780470495902', '2009-10-12', 5, 2, 2),
(10, 'Astrophysics Basics', '9781107677187', '2013-11-14', 3, 1, 2),
(11, 'Art History', '9780205748341', '2010-01-01', 5, 3, 3),
(12, 'Music Theory Essentials', '9780190632500', '2017-08-01', 4, 2, 3),
(13, 'Theatre and Performance', '9780415489485', '2008-09-04', 6, 4, 3),
(14, 'Modern Painting', '9780500204541', '2012-09-24', 3, 2, 3),
(15, 'Design Fundamentals', '9780133930132', '2014-03-05', 5, 3, 3);

insert into author (author_id, first_name, last_name, birth_date, nationality, biography) values
(1, 'Thomas', 'Cormen', '1956-01-01', 'American', 'Co-author of Algorithms textbook'),
(2, 'Robert', 'Martin', '1952-08-20', 'American', 'Uncle Bob - software craftsman'),
(3, 'Stuart', 'Russell', '1962-10-15', 'British', 'AI researcher and professor'),
(4, 'Abraham', 'Silberschatz', '1950-05-15', 'American', 'DBMS expert and professor'),
(5, 'Randall', 'Knight', '1960-06-10', 'American', 'Physics educator'),
(6, 'L.G.', 'Wade', '1945-03-22', 'American', 'Organic Chemistry author'),
(7, 'Barbara', 'Hanning', '1940-09-17', 'American', 'Musicology professor'),
(8, 'Simon', 'Callow', '1949-06-13', 'British', 'Actor and theatre historian');

insert into category (category_id, name, description) values
(1, 'Computer Science', 'Books about computing, software, and hardware'),
(2, 'Physics', 'Books covering physical sciences'),
(3, 'Chemistry', 'Organic and inorganic chemistry'),
(4, 'Art & Design', 'Books on visual arts and design principles'),
(5, 'Theatre & Music', 'Books about performance arts and music theory');

INSERT INTO review (review_id, member_id, book_id, rating, comment, review_date)
VALUES
(1, 1, 1, 5, 'Amazing read! Highly recommended.', '2025-07-01'),
(2, 2, 2, 4, 'Great book with a few slow parts.', '2025-07-02'),
(3, 3, 3, 3, 'It was okay, not my favorite.', '2025-07-03'),
(4, 4, 4, 2, 'Struggled to finish this one.', '2025-07-04'),
(5, 5, 5, 5, 'Incredible story and characters!', '2025-07-05'),
(6, 6, 6, 4, 'Very informative and well-written.', '2025-07-06'),
(7, 7, 7, 3, 'Some good points, but lacked depth.', '2025-07-07'),
(8, 8, 8, 1, 'Did not enjoy it at all.', '2025-07-08'),
(9, 9, 9, 5, 'Brilliant! A masterpiece.', '2025-07-09'),
(10, 10, 10, 4, 'Solid book, worth the time.', '2025-07-10'),
(11, 11, 11, 2, 'Disappointing compared to the hype.', '2025-07-11'),
(12, 12, 12, 3, 'Average. Some parts were interesting.', '2025-07-12');


insert into member (member_id, first_name, last_name, email, phone, member_type, registration_date) values
(1, 'Alice', 'Smith', 'alice.smith@uni.edu', '555-0001', 'student', '2024-01-15'),
(2, 'Bob', 'Johnson', 'bob.johnson@uni.edu', '555-0002', 'faculty', '2023-08-20'),
(3, 'Carol', 'Davis', 'carol.davis@uni.edu', '555-0003', 'student', '2024-02-10'),
(4, 'Dave', 'Miller', 'dave.miller@uni.edu', '555-0004', 'faculty', '2023-09-01'),
(5, 'Eve', 'Wilson', 'eve.wilson@uni.edu', '555-0005', 'student', '2024-03-12'),
(6, 'Frank', 'Taylor', 'frank.taylor@uni.edu', '555-0006', 'student', '2024-01-08'),
(7, 'Grace', 'Anderson', 'grace.anderson@uni.edu', '555-0007', 'faculty', '2023-11-11'),
(8, 'Heidi', 'Thomas', 'heidi.thomas@uni.edu', '555-0008', 'student', '2024-04-14'),
(9, 'Ivan', 'Jackson', 'ivan.jackson@uni.edu', '555-0009', 'student', '2024-05-22'),
(10, 'Judy', 'White', 'judy.white@uni.edu', '555-0010', 'faculty', '2023-07-30'),
(11, 'Ken', 'Harris', 'ken.harris@uni.edu', '555-0011', 'student', '2024-06-10'),
(12, 'Laura', 'Martin', 'laura.martin@uni.edu', '555-0012', 'faculty', '2023-10-25'),
(13, 'Mallory', 'Lee', 'mallory.lee@uni.edu', '555-0013', 'student', '2024-03-20'),
(14, 'Niaj', 'Clark', 'niaj.clark@uni.edu', '555-0014', 'student', '2024-01-30'),
(15, 'Oscar', 'Lewis', 'oscar.lewis@uni.edu', '555-0015', 'faculty', '2023-12-05'),
(16, 'Peggy', 'Walker', 'peggy.walker@uni.edu', '555-0016', 'student', '2024-04-18'),
(17, 'Quinn', 'Hall', 'quinn.hall@uni.edu', '555-0017', 'faculty', '2023-06-22'),
(18, 'Ruth', 'Allen', 'ruth.allen@uni.edu', '555-0018', 'student', '2024-02-17'),
(19, 'Sybil', 'Young', 'sybil.young@uni.edu', '555-0019', 'faculty', '2023-11-09'),
(20, 'Trent', 'King', 'trent.king@uni.edu', '555-0020', 'student', '2024-05-05');

insert into borrowing (borrowing_id, member_id, book_id, borrow_date, due_date, return_date, late_fee) values
(1, 1, 1, '2024-06-01', '2024-06-15', '2024-06-14', 0.00),
(2, 2, 2, '2024-05-01', '2024-05-15', '2024-05-20', 2.50),
(3, 3, 3, '2024-07-10', '2024-07-24', NULL, NULL),
(4, 4, 4, '2024-06-15', '2024-06-29', '2024-07-01', 1.00),
(5, 5, 5, '2024-07-01', '2024-07-15', '2024-07-10', 0.00),
(6, 6, 6, '2024-06-12', '2024-06-26', '2024-06-25', 0.00),
(7, 7, 7, '2024-06-05', '2024-06-19', '2024-06-21', 1.00),
(8, 8, 8, '2024-06-08', '2024-06-22', NULL, NULL),
(9, 9, 9, '2024-06-20', '2024-07-04', NULL, NULL),
(10, 10, 10, '2024-06-25', '2024-07-09', NULL, NULL),
(11, 11, 11, '2024-06-05', '2024-06-19', '2024-06-18', 0.00),
(12, 12, 12, '2024-07-01', '2024-07-15', NULL, NULL),
(13, 13, 13, '2024-06-10', '2024-06-24', '2024-06-23', 0.00);

INSERT INTO bookauthor (book_id, author_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 1);

INSERT INTO bookcategory (book_id, category_id) VALUES
(1, 1),
(1, 3),  
(2, 2),
(3, 3),
(4, 4);
