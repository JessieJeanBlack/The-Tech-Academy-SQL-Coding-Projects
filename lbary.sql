CREATE DATABASE db_library_management_system
Use db_library_management_system
CREATE TABLE LIBRARY_BRANCH (
	BranchID INT PRIMARY KEY NOT NULL,
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL
);

INSERT INTO LIBRARY_BRANCH (BranchID, BranchName, Address)
	Values 
	('43162', 'Sharpstown', '117 Hillview Drive'),
	('62383','Central','4817 Johnstown Road'),
	('36714','Forsyth','2305 Buena Vista Avenue1'),
	('76558','Middleton','2310 Paul Wayne Haggerty Road');

CREATE TABLE PUBLISHER (
	PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

INSERT INTO PUBLISHER (PublisherName, Address, Phone)
	VALUES
	('Giraffe Stable House','3909 Adams Avenue','301-668-1821'),
	('Machennely Sisters','2421 Kelly Street','410-703-9491'),
	('Livre Tompre','1587 West Fork Drive','954-425-4039');

CREATE TABLE BOOKS (
	BookID INT PRIMARY KEY IDENTITY(2200, 3000) NOT NULL,
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) FOREIGN KEY REFERENCES PUBLISHER(PublisherName)
);

INSERT INTO BOOKS (Title, PublisherName)
	VALUES 
	('The Lost Tribe','Giraffe Stable House'),
	('A Clockwork Orange','Machennely Sisters'),
	('Wasted','Giraffe Stable House'),
	('Snuff"','Livre Tompre'),
	('Carrie','Livre Tompre'),
	('1964','Giraffe Stable House'),
	('Choke','Livre Tompre'),
	('The Wanting Seed','Machennely Sisters'),
	('The 37th Parallel','Giraffe Stable House'),
	('Misery','Livre Tompre');

USE db_library_management_system;
 INSERT INTO BOOKS (Title, PublisherName)
	VALUES
	('Food of the Gods','Giraffe Stable House'),
	('Undenyable','Machennely Sisters'),
	('Loud in the House of Me','Giraffe Stable House'),
	('Rant','Livre Tompre'),
	('It Was Me All Along','Livre Tompre'),
	('The Evolution of Technology','Giraffe Stable House'),
	('Lullaby','Livre Tompre'),
	('Sapiens','Machennely Sisters'),
	('Unbearable Lightness','Giraffe Stable House'),
	('Hunger','Livre Tompre'),
	('Measurement','Giraffe Stable House'),
	('A History of Pi','Machennely Sisters'),
	('Parasite Rex','Giraffe Stable House'),
	('Behave','Livre Tompre'),
	('Gulp','Livre Tompre'),
	('The Double Helix','Giraffe Stable House'),
	('Genome','Livre Tompre'),
	('The Blind Watchmaker','Machennely Sisters'),
	('Omnivore Dilemma','Giraffe Stable House'),
	('The Plant Paradox','Livre Tompre');
SELECT * FROM BOOKS;
INSERT INTO BOOKS (Title, PublisherName)
	VALUES 
	('Slaugherhouse-5','Giraffe Stable House'),
	('The Stranger','Machennely Sisters'),
	('Obik','Giraffe Stable House'),
	('Sharp Objects','Livre Tompre'),
	('Identical','Livre Tompre'),
	('We Were Liars','Giraffe Stable House'),
	('In a Dark Wood','Livre Tompre'),
	('Good as Gone','Machennely Sisters'),
	('The Basic Eight','Giraffe Stable House'),
	('More Than This','Livre Tompre');

CREATE TABLE BOOK_AUTHORS (
	BookID INT FOREIGN KEY REFERENCES BOOKS(BookID),
	AuthorName VARCHAR(50) NOT NULL
);

INSERT INTO BOOK_AUTHORS (BookID, AuthorName)
	VALUES
	('2200', 'Mark Lee'),
	('5200', 'Anthony Burgess'),
	('8200', 'Marya Hornbacher'),
	('11200', 'Chuch Paulanuik'),
	('14200', 'Stephen King'),
	('17200', 'James Farner'),
	('20200', 'Chuck Paulanuik'),
	('23200', 'Anthony Burgess'),
	('26200', 'Ben Mezrich'),
	('29200', 'Stephen King'),
	('32200', 'Terence Mckenna'),
	('35200', 'Bill Nye'),
	('38200', 'Stacy Pershall'),
	('41200', 'Chuck Paulanuik'),
	('44200', 'Andie Mitchell'),
	('47200', 'George Basalla'),
	('50200', 'Chuck Paulanuik'),
	('53200', 'Yoval Noah Harari'),
	('56200', 'Portia De Rossi'),
	('59200', 'Roxane Gay'),
	('62200', 'Paul Lockhart'),
	('65200', 'Petr Bockmann'),	
	('68200', 'Carl Zimmerman'),
	('71200', 'Robert M Sepolsky'),
	('74200', 'Mary Roach'),
	('77200', 'James D. Watson'),
	('80200', 'Matt Ridley'),
	('83200', 'Richard Dawkins'),
	('86200', 'Michael Pollan'),
	('89200', 'Steven R. Gundry');

INSERT INTO BOOK_AUTHORS (BookID, AuthorName)
	VALUES 
	('92200', 'Kurt Vonnegot'),
	('95200', 'Albert Camus'),
	('98200', 'Phillip K. Dick'),
	('101200', 'Gillian Flynn'),
	('104200', 'Ellen Hopkins'),
	('107200',	'E. Lockhart'),
	('110200', 'Ruth Ware'),
	('113200',	'Amy Gentry'),
	('116200', 'Daniel Handler'),
	('119200',	'Patrick Ness');
	SELECT * FROM BOOKS;
CREATE TABLE BOOK_COPIES (
	BookID INT FOREIGN KEY REFERENCES BOOKS(BookID),
	BranchID INT FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
	Number_Of_Copies INT NOT NULL
);

INSERT INTO BOOK_COPIES (BookID, BranchID, Number_Of_Copies)
	VALUES
	('2200', '43162', '2'),
	('5200', '43162', '4'),
	('8200', '43162', '3'),
	('11200', '43162', '2'),
	('14200', '62383', '4'),
	('17200', '43162', '2'),
	('20200', '43162', '2'),
	('23200', '43162', '2'),
	('26200', '43162', '2'),
	('29200', '62383', '3'),
	('32200', '43162', '3'),
	('35200', '43162', '2'),
	('38200', '62383', '3'),
	('41200', '62383', '2'),
	('44200', '62383', '2'),
	('47200', '62383', '2'),
	('50200', '62383', '2'),
	('53200', '62383', '2'),
	('56200', '62383', '2'),
	('59200', '62383', '3'),
	('62200', '36714', '2'),
	('65200', '36714', '2'),
	('68200', '36714', '2'),
	('71200', '36714', '2'),
	('74200', '36714', '2'),
	('77200', '36714', '2'),
	('80200', '36714', '2'),
	('83200', '36714', '2'),
	('86200', '36714', '2'),
	('89200', '36714', '2');

INSERT INTO BOOK_COPIES (BookID, BranchID, Number_Of_Copies)
	VALUES
	('89200', '76558', '3'), 
	('92200', '76558', '2'),
	('95200', '76558', '4'),
	('98200', '76558', '2'),
	('101200', '76558', '2'),
	('104200', '76558', '3'),
	('107200', '76558', '2'),
	('110200', '76558', '3'),
	('113200', '76558', '2'),
	('116200', '76558', '3'),
	('119200', '76558', '2');

CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY NOT NULL,
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

INSERT INTO BORROWER (CardNo, Name, Address, Phone)
	VALUES
	('4682', 'Richard Smith', '2450 Gallapago St. Denver, CO', '(315)247-4484'),
	('4829', 'Alyssa Carter', '4549  Arthur Avenue Aurora, CO', '(815)857-9172'),
	('4374', 'Etha Harris', 'John Street 99 Denver, CO', '(315)289-4082'),
	('4020', 'Brooklyn Walker', '1430 18th St. Boulder, CO', '(334)268-2903'),
	('4945', 'Michelle King', '40 Woodland Dr. Broomfield, CO', '(404)947-0051'),
	('4782', 'Richard Smith', '1775 Curtis St. Denver, CO', '(678)247-8973');

INSERT INTO BORROWER (CardNo, Name, Address, Phone)
	VALUES
	('4688', 'Samantha Lyn', '470 Peachtree Hills Ave Apt 26 Denver, CO', '(678)936-9943'),
	('4994', 'Franklin Pearce', '470 Peachtree Hills Ave Apt 26 Denver, CO', '(404)640-9766');

INSERT INTO BORROWER (CardNo, Name, Address, Phone)
	Values
	('5121', 'Christina Nosari', '1224 Hampton Dr. Denver, CO', '(770)529-4546'),
	('5122', 'Colleen Morris', '6020 Ashwood Ct. Denver CO', '(678)773-6426');


CREATE TABLE BOOK_LOANS (
	BookID INT FOREIGN KEY REFERENCES BOOKS(BookID),
	BranchID Int FOREIGN KEY REFERENCES LIBRARY_BRANCH(BranchID),
	CardNo Int FOREIGN KEY REFERENCES BORROWER(CardNo),
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL
);
SELECT * FROM BOOKS;
SELECT * FROM BORROWER;
INSERT INTO BOOK_LOANS (BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES 
	('89200', '36714', '4682', '2019-04-03', '2019-05-03'),
	('2200', '43162', '4682', '2019-04-29', '2019-05-29'),
	('5200', '43162', '4682', '2019-04-03', '2019-05-03'),
	('98200', '76558', '4682', '2019-04-20', '2019-05-20'),
	('95200', '76558', '4682', '2019-03-20', '2019-04-20'),
	('5200', '43162', '4020', '2019-03-21', '2019-04-21'),
	('89200', '36714', '4020', '2019-02-14', '2019-03-14'),
	('41200', '62383', '4020', '2019-02-14', '2019-03-14'),
	('59200', '62383', '4020', '2019-04-20', '2019-05-20'),
	('77200', '36714', '4020', '2019-01-04', '2019-02-04'),
	('44200', '62383', '4829', '2019-04-13', '2019-05-14'),
	('17200', '43162', '4374', '2019-02-01', '2019-03-01'),
	('2200', '43162', '4945', '2019-05-01', '2019-06-01'),
	('92200', '76558', '4688', '2019-01-17', '2019-02-17'),
	('14200', '62383', '4682', '2019-03-04', '2019-04-04'),
	('62200', '36714', '4782', '2019-02-10', '2019-03-10'),
	('119200', '76558', '4829', '2019-04-03', '2019-05-03'),
	('116200', '76558', '4945', '2019-05-01', '2019-06-01'),
	('116200', '76558', '4829', '2019-03-01', '2019-04-01'),
	('50200', '62383', '4994', '2019-04-30', '2019-05-30'),
	('89200', '36714', '4682', '2019-01-02', '2019-02-02'),
	('68200', '36714', '4688', '2019-04-05', '2019-05-05'),
	('107200', '76558', '4374', '2019-02-22', '2019-03-22'),
	('113200', '76558', '4682', '2019-05-01', '2019-05-02'),
	('110200', '76558', '4829', '2019-04-12', '2019-05-12'),
	('29200', '62383', '4994', '2019-03-17', '2019-04-17'),
	('32200', '43162', '4945', '2019-03-01', '2019-04-01'),
	('23200', '43162', '4782', '2019-01-06', '2019-02-06'),
	('26200', '43162', '4994', '2019-05-02', '2019-06-02'),
	('38200', '62383', '4688', '2019-04-29', '2019-05-29'),
	('83200', '36714', '4682', '2019-02-19', '2019-03-19'),
	('86200', '36714', '4945', '2019-03-20', '2019-04-20'),
	('101200', '76558', '4829', '2019-01-27', '2019-02-27'),
	('107200', '76558', '4782', '2019-03-27', '2019-04-27'),
	('71200', '36714', '4020', '2019-01-12', '2019-02-12'),
	('104200', '76558', '4374', '2019-01-15', '2019-01-15'),
	('53200', '62383', '4688', '2019-04-12', '2019-05-12'),
	('56200', '62383', '4994', '2019-04-22', '2019-05-22'),
	('65200', '36714', '4782', '2019-01-03', '2019-02-03'),
	('80200', '36714', '4682', '2019-03-16', '2019-04-16'),
	('47200', '62383', '4945', '2019-03-17', '2019-04-17'),
	('20200', '43162', '4374', '2019-01-05', '2019-02-05'),
	('8200', '43162', '4020', '2019-05-02', '2019-06-02'),
	('11200', '43162', '4682', '2019-02-10', '2019-03-10'),
	('35200', '43162', '4688', '2019-03-26', '2019-04-26'),
	('74200', '36714', '4994', '2019-04-30', '2019-05-30'),
	('89200', '76558', '4829', '2019-05-01', '2019-06-01'),
	('95200', '76558', '4782', '2019-04-03', '2019-05-03'),
	('98200', '76558', '4994', '2019-02-16', '2019-03-16');

INSERT INTO BOOK_LOANS (BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	('38200', '62383', '4994', '2019-02-19', '2019-03-19');

INSERT INTO BOOK_LOANS (BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	('59200', '62383', '5121', '2019-01-19', '2019-02-19');
USE db_library_management_system

/* Below is how to get number of copies of "The Lost Tribe" in Sharpstown Branch*/

SELECT BOOK_COPIES.Number_Of_Copies, BOOKS.Title
FROM BOOK_COPIES
INNER JOIN BOOKS on BOOK_COPIES.BookID=Books.BookID
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID=BOOK_COPIES.BranchID
WHERE Books.Title = 'The Lost Tribe' AND LIBRARY_BRANCH.BranchName = 'Sharpstown';

/*Below is how I got the number of copies from each branch. I only have copies in the Sharpstown branch, so it is all that shows.*/

SELECT BOOK_COPIES.Number_Of_Copies, BOOKS.Title, LIBRARY_BRANCH.BranchName
FROM BOOK_COPIES
INNER JOIN BOOKS ON BOOK_COPIES.BookID=BOOKS.BookID
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
WHERE BOOKS.Title = 'The Lost Tribe';

/*Retrieve Names of all Borrowers who do not have any books checked out. All of the borrowers have 5+ books loaned out at this time.*/

SELECT BORROWER.Name
FROM BOOK_LOANS
FULL OUTER JOIN BORROWER ON BOOK_LOANS.CardNo=BORROWER.CardNo
WHERE BOOK_LOANS.CardNo IS NULL;

/* For each book loaned from Sharpstown branch that is due today, retrieve Book Title, Borrowers Name, and Borrowers Address */

SELECT BOOKS.Title, BORROWER.Name, BORROWER.Address
FROM BOOK_LOANS
INNER JOIN BOOKS on BOOK_LOANS.BookID=BOOKS.BookID
INNER JOIN BORROWER ON BOOK_LOANS.CardNo=BORROWER.CardNo
INNER JOIN LIBRARY_BRANCH ON BOOK_LOANS.BranchID=LIBRARY_BRANCH.BranchID
WHERE BOOK_LOANS.DateDue = '2019-05-03' AND LIBRARY_BRANCH.BranchName='Sharpstown';

/*For each branch, retieve branch name and total number of books loaned from branch*/

SELECT COUNT(BOOK_LOANS.BranchID), LIBRARY_BRANCH.BranchName
FROM BOOK_LOANS
INNER JOIN LIBRARY_BRANCH ON BOOK_LOANS.BranchID=LIBRARY_BRANCH.BranchID
group by LIBRARY_BRANCH.BranchName;

/*Retrieve names, addresses, and # of books checked out for borrowers with more than
5 books checked out*/

SELECT COUNT(BOOK_LOANS.CardNo), BORROWER.Name, BORROWER.Address
	FROM BOOK_LOANS
	FULL OUTER JOIN BORROWER ON BOOK_LOANS.CardNo=BORROWER.CardNo
	GROUP BY BORROWER.Name, BORROWER.Address
	HAVING COUNT(BOOK_LOANS.CardNo) > 5
	

/*For each book authored by Stephen King retrieve title and number of copies
owned by Central branch.*/

SELECT BOOKS.Title, COUNT(BOOK_COPIES.Number_Of_Copies), LIBRARY_BRANCH.BranchName
from BOOKS
FULL OUTER JOIN BOOK_COPIES ON BOOKS.BookID=BOOK_COPIES.BookID
FULL OUTER JOIN LIBRARY_BRANCH ON BOOK_COPIES.BranchID=LIBRARY_BRANCH.BranchID
inner join BOOK_AUTHORS ON BOOKS.BookID=BOOK_AUTHORS.BookID
WHERE LIBRARY_BRANCH.BranchName = 'Central' AND BOOK_AUTHORS.AuthorName = 'Stephen King'
GROUP BY BOOKS.Title, LIBRARY_BRANCH.BranchName;
 




