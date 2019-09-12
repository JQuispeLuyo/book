CREATE TABLE book.offerings (
  course VARCHAR2(6 BYTE) NOT NULL,
  begindate DATE NOT NULL,
  trainer NUMBER(4),
  "LOCATION" VARCHAR2(8 BYTE),
  CONSTRAINT pk_course PRIMARY KEY (course,begindate),
  CONSTRAINT offerings_courses FOREIGN KEY (course) REFERENCES book.courses (code),
  CONSTRAINT offerings_employees FOREIGN KEY (trainer) REFERENCES book.employees (empno)
);