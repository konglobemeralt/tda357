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

CREATE VIEW totalCredits AS
  SELECT PassedCourses.student, SUM(PassedCourses.credits) AS totalCredits
  FROM PassedCourses
  GROUP BY PassedCourses.student;

CREATE VIEW mandatoryLeft AS
  SELECT Student.ssn AS Student, COUNT(UnreadMandatory.course) AS mandatoryLeft
  FROM Student LEFT JOIN UnreadMandatory
      ON UnreadMandatory.student = Student.ssn
  GROUP BY Student.ssn;

CREATE VIEW seminarCourses AS
  SELECT PassedCourses.student, COUNT (PassedCourses.credits) AS seminarCourses
  FROM PassedCourses
    LEFT JOIN Classified ON PassedCourses.course = Classified.course
  WHERE Classified.classification = 'Seminar'
  GROUP BY PassedCourses.student;

CREATE VIEW mathCredits AS
  SELECT PassedCourses.student, SUM (PassedCourses.credits) AS mathCredits
  FROM PassedCourses
    LEFT JOIN Classified ON PassedCourses.course = Classified.course
  WHERE Classified.classification = 'Mathematics'
  GROUP BY PassedCourses.student;

CREATE VIEW researchCredits AS
  SELECT PassedCourses.student, SUM (PassedCourses.credits) AS researchCredits
  FROM PassedCourses
    LEFT JOIN Classified ON PassedCourses.course = Classified.course
  WHERE Classified.classification = 'Research'
  GROUP BY PassedCourses.student;

CREATE VIEW PathToGraduation AS
  SELECT Student.ssn AS student,
         COALESCE(totalCredits.totalCredits,0) as totalCredits,
         mandatoryLeft.mandatoryLeft as mandatoryLeft,
         COALESCE (seminarCourses.seminarCourses,0) as seminarCourses,
         COALESCE(mathCredits.mathCredits,0) as mathCredits,
         COALESCE(researchCredits.researchCredits,0) as researchCredits,
         CASE WHEN mandatoryLeft<1 AND mathCredits >= 30 AND researchCredits >1 AND
                   seminarCourses >= 2 THEN 'True' ELSE 'False' END as status
  FROM Student
    LEFT JOIN totalCredits on Student.ssn = totalCredits.student
    LEFT JOIN mandatoryLeft on Student.ssn = mandatoryLeft.student
    LEFT JOIN seminarCourses on Student.ssn = seminarCourses.student
    LEFT JOIN mathCredits on Student.ssn = mathCredits.student
    LEFT JOIN researchCredits on Student.ssn = researchCredits.student;
