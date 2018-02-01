CREATE TABLE Program (
  name TEXT NOT NULL PRIMARY KEY,
  abbreviation TEXT NOT NULL
);

CREATE TABLE Department (
  name TEXT NOT NULL PRIMARY KEY,
  abbreviation TEXT NOT NULL UNIQUE
);

CREATE TABLE Hosts (
  department TEXT NOT NULL,
  program TEXT NOT NULL,
  FOREIGN KEY (department) REFERENCES Department(name),
  FOREIGN KEY (program) REFERENCES Program(name),
  PRIMARY KEY (department, program)
);

CREATE TABLE Student(
  ssn TEXT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  program TEXT NOT NULL,
  login TEXT NOT NULL UNIQUE,
  FOREIGN KEY (program) REFERENCES Program(name),
  UNIQUE (ssn,program)
);

CREATE TABLE Branch(
  name TEXT NOT NULL,
  program TEXT NOT NULL,
  FOREIGN KEY (program) REFERENCES Program(name),
  PRIMARY KEY(name,program)
);

CREATE TABLE BelongsTo(
  student TEXT NOT NULL PRIMARY KEY,
  branch TEXT NOT NULL,
  program TEXT NOT NULL,
  FOREIGN KEY (student) REFERENCES Student(ssn),
  FOREIGN KEY (student,program) REFERENCES Student(ssn,program),
  FOREIGN KEY (branch,program) REFERENCES Branch(name, program)
);

CREATE TABLE Course(
  code TEXT NOT NULL PRIMARY KEY,
  name TEXT NOT NULL,
  credits NUMERIC NOT NULL CHECK (credits >= 0),
  department TEXT NOT NULL,
  FOREIGN KEY (department) REFERENCES Department(name)
);

CREATE TABLE Prerequisite(
  course TEXT NOT NULL,
  prerequisite TEXT NOT NULL,
  FOREIGN KEY (course) REFERENCES Course(code),
  FOREIGN KEY (prerequisite) REFERENCES Course(code),
  PRIMARY KEY (course,prerequisite)
);

CREATE TABLE Classification(
  name TEXT NOT NULL PRIMARY KEY
);

CREATE TABLE Classified(
  course TEXT NOT NULL,
  classification TEXT NOT NULL,
  FOREIGN KEY (course) REFERENCES Course(code),
  FOREIGN KEY (classification) REFERENCES Classification(name),
  PRIMARY KEY (classification, course)
);

CREATE TABLE MandatoryProgram(
  course TEXT NOT NULL,
  program TEXT NOT NULL,
  FOREIGN KEY (course) REFERENCES Course(code),
  FOREIGN KEY (program) REFERENCES Program(name),
  PRIMARY KEY (course,program)
);

CREATE TABLE MandatoryBranch(
  course TEXT NOT NULL,
  branch TEXT NOT NULL,
  program TEXT NOT NULL,
  FOREIGN KEY (course) REFERENCES Course(code),
  FOREIGN KEY (branch,program) REFERENCES Branch(name,program),
  PRIMARY KEY (course, branch, program)
);

CREATE TABLE RecommendedBranch(
  course TEXT NOT NULL,
  branch TEXT NOT NULL,
  program TEXT NOT NULL,
  FOREIGN KEY (course) REFERENCES Course(code),
  FOREIGN KEY (branch,program) REFERENCES Branch(name,program),
  PRIMARY KEY (course, branch, program)
);

CREATE TABLE Registered(
  student TEXT NOT NULL,
  course TEXT NOT NULL,
  FOREIGN KEY (student) REFERENCES Student(ssn),
  FOREIGN KEY (course) REFERENCES Course(code),
  PRIMARY KEY (student,course)
);

CREATE TYPE GRADE AS ENUM ('U','3','4','5');

CREATE TABLE Taken(
  student TEXT NOT NULL,
  course TEXT NOT NULL,
  grade GRADE NOT NULL,
  FOREIGN KEY (student) REFERENCES Student(ssn),
  FOREIGN KEY (course) REFERENCES Course(code),
  PRIMARY KEY ( student,course)
);

CREATE TABLE LimitedCourse(
  code TEXT NOT NULL,
  seats NUMERIC NOT NULL CHECK (seats >= 0),
  FOREIGN KEY (code) REFERENCES Course(code),
  PRIMARY KEY (code)

);

CREATE TABLE WaitingList(
  student TEXT NOT NULL,
  course TEXT NOT NULL,
  position NUMERIC NOT NULL CHECK (position > 0),
  FOREIGN KEY (student) REFERENCES Student(ssn),
  FOREIGN KEY (course) REFERENCES LimitedCourse(code),
  UNIQUE (position,course),
  PRIMARY KEY (student, course)

);
