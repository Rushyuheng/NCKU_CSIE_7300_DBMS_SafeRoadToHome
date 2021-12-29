--select from where
/*search bad road in 台南市*/
SELECT Description,Address FROM BadRoad,GPS
WHERE BadRoad.Longtitude = GPS.Longtitude AND BadRoad.Latitude = GPS.Latitude AND GPS.City = N'台南市';

--delete
/*admin delete improper message*/
DELETE FROM Message
WHERE MessageID = 12;
SELECT * FROM Message;

--insert
/*new message*/
INSERT INTO Message
VALUES(12,N'是在哈囉','2007-05-08 12:35:29.123');
SELECT * FROM Message;

--update
/*更改使用者名稱*/
UPDATE UserInfo
SET AccountName = 'keepsleeping'
WHERE Email = 'longstay@gmail';
SELECT * FROM UserInfo;

-- in
/*serch badroad in southen taiwan*/
SELECT * FROM BadRoad
WHERE Longtitude IN 
	(SELECT Longtitude FROM GPS 
	WHERE Longtitude < 24);

-- not in
/*search badroad not in southen taiwan*/
SELECT * FROM BadRoad
WHERE Longtitude NOT IN 
	(SELECT Longtitude FROM GPS 
	WHERE Longtitude < 24);

-- exist
/*search those comment record which is comment by user older than 30*/
SELECT Email FROM COMMENT
WHERE EXISTS (SELECT Email FROM UserInfo WHERE COMMENT.Email = UserInfo.Email AND UserInfo.Age > 30);

-- not exist
/*search those comment record which is not comment by user older than 30*/
SELECT Email FROM COMMENT
WHERE NOT EXISTS (SELECT Email FROM UserInfo WHERE COMMENT.Email = UserInfo.Email AND UserInfo.Age > 30);

--count 
/*search user jameskk report how many bad road*/
SELECT COUNT(*)
FROM BadRoad,UserInfo
WHERE UserInfo.Email = BadRoad.Email AND AccountName = 'jameskk';

--sum
/*sum all user offical level to see how much impact from non-official agency*/
SELECT SUM(OfficialLevel)
FROM UserInfo,BELONG,Agency
WHERE UserInfo.Email = BELONG.Email AND Agency.AgencyID = BELONG.AgencyID;

--max
/*search the when the newest message is comment */
SELECT MAX(Date)
FROM Message;

--min
/*search the most east badroad coordinate*/
SELECT MIN(Latitude)
FROM BadRoad;

--avg
/*search the average user's age*/
SELECT AVG(Age)
FROM UserInfo;

--having
/*search number of under agency which has more than 3 people */
SELECT OfficialLevel,COUNT(*)
FROM UserInfo,BELONG,Agency
WHERE UserInfo.Email = BELONG.Email AND Agency.AgencyID = BELONG.AgencyID
GROUP BY OfficialLevel
HAVING COUNT(*) > 3;