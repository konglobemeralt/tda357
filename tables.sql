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
