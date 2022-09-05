USE Testing_System_Assignment_1;
DROP PROCEDURE IF EXISTS SP_GetAccFromDepartName;
DELIMITER $$
	CREATE PROCEDURE SP_GetAccFromDepartName(IN departmentName VARCHAR(50))
	BEGIN
		SELECT A.AccountID, A.FullName, D.DepartmentName 
		FROM `Account` A
		JOIN `Department` D ON D.DepartmentID = A.DepartmentID
		WHERE D.DepartmentName = departmentName;
	END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS SP_GetCountAccFromGroup;
DELIMITER $$
	CREATE PROCEDURE SP_GetCountAccFromGroup(IN groupName VARCHAR(50))
	BEGIN
		SELECT g.GroupName, COUNT(ga.AccountID) AS SL 
		FROM `GroupAccount` ga
		JOIN `Group` g ON ga.GroupID = g.GroupID
		WHERE g.GroupName = groupName
		GROUP BY ga.GroupID;
	END$$
DELIMITER ;

DROP PROCEDURE IF EXISTS sp_GetCountTypeInMonth;
DELIMITER $$
	CREATE PROCEDURE sp_GetCountTypeInMonth()
	BEGIN
		SELECT tq.TypeName, count(q.TypeID) FROM question q
		INNER JOIN typequestion tq ON q.TypeID = tq.TypeID
		WHERE month(q.CreateDate) = month(now()) AND year(q.CreateDate) = year(now())
		GROUP BY q.TypeID;
	END$$
DELIMITER ;

