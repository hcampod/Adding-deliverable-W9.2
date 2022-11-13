/*****************************************************************************************************************
NAME:   Student Performance in exams 
PURPOSE: create answers and  questions using focused Approach for T-SQL Data Manipulation

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCAMPO       1. Built this script for EC IT143


RUNTIME: 
1m

NOTES: 
I build this script to help  me learn  answer questions using  focused Approach for T-SQL Data Manipulation
 
******************************************************************************************************************/
--FIRST QUESTION AND ANSWER 
--STEP 1
--Q: Aman want to know  how many female students completed the  test preparation? 


--STEP 2:
--Q: Aman want to know  how many female students completed the  test preparation? 

--A: Let's  ask  SQL SERVER TO FIND OUT...

--STEP 3:
SELECT [gender],[test_preparation_course]
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE gender = 'female' AND test_preparation_course = 'completed'

--STEP 4:
DROP VIEW  IF EXISTS dbo.v_archive (2)_load
GO
CREATE VIEW dbo.v_archive (2)_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_archive (2)_load
PURPOSE: Create archive (2)-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT [gender],[test_preparation_course]
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE gender = 'female' AND test_preparation_course = 'completed'


--STEP 5.1:
--Q: Aman want to know  how many female students completed the  test preparation? 

--A: Let's  ask  SQL SERVER TO FIND OUT...
 SELECT v.gender
 , v.test_preparation_course
 INTO dbo.t_archive (2)
 FROM dbo.v_archive (2)_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_archive (2);
 GO
 CREATE TABLE dbo.archive (2)
 (gender VARCHAR(25) NOT NULL,
 test_preparation_course VARCHAR(25) NOT NULL
 CONSTRAINT PK_t_archive (2)
 PRIMARY KEY CLUSTERED (gender ASC));
 GO

 --STEP 6:
 --Q: Aman want to know  how many female students completed the  test preparation? 

--A: Let's  ask  SQL SERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_archive (2);
 INSERT INTO dbo.t_archive (2) 
 SELECT v.gender
 , v.test_preparation_course
 FROM dbo.v_archive (2)_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_archive (2)  AS t;

 --STEP 7:
 CREATE  PROCEDURE dbo.usp_archive (2)_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_archive (2)_load
PURPOSE: Archive (2) - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo      1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_archive (2);
 INSERT INTO dbo.t_archive (2)
 SELECT v.gender
 , v.test_preparation_course
 FROM dbo.v_archive (2)_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_archive (2)] AS t;
 END;
 GO

 --STEP 8:
 --Q: Aman want to know  how many female students completed the  test preparation? 

--A: Let's  ask  SQL SERVER TO FIND OUT...
 EXEC dbo.usp_archive (2)_load;

--SECOND  QUESTION AND ANSWER 

--STEP 1
--Q: Aman want to know how effective is the test preparation course?

--STEP 2:
--Q:  Aman want to know how effective is the test preparation course?

--A: Let's  ask  SQL SERVER TO FIND OUT...

--STEP 3:
SELECT test_preparation_course,math_score,reading_score,writing_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE test_preparation_course = 'completed' 

--STEP 4:
DROP VIEW  IF EXISTS dbo.v_archive (2)_load
GO
CREATE VIEW dbo.v_archive (2)_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_archive (2)_load
PURPOSE: Create archive (2)-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT test_preparation_course,math_score,reading_score,writing_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE test_preparation_course = 'completed' 


--STEP 5.1:
--Q:  Aman want to know how effective is the test preparation course?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 SELECT v.test_preparation_course
 , v.math_score
 ,v.reading_score
 ,v.writing_score
 INTO dbo.t_archive (2)
 FROM dbo.v_archive (2)_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_archive (2);
 GO
 CREATE TABLE dbo.archive (2)
 ( test_preparation_course VARCHAR(25) NOT NULL,
   math_score VARCHAR(25) NOT NULL,
   reading_score INT NOT NULL,
   writing_score INT NOT NULL,
 CONSTRAINT PK_t_archive (2)
 PRIMARY KEY CLUSTERED (test_preparation_course ASC));
 GO

 --STEP 6:
 --Q: Aman want to know  how many female students completed the  test preparation? 

--A: Let's  ask  SQL SERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_archive (2);
 INSERT INTO dbo.t_archive (2) 
 SELECT v.test_preparation_course
 , v.math_score
 , v.reading_score
 , v.writing_score
 FROM dbo.v_archive (2)_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_archive (2)  AS t;

 --STEP 7:
 CREATE  PROCEDURE dbo.usp_archive (2)_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_archive (2)_load
PURPOSE: Archive (2) - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo      1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_archive (2);
 INSERT INTO dbo.t_archive (2)
 SELECT v.test_preparation_course
 , v.math_score
 , v.reading_score
 , v.writing_score
 FROM dbo.v_archive (2)_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_archive (2)] AS t;
 END;
 GO

 --STEP 8:
 --Q: Aman want to know  how many female students completed the  test preparation? 

--A: Let's  ask  SQL SERVER TO FIND OUT...
 EXEC dbo.usp_archive (2)_load;

 --THIRD  QUESTION AND ANSWER 

 --STEP 1
--Q: Aman  wants to know which race ethnicity(group) and gender get  higher  reading_scores ?

--STEP 2:
--Q:  Aman  wants to know which race ethnicity(group) and gender get higher  reading_scores?

--A: Let's  ask  SQL SERVER TO FIND OUT...

--STEP 3:
SELECT race_ethnicity, gender, reading_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE reading_score > = '90' 

--STEP 4:
DROP VIEW  IF EXISTS dbo.v_archive (2)_load
GO
CREATE VIEW dbo.v_archive (2)_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_archive (2)_load
PURPOSE: Create archive (2)-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT race_ethnicity, gender, reading_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE reading_score > = '90' 


--STEP 5.1:
--Q:  Aman  wants to know which race ethnicity(group) and gender get higher  reading_scores?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 SELECT v.race_ethnicity
 , v.gender
 ,v.reading_score
 INTO dbo.t_archive (2)
 FROM dbo.v_archive (2)_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_archive (2);
 GO
 CREATE TABLE dbo.archive (2)
 ( race_ethnicity VARCHAR(25) NOT NULL,
   gender VARCHAR(25) NOT NULL,
   reading_score INT NOT NULL,
 CONSTRAINT PK_t_archive (2)
 PRIMARY KEY CLUSTERED (race_ethnicity ASC));
 GO

 --STEP 6:
 --Q:  Aman  wants to know which race ethnicity(group) and gender get higher  reading_scores?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_archive (2);
 INSERT INTO dbo.t_archive (2) 
 SELECT v.race_ethnicity
 , v.gender
 , v.reading_score
 FROM dbo.v_archive (2)_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_archive (2)  AS t;

 --STEP 7:
 CREATE  PROCEDURE dbo.usp_archive (2)_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_archive (2)_load
PURPOSE: Archive (2) - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo      1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_archive (2);
 INSERT INTO dbo.t_archive (2)
 SELECT v.race_ethnicity
 , v.gender
 , v.reading_score
 FROM dbo.v_archive (2)_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_archive (2)] AS t;
 END;
 GO

 --STEP 8:
 --Q:  Aman  wants to know how race ethnicity(group) and gender get higher  reading scores?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 EXEC dbo.usp_archive (2)_load;


--FOUR  QUESTION AND ANSWER / there is no questions about  MoMA DATA set  created by another student

 --STEP 1
--Q: Aman wants  to figure out how  parental  level of education and lunch program  affects  student  math  scores?
--STEP 2:
--Q: Aman wants  to figure out if the parental  level of education and lunch program  affects  student  math  scores?
--A: Let's  ask  SQL SERVER TO FIND OUT...

--STEP 3:
SELECT parental_level_of_education,lunch,math_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE parental_level_of_education ='some college' AND lunch ='free/reduced'

--STEP 4:
DROP VIEW  IF EXISTS dbo.v_archive (2)_load
GO
CREATE VIEW dbo.v_archive (2)_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_archive (2)_load
PURPOSE: Create archive (2)-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT parental_level_of_education,lunch,math_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE parental_level_of_education ='some college' AND lunch ='free/reduced'


--STEP 5.1:
--Q: Aman wants  to figure out if the parental  level of education and lunch program  affects  student  math  scores?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 SELECT v.parental_level_of_education
 , v.lunch
 , v.math_score
 
 INTO dbo.t_archive (2)
 FROM dbo.v_archive (2)_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_archive (2);
 GO
 CREATE TABLE dbo.archive (2)
 ( parental_level_of_education VARCHAR(25) NOT NULL,
   lunch VARCHAR(25) NOT NULL,
   math_score INT NOT NULL,
 CONSTRAINT PK_t_archive (2)
 PRIMARY KEY CLUSTERED (parental_level_of_education ASC));
 GO

 --STEP 6:
 --Q: Aman wants  to figure out if the parental  level of education and lunch program  affects  student  math  scores?
--A: Let's  ask  SQL SERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_archive (2);
 INSERT INTO dbo.t_archive (2) 
 SELECT v.parental_level_of_education
 , v.lunch
 , v.math_score
 FROM dbo.v_archive (2)_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_archive (2)  AS t;

 --STEP 7:
 CREATE  PROCEDURE dbo.usp_archive (2)_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_archive (2)_load
PURPOSE: Archive (2) - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo      1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_archive (2);
 INSERT INTO dbo.t_archive (2)
 SELECT v.parental_level_of_education
 , v.lunch
 , v.math_score
 FROM dbo.v_archive (2)_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_archive (2)] AS t;
 END;
 GO

 --STEP 8:
--Q: Aman wants  to figure out if the parental  level of education and lunch program  affects  student  math  scores?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 EXEC dbo.usp_archive (2)_load;





