INSERT INTO Program (name,abbreviation) VALUES
  ('Informationsteknik','TKITE'),
  ('Maskinteknik','TKMAS'),
  ('Kemiteknik', 'TKKMT'),
  ('Teknisk Matematik', 'TKTEM'),
  ('Teknisk Fysik', 'TKTFY'),
  ('Teknisk Design','TKDEG');


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
  ('19920713555','Ivar Arosenius','Teknisk Design','ivaaro'),
  ('199207136666','Carl Larsson','Teknisk Design','carlar'),
  ('199207137777','Elsa Beskow','Teknisk Design','elsbes');

INSERT INTO Department VALUES
  ('DATA- OCH INFORMATIONSTEKNIK', 'TDA'),
  ('ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK', 'ACE'),
  ('FYSIK', 'F'),
  ('MATEMATISKA VETENSKAPER', 'MVE');

INSERT INTO Hosts VALUES
  ('DATA- OCH INFORMATIONSTEKNIK','Informationsteknik'),
  ('ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK','Teknisk Design'),
  ('ARKITEKTUR OCH SAMHÄLLSBYGGNADSTEKNIK','Kemiteknik'),
  ('FYSIK','Teknisk Fysik'),
  ('FYSIK','Maskinteknik'),
  ('MATEMATISKA VETENSKAPER','Teknisk Matematik');

INSERT INTO Course VALUES
  ('MVE045','MATEMATISK ANALYS','7.5','MATEMATISKA VETENSKAPER'),
  ('TDA545','OBJEKTORIENTERAD PROGRAMMERING', '7.5', 'DATA- OCH INFORMATIONSTEKNIK'),
  ('MVE051','DISKRET MATEMATIK OCH STATISTIK','7.5','MATEMATISKA VETENSKAPER'),
  ('TDA551','GRUNDLÄGGANDE PROGRAMMERING', '7.5', 'DATA- OCH INFORMATIONSTEKNIK');

INSERT INTO Branches VALUES
  ('Computer Science', 'Informationsteknik'),
  ('Formella språk','Informationsteknik'),
  ('Software engineering','Informationsteknik'),
  ('Design Choices','Teknisk Design'),
  ('User Experience','Teknisk  Design'),
  ('Ergonomi','Teknisk Design'),
  ('Kraftlära','Teknisk Fysik'),
  ('Kvantfysik', 'Teknisk Fysik'),
  ('Fysik i samhället','Teknisk Fysik'),
  ('Medicinsk kemi','Kemiteknik'),
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
  ('199704021111','Medicinsk Teknik', 'Kemiteknik'),
  ('199705022222','Medicinsk Teknik', 'Kemiteknik'),
  ('199706023333','Biologiteknik', 'Kemiteknik'),

  ('199207133421','Ergonomi','Teknisk Design'),
  ('199207135555','Ergonomi','Teknisk Design'),
  ('199207136666','User Experience','Teknisk Design'),
  ('199207137777','Design Choices','Teknisk Design');


