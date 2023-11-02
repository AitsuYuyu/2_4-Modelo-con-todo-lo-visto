-- Crear las tablas
CREATE DATABASE 2_4Modelo1;
USE 2_4Modelo1;

CREATE TABLE Inscription(
    inscription_id INT NOT NULL,
    document INT NOT NULL,
    dateInscription DATE NOT NULL
);

CREATE TABLE Register(
    register_id INT NOT NULL,
    informationBasic_id INT NOT NULL,
    faculty_id INT NOT NULL,
    course_id INT NOT NULL
);

CREATE TABLE AcademicSession(
    academicSession_id INT NOT NULL
    
);
CREATE TABLE Faculty(
    faculty_id INT NOT NULL,
    nameFaculty VARCHAR(255) NOT NULL,
);

CREATE TABLE Departments(
    departments_id INT NOT NULL ,
    namee VARCHAR(255) NOT NULL,
    locationn VARCHAR(255) NOT NULL,
    faculty_id INT NOT NULL
);

CREATE TABLE Teacher(
    teacher_id INT NOT NULL,
    department_id INT NOT NULL
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
    results_id INT NOT NULL,
    exam_id INT NOT NULL
);

CREATE TABLE Exam(
    exam_id INT NOT NULL
);

CREATE TABLE Assists(
    assists_id INT NOT NULL
);

CREATE TABLE InformationBasicTeacher(
    informationTeacher_id INT NOT NULL,
    namee VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    phoneNum INT NOT NULL,
);

CREATE TABLE Alumns(
    alumn_id INT NOT NULL ,
    informationBasic_id INT NOT NULL,
    courses_id INT NOT NULL,
    department_id INT NOT NULL,
    exam_id INT NOT NULL
);

CREATE TABLE Courses(
    course_id INT NOT NULL ,
    academicSession_id INT NOT NULL
);

CREATE TABLE TimeConexion(
    timeConexion_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY
);

ALTER TABLE Inscription ADD CONSTRAINT pk_Inscription_id PRIMARY KEY(inscription_id);

ALTER TABLE Register ADD CONSTRAINT pk_register_id PRIMARY KEY(register_id);
ALTER TABLE AcademicSession ADD CONSTRAINT pk_academicSession_id PRIMARY KEY(academicSession_id);
ALTER TABLE Faculty ADD CONSTRAINT pk_faculty_id PRIMARY KEY(faculty_id);


ALTER TABLE Departments ADD CONSTRAINT pk_departments PRIMARY KEY(departments_id);
ALTER TABLE Departments ADD CONSTRAINT fk_Faculty_Departments FOREIGN KEY(faculty_id) REFERENCES Faculty(faculty_id);



ALTER TABLE Teacher ADD CONSTRAINT pk_teacher_id PRIMARY KEY(teacher_id);
ALTER TABLE Teacher ADD CONSTRAINT fk_Departments_Teacher FOREIGN KEY (teacher_id)REFERENCES Departments(departments_id);
ALTER TABLE Teacher ADD CONSTRAINT pk_TimeConexion_Teacher FOREIGN KEY (teacher_id)REFERENCES TimeConexion(timeConexion_id);
ALTER TABLE Teacher ADD CONSTRAINT pk_AcademicSession_Teacher FOREIGN KEY(teacher_id) REFERENCES AcademicSession (academicSession_id);
ALTER TABLE Teacher ADD CONSTRAINT pk_Assists_Teacher FOREIGN KEY (teacher_id) REFERENCES Assists(assists_id);
ALTER TABLE Teacher ADD CONSTRAINT pk_Courses_Teacher FOREIGN KEY (teacher_id) REFERENCES Courses(course_id);
ALTER TABLE Teacher ADD CONSTRAINT pk_Results_Teacher FOREIGN KEY (teacher_id) REFERENCES Results(results_id);

ALTER TABLE InformationBasic ADD CONSTRAINT pk_document_id PRIMARY KEY(document);


ALTER TABLE Results ADD CONSTRAINT pk_results_id PRIMARY KEY
(results_id);


ALTER TABLE Exam ADD CONSTRAINT pk_exam_id PRIMARY KEY(exam_id);


ALTER TABLE Assists ADD CONSTRAINT pk_assists_id PRIMARY KEY(assists_id);


ALTER TABLE InformationBasicTeacher ADD CONSTRAINT pk_informationBasicTeacher_id PRIMARY KEY(informationBasicTeacher_id);
ALTER TABLE InformationBasicTeacher DROP COLUMN department_id;


ALTER TABLE Alumns ADD CONSTRAINT pk_alumn_id PRIMARY KEY(alumn_id);
ALTER TABLE Alumns DROP COLUMN academicSessions_id;
ALTER TABLE Alumns DROP COLUMN faculty_id;
ALTER TABLE Alumns ADD COLUMN department_id INT NOT NULL;


ALTER TABLE Courses ADD CONSTRAINT pk_courses_id PRIMARY KEY(course_id);


ALTER TABLE TimeConexion ADD CONSTRAINT pk_timeConexion_id PRIMARY KEY(timeConexion_id);




