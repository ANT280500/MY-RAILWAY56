USE Testing_System_Assignment_1;
SELECT 	A.Email, A.Username , A.FullName, D.DepartmentName
FROM 	`Account` A
JOIN 	Department D ON A.DepartmentID = D.DepartmentID;

SELECT 	*
FROM 	`Account`
WHERE 	CreateDate < '2020-12-20';

SELECT 	A.FullName, A.Email, P.PositionName
FROM 	`Account` A
JOIN 	`Position` P ON A.PositionID = P.PositionID
WHERE 	P.PositionName = 'Dev';

SELECT 	D.DepartmentName, COUNT(a.DepartmentID) AS SL FROM `Account` A
JOIN 	`Department` D ON a.DepartmentID = D.DepartmentID
GROUP BY A.DepartmentID
HAVING 	COUNT(A.DepartmentID) > 3;

-- ??? 5 , 6 , 7




SELECT 		Q.QuestionID, Q.Content, count(A.QuestionID) FROM answer A
INNER JOIN 	question Q ON Q.QuestionID = A.QuestionID
GROUP BY 	A.QuestionID
HAVING 		count(A.QuestionID) = (SELECT max(countQues) FROM
(SELECT 	count(B.QuestionID) AS countQues FROM answer B
GROUP BY 	B.QuestionID) AS countAnsw);

SELECT 		G.GroupID, COUNT(GA.AccountID) AS 'SO LUONG ACCOUNT'
FROM 	GroupAccount GA JOIN
		`Group` G ON GA.GroupID = G.GroupID
GROUP BY G.GroupID
ORDER BY G.GroupID;


-- ?? 10, 11 , 12 , 13 ,14 ,15 ,16



