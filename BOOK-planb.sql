create table EMPLOYEES(
    EMPNO number(4) Primary key,
    ENAME varchar(8),
    INIT varchar(5),
    JOB varchar(8),
    MGR number(4),
    BDATE DATE,
    MSAL number(6,2),
    COMM number(6,2),
    DEPTNO number(2)
);

create table DEPARTMENTS(
    DEPTNO number(2) Primary key,
    DNAME varchar(10) not null,
    LOCATION varchar(8) not null,
    MGR number(4)
);

create table SALGRADES(
    GRADE number(2) Primary key,
    LOWERLIMIT number(6,2) not null,
    UPPERLIMIT number(6,2) not null,
    BONUS number(6,2) not null
);

create table COURSES(
CODE varchar(6) Primary key,
DESCRIPTION varchar(30) not null,
CATEGORY char(3) not null,
DURATION number(2) not null
);


create table OFFERINGS(
COURSE varchar(6),
BEGINDATE DATE,
TRAINER number(4),
LOCATION varchar(8),
constraint PK_COURSE primary key(COURSE,BEGINDATE)
);

create table REGISTRATIONS(
ATTENDEE number(4) null,
COURSE varchar(6),
BEGINDATE DATE,
EVALUATION number(1),
constraint PK_REGISTRATIONS primary key(ATTENDEE,COURSE,BEGINDATE)
);

create table HISTORY(
    EMPNO number(4),
    BEGINYEAR number(4) not null,
    BEGINDATE DATE ,
    ENDDATE DATE,
    DEPTNO number(2) not null,
    MSAL number(6,2) not null,
    COMMENTS varchar(60),
    constraint PK_HISTORY primary key (EMPNO,BEGINDATE)
);

/*EMPLOYESS*/

insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7369', 'SMITH', 'N', 'TRAINER', '7902',' 17-12-1965',' 800',null, '20');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7499', 'ALLEN', 'JAM', 'SALESREP', '7698',' 20-02-1961',' 1600', 300, '30');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7521', 'WARD', 'TF', 'SALESREP', '7698',' 22-02-1962',' 1250', 500, '30');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7566', 'JONES', 'JM', 'MANAGER', '7839',' 02-04-1967',' 2975',null, '20');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7654', 'MARTIN', 'P', 'SALESREP', '7698',' 28-09-1956',' 1250',1400, '30');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7698', 'BLAKE', 'R', 'MANAGER', '7839',' 01-11-1963',' 2850',null, '30');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7782', 'CLARK', 'AB', 'MANAGER', '7839',' 09-06-1965',' 2450',null, '10');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7788', 'SCOTT', 'SCJ', 'TRAINER', '7566',' 26-11-1959',' 3000',null, '20');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7839', 'KING', 'CC', 'DIRECTOR', null,'17-11-1952', '5000',null, '10');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7844', 'TURNER', 'JJ', 'SALESREP', '7698',' 28-09-1968',' 1500', 0 ,'30');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7876', 'ADAMS', 'AA', 'TRAINER', '7788',' 30-12-1966',' 1100',null, '20');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7900', 'JONES', 'R', 'ADMIN', '7698',' 03-12-1969',' 800',null, '30');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7902', 'FORD', 'MG', 'TRAINER', '7566',' 13-02-1959',' 3000',null, '20');
insert INTO EMPLOYEES (EMPNO,ENAME,INIT,JOB,MGR,BDATE,MSAL,COMM,DEPTNO) values ('7934', 'MILLER', 'TJA', 'ADMIN', '7782',' 23-01-1962',' 1300',null, '10');




/*SALGRADES*/
INSERT INTO SALGRADES (GRADE,LOWERLIMIT,UPPERLIMIT,BONUS) values('1',' 700',' 1200','0');
INSERT INTO SALGRADES (GRADE,LOWERLIMIT,UPPERLIMIT,BONUS) values('2',' 1201',' 1400','50');
INSERT INTO SALGRADES (GRADE,LOWERLIMIT,UPPERLIMIT,BONUS) values('3',' 1401',' 2000','100');
INSERT INTO SALGRADES (GRADE,LOWERLIMIT,UPPERLIMIT,BONUS) values('4',' 2001',' 3000','200');
INSERT INTO SALGRADES (GRADE,LOWERLIMIT,UPPERLIMIT,BONUS) values('5',' 3001',' 9999','500');

/*DEPARTAMENTS*/
INSERT INTO DEPARTAMENTS (DEPTNO, DNAME, LOCATION, MGR) VALUES ('10',' ACCOUNTING' ,'NEW YORK', '7782');
INSERT INTO DEPARTAMENTS (DEPTNO, DNAME, LOCATION, MGR) VALUES ('20',' TRAINING' ,'DALLAS', '7566');
INSERT INTO DEPARTAMENTS (DEPTNO, DNAME, LOCATION, MGR) VALUES ('30',' SALES' ,'CHICAGO', '7698');
INSERT INTO DEPARTAMENTS (DEPTNO, DNAME, LOCATION, MGR) VALUES ('40',' HR' ,'BOSTON', '7839');

/*COURSES*/
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('JAV','Java for Oracle developers', 'BLD', '4');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('PLS','Introduction to PL/SQL', 'BLD', '1');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('XML','XML for Oracle developers', 'BLD', '2');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('ERM','Data modeling with ERM', 'DSG', '3');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('GEN','System generation','DSG', '4');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('PMT','Process modeling techniques','DSG', '1');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('PRO','Prototyping','DSG', '5');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('RSD','Relational system design','DSG','2');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('OAU','Oracle for application users', 'GEN', '1');
INSERT INTO COURSES (CODE,DESCRIPTION,CATEGORY,DURATION)values ('SQL','Introduction to SQL', 'GEN', '4');

/*OFFERING*/
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('SQL', '12-04-1999','7902','DALLAS');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('OAU', '10-08-1999','7566','CHICAGO');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('SQL', '04-10-1999','7369','SEATTLE');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('SQL', '13-12-1999','7369','DALLAS');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('JAV', '13-12-1999','7566','SEATTLE');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('JAV', '01-02-2000','7876','DALLAS');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('XML', '03-02-2000','7369','DALLAS');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('PLS', '11-09-2000','7788','DALLAS');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('XML', '18-09-2000',null, 'SEATTLE');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('OAU', '27-09-2000','7902', 'DALLAS');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('ERM', '15-01-2001',null, null);
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('PRO', '19-02-2001',null,'DALLAS');
INSERT INTO OFFERINGS (COURSE,BEGINDATE,TRAINER,LOCATION)values ('RSD', '24-02-2001','7788','CHICAGO');


/*REGISTRATIONS*/
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7499', 'SQL', '12-04-1999', '4');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7499', 'JAV', '13-12-1999', '2');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7499', 'XML', '03-02-2000', '5');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7499', 'PLS', '11-09-2000', null);
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7521', 'OAU', '10-08-1999', '4');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7566', 'JAV', '01-02-2000', '3');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7566', 'PLS', '11-09-2000', 'null');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7698', 'SQL', '12-04-1999', '4');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7698', 'SQL', '13-12-1999', null);
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7698', 'JAV', '01-02-2000', '5');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7782', 'JAV', '13-12-1999', '5');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7788', 'SQL', '04-10-1999', null);
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7788', 'JAV', '13-12-1999', '5');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7788', 'JAV', '01-02-2000', '4');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7839', 'SQL', '04-10-1999', '3');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7839', 'JAV', '13-12-1999', '4');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7844', 'OAU', '27-09-2000', '5');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7876', 'SQL', '12-04-1999', '2');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7876', 'JAV', '13-12-1999', '5');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7876', 'PLS', '11-09-2000', null);
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7900', 'OAU', '10-08-1999', '4');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7900', 'XML', '03-02-2000', '4');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7902', 'OAU', '10-08-1999', '5');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7902', 'SQL', '04-10-1999', '4');
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7902', 'SQL', '13-12-1999', null);
INSERT INTO REGISTRATIONS (ATTENDEE, COURSE, BEGINDATE,EVALUATION) values ('7934', 'SQL', '12-04-1999', '5');


/*HISTORY*/

INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7369', '2000', '01-01-2000', '01-02-2000', '40', '950');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7369', '2000', '01-02-2000', null, '20', '800');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7499', '1988', '01-06-1988', null, '30', '1000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7499', '1989', '01-07-1989', '01-12-1993', '30', '1300');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7499', '1993', '01-12-1993', '01-10-1995', '30', '1500');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7499', '1995', '01-10-1995', '01-11-1999', '30', '1700');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7499', '1999', '01-11-1999', null, '30', '1600');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7521', '1986', '01-10-1986', '01-08-1987', '20', '1000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7521', '1987', '01-08-1987', '01-01-1989', '30', '1000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7521', '1989', '01-01-1989', '15-12-1992', '30', '1150');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7521', '1992', '15-12-1992', '01-10-1994', '30', '1250');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7521', '1994', '01-10-1994', '01-10-1997', '20', '1250');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7521', '1997', '01-10-1997', '01-02-2000', '30', '1300');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7521', '2000', '01-02-2000', null, '30', '1250');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1982', '01-01-1982', '01-12-1982', '20', '900');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1982', '01-12-1982', '15-08-1984', '20', '950');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1984', '15-08-1984', '01-01-1986', '30', '1000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1986', '01-01-1986', '01-07-1986', '30', '1175');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1986', '01-07-1986', '15-03-1987', '10', '1175');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1987', '15-03-1987', '01-04-1987', '10', '2200');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1987', '01-04-1987', '01-06-1989', '10', '2300');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1989', '01-06-1989', '01-07-1992', '40', '2300');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1992', '01-07-1992', '01-11-1992', '40', '2450');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1992', '01-11-1992', '01-09-1994', '20', '2600');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1994', '01-09-1994', '01-03-1995', '20', '2550');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1995', '01-03-1995', '15-10-1999', '20', '2750');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7566', '1999', '15-10-1999', null, '20', '2975');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7654', '1999', '01-01-1999', '15-10-1999', '30', '1100');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7654', '1999', '15-10-1999', '          ', '30', '1250');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7698', '1982', '01-06-1982', '01-01-1983', '30', '900');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7698', '1983', '01-01-1983', '01-01-1984', '30', '1275');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7698', '1984', '01-01-1984', '15-04-1985', '30', '1500');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7698', '1985', '15-04-1985', '01-01-1986', '30', '2100');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7698', '1986', '01-01-1986', '15-10-1989', '30', '2200');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7698', '1989', '15-10-1989', null, '30', '2850');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7782', '1988', '01-07-1988', null, '10', '2450');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1982', '01-07-1982', '01-01-1983', '20', '900');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1983', '01-01-1983', '15-04-1985', '20', '950');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1985', '15-04-1985', '01-06-1985', '40', '950');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1985', '01-06-1985', '15-04-1986', '40', '1100');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1986', '15-04-1986', '01-05-1986', '20', '1100');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1986', '01-05-1986', '15-02-1987', '20', '1800');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1987', '15-02-1987', '01-12-1989', '20', '1250');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1989', '01-12-1989', '15-10-1992', '20', '1350');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1992', '15-10-1992', '01-01-1998', '20', '1400');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1998', '01-01-1998', '01-01-1999', '20', '1700');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1999', '01-01-1999', '01-07-1999', '20', '1800');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '1999', '01-07-1999', '01-06-2000', '20', '1800');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7788', '2000', '01-06-2000', null, '20', '3000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1982', '01-01-1982', '01-08-1982', '30', '1000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1982', '01-08-1982', '15-05-1984', '30', '1200');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1984', '15-05-1984', '01-01-1985', '30', '1500');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1985', '01-01-1985', '01-07-1985', '30', '1750');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1985', '01-07-1985', '01-11-1985', '10', '2000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1985', '01-11-1985', '01-02-1986', '10', '2200');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1986', '01-02-1986', '15-06-1989', '10', '2500');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1989', '15-06-1989', '01-12-1993', '10', '2900');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1993', '01-12-1993', '01-09-1995', '10', '3400');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1995', '01-09-1995', '01-10-1997', '10', '4200');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1997', '01-10-1997', '01-10-1998', '10', '4500');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1998', '01-10-1998', '01-11-1999', '10', '4800');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '1999', '01-11-1999', '15-02-2000', '10', '4900');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7839', '2000', '15-02-2000', null, '10', '5000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7844', '1995', '01-05-1995', '01-01-1997', '30', '900');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7844', '1998', '15-10-1998', '01-11-1998', '10', '1200');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7844', '1998', '01-11-1998', '01-01-2000', '30', '1400');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7844', '2000', '01-01-2000', null, '30', '1500');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7876', '2000', '01-01-2000', '01-02-2000', '20', '950');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7876', '2000', '01-02-2000', null, '20', '1100');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7900', '2000', '01-07-2000', null, '30', '800');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7902', '1998', '01-09-1998', '01-10-1998', '40', '1400');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7902', '1998', '01-10-1998', '15-03-1999', '30', '1650');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7902', '1999', '15-03-1999', '01-01-2000', '30', '2500');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7902', '2000', '01-01-2000', '01-08-2000', '30', '3000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7902', '2000', '01-08-2000', null, '20', '3000');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7934', '1998', '01-02-1998', '01-05-1998', '10', '1275');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7934', '1998', '01-05-1998', '01-02-1999', '10', '1280');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7934', '1999', '01-02-1999', '01-01-2000', '10', '1290');
INSERT INTO HISTORY (EMPNO, BEGINYEAR, BEGINDATE, ENDDATE, DEPTNO, MSAL) VALUES ('7934', '2000', '01-01-2000', null, '10', '1300');






-- foreign keys
-- Reference: DEPARTMENTS_EMPLOYEES (table: DEPARTAMENTS)
ALTER TABLE DEPARTAMENTS ADD CONSTRAINT DEPARTMENTS_EMPLOYEES
    FOREIGN KEY (MGR)
    REFERENCES EMPLOYEES (EMPNO);

-- Reference: EMPLOYEES_DEPARTMENTS (table: EMPLOYEES)
ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEES_DEPARTMENTS
    FOREIGN KEY (DEPTNO)
    REFERENCES DEPARTAMENTS (DEPTNO);

-- Reference: EMPLOYEES_EMPLOYEES (table: EMPLOYEES)
ALTER TABLE EMPLOYEES ADD CONSTRAINT EMPLOYEES_EMPLOYEES
    FOREIGN KEY (MGR)
    REFERENCES EMPLOYEES (EMPNO);

-- Reference: HISTORY_DEPARTMENTS (table: HISTORY)
ALTER TABLE HISTORY ADD CONSTRAINT HISTORY_DEPARTMENTS
    FOREIGN KEY (DEPTNO)
    REFERENCES DEPARTAMENTS (DEPTNO);

-- Reference: HISTORY_EMPLOYEES (table: HISTORY)
ALTER TABLE HISTORY ADD CONSTRAINT HISTORY_EMPLOYEES
    FOREIGN KEY (EMPNO)
    REFERENCES EMPLOYEES (EMPNO);

-- Reference: OFFERINGS_COURSES (table: OFFERINGS)
ALTER TABLE OFFERINGS ADD CONSTRAINT OFFERINGS_COURSES
    FOREIGN KEY (COURSE)
    REFERENCES COURSES (CODE);

-- Reference: OFFERINGS_EMPLOYEES (table: OFFERINGS)
ALTER TABLE OFFERINGS ADD CONSTRAINT OFFERINGS_EMPLOYEES
    FOREIGN KEY (TRAINER)
    REFERENCES EMPLOYEES (EMPNO);

-- Reference: REGISTRATIONS_EMPLOYEES (table: REGISTRATIONS)
ALTER TABLE REGISTRATIONS ADD CONSTRAINT REGISTRATIONS_EMPLOYEES
    FOREIGN KEY (ATTENDEE)
    REFERENCES EMPLOYEES (EMPNO);

-- Reference: REGISTRATIONS_OFFERINGS (table: REGISTRATIONS)
ALTER TABLE REGISTRATIONS ADD CONSTRAINT REGISTRATIONS_OFFERINGS
    FOREIGN KEY (COURSE,BEGINDATE)
    REFERENCES OFFERINGS (COURSE,BEGINDATE);

-- End of file.

