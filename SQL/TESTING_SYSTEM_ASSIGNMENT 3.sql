
SELECT *
FROM 	`Department`
ORDER BY DepartmentID;


SELECT 	DepartmentID
FROM	`Department`
WHERE	DepartmentName = N'Sale';


?????4

???????5


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


????11

????12

?????13

UPDATE `Account`
SET Fullname 	=	'Nguyễn Bá Lộc',
	Email		=	'loc.nguyenba@vti.com.vn'
WHERE AccountID	=	5;

UPDATE 	`GroupAccount`
SET		AccountID = 5
WHERE	GroupID = 4;