CREATE TABLE book.history (
  empno NUMBER(4) NOT NULL,
  beginyear NUMBER(4) NOT NULL,
  begindate DATE NOT NULL,
  enddate DATE,
  deptno NUMBER(2) NOT NULL,
  msal NUMBER(6,2) NOT NULL,
  comments VARCHAR2(60 BYTE),
  CONSTRAINT pk_history PRIMARY KEY (empno,begindate),
  CONSTRAINT history_employees FOREIGN KEY (empno) REFERENCES book.employees (empno)
);