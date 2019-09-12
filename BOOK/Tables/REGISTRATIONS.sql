CREATE TABLE book.registrations (
  attendee NUMBER(4) NOT NULL,
  course VARCHAR2(6 BYTE) NOT NULL,
  begindate DATE NOT NULL,
  "EVALUATION" NUMBER(1),
  CONSTRAINT pk_registrations PRIMARY KEY (attendee,course,begindate),
  CONSTRAINT registrations_employees FOREIGN KEY (attendee) REFERENCES book.employees (empno),
  CONSTRAINT registrations_offerings FOREIGN KEY (course,begindate) REFERENCES book.offerings (course,begindate)
);