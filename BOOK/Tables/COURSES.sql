CREATE TABLE book.courses (
  code VARCHAR2(6 BYTE) NOT NULL,
  description VARCHAR2(30 BYTE) NOT NULL,
  "CATEGORY" CHAR(3 BYTE) NOT NULL,
  duration NUMBER(2) NOT NULL,
  PRIMARY KEY (code)
);