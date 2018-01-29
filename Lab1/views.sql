CREATE VIEW StudentsFollowing AS
SELECT Student.ssn AS student, Student.program, (SELECT  branch FROM BelongsTo WHERE BelongsTo.student = Student.ssn)
  FROM Student;

