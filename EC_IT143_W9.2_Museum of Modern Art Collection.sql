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

--STEP 1
--Q: MoMA  wants to know   the artist_ID of the artists  which  death year was  1976  and  if  the artist was male or female?

--STEP 2:

--Q: MoMA  wants to know   the artist_ID of the artists  which  death year was  1976  and  if  the artist was male or female?

--A: Let's  ask  SQL SERVER TO FIND OUT...

--STEP 3:
SELECT Artist_ID, Gender, Death_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Death_year = '1976' 

--STEP 4:
DROP VIEW  IF EXISTS dbo.v_artists_load
GO
CREATE VIEW dbo.v_artists_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_artists_load
PURPOSE: Create artists-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT Artist_ID, Gender, Death_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Death_year = '1976' 

--STEP 5.1:
--Q: MoMA  wants to know   the artist_ID of the artists  which  death year was  1976  and  if  the artist was male or female?

--A: Let's  ask  SQL SERVER TO FIND OUT...

 SELECT v.Artist_ID
 , v.Gender
 , v.Death_Year
 INTO dbo.t_artists
 FROM dbo.v_artists_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_artists;
 GO
 CREATE TABLE dbo.t_artists
 (Artist_ID VARCHAR(100) NOT NULL,
 Gender VARCHAR(25) NOT NULL,
  Death_Year INT  NOT  NULL
 CONSTRAINT PK_t_artists
 PRIMARY KEY CLUSTERED (Gender ASC));
 GO

 --STEP 6:
 --Q: MoMA  wants to know   the artist_ID of the artists  which  death year was  1976  and  if  the artist was male or female?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Artist_ID
 , v.Gender
 , v.Death_Year

 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists  AS t;

 --STEP 7:
 CREATE  PROCEDURE dbo.usp_artists_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_artists_load
PURPOSE: Artists - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCAMPO       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Artist_ID
 , v.Gender
 , v.Death_Year
 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists AS t;
 END;
 GO

 --STEP 8:
 --Q: MoMA  wants to know   the artist_ID of the artists  which  death year was  1976  and  if  the artist was male or female?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 EXEC dbo.usp_artists_load;


--SECOND  QUESTION AND ANSWER 

--STEP 1
--Q: MoMA  wants to know  the name of the  American Artists  in their  collection  that   was born in 1946

--STEP 2:

--Q:MoMA  wants to know  the name of the  American Artists  in their  collection  that   was born in 1946

--A: Let's  ask  SQL SERVER TO FIND OUT...

--STEP 3:
SELECT Name, Nationality, Birth_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Birth_Year = '1946' AND Nationality = 'American'

--STEP 4:
DROP VIEW  IF EXISTS dbo.v_artists_load
GO
CREATE VIEW dbo.v_artists_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_artists_load
PURPOSE: Create artists-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT Name, Nationality, Birth_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Birth_Year = '1946' AND Nationality = 'American'

--STEP 5.1:
--Q:MoMA  wants to know  the name of the  American Artists  in their  collection  that   was born in 1946

--A: Let's  ask  SQL SERVER TO FIND OUT...


 SELECT v.Name
 , v.Nacionality
 , v.Birth_Year
 INTO dbo.t_artists
 FROM dbo.v_artists_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_artists;
 GO
 CREATE TABLE dbo.t_artists
 (Name VARCHAR(100) NOT NULL,
 Nacionality VARCHAR(25) NOT NULL,
 Birth_Year INT  NOT  NULL
 CONSTRAINT PK_t_artists
 PRIMARY KEY CLUSTERED (Name ASC));
 GO

 --STEP 6:
 --Q:MoMA  wants to know  the name of the  American Artists  in their  collection  that   was born in 1946

--A: Let's  ask  SQL SERVER TO FIND OUT...

 --1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Name
 , v.Nationality
 , v.Birth_Year

 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists  AS t;

 --STEP 7:
 CREATE  PROCEDURE dbo.usp_artists_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_artists_load
PURPOSE: Artists - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCAMPO       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Name
 , v.Nationality
 , v.Birth_Year
 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists AS t;
 END;
 GO

 --STEP 8:
 --Q:MoMA  wants to know  the name of the  American Artists  in their  collection  that   was born in 1946

--A: Let's  ask  SQL SERVER TO FIND OUT...

 EXEC dbo.usp_artists_load;

--THIRD QUESTION  AND  ANSWER
 
--STEP 1
--Q: MoMA wants to know  if there is  any male Swedish artist  born  in  1885 in his collection?

--STEP 2:

--Q:MoMA wants to know  if there is  any male Swedish artist  born  in  1885 in his collection?
--A: Let's  ask  SQL SERVER TO FIND OUT...

--STEP 3:
SELECT Name, Gender, Nationality, Birth_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Birth_Year = '1885'AND Nationality = 'Swedish'AND Gender = 'male'

--STEP 4:
DROP VIEW  IF EXISTS dbo.v_artists_load
GO
CREATE VIEW dbo.v_artists_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_artists_load
PURPOSE: Create artists-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT Name, Gender, Nationality, Birth_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Birth_Year = '1885'AND Nationality = 'Swedish'AND Gender = 'male'

--STEP 5.1:
--Q:MoMA wants to know  if there is  any male Swedish artist  born  in  1885 in his collection?
--A: Let's  ask  SQL SERVER TO FIND OUT...


 SELECT v.Name
 , v.Gender
 , v.Nacionality
 , v.Birth_Year
 INTO dbo.t_artists
 FROM dbo.v_artists_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_artists;
 GO
 CREATE TABLE dbo.t_artists
 (Name VARCHAR(100) NOT NULL,
 Gender VARCHAR (50) NOT  NULL,
 Nacionality VARCHAR(25) NOT NULL,
 Birth_Year INT  NOT  NULL
 CONSTRAINT PK_t_artists
 PRIMARY KEY CLUSTERED (Name ASC));
 GO

 --STEP 6:
 --Q:MoMA wants to know  if there is  any male Swedish artist  born  in  1885 in his collection?
--A: Let's  ask  SQL SERVER TO FIND OUT...

 --1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Name
 , v.Gender
 , v.Nationality
 , v.Birth_Year

 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists  AS t;

 --STEP 7:
 CREATE  PROCEDURE dbo.usp_artists_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_artists_load
PURPOSE: Artists - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCAMPO       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Name
 , v.Gender
 , v.Nationality
 , v.Birth_Year
 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists AS t;
 END;
 GO

 --STEP 8:
 --Q:MoMA wants to know  if there is  any male Swedish artist  born  in  1885 in his collection?
--A: Let's  ask  SQL SERVER TO FIND OUT...

 EXEC dbo.usp_artists_load;

 --FOUR QUESTION AND  ANSWER/ there is no questions about  MoMA DATA set  created by another student

 --STEP 1
--Q: MoMA wants  to know  how  many male artist born in  1941 are in their  collection?


--STEP 2:
--Q: MoMA wants  to know  how  many male are in their  collection?

--A: Let's  ask  SQL SERVER TO FIND OUT...

--STEP 3:
SELECT SUM (CASE WHEN Gender = 'male' THEN 1 ELSE 0 END)  AS Male_Artists
FROM [EC_IT143_DA].[dbo].[artists]


--STEP 4:
DROP VIEW  IF EXISTS dbo.v_artists_load
GO
CREATE VIEW dbo.v_artists_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_artists_load
PURPOSE: Create artists-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT SUM (CASE WHEN Gender = 'male' THEN 1 ELSE 0 END)  AS Male_Artists
FROM [EC_IT143_DA].[dbo].[artists]


--STEP 5.1:
--Q: MoMA wants  to know  how  many male are in their  collection?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 SELECT v.Gender
 , v.Male_Artists
 INTO dbo.t_artists
 FROM dbo.v_artists_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_artists;
 GO
 CREATE TABLE dbo.t_artists
 (Gender VARCHAR(25) NOT NULL,
 Male_Artists VARCHAR(25) NOT NULL
 CONSTRAINT PK_t_artists
 PRIMARY KEY CLUSTERED (Gender ASC));
 GO

 --STEP 6:
 --Q: MoMA wants  to know  how  many male are in their  collection?

--A: Let's  ask  SQL SERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Gender
 , v.Male_Artists
 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists  AS t;

 --STEP 7:
 CREATE  PROCEDURE dbo.usp_artists_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_artists_load
PURPOSE: Archive (2) - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCAMPO       1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Gender
 , v.Male_Artists
 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists AS t;
 END;
 GO

 --STEP 8:
 --Q: What is the  current date  and time?
 --A: Let's  ask  SQL sERVER TO FIND OUT...
 EXEC dbo.usp_artists_load;




