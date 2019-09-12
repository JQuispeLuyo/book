CREATE TABLE book.salgrades (
  grade NUMBER(2) NOT NULL,
  lowerlimit NUMBER(6,2) NOT NULL,
  upperlimit NUMBER(6,2) NOT NULL,
  bonus NUMBER(6,2) NOT NULL,
  PRIMARY KEY (grade)
);