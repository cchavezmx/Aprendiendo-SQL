
-- create TABLE MOVIES
CREATE TABLE movies (id INTEGER PRIMARY KEY, title TEXT, director TEXT, year TEXT, length_minutes INTEGER)


-- create INSERT QUERY INTO MOVIES TABLE
INSERT INTO movies VALUES (1, 'Toy Story', 'John Lasseter', '1995', 81);
INSERT INTO movies VALUES (2, 'A Bug''s Life', 'John Lasseter', '1998', 95);
INSERT INTO movies VALUES (3, 'Toy Story 2', 'John Lasseter', '1999', 93);
INSERT INTO movies VALUES (4, 'Monsters, Inc.', 'Pete Docter', '2001', 92);
INSERT INTO movies VALUES (5, 'Finding Nemo', 'Andrew Stanton', '2003', 107);
INSERT INTO movies VALUES (6, 'The Incredibles', 'Brad Bird', '2004', 116);
INSERT INTO movies VALUES (7, 'Cars', 'John Lasseter', '2006', 117);
INSERT INTO movies VALUES (8, 'Ratatouille', 'Brad Bird', '2007', 115);
INSERT INTO movies VALUES (9, 'WALL-E', 'Andrew Stanton', '2008', 104);
INSERT INTO movies VALUES (10, 'Up', 'Pete Docter', '2009', 101);
INSERT INTO movies VALUES (11, 'Toy Story 3', 'Lee Unkrich', '2010', 103);
INSERT INTO movies VALUES (12, 'Cars 2', 'John Lasseter', '2011', 120);
INSERT INTO movies VALUES (13, 'Brave', 'Brenda Chapman', '2012', 102);
INSERT INTO movies VALUES (14, 'Monsters University', 'Dan Scanlon', '2013', 110);


-- create SELECT QUERY TO DISPLAY ALL MOVIES
SELECT * FROM movies;

