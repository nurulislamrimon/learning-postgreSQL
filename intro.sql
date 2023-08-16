-- create a database

CREATE DATABASE my_database;

-- drop a database

DROP DATABASE my_database;

-- create a table

CREATE TABLE
    subjects (
        subject_id SERIAL,
        subject_name VARCHAR(255) UNIQUE
    );

-- rename a table

ALTER TABLE student RENAME TO student_of_cid;

INSERT into
    student_composit_key
VALUES (
        '3',
        'nirimon',
        'rimon@gmail.com'
    ), (
        '4',
        'akrasel',
        'rasel@gmail.com'
    );

ALTER Table student_composit_key add COLUMN test VARCHAR(255);

-- add new column

ALTER Table student_composit_key add COLUMN role INT;

-- change type

alter Table student_composit_key alter COLUMN role type VARCHAR(255);

-- set default value

ALTER Table
    student_composit_key
alter COLUMN role
set DEFAULT 'user';

-- remove DEFAULT value

ALTER Table student_composit_key alter COLUMN test DROP DEFAULT;

-- RENAME COLUMN

ALTER Table student_composit_key RENAME COLUMN test to country;

-- add CONSTRAINT to existing column

ALTER TABLE student_composit_key alter COLUMN country set not NULL;

-- remove CONSTRAINT FROM existing COLUMN

ALTER TABLE student_composit_key alter COLUMN country drop not NULL;

-- add unique and others CONSTRAINT

ALTER Table
    student_composit_key
ADD
    constraint unique_country UNIQUE(country);

-- drop unique and others CONSTRAINT

ALTER Table student_composit_key DROP constraint unique_country;

-- remove a row where student_id=1;

Delete FROM student WHERE student_id=1;

-- remove all data from a table

TRUNCATE TABLE student_composit_key;

-- CREATE first table

CREATE TABLE
    subjects(
        subject_id SERIAL PRIMARY KEY,
        subject_name VARCHAR(255)
    );

-- create another table with CONNECTION

create Table
    student(
        student_id SERIAL,
        name VARCHAR(255) UNIQUE,
        subject_id INT,
        constraint fk_subject FOREIGN key(subject_id) REFERENCES subjects(subject_id)
    );

-- insert in FOREIGN key

INSERT into student VALUES(1,'Nurul Islam Rimon',1);

SELECT * FROM student;

INSERT into student VALUES ( 4,'Nurul Islam Rimon',1 );

-- update DATABASE table all row

UPDATE student set name = 'Nurul';

-- update DATABASE table targeted row

UPDATE student set name = 'Nurul Islam Rimon' WHERE name='Nurul';

-- update DATABASE table multiple targeted row

UPDATE student
set
    name = 'N I Rimon',
    subject_id = 1
WHERE student_id = 1;

-- delete a row by query

DELETE FROM student WHERE student_id = 1 ;

-- query to get all data

SELECT * FROM student;

-- query to get data THROUGH CONDITIONAL statement

SELECT * FROM student WHERE student_id >2;

-- query to get data THROUGH multiple CONDITIONAL statement

SELECT * FROM student WHERE student_id >2 AND student_id<5;

-- sorting

SELECT * FROM student ORDER BY student_id ASC;

-- limit data

SELECT * FROM student LIMIT 2 ;

-- limit data using page number (offset)

SELECT * FROM student LIMIT 2 OFFSET 0;

-- IN, NOT IN, BETWEEN, LIKE based query

SELECT * FROM student WHERE student_id IN(1,7,10);

-- Regular EXPRESSION====

-- first letter N

SELECT * FROM student WHERE name LIKE 'N%';

-- last letter N

SELECT * FROM student WHERE name LIKE '%N';

-- N exist in anywhere

SELECT * FROM student WHERE name LIKE '%N%';

-- second position n (underscores means character

SELECT * FROM student WHERE name LIKE '_n%';

-- anything in centre and last

SELECT * FROM student WHERE name LIKE 'N%u%';