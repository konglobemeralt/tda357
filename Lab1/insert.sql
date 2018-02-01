INSERT INTO Program (name,abbreviation) VALUES
  ('Informationsteknik','TKITE'),
  ('Maskinteknik','TKMAS'),
  ('Kemiteknik', 'TKKMT'),
  ('Teknisk Matematik', 'TKTEM'),
  ('Teknisk Design','TKDEG'),
  ('Teknisk Fysik', 'TKTFY'),
  ('Samhällsbyggnadsteknik', 'TKSAM');

INSERT INTO Student VALUES
  ('199607097733','Pelle Svensson','Informationsteknik','pelsve'),
  ('199604011234','Kalle Karlsson', 'Informationsteknik','kalkar'),
  ('199605015678','Nisse Nilsson', 'Informationsteknik','nisnil'),
  ('199606019123','Jakob Johansson', 'Informationsteknik','jakjoh'),

  ('199508023322','Lisa Marklund', 'Maskinteknik', 'lisma'),
  ('199509029876','Stina Svensson', 'Maskinteknik', 'stisve'),
  ('199510025432','Lovisa Johansson', 'Maskinteknik', 'lovjoh'),
  ('199511021987','Kajsa Karlsson', 'Maskinteknik', 'kajkar'),

  ('199703022182','Trazan Apansson', 'Kemiteknik', 'traapa'),
  ('199704021111','Banarne Banan', 'Kemiteknik', 'barban'),
  ('199705022222','Fantomen Skuggansson', 'Kemiteknik', 'fansku'),
  ('199706023333','Svampbob Fyrkantsson', 'Kemiteknik', 'svafyr'),

  ('199207133421','Lasse Åberg','Teknisk Design','lasabe'),
  ('199207135555','Ivar Arosenius','Teknisk Design','ivaaro'),
  ('199207136666','Carl Larsson','Teknisk Design','carlar'),
  ('199207137777','Elsa Beskow','Teknisk Design','elsbes');

INSERT INTO Department VALUES
  ('DATA- OCH INFORMATIONSTEKNIK', 'TDA'),
  ('ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK', 'ACE'),
  ('FYSIK', 'F'),
  ('KEMI', 'K'),
  ('MATEMATISKA VETENSKAPER', 'MVE');

INSERT INTO Hosts VALUES
  ('DATA- OCH INFORMATIONSTEKNIK','Informationsteknik'),
  ('ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK','Teknisk Design'),
  ('ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK','Maskinteknik'),
  ('KEMI','Kemiteknik'),
  ('FYSIK','Teknisk Fysik'),
  ('MATEMATISKA VETENSKAPER','Teknisk Matematik');

INSERT INTO Course VALUES
  ('MVE045','Matematisk analys','7.5','MATEMATISKA VETENSKAPER'),
  ('MVE051','Flervariabelanalys','7.5','MATEMATISKA VETENSKAPER'),
  ('MVE053','Matematik och Människan','7.5','MATEMATISKA VETENSKAPER'),
  ('MVE061','Linjär algebra','7.5','MATEMATISKA VETENSKAPER'),

  ('TDA541','Objektorienterad programmering', '7.5', 'DATA- OCH INFORMATIONSTEKNIK'),
  ('TDA553','Funktionell programmering', '7.5', 'DATA- OCH INFORMATIONSTEKNIK'),
  ('TDA562','Grundläggande programmering', '7.5', 'DATA- OCH INFORMATIONSTEKNIK'),
  ('TDA581','Design och inteface', '7.5', 'DATA- OCH INFORMATIONSTEKNIK'),
  ('TDA532','Säkerhet', '7.5', 'DATA- OCH INFORMATIONSTEKNIK'),

  ('ACE081','Skissteknik', '7.5', 'ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK'),
  ('ACE088','Krokikonst', '7.5', 'ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK'),
  ('ACE034','Byggnadskunskap', '7.5', 'ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK'),
  ('ACE032','Stadsplanering', '7.5', 'ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK'),

  ('FYS222','Lätt fysik', '7.5', 'FYSIK'),
  ('FYS232','Svår fysik', '7.5', 'FYSIK'),
  ('FYS244','Väldigt svår fysik', '7.5', 'FYSIK'),
  ('FYS256','Fysiken och jag', '7.5', 'FYSIK'),

  ('KEM632','Lätt Kemi', '7.5', 'KEMI'),
  ('KEM621','Superkemi', '7.5', 'KEMI'),
  ('KEM612','Kemimns historia', '7.5', 'KEMI'),
  ('KEM655','Kemister i politiken', '7.5', 'KEMI');


INSERT INTO Branch VALUES
  ('Computer Science', 'Informationsteknik'),
  ('Formella Språk','Informationsteknik'),
  ('Software Engineering','Informationsteknik'),
  ('Design Choices','Teknisk Design'),
  ('User Experience','Teknisk Design'),
  ('Ergonomi','Teknisk Design'),
  ('Kraftlära','Teknisk Fysik'),
  ('Kvantfysik', 'Teknisk Fysik'),
  ('Fysik i samhället','Teknisk Fysik'),
  ('Medicinsk Kemi','Kemiteknik'),
  ('Biologiteknik','Kemiteknik'),
  ('Trolldrycker','Kemiteknik'),
  ('Rördesign','Maskinteknik'),
  ('Motorteknik','Maskinteknik'),
  ('Hydraulik','Maskinteknik'),
  ('Diskret Matematik','Teknisk Matematik'),
  ('Odiskret Matematik','Teknisk Matematik'),
  ('Kontinuerlig Matematik','Teknisk Matematik');

INSERT INTO BelongsTo VALUES
  ('199607097733','Computer Science','Informationsteknik'),
  ('199604011234','Software Engineering','Informationsteknik'),
  ('199605015678','Software Engineering','Informationsteknik'),
  ('199606019123','Formella Språk','Informationsteknik'),

  ('199508023322','Motorteknik','Maskinteknik'),
  ('199509029876','Rördesign','Maskinteknik'),
  ('199510025432','Hydraulik','Maskinteknik'),
  ('199511021987','Hydraulik','Maskinteknik'),

  ('199703022182','Trolldrycker','Kemiteknik'),
  ('199704021111','Medicinsk Kemi', 'Kemiteknik'),
  ('199705022222','Medicinsk Kemi', 'Kemiteknik'),
  ('199706023333','Biologiteknik', 'Kemiteknik'),

  ('199207133421','Ergonomi','Teknisk Design'),
  ('199207135555','Ergonomi','Teknisk Design'),
  ('199207136666','User Experience','Teknisk Design'),
  ('199207137777','Design Choices','Teknisk Design');

INSERT INTO Prerequisite VALUES
  ('KEM621','KEM632'),
  ('TDA562', 'TDA541'),
  ('FYS232', 'FYS222'),
  ('FYS244', 'FYS232'),
  ('MVE051', 'MVE045');

INSERT INTO Classification VALUES
  ('Datavetenskap'),
  ('Matematik'),
  ('Naturvetenskap'),
  ('Infrastruktur och konstruktion');


INSERT INTO Classified VALUES
  ('MVE045', 'Matematik'),
  ('MVE051', 'Matematik'),
  ('MVE053', 'Matematik'),
  ('MVE061', 'Matematik'),

  ('TDA541', 'Datavetenskap'),
  ('TDA553', 'Datavetenskap'),
  ('TDA562', 'Datavetenskap'),
  ('TDA581', 'Datavetenskap'),
  ('TDA532', 'Datavetenskap'),

  ('ACE081', 'Infrastruktur och konstruktion'),
  ('ACE088', 'Infrastruktur och konstruktion'),
  ('ACE034', 'Infrastruktur och konstruktion'),
  ('ACE032', 'Infrastruktur och konstruktion'),

  ('FYS222', 'Naturvetenskap'),
  ('FYS232', 'Naturvetenskap'),
  ('FYS244', 'Naturvetenskap'),
  ('FYS256', 'Naturvetenskap'),
  ('KEM632', 'Naturvetenskap'),
  ('KEM621', 'Naturvetenskap'),
  ('KEM612', 'Naturvetenskap'),
  ('KEM655', 'Naturvetenskap');


INSERT INTO MandatoryProgram VALUES
  ('TDA562', 'Informationsteknik'),
  ('TDA541', 'Informationsteknik'),
  ('FYS222', 'Teknisk Fysik'),
  ('FYS232', 'Teknisk Fysik'),
  ('FYS256', 'Teknisk Fysik'),
  ('KEM632', 'Kemiteknik'),
  ('KEM621', 'Kemiteknik'),
  ('KEM655', 'Kemiteknik'),
  ('MVE061','Teknisk Matematik'),
  ('MVE045','Teknisk Matematik'),
  ('MVE051','Teknisk Matematik'),
  ('ACE081','Samhällsbyggnadsteknik'),
  ('ACE088','Samhällsbyggnadsteknik');

INSERT INTO MandatoryBranch VALUES
  ('TDA562', 'Computer Science', 'Informationsteknik'),
  ('TDA541', 'Computer Science', 'Informationsteknik'),
  ('FYS222', 'Kvantfysik', 'Teknisk Fysik'),
  ('KEM621', 'Trolldrycker', 'Kemiteknik');

INSERT INTO RecommendedBranch VALUES
  ('TDA553', 'Computer Science', 'Informationsteknik'),
  ('TDA532', 'Computer Science', 'Informationsteknik'),
  ('FYS256', 'Fysik i samhället', 'Teknisk Fysik');

INSERT INTO Registered VALUES
  ('199607097733', 'TDA541'),
  ('199607097733', 'TDA581'),
  ('199605015678', 'FYS222'),
  ('199605015678', 'FYS256');

INSERT INTO Taken VALUES
  ('199607097733', 'TDA562', '4'),
  ('199607097733','TDA553', '3'),
  ('199605015678','MVE045', '5'),
  ('199605015678','MVE051', 'U');

INSERT INTO LimitedCourse VALUES
  ('ACE032', 65),
  ('KEM665',42),
  ('ACE034',53);

INSERT INTO WaitingList VALUES
  ('199207137777','ACE032', 2),
  ('199510025432','ACE032', 3),
  ('199508023322','ACE032', 6),

  ('199704021111','KEM665', 4),
  ('199705022222','KEM665', 7),
  ('199706023333','KEM665', 9),

  ('199511021987','ACE034', 5);
