CREATE TABLE "Departments" (
    "dept_no" VARCHAR(10) NOT NULL,
    "dept_name" VARCHAR(35)   NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(10)   NOT NULL,
    "title" VARCHAR(35)   NOT NULL,
    PRIMARY KEY ("title_id")
);

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR(10)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(35)   NOT NULL,
    "last_name" VARCHAR(35)   NOT NULL,
    "sex" VARCHAR(10)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    PRIMARY KEY ("emp_no"),
	FOREIGN KEY ("emp_title_id") REFERENCES titles ("title_id") 
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    PRIMARY KEY ("dept_no","emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES "Departments" ("dept_no"),
	FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
    PRIMARY KEY ("emp_no","dept_no"),
	FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no"),
	FOREIGN KEY ("dept_no") REFERENCES "Departments" ("dept_no")
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" MONEY   NOT NULL,
    PRIMARY KEY ("emp_no"),
	FOREIGN KEY ("emp_no") REFERENCES employees ("emp_no")
);


SELECT * FROM "Departments";

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;


