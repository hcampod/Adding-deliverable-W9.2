/*****************************************************************************************************************
NAME:  Museum of  Modern Art  Collection 
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

--Q: MoMA  wants to know   the artist_ID of the artists  which  death year was  1976  and  if  the artist was male or female? Author: Hialena
--A: Let's  ask  SQL SERVER TO FIND OUT...

SELECT Artist_ID, Gender, Death_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Death_year = '1976' 


--SECOND  QUESTION AND ANSWER 

--Q:MoMA  wants to know  the name of the  American Artists  in their  collection  that   was born in 1946  Author: Hialena
--A: Let's  ask  SQL SERVER TO FIND OUT...

SELECT Name, Nationality, Birth_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Birth_Year = '1946' AND Nationality = 'American'

--THIRD QUESTION  AND  ANSWER
 
--Q:MoMA wants to know  if there is  any male Swedish artist  born  in  1885 in his collection?  Author: Hialena
--A: Let's  ask  SQL SERVER TO FIND OUT...

SELECT Name, Gender, Nationality, Birth_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Birth_Year = '1885'AND Nationality = 'Swedish'AND Gender = 'male'

 --FOUR QUESTION AND  ANSWER/ there is no questions about  MoMA DATA set  created by another student

--Q: MoMA wants  to know  how  many male artist are in their  collection?   Author: Hialena
--A: Let's  ask  SQL SERVER TO FIND OUT...

SELECT SUM (CASE WHEN Gender = 'male' THEN 1 ELSE 0 END)  AS Male_Artists
FROM [EC_IT143_DA].[dbo].[artists]

