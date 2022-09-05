
SELECT *
FROM 	`Department`
ORDER BY DepartmentID;


SELECT 	DepartmentID
FROM	`Department`
WHERE	DepartmentName = 'Sale';

SELECT * FROM `Account` 
WHERE LENGTH(Fullname) = (SELECT MAX(LENGTH(Fullname)) FROM `Account`)
ORDER BY AccountID;

WITH CTE_DEP3 AS (SELECT * FROM `Account` WHERE DepartmentID = 3)

SELECT * FROM `CTE_DEP3`
WHERE LENGTH(Fullname) = (SELECT MAX(LENGTH(Fullname)) FROM `CTE_DEP3`)
ORDER BY Fullname;

SELECT 	GroupName,
		CreateDate
FROM	`Group`
WHERE	CreateDate < '2019-12-20';

SELECT 	A.QuestionID
FROM 	`Answer` A
GROUP BY A.QuestionID
HAVING COUNT(A.QuestionID) >=4;

SELECT 	`Code`
FROM	Exam
WHERE	Duration >=6 AND CreateDate < '2019-12-20';

SELECT *
FROM `Group`
ORDER BY CreateDate DESC
LIMIT 5;

SELECT 	`DepartmentID`,COUNT(AccountID) AS SL
FROM 	`Account`
WHERE	DepartmentID = 2;

SELECT Fullname
FROM 	`Account`
WHERE 	FullName LIKE 'D%o';
SELECT 	(SUBSTRING_INDEX(FullName, ' ', 1)) FROM `Account`;
SELECT 	(SUBSTRING_INDEX(FullName, ' ', 2)) FROM `Account`;
SELECT 	(SUBSTRING_INDEX(FullName, ' ', 3)) FROM `Account`;

DELETE 
FROM	`Exam` 
WHERE	CreateDate < '2019-12-20';

DELETE 
FROM 	`Question` 
WHERE 	(SUBSTRING_INDEX(Content, ' ', 2)) = 'câu hỏi';
SELECT 	(SUBSTRING_INDEX(Content, ' ', 2)) = 'câu hỏi' FROM `Question`;

UPDATE `Account`
SET Fullname 	=	'Nguyễn Bá Lộc',
	Email		=	'loc.nguyenba@vti.com.vn'
WHERE AccountID	=	5;

UPDATE 	`GroupAccount`
SET		AccountID = 5
WHERE	GroupID = 4;