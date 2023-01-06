TRUNCATE TABLE cohorts, students RESTART IDENTITY;

INSERT INTO cohorts (name, starting_date) VALUES ('First', '2020-01-01');
INSERT INTO cohorts (name, starting_date) VALUES ('Second', '2020-11-30');
INSERT INTO cohorts (name, starting_date) VALUES ('Third', '2021-06-14');

INSERT INTO students (name, cohort_id) VALUES ('Jim', 1);
INSERT INTO students (name, cohort_id) VALUES ('Bob', 1);
INSERT INTO students (name, cohort_id) VALUES ('Jeff', 2);
INSERT INTO students (name, cohort_id) VALUES ('Mark', 2);
INSERT INTO students (name, cohort_id) VALUES ('Susie', 3);
INSERT INTO students (name, cohort_id) VALUES ('Rachel', 3);
