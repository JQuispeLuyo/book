CREATE TABLE book.departaments (
  deptno NUMBER(2) NOT NULL,
  dname VARCHAR2(10 BYTE) NOT NULL,
  "LOCATION" VARCHAR2(8 BYTE) NOT NULL,
  mgr NUMBER(4),
  PRIMARY KEY (deptno),
  CONSTRAINT departments_employees FOREIGN KEY (mgr) REFERENCES book.employees (empno)
);