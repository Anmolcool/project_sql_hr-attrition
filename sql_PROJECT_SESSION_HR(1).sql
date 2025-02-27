SELECT * FROM HR;

-- OVERALL ATTRITION HAPPENED IN MY THE COMPANY
SELECT COUNT(CASE WHEN ATTRITION = '1' THEN 1 END) AS ATTRITIONCOUNT,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM HR;

-- PRESENCE OF OVERTIME AND CORRELATION IN ATTRITION
SELECT OVERTIME, COUNT(*) AS TOTAL_EMPLOYEES
FROM HR
WHERE ATTRITION = 1
GROUP BY OVERTIME

-- GENDER DISTRIBUTION IN THE COMPANY
SELECT GENDER, COUNT(*) AS TOTAL_EMPLOYEES FROM HR
GROUP BY GENDER;

SELECT GENDER, COUNT(*) FROM HR
WHERE ATTRITION = 1
GROUP BY GENDER;


SELECT * FROM HR;

-- THERE IS A NEGATIVE CORRELATION AMONGST PERFORMANCE RATING AND ATTRITION
SELECT PERFORMANCERATING, COUNT(CASE WHEN ATTRITION = 1 THEN 1 END) AS ATTRITION_COUNT
FROM HR
GROUP BY PerformanceRating;

-- ATTRITION COUNT BASED ON THE JOB ROLES
SELECT DEPARTMENT, JOBROLE, COUNT(*) AS ATTRITION_COUNT
FROM HR
WHERE ATTRITION = 1
GROUP BY JOBROLE, DEPARTMENT
ORDER BY ATTRITION_COUNT DESC;

-- ATTRITION COUNT BASED ON DISTANCE FORM HOME VARIABLE
SELECT DISTANCEFROMHOME, COUNT(*) AS ATTRITION_COUNT
FROM HR
WHERE ATTRITION = 1
GROUP BY DistanceFromHome
ORDER BY ATTRITION_COUNT DESC;

SELECT * FROM HR;

SELECT DEPARTMENT, COUNT(*) AS ATTRITION_COUNT
FROM HR
WHERE Attrition = 1
GROUP BY Department;

-- RELATION OF SALARY AND ATTRITION -- NEGATIVE CORRELATION AMONGST SALARY HIKES AND ATTRITION
SELECT PERCENTSALARYHIKE, COUNT(*) AS ATTRITION_COUNT
FROM HR
WHERE Attrition = 1
GROUP BY PercentSalaryHike
ORDER BY ATTRITION_COUNT DESC;

-- EDUCATION FIELD IS RELATED TO ATTRITION COUNT OR NOT
SELECT EDUCATIONFIELD, COUNT(*) AS ATTRITION_COUNT
FROM HR
WHERE Attrition = 1
GROUP BY EducationField
ORDER BY ATTRITION_COUNT DESC;