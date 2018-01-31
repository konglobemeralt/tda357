CREATE VIEW StudentsFollowing AS
  SELECT Student.ssn AS student, Student.program, (SELECT  branch FROM BelongsTo WHERE BelongsTo.student = Student.ssn)
  FROM Student;

CREATE VIEW FinishedCourses AS
  SELECT Taken.student, Taken.course, Taken.grade, Course.credits
  FROM Taken, Course
  WHERE Taken.course = Course.code;

CREATE VIEW Registrations AS
  SELECT Registered.student, Registered.course, 'Registered' AS Status
  FROM Registered
  UNION
  SELECT WaitingList.student, WaitingList.course, 'Waiting' AS Status
  FROM WaitingList;


CREATE VIEW PassedCourses AS
  SELECT Taken.student, Taken.course, Taken.grade, Course.credits
  FROM Taken, Course
  WHERE Taken.course = Course.code AND TAKEN.grade <> 'U';

CREATE VIEW UnreadMandatory AS
  (SELECT Student.ssn AS student, MandatoryProgram.course
   FROM Student, MandatoryProgram
   WHERE (Student.program = MandatoryProgram.program) AND (MandatoryProgram.course NOT IN (SELECT Taken.course FROM Taken WHERE Taken.student = Student.ssn))
  )
  UNION(
    SELECT BelongsTo.student, MandatoryBranch.course FROM BelongsTo, MandatoryBranch
    WHERE(BelongsTo.branch = MandatoryBranch.branch) AND (MandatoryBranch.course NOT IN(SELECT Taken.course FROM Taken WHERE Taken.student = BelongsTo.student))
  );
  
