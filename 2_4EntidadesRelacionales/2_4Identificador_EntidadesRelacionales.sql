-- Crear las tablas
CREATE DATABASE 2_4Modelo1;
USE 2_4Modelo1;

CREATE TABLE Inscription(
    inscription_id INT NOT NULL AUTO_INCREMENT,
    document INT NOT NULL,
    dateInscription DATE NOT NULL,
    PRIMARY KEY (inscription_id)
);

CREATE TABLE Register(
    register_id INT NOT NULL AUTO_INCREMENT,
    informationBasic_id INT NOT NULL,
    faculty_id BIGINT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (register_id),
    FOREIGN KEY (informationBasic_id) REFERENCES InformationBasic(document),
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE AcademicSession(
    academicSession_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (academicSession_id)
);

CREATE TABLE Faculty(
    faculty_id INT NOT NULL AUTO_INCREMENT,
    nameFaculty VARCHAR(255) NOT NULL,
    departments_id INT NOT NULL,
    PRIMARY KEY (faculty_id),
    FOREIGN KEY (departments_id) REFERENCES Departments(departments_id)
);

CREATE TABLE Departments(
    departments_id INT NOT NULL AUTO_INCREMENT,
    namee VARCHAR(255) NOT NULL,
    locationn VARCHAR(255) NOT NULL,
    PRIMARY KEY (departments_id)
);

CREATE TABLE Teacher(
    teacher_id INT NOT NULL AUTO_INCREMENT,
    department_id INT NOT NULL,
    course_id INT NOT NULL,
    academicSession_id INT NOT NULL,
    assists_id INT NOT NULL,
    results_id INT NOT NULL,
    timeConexion_id INT NOT NULL,
    PRIMARY KEY (teacher_id),
    FOREIGN KEY (department_id) REFERENCES Departments(departments_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (academicSession_id) REFERENCES AcademicSession(academicSession_id),
    FOREIGN KEY (assists_id) REFERENCES Assists(assists_id),
    FOREIGN KEY (results_id) REFERENCES Results(results_id),
    FOREIGN KEY (timeConexion_id) REFERENCES TimeConexion(timeConexion_id)
);

CREATE TABLE InformationBasic(
    namee VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    birthDate DATE NOT NULL,
    document INT NOT NULL AUTO_INCREMENT,
    phoneNum INT NOT NULL,
    email VARCHAR(255) NOT NULL,
    PRIMARY KEY (document)
);

CREATE TABLE Results(
    results_id INT NOT NULL AUTO_INCREMENT,
    exam_id INT NOT NULL,
    PRIMARY KEY (results_id),
    FOREIGN KEY (exam_id) REFERENCES Exam(exam_id)
);

CREATE TABLE Exam(
    exam_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (exam_id)
);

CREATE TABLE Assists(
    assists_id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (assists_id)
);

CREATE TABLE InformationBasicTeacher(
    informationTeacher_id INT NOT NULL AUTO_INCREMENT,
    namee VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    phoneNum INT NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (informationTeacher_id),
    FOREIGN KEY (department_id) REFERENCES Departments(departments_id)
);

CREATE TABLE Alumns(
    alumn_id INT NOT NULL AUTO_INCREMENT,
    informationBasic_id INT NOT NULL,
    academicSessions_id INT NOT NULL,
    courses_id INT NOT NULL,
    faculty_id INT NOT NULL,
    exam_id INT NOT NULL,
    PRIMARY KEY (alumn_id),
    FOREIGN KEY (informationBasic_id) REFERENCES InformationBasic(document),
    FOREIGN KEY (academicSessions_id) REFERENCES AcademicSession(academicSession_id),
    FOREIGN KEY (courses_id) REFERENCES Courses(course_id),
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
    FOREIGN KEY (exam_id) REFERENCES Exam(exam_id)
);

CREATE TABLE Courses(
    course_id INT NOT NULL AUTO_INCREMENT,
    academicSession_id INT NOT NULL,
    PRIMARY KEY (course_id),
    FOREIGN KEY (academicSession_id) REFERENCES AcademicSession(academicSession_id)
);
