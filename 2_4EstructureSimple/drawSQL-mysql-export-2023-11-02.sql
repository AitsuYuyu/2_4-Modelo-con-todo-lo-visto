CREATE TABLE Inscription(
    inscription_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    document INT UNIQUE NOT NULL,
    dateInscription DATE NOT NULL
);
CREATE TABLE Register(
    register_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    informationBasic_id INT UNIQUE NOT NULL,
    faculty_id BIGINT NOT NULL,
    course_id INT NOT NULL
);
CREATE TABLE AcademicSession(
    academicSession_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE Faculty(
    faculty_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nameFaculty VARCHAR(255) NOT NULL
);
CREATE TABLE Departments(
    departments_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    faculty_id INT NOT NULL
);
CREATE TABLE Teacher(
    teacher_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    academicSession_id INT NOT NULL,
    assists_id INT NOT NULL,
    results_id INT NOT NULL,
    timeConexion_id INT NOT NULL
);
CREATE TABLE InformationBasic(
    name VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    birthDate DATE NOT NULL,
    document INT NOT NULL PRIMARY KEY,
    phoneNum INT NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);
ALTER TABLE
    Information Basic ADD PRIMARY KEY(document);
CREATE TABLE Results(
    results_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    exam_id INT NOT NULL
);
CREATE TABLE Exam(
    exam_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE Assists(
    assists_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE InformationBasicTeacher(
    informationTeacher_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    phoneNum INT UNIQUE NOT NULL,
    department_id INT NOT NULL
);
CREATE TABLE Alumns(
    alumn_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    informationBasic_id INT NOT NULL,
    courses_id INT NOT NULL,
    department_id INT NOT NULL,
    exam_id INT NOT NULL
);
CREATE TABLE Courses(
    course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    academicSession_id INT NOT NULL
);
CREATE TABLE TimeConexion(
    timeConexion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);