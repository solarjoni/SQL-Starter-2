/* 
	This line loads the database so you have access to 
	the data. Do not change or remove this line. 
	
	You can always click "Run" to start over.
*/
.read m2.sql

/* 
	This line will print the schematics of the "Students"
	table and the "Advisors" table. You'll be able to see query used to create the tables. Keep in mind that it does not print out the data rows, but only the headers.
*/
.schema Students
.schema Advisors

/*** WRITE YOUR QUERIES BELOW ***/

/* Scenario 1: Advisor Meetings */

.print ' '
.print Students and their advisors meetings:
SELECT Students.FirstName, Students.LastName, Advisors.FirstName || ' ' || Advisors.LastName as FullName, MeetingDay, MeetingTime FROM Students LEFT JOIN Advisors WHERE Students.Advisor=FullName;

/* Scenario 2: Head Count */

.print ' '
SELECT "Number of students in each GradeLevel: ";
.mode line
SELECT COUNT(*) AS "GradeLevel 9" FROM Students WHERE GradeLevel=9;
SELECT COUNT(*) AS "GradeLevel 10" FROM Students WHERE GradeLevel=10;
SELECT COUNT(*) AS "GradeLevel 11" FROM Students WHERE GradeLevel=11;
SELECT COUNT(*) AS "GradeLevel 12" FROM Students WHERE GradeLevel=12;
.mode list
.print ' '
SELECT "Number of students who likes each class most:";
.mode line
SELECT COUNT(*) AS "Math class" FROM Students WHERE FavoriteClass="Math";
SELECT COUNT(*) AS "Science class" FROM Students WHERE FavoriteClass="Science";
SELECT COUNT(*) AS "History class" FROM Students WHERE FavoriteClass="History";
SELECT COUNT(*) AS "English class" FROM Students WHERE FavoriteClass="English";
SELECT COUNT(*) AS "Spanish class" FROM Students WHERE FavoriteClass="Spanish";
.mode list

/* Scenario 3: Hide and Seek */
.print ''
SELECT 'A student whose name rhymes with "ika":';
SELECT Firstname || ' ' || LastName FROM Students WHERE FirstName LIKE "%ika%";
.print ''
SELECT 'A freshman (9th-grader) who is getting high grades (above 95):';
.mode tab
SELECT Firstname || ' ' || LastName, Grade FROM Students WHERE GradeLevel=9 AND Grade>95;
.mode list
.print ''
SELECT 'A student whose name starts with "Bl":';
SELECT Firstname || ' ' || LastName FROM Students WHERE FirstName LIKE "Bl%";
.print ''
SELECT 'A student whose name sounds like "orri":';
SELECT Firstname || ' ' || LastName FROM Students WHERE FirstName LIKE "%orri%";