-- noinspection SqlDialectInspectionForFile

CREATE TABLE Program (
  name TEXT PRIMARY KEY,
  abbreviation TEXT
);

CREATE TABLE Department (
  name TEXT PRIMARY KEY,
  abbreviation TEXT UNIQUE
);

CREATE TABLE Hosts (
department TEXT,
program TEXT,
FOREIGN KEY (department) REFERENCES Department(name),
FOREIGN KEY (program) REFERENCES Program(name),
PRIMARY KEY (department, program)
);

CREATE TABLE Student(
ssn TEXT PRIMARY KEY,
program TEXT,
login TEXT UNIQUE,
FOREIGN KEY (program) REFERENCES Program(name),
UNIQUE (ssn,program)
);

CREATE TABLE Branch(
name TEXT,
program TEXT,
FOREIGN KEY (program) REFERENCES Program(name),
PRIMARY KEY(name,program)
);

CREATE TABLE BelongsTo(
student TEXT,
branch TEXT,
program TEXT,
FOREIGN KEY (student) REFERENCES Student(ssn),
FOREIGN KEY (student,program) REFERENCES Student(ssn,program),
FOREIGN KEY (branch,program) REFERENCES Branch(name, program)
);

CREATE TABLE Course(
code TEXT PRIMARY KEY,
name TEXT,
credits TEXT,
department TEXT,
FOREIGN KEY (department) REFERENCES Department(name)
);

CREATE TABLE Prerequisite(
course TEXT,
prerequisite TEXT,
FOREIGN KEY (course) REFERENCES Course(code),
FOREIGN KEY (prerequisite) REFERENCES Course(code),
PRIMARY KEY (course,prerequisite)
);

CREATE TABLE Classification(
name TEXT PRIMARY KEY
);

CREATE TABLE Classified(
course TEXT,
classification TEXT,
FOREIGN KEY (course) REFERENCES Course(code),
FOREIGN KEY (classification) REFERENCES Classification(name),
PRIMARY KEY (classification, course)
);

CREATE TABLE MandatoryProgram(
course TEXT,
program TEXT,
FOREIGN KEY (course) REFERENCES Course(code),
FOREIGN KEY (program) REFERENCES Program(name),
PRIMARY KEY (course,program)
);

CREATE TABLE MandatoryBranch(
course TEXT,
branch TEXT,
program TEXT,
FOREIGN KEY (course) REFERENCES Course(code),
FOREIGN KEY (branch,program) REFERENCES Branch(name,program),
PRIMARY KEY (course, branch, program)
);

CREATE TABLE RecommendedBranch(
course TEXT,
branch TEXT,
program TEXT,
FOREIGN KEY (course) REFERENCES Course(code),
FOREIGN KEY (branch,program) REFERENCES Branch(name,program),
PRIMARY KEY (course, branch, program)
);

CREATE TABLE Registered(
  student TEXT,
  course TEXT,
  FOREIGN KEY (student) REFERENCES Student(ssn),
  FOREIGN KEY (course) REFERENCES Course(code),
  PRIMARY KEY (student,course)
);

CREATE TYPE GRADE AS ENUM ('U','3','4','5');

CREATE TABLE Taken(
  student TEXT,
  course TEXT,
  grade GRADE,
  FOREIGN KEY (student) REFERENCES Student(ssn),
  FOREIGN KEY (course) REFERENCES Course(code),
  PRIMARY KEY ( student,course)
);

CREATE TABLE LimitedCourse(
  code TEXT,
  seats NUMERIC CHECK (seats >= 0),
  FOREIGN KEY (code) REFERENCES Course(code),
  PRIMARY KEY (code)

);

CREATE TABLE WaitingList(
  student TEXT,
  course TEXT,
  position NUMERIC CHECK (position > 0),
  FOREIGN KEY (student) REFERENCES Student(ssn),
  FOREIGN KEY (course) REFERENCES LimitedCourse(code),
  UNIQUE (position,course),
  PRIMARY KEY (student, course)

);

