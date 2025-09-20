CREATE DATABASE sql_task_06;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    class VARCHAR(20)
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);

CREATE TABLE marks (
    mark_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    marks_obtained INT,
    max_marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    date DATE,
    status ENUM('Present', 'Absent'),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);


INSERT INTO students (student_id, name, class) VALUES
(1, 'Ashish Kumar', '10'),
(2, 'Riya Sharma', '10'),
(3, 'Amit Verma', '10'),
(4, 'Neha Gupta', '10'),
(5, 'Sandeep Yadav', '10'),
(6, 'Priya Singh', '10'),
(7, 'Ankit Patel', '10'),
(8, 'Deepika Rao', '10'),
(9, 'Vikram Chauhan', '10'),
(10, 'Shalini Mishra', '10');


INSERT INTO subjects (subject_id, subject_name) VALUES
(1, 'Mathematics'),
(2, 'Science'),
(3, 'English'),
(4, 'History'),
(5, 'Geography');


INSERT INTO marks (student_id, subject_id, marks_obtained, max_marks) VALUES
-- Ashish Kumar
(1, 1, 85, 100), (1, 2, 78, 100), (1, 3, 90, 100), (1, 4, 72, 100), (1, 5, 80, 100),
-- Riya Sharma
(2, 1, 92, 100), (2, 2, 88, 100), (2, 3, 95, 100), (2, 4, 85, 100), (2, 5, 90, 100),
-- Amit Verma
(3, 1, 55, 100), (3, 2, 60, 100), (3, 3, 58, 100), (3, 4, 65, 100), (3, 5, 62, 100),
-- Neha Gupta
(4, 1, 40, 100), (4, 2, 45, 100), (4, 3, 50, 100), (4, 4, 38, 100), (4, 5, 42, 100),
-- Sandeep Yadav
(5, 1, 70, 100), (5, 2, 68, 100), (5, 3, 72, 100), (5, 4, 75, 100), (5, 5, 74, 100),
-- Priya Singh
(6, 1, 95, 100), (6, 2, 92, 100), (6, 3, 97, 100), (6, 4, 89, 100), (6, 5, 94, 100),
-- Ankit Patel
(7, 1, 65, 100), (7, 2, 70, 100), (7, 3, 68, 100), (7, 4, 60, 100), (7, 5, 72, 100),
-- Deepika Rao
(8, 1, 88, 100), (8, 2, 82, 100), (8, 3, 84, 100), (8, 4, 79, 100), (8, 5, 86, 100),
-- Vikram Chauhan
(9, 1, 30, 100), (9, 2, 35, 100), (9, 3, 32, 100), (9, 4, 28, 100), (9, 5, 31, 100),
-- Shalini Mishra
(10, 1, 76, 100), (10, 2, 80, 100), (10, 3, 78, 100), (10, 4, 74, 100), (10, 5, 79, 100);


INSERT INTO attendance (student_id, date, status) VALUES

-- Day 1
(1,'2025-08-21','Present'),(2,'2025-08-21','Present'),(3,'2025-08-21','Absent'),
(4,'2025-09-21','Present'),(5,'2025-08-21','Present'),(6,'2025-08-21','Present'),
(7,'2025-08-21','Present'),(8,'2025-08-21','Present'),(9,'2025-08-21','Absent'),
(10,'2025-08-21','Present'),

-- Day 2
(1,'2025-08-22','Absent'),(2,'2025-08-22','Present'),(3,'2025-08-22','Present'),
(4,'2025-08-22','Present'),(5,'2025-08-22','Present'),(6,'2025-08-22','Present'),
(7,'2025-08-22','Absent'),(8,'2025-08-22','Present'),(9,'2025-08-22','Present'),
(10,'2025-08-22','Present'),

-- Day 3
(1,'2025-08-23','Present'),(2,'2025-08-23','Present'),(3,'2025-08-23','Absent'),
(4,'2025-08-23','Absent'),(5,'2025-08-23','Present'),(6,'2025-08-23','Present'),
(7,'2025-08-23','Present'),(8,'2025-08-23','Present'),(9,'2025-08-23','Absent'),
(10,'2025-08-23','Present'),

-- Day 4
(1,'2025-08-24','Present'),(2,'2025-08-24','Present'),(3,'2025-08-24','Present'),
(4,'2025-08-24','Absent'),(5,'2025-08-24','Present'),(6,'2025-08-24','Present'),
(7,'2025-08-24','Present'),(8,'2025-08-24','Present'),(9,'2025-08-24','Absent'),
(10,'2025-08-24','Present'),

-- Day 5
(1,'2025-08-25','Present'),(2,'2025-08-25','Absent'),(3,'2025-08-25','Present'),
(4,'2025-08-25','Present'),(5,'2025-08-25','Present'),(6,'2025-08-25','Present'),
(7,'2025-08-25','Present'),(8,'2025-08-25','Present'),(9,'2025-08-25','Absent'),
(10,'2025-08-25','Present'),

-- Day 6
(1,'2025-08-26','Present'),(2,'2025-08-26','Present'),(3,'2025-08-26','Present'),
(4,'2025-08-26','Present'),(5,'2025-08-26','Absent'),(6,'2025-08-26','Present'),
(7,'2025-08-26','Present'),(8,'2025-08-26','Absent'),(9,'2025-08-26','Present'),
(10,'2025-08-26','Present'),

-- Day 7
(1,'2025-08-27','Absent'),(2,'2025-08-27','Present'),(3,'2025-08-27','Present'),
(4,'2025-08-27','Present'),(5,'2025-08-27','Present'),(6,'2025-08-27','Absent'),
(7,'2025-08-27','Present'),(8,'2025-08-27','Present'),(9,'2025-08-27','Present'),
(10,'2025-08-27','Present'),

-- Day 8
(1,'2025-08-28','Present'),(2,'2025-08-28','Present'),(3,'2025-08-28','Present'),
(4,'2025-08-28','Present'),(5,'2025-08-28','Present'),(6,'2025-08-28','Present'),
(7,'2025-08-28','Absent'),(8,'2025-08-28','Present'),(9,'2025-08-28','Absent'),
(10,'2025-08-28','Present'),

-- Day 9
(1,'2025-08-29','Present'),(2,'2025-08-29','Absent'),(3,'2025-08-29','Present'),
(4,'2025-08-29','Present'),(5,'2025-08-29','Present'),(6,'2025-08-29','Present'),
(7,'2025-08-29','Present'),(8,'2025-08-29','Present'),(9,'2025-08-29','Absent'),
(10,'2025-08-29','Present'),

-- Day 10
(1,'2025-08-30','Present'),(2,'2025-08-30','Present'),(3,'2025-08-30','Present'),
(4,'2025-08-30','Present'),(5,'2025-08-30','Absent'),(6,'2025-08-30','Present'),
(7,'2025-08-30','Present'),(8,'2025-08-30','Absent'),(9,'2025-08-30','Present'),
(10,'2025-08-30','Present'),

-- Day 11
(1,'2025-09-01','Present'),(2,'2025-09-01','Present'),(3,'2025-09-01','Absent'),
(4,'2025-09-01','Present'),(5,'2025-09-01','Absent'),(6,'2025-09-01','Present'),
(7,'2025-09-01','Present'),(8,'2025-09-01','Present'),(9,'2025-09-01','Absent'),
(10,'2025-09-01','Present'),

-- Day 12
(1,'2025-09-02','Absent'),(2,'2025-09-02','Present'),(3,'2025-09-02','Present'),
(4,'2025-09-02','Present'),(5,'2025-09-02','Present'),(6,'2025-09-02','Present'),
(7,'2025-09-02','Absent'),(8,'2025-09-02','Present'),(9,'2025-09-02','Present'),
(10,'2025-09-02','Present'),

-- Day 13
(1,'2025-09-03','Present'),(2,'2025-09-03','Present'),(3,'2025-09-03','Absent'),
(4,'2025-09-03','Absent'),(5,'2025-09-03','Present'),(6,'2025-09-03','Present'),
(7,'2025-09-03','Present'),(8,'2025-09-03','Present'),(9,'2025-09-03','Absent'),
(10,'2025-09-03','Present'),

-- Day 14
(1,'2025-09-04','Present'),(2,'2025-09-04','Present'),(3,'2025-09-04','Present'),
(4,'2025-09-04','Absent'),(5,'2025-09-04','Present'),(6,'2025-09-04','Present'),
(7,'2025-09-04','Present'),(8,'2025-09-04','Present'),(9,'2025-09-04','Absent'),
(10,'2025-09-04','Present'),

-- Day 15
(1,'2025-09-05','Present'),(2,'2025-09-05','Absent'),(3,'2025-09-05','Present'),
(4,'2025-09-05','Present'),(5,'2025-09-05','Present'),(6,'2025-09-05','Present'),
(7,'2025-09-05','Present'),(8,'2025-09-05','Present'),(9,'2025-09-05','Absent'),
(10,'2025-09-05','Present'),

-- Day 16
(1,'2025-09-06','Present'),(2,'2025-09-06','Present'),(3,'2025-09-06','Present'),
(4,'2025-09-06','Present'),(5,'2025-09-06','Absent'),(6,'2025-09-06','Present'),
(7,'2025-09-06','Present'),(8,'2025-09-06','Absent'),(9,'2025-09-06','Present'),
(10,'2025-09-06','Present'),

-- Day 17
(1,'2025-09-07','Absent'),(2,'2025-09-07','Present'),(3,'2025-09-07','Present'),
(4,'2025-09-07','Present'),(5,'2025-09-07','Present'),(6,'2025-09-07','Absent'),
(7,'2025-09-07','Present'),(8,'2025-09-07','Present'),(9,'2025-09-07','Present'),
(10,'2025-09-07','Present'),

-- Day 18
(1,'2025-09-08','Present'),(2,'2025-09-08','Present'),(3,'2025-09-08','Present'),
(4,'2025-09-08','Present'),(5,'2025-09-08','Present'),(6,'2025-09-08','Present'),
(7,'2025-09-08','Absent'),(8,'2025-09-08','Present'),(9,'2025-09-08','Absent'),
(10,'2025-09-08','Present'),

-- Day 19
(1,'2025-09-09','Present'),(2,'2025-09-09','Absent'),(3,'2025-09-09','Present'),
(4,'2025-09-09','Present'),(5,'2025-09-09','Present'),(6,'2025-09-09','Present'),
(7,'2025-09-09','Present'),(8,'2025-09-09','Present'),(9,'2025-09-09','Absent'),
(10,'2025-09-09','Present'),

-- Day 20
(1,'2025-09-10','Present'),(2,'2025-09-10','Present'),(3,'2025-09-10','Present'),
(4,'2025-09-10','Present'),(5,'2025-09-10','Absent'),(6,'2025-09-10','Present'),
(7,'2025-09-10','Present'),(8,'2025-09-10','Absent'),(9,'2025-09-10','Present'),
(10,'2025-09-10','Present'),

-- Day 21
(1,'2025-09-11','Present'),(2,'2025-09-11','Present'),(3,'2025-09-11','Absent'),
(4,'2025-09-11','Present'),(5,'2025-09-11','Present'),(6,'2025-09-11','Present'),
(7,'2025-09-11','Present'),(8,'2025-09-11','Present'),(9,'2025-09-11','Absent'),
(10,'2025-09-11','Present'),

-- Day 22
(1,'2025-09-12','Absent'),(2,'2025-09-12','Present'),(3,'2025-09-12','Present'),
(4,'2025-09-12','Present'),(5,'2025-09-12','Present'),(6,'2025-09-12','Present'),
(7,'2025-09-12','Absent'),(8,'2025-09-12','Present'),(9,'2025-09-12','Present'),
(10,'2025-09-12','Present'),

-- Day 23
(1,'2025-09-13','Present'),(2,'2025-09-13','Present'),(3,'2025-09-13','Absent'),
(4,'2025-09-13','Absent'),(5,'2025-09-13','Present'),(6,'2025-09-13','Present'),
(7,'2025-09-13','Present'),(8,'2025-09-13','Present'),(9,'2025-09-13','Absent'),
(10,'2025-09-13','Present'),

-- Day 24
(1,'2025-09-14','Present'),(2,'2025-09-14','Present'),(3,'2025-09-14','Present'),
(4,'2025-09-14','Absent'),(5,'2025-09-14','Present'),(6,'2025-09-14','Present'),
(7,'2025-09-14','Present'),(8,'2025-09-14','Present'),(9,'2025-09-14','Absent'),
(10,'2025-09-14','Present'),

-- Day 25
(1,'2025-09-15','Present'),(2,'2025-09-15','Absent'),(3,'2025-09-15','Present'),
(4,'2025-09-15','Present'),(5,'2025-09-15','Present'),(6,'2025-09-15','Present'),
(7,'2025-09-15','Present'),(8,'2025-09-15','Present'),(9,'2025-09-15','Absent'),
(10,'2025-09-15','Present'),

-- Day 26
(1,'2025-09-16','Present'),(2,'2025-09-16','Present'),(3,'2025-09-16','Present'),
(4,'2025-09-16','Present'),(5,'2025-09-16','Absent'),(6,'2025-09-16','Present'),
(7,'2025-09-16','Present'),(8,'2025-09-16','Absent'),(9,'2025-09-16','Present'),
(10,'2025-09-16','Present'),

-- Day 27
(1,'2025-09-17','Absent'),(2,'2025-09-17','Present'),(3,'2025-09-17','Present'),
(4,'2025-09-17','Present'),(5,'2025-09-17','Present'),(6,'2025-09-17','Absent'),
(7,'2025-09-17','Present'),(8,'2025-09-17','Present'),(9,'2025-09-17','Present'),
(10,'2025-09-17','Present'),

-- Day 28
(1,'2025-09-18','Present'),(2,'2025-09-18','Present'),(3,'2025-09-18','Present'),
(4,'2025-09-18','Present'),(5,'2025-09-18','Present'),(6,'2025-09-18','Present'),
(7,'2025-09-18','Absent'),(8,'2025-09-18','Present'),(9,'2025-09-18','Absent'),
(10,'2025-09-18','Present'),

-- Day 29
(1,'2025-09-19','Present'),(2,'2025-09-19','Absent'),(3,'2025-09-19','Present'),
(4,'2025-09-19','Present'),(5,'2025-09-19','Present'),(6,'2025-09-19','Present'),
(7,'2025-09-19','Present'),(8,'2025-09-19','Present'),(9,'2025-09-19','Absent'),
(10,'2025-09-19','Present'),

-- Day 30
(1,'2025-09-20','Present'),(2,'2025-09-20','Present'),(3,'2025-09-20','Present'),
(4,'2025-09-20','Present'),(5,'2025-09-20','Absent'),(6,'2025-09-20','Present'),
(7,'2025-09-20','Present'),(8,'2025-09-20','Absent'),(9,'2025-09-20','Present'),
(10,'2025-09-20','Present');


SELECT 
    s.student_id,
    s.name,
    ROUND(AVG(m.marks_obtained),2) AS avg_score,
    CASE 
        WHEN AVG(m.marks_obtained) >= 75 THEN 'Excellent'
        WHEN AVG(m.marks_obtained) BETWEEN 50 AND 74 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS performance_category
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.student_id, s.name;



SELECT 
    sub.subject_name,
    ROUND(AVG(m.marks_obtained),2) AS avg_score,
    COUNT(CASE WHEN m.marks_obtained < 40 THEN 1 END) AS student_failed
FROM marks m
JOIN subjects sub ON m.subject_id = sub.subject_id
GROUP BY sub.subject_name;


SELECT 
    s.student_id,
    s.name,
    ROUND(
        (COUNT(CASE WHEN a.status='Present' THEN 1 END) * 100.0) / COUNT(*),2
    ) AS attendance_percentage
FROM students s
JOIN attendance a ON s.student_id = a.student_id
GROUP BY s.student_id, s.name;


CREATE VIEW student_dashboard AS
SELECT 
    s.student_id,
    s.name,
    ROUND(AVG(m.marks_obtained),2) AS avg_score,
    COUNT(DISTINCT a.date) AS total_classes,
    COUNT(DISTINCT CASE WHEN a.status='Present' THEN a.date END) AS classes_attended,
    ROUND(
        (COUNT(DISTINCT CASE WHEN a.status = 'Present' THEN a.date END) * 100.0) / COUNT(DISTINCT a.date),2) AS attendance_percentage
FROM students s
JOIN marks m ON s.student_id = m.student_id
JOIN attendance a ON s.student_id = a.student_id
GROUP BY s.student_id, s.name;

SELECT * FROM student_dashboard;
