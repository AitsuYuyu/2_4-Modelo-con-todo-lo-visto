CREATE TABLE Inscription(
    inscription_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    document INT NOT NULL,
    dateInscription DATE NOT NULL
);
CREATE TABLE Register(
    register_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    informationBasic_id INT NOT NULL,
    faculty_id BIGINT NOT NULL,
    course_id INT NOT NULL
);
CREATE TABLE Academic Session(
    academicSession_id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE Faculty(
    faculty_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nameFaculty VARCHAR(255) NOT NULL,
    departments_id INT NOT NULL
);
CREATE TABLE Departments(
    departments_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    namee VARCHAR(255) NOT NULL,
    locationn VARCHAR(255) NOT NULL
);
CREATE TABLE Teacher(
    teacher_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department_id INT NOT NULL,
    course_id INT NOT NULL,
    academicSession_id INT NOT NULL,
    assists_id INT NOT NULL,
    results_id INT NOT NULL,
    timeConexion_id INT NOT NULL
);
CREATE TABLE InformationBasic(
    namee VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    birthDate DATE NOT NULL,
    document INT NOT NULL,
    phoneNum INT NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE Results(
    results_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    exam_id INT NOT NULL
);
CREATE TABLE Exam(
    exam_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE Assists(
    assists_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);
CREATE TABLE InformationBasicTeacher(
    informationTeacher_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    namee VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    phoneNum INT NOT NULL,
    department_id INT NOT NULL
);
CREATE TABLE Alumns(
    alumn_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    informationBasic_id INT NOT NULL,
    academicSessions_id INT NOT NULL,
    courses_id INT NOT NULL,
    faculty_id INT NOT NULL,
    exam_id INT NOT NULL
);
CREATE TABLE Courses(
    course_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    academicSession_id INT NOT NULL
);
CREATE TABLE TimeConexion(
    timeConexion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

ALTER TABLE InformationBasic ADD PRIMARY KEY(document);

