-- noinspection SqlDialectInspectionForFile

CREATE TABLE program (
  name TEXT PRIMARY KEY,
  abbreviation TEXT
);

CREATE TABLE department (
  name TEXT PRIMARY KEY,
  abbreviation TEXT UNIQUE
);

CREATE TABLE hosts (
department TEXT PRIMARY KEY
)
