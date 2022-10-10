-- Buat dan use database-nya 
-- CREATE DATABASE tugas_basis_data;
USE tugas_basis_data;

-- Create new student info record
INSERT INTO students VALUES 
('nim_kalia7', "Dummy 7", "Dummy Street", "Sistem Informasi"),
('nim_kalia8', "Dummy 8", "Dummy Street", "Sistem Informasi");

-- List students : Attar
SELECT * FROM students;

-- Update student info record
UPDATE students SET full_name = 'Fitrah Ramadhan', address = 'Jl. H. Kalla' WHERE student_id = 'H071211017';
UPDATE students SET full_name = 'Muhammad Mukram Mustamin', address = 'Sudiang' WHERE student_id = 'H071211017';
UPDATE students SET full_name = 'Attar', student_id= 'H071211014', address="Jalan Perintis Kemerdekaan" WHERE student_id='nim_kalia1';

-- List of schedule on specific student
SELECT st.full_name, c.name, sc.tanggal, sc.jam
FROM students st
JOIN schedule sc ON st.student_id = sc.student_id
JOIN course c ON sc.course_id = c.course_id
WHERE st.student_id = 'H071211017';

-- List of courses
SELECT course_id,'NAME',duration FROM course;                                           

-- Create / input new schedule for specific student
INSERT INTO schedule (tanggal, jam, student_id, course_id) VALUES
('2022-10-20', '10:10', 'H071211012', '21H0712040'),
('2022-10-21', '13:10', 'H071211012', '21H0712100');

-- Edit /update schedule for specific student
UPDATE schedule
SET tanggal = '2022-10-22', jam = '16:00'
WHERE student_id = 'H071211017';
