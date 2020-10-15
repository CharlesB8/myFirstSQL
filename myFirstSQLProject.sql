
delete the entire table
DROP TABLE student;


CREATE TABLE student(
id INTEGER PRIMARY KEY,
firstName VARCHAR(100),
lastName VARCHAR(100),
age INTEGER
);

ALTER TABLE studentemail ADD email VARCHAR(100);

CREATE TABLE courses (
id INTEGER PRIMARY KEY,
title VARCHAR(100)
);enrollment_ibfk_1

Through/join table
Foreign Key(attribute in the current table that referncess to the primary key of another table) REFERENCES target a table with primary key
CREATE TABLE enrollment (
id INTEGER PRIMARY KEY,
courseId INTEGER,
studentId INTEGER,  
FOREIGN KEY (courseId) REFERENCES courses(id),
FOREIGN KEY (studentId) REFERENCES student(id)
);

Inserting data into table

INSERT INTO student VALUES 
	(1, "Charles", "Bartels", 22, "Charles@gmail.com"),
    (2, "Sayeed", "Joseph", 25, "sayeed@email.com"),
    (3, "Rayvon", "Scott", 22, "Scott@email.com");
    
INSERT INTO courses VALUES
(1, "English"),
(2, "Math"),
(3, "Science"),
(4, "Java");

INSERT INTO enrollment VALUES
(1, 2, 1),
(2, 3, 3),
(3, 3, 1),
(5, 4, 2),
(4, 1, 2);

SELECT * FROM student;
SELECT firstName, lastName FROM student;
SELECT firstName, lastName FROM student LIMIT 2;
SELECT firstName, lastName FROM student WHERE age < 25;
SELECT firstName, lastName FROM student ORDER BY firstName;
SELECT firstName, lastName FROM student ORDER BY firstName DESC;



 
