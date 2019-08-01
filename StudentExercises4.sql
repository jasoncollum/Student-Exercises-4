-- -- Create a new database called 'StudentExercises'
-- -- Connect to the 'master' database to run this snippet
-- USE master
-- GO
-- -- Create the new database if it does not exist already
-- IF NOT EXISTS (
--     SELECT [name]
--         FROM sys.databases
--         WHERE [name] = N'StudentExercises'
-- )
-- CREATE DATABASE StudentExercises
-- GO

-- CREATE TABLE Cohort (
--     Id INTEGER PRIMARY KEY NOT NULL IDENTITY,
--     CohortName TEXT NOT NULL
-- );

-- CREATE TABLE Student (
--     Id INTEGER PRIMARY KEY NOT NULL IDENTITY,
--     FirstName TEXT NOT NULL,
--     LastName TEXT NOT NULL,
--     SlackHandle TEXT NOT NULL,
--     CohortId INTEGER NOT NULL,
--     CONSTRAINT FK_Student_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
-- );

-- CREATE TABLE Instructor (
--     Id INTEGER PRIMARY KEY NOT NULL IDENTITY,
--     FirstName TEXT NOT NULL,
--     LastName TEXT NOT NULL,
--     SlackHandle TEXT NOT NULL,
--     CohortId INTEGER NOT NULL,
--     Specialty TEXT NOT NULL,
--     CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
-- );

-- CREATE TABLE Exercise (
--     Id INTEGER PRIMARY KEY NOT NULL IDENTITY,
--     ExerciseName TEXT NOT NULL,
--     ExerciseLanguage TEXT NOT NULL
-- );

-- CREATE TABLE Assignment (
--     Id INTEGER PRIMARY KEY NOT NULL IDENTITY,
--     InstructorId INTEGER NOT NULL,
--     StudentId INTEGER NOT NULL,
--     ExerciseId INTEGER NOT NULL,
--     CONSTRAINT FK_Assignment_Instructor FOREIGN KEY(InstructorId) REFERENCES Instructor(Id),
--     CONSTRAINT FK_Assignment_Student FOREIGN KEY(StudentId) REFERENCES Student(Id),
--     CONSTRAINT FK_Assignment_ExerciseId FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id)
-- );

-- INSERT INTO Cohort(CohortName) VALUES ('Day Cohort 31');
-- INSERT INTO Cohort(CohortName) VALUES ('Day Cohort 32');
-- INSERT INTO Cohort(CohortName) VALUES ('Day Cohort 33');

-- SELECT * FROM Cohort;

-- INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
--     VALUES ('Jason', 'Collum', 'jasoncollum', 2);
-- INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
--     VALUES ('Nate', 'Fleming', 'natefleming', 2);
-- INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
--     VALUES ('Colin', 'Sandlin', 'colinsandlin', 2);
-- INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
--     VALUES ('Thad', 'Beetree', 'thadbeetree', 1);
-- INSERT INTO Student (FirstName, LastName, SlackHandle, CohortId) 
--     VALUES ('Mike', 'Uhgula', 'mikeug', 3);

-- SELECT * FROM Student;

-- INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty) 
--     VALUES ('Jisie', 'David', 'Jisie David', 2, 'Lighting');
-- INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty) 
--     VALUES ('Brenda', 'Long', 'Brenda Long', 1, 'Jeeps');
-- INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty) 
--     VALUES ('Adam', 'Scheaffer', 'Adam Scheaffer', 2, 'Hats');
-- INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId, Specialty) 
--     VALUES ('Bryan', 'Nilson', 'Bryan Nilson', 2, 'Bry Fives');

-- SELECT * FROM Instructor;

-- INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
--     VALUES ('Async Await', 'JavaScript');
-- INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
--     VALUES ('Interfaces', 'C Sharp');
-- INSERT INTO Exercise (ExerciseName, ExerciseLanguage) 
--     VALUES ('Student Exercise 4', 'SQL');

-- SELECT * FROM Exercise;

-- INSERT INTO Assignment (InstructorId, StudentId, ExerciseId)
--     VALUES (2, 1, 1);
-- INSERT INTO Assignment (InstructorId, StudentId, ExerciseId)
--     VALUES (1, 1, 2);
-- INSERT INTO Assignment (InstructorId, StudentId, ExerciseId)
--     VALUES (1, 1, 3);
-- INSERT INTO Assignment (InstructorId, StudentId, ExerciseId)
--     VALUES (4, 2, 1);
-- INSERT INTO Assignment (InstructorId, StudentId, ExerciseId)
--     VALUES (3, 3, 3);
-- INSERT INTO Assignment (InstructorId, StudentId, ExerciseId)
--     VALUES (2, 4, 1);
-- INSERT INTO Assignment (InstructorId, StudentId, ExerciseId)
--     VALUES (1, 5, 1);

-- SELECT * FROM Assignment;
