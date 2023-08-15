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