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
--Q: Aman want to know  how many female students completed the  test preparation course?  Author: Hialena 
--A: Let's  ask  SQL SERVER TO FIND OUT...

SELECT SUM (CASE WHEN Gender = 'female' THEN 1 ELSE 0 END)  AS Female_Students_Completed_Test_Preparation_Course
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE test_preparation_course = 'completed'

--SECOND  QUESTION AND ANSWER 
--Q:  Aman want to know how effective is the test preparation course?  Author:  Hialena
--A: Let's  ask  SQL SERVER TO FIND OUT...

SELECT test_preparation_course,math_score,reading_score,writing_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE test_preparation_course = 'completed' 

 --THIRD  QUESTION AND ANSWER 

--Q:  Aman  wants to know which race ethnicity(group) and gender get higher  reading_scores?   Author: Hialena
--A: Let's  ask  SQL SERVER TO FIND OUT...

SELECT race_ethnicity, gender, reading_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE reading_score > = '90' 

--FOUR  QUESTION AND ANSWER / there is no questions about  Students Performance in Exams database  created by another student

--Q: Aman wants  to figure out if the parental  level of education and lunch program  affects  student  math  scores?  Author: Hialena 
--A: Let's  ask  SQL SERVER TO FIND OUT...

SELECT parental_level_of_education,lunch,math_score
FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE parental_level_of_education ='some college' AND lunch ='free/reduced'
