USE EDGE;
CREATE TABLE IF NOT EXISTS STUDENT_RESULT(ID INT PRIMARY KEY, STU_NAME VARCHAR(80), 
                          CGPA decimal(3,2));
                           
INSERT INTO STUDENT_RESULT VALUES
									(1902101, "Imran Khan", "3.00"),
                                    (1902102, "Mahin Hawladar", "3.63"),
                                    (1902103, "Rakibur Rahman", "3.00"),
                                    (1902104, "Jahidatunnahar", "3.68"),
                                    (1902105, "Tanin Hossain", "3.53"),
                                    (1902106, "Fazle Hasan Mihad", "3.60"),
                                    (1902107, "Robaidul Ismam", "3.46"),
                                    (1902108, "Shajib Hossain", "3.55"),
                                    (1902109, "Emran Biswas", "3.34"),
                                    (1902110, "Humaira Kawsari", "3.67");
-- 2. FIND THE MIN CGPA AND ANALYSIS HOW MANY OF STUDENT GETTING THAT CGPA
SELECT CGPA AS MIN_CGPA, COUNT(*) AS NUM_OF_MIN_CGPA
	   FROM STUDENT_RESULT
       GROUP BY CGPA
	   LIMIT 1;

-- 3. CREATE THE LIST OF CGPA IN DESCENDING ORDER AND KEEP THEM IN A SEPERATE COLUMN
SELECT CGPA AS STUDENT_CGPA
       FROM STUDENT_RESULT
       -- GROUP BY CGPA
       ORDER BY CGPA DESC;
 
 -- 4. FIND THE STUDENTS NAME WHOSE CGPA IS > 3.50,
 -- ANALYZE THE NUMBER OF THOSE STUDENTS & PUT THE VALUES IN "GOOD_CGPA" COLUMN
 
 -- POSSIBLE SOLUTION 1
SELECT GROUP_CONCAT(STU_NAME SEPARATOR '\n') AS LIST_OF_STUDENT,
       COUNT(*) AS GOOD_CGPA
       FROM STUDENT_RESULT
       WHERE CGPA > 3.50;

-- POSSIBLE SOLUTION 2
SELECT 
    STU_NAME,
    CASE 
        WHEN STU_NAME = (SELECT STU_NAME FROM student_result WHERE cgpa > 3.50 ORDER BY STU_NAME LIMIT 1) 
        THEN (SELECT COUNT(*) FROM STUDENT_RESULT WHERE CGPA > 3.50) 
        ELSE '' 
    END AS GOOD_CGPA
FROM STUDENT_RESULT
WHERE cgpa > 3.50;
